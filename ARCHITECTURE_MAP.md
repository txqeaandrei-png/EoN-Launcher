# Architecture Map: BlazeLauncher Native Engine

## Scope and evidence policy

This document reconstructs native relationships using:

- `TECHNICAL_AUDIT.md`
- `NATIVE_ENGINE_AUDIT.md`
- Decompiled Java/Kotlin classes
- `libblaze.so` and `libgojni.so` ELF metadata
- Exported JNI symbols
- Mangled C++/RTTI strings
- Selected AArch64 disassembly
- Read-only/native state assets

The APK and both native libraries were not modified.

Labels:

- **Verified**: directly established by source, ELF data, strings, exports, or instruction flow.
- **Strongly indicated**: supported by multiple independent artifacts but not completely proven.
- **Unverified**: requires source, matching Minecraft runtime symbols, or dynamic instrumentation.

The original implementation is proprietary/discontinued. This map describes
architecture and evidence only. It does not authorize copying proprietary code,
decompiling implementation into a new project, or extracting private algorithms.
An independent implementation should use these relationships as a conceptual
boundary and create original interfaces and code.

## 1. Top-level native component relationships

```text
Android launcher / Minecraft GameActivity
        |
        | package gate and inheritance
        v
GameActivity -> AdActivity -> com.mojang.minecraftpe.MainActivity
        |
        | System.loadLibrary("blaze")
        v
Start / GLES3JNIView
        |
        +-------------------- JNI --------------------+
        |                                            |
        v                                            v
libblaze.so                                 Java overlay/UI state
        |                                            |
        +-- native rendering                       +-- WindowManager
        +-- native frame/input state               +-- GLSurfaceView
        +-- texture/font loading                   +-- touch view
        +-- native SDK wrappers                    +-- Click GUI
        +-- ModuleManager callbacks               +-- shortcut buttons
        +-- hooks / symbol loading                 +-- worker thread
        +-- Minecraft object access                +-- native network declarations
        |
        +-- native send/receive exports --> libgojni.so
                                               |
                                               +-- Go/cgo handle runtime
                                               +-- StartConnection
                                               +-- sendToServer
                                               +-- sendToClient
```

### Verified relationships

- `GameActivity` loads `libblaze.so` and then calls `Start._Start()` and
  `Start.__Start()`.
- `Start` creates Android `WindowManager` overlays and a `GLES3JNIView`.
- `GLES3JNIView` implements `android.opengl.GLSurfaceView.Renderer`.
- `libblaze.so` exports the JNI methods used by `Start`, `GLES3JNIView`,
  `ClickGuiButton`, `ShortcutButton`, `TextureLoader`, and network classes.
- `libblaze.so` is not the official Minecraft process implementation; it is
  injected/loaded into a launcher-derived activity around the official package.
- `libgojni.so` is a separate Go/cgo ELF library and has no direct confirmed
  dependency on the ImGui code in `libblaze.so`; JNI/native calls connect the
  layers through exported symbols and internal state.

### Unverified relationships

- Whether `libblaze.so` calls or links `libgojni.so` by ELF dependency.
- Whether game hooks call Go functions directly or only through `libblaze.so`.
- Exact ownership and lifetime of the network bridge state.

## 2. Native components

### `ModuleManager`

Retained mangled callback type names establish that `ModuleManager` has
centralized dispatcher methods for actor, player, game mode, packet, block,
world-render, ImGui-render, attack, pick-range, and block-destroy lifecycle
events.

Retained callback signatures include:

| Callback area | Verified mangled type evidence |
|---|---|
| Local player tick | `_ZN13ModuleManager17onLocalPlayerTickEPN3SDK11LocalPlayerE` |
| Player tick | `_ZN13ModuleManager12onPlayerTickEPN3SDK11LocalPlayerE` |
| Actor tick | `_ZN13ModuleManager11onActorTickEPN3SDK5ActorE` |
| Game mode tick | `_ZN13ModuleManager6onTickEPN3SDK8GameModeE` |
| Attack | `_ZN13ModuleManager8onAttackEPN3SDK5ActorE` |
| ImGui render | `_ZN13ModuleManager10onImRenderEP10ImDrawListE` |
| Level render | `_ZN13ModuleManager13onLevelRenderEv` |
| Send packet | `_ZN13ModuleManager12onSendPacketEPN3SDK6PacketERbE` |
| Packet out | `_ZN13ModuleManager16onPacketOutBoundERNSt6__ndk112basic_string...ERbE` |
| Packet in | `_ZN13ModuleManager15onPacketInBoundERNSt6__ndk112basic_string...ERbE` |
| Build block | `_ZN13ModuleManager12onBuildBlockE8Vector3iiE` |
| Continue destroy | `_ZN13ModuleManager17onContinueDestroyEPN3SDK8GameModeER8Vector3iE` |
| After destroy | `_ZN13ModuleManager20afterContinueDestroyEPN3SDK8GameModeER8Vector3iE` |
| Stop destroy | `_ZN13ModuleManager18onStopDestroyBlockEv` |
| Pick range | `_ZN13ModuleManager14onGetPickRangeEv` |

The callback family names use repeated
`std::__ndk1::__function::__func<lambda...>` type entries. This is direct
evidence that callback registrations are represented as `std::function`-like
objects and lambda closures.

### Native SDK types

Retained RTTI/type strings establish the following native SDK family:

- `SDK::LocalPlayer`
- `SDK::Player`
- `SDK::Actor`
- `SDK::GameMode`
- `SDK::Packet`
- `TargetUtils`
- `Vector3`

The wrappers are on the boundary between modules and the live game. Module
callbacks receive wrappers instead of Java objects, although the exact wrapper
field layout and ownership are not confirmed.

### Rendering types

Verified/native-retained evidence includes:

- `ImDrawList`
- ImGui initialization/shutdown JNI methods
- GLES/GLESv2/GLESv3 imports
- EGL imports
- texture loading exports
- `glClear`
- frame `step`, `resize`, and `init` exports

### Go/cgo bridge types

Verified dynamic symbols include:

- `HandleMethodSymbol`
- `StartConnection`
- `initHandle`
- `sendToServer`
- `sendToClient`
- `_cgo_*`
- `_cgoexp_*`

## 3. Module registration and lifecycle

### JNI/UI registration path

```text
ShortcutButton or ClickGuiButton
        |
        | JNI method call + module/GUI string or boolean
        v
libblaze.so exported JNI function
        |
        | convert Java argument/state to native representation
        v
native module enable state / UI state
        |
        | later callback dispatch or render query
        v
ModuleManager callback lists
```

Verified exported UI control functions are:

| Address | Export | Java relationship |
|---:|---|---|
| `0x717cd0` | `Java_dev_blaze_launcher_ui_ShortcutButton_toggleModuleByName` | Toggles module selected by Java string |
| `0x5c7040` | `Java_dev_blaze_launcher_ui_ClickGuiButton_toggle` | Sets/toggles Click GUI state |
| `0x5c7200` | `Java_dev_blaze_launcher_ui_ClickGuiButton_getEnable` | Reads native Click GUI state byte |

Disassembly confirms that `getEnable` reads a native global byte at
`0x988000 + 0xe20`. This is confirmed engine state, not a Java module registry
field.

### Lambda registration model

**Strongly indicated lifecycle:**

1. Each native module constructor/initializer captures a pointer or reference to
   its module object in one or more lambdas.
2. It registers those lambdas with `ModuleManager` callback family methods.
3. `ModuleManager` stores them in callback containers.
4. Native hooks or frame/tick paths call the corresponding dispatcher method.
5. The dispatcher invokes enabled callbacks synchronously or in-place.
6. Module enable state changes through JNI and influences callback execution or
   render behavior.

Evidence supporting this model:

- Retained `_ZN13ModuleManager...EUlvE` lambda symbols
- The repeated two-lambda variants in each callback family
- The centrally exported toggle functions
- `onImRender(ImDrawList*)` as a render callback entry

### Verified visible module names

Native strings identify:

- ESP
- Aura
- AimBot
- HitBox
- Tracer
- NameTag
- MotionAura
- InfiniteAura
- AutoGapple

“Name visible in native strings” does not prove constructor registration, enable
state, callback completeness, or current compatibility.

### Module lifecycle facts not reconstructed

The following remain unverified without symbols or runtime:

- `ModuleManager` constructor and singleton/global storage
- `Module` base class details
- Registration priority and ordering
- Callback container type
- Exact enable/disable implementation
- Registration time
- Unregistration/release behavior
- Reentrancy protection
- Thread safety
- Whether lambdas are copied, moved, or shared
- Surface/activity teardown behavior
- Native shutdown order

Therefore, the exact mechanism is a strong architectural reconstruction, but not
a complete symbol-level proof of registration internals.

## 4. Event dispatch flow

### Native callback hierarchy

```text
Minecraft/native hook or engine observation point
        |
        v
SDK wrapper construction/value adaptation
        |
        v
ModuleManager dispatcher method
        |
        +--> onPlayerTick / onLocalPlayerTick
        +--> onActorTick
        +--> onTick(GameMode*)
        +--> onAttack(Actor*)
        +--> packet in/out callbacks
        +--> onSendPacket(Packet*, bool&)
        +--> block build/destroy callbacks
        +--> onGetPickRange
        +--> onLevelRender
        +--> onImRender(ImDrawList*)
        |
        v
registered enabled module lambdas
```

### Event categories

**Player/game-state events**

- Local-player and player ticks
- game-mode tick
- actor ticks
- player health
- actor motion
- player game type

Retained native event strings include `10ActorEvent`, `14SetActorMotion`,
`15SetPlayerHealth`, and `17SetPlayerGameType`.

**World/block events**

- Build block
- continue block destruction
- after block destruction
- stop block destruction
- pick range

**Network events**

- Packet send
- packet out-bound
- packet in-bound

**Render events**

- ImGui draw-list rendering
- level/world rendering

### Dispatch semantics

Verified callback signatures show value references for cancellation/change
requests:

- `onSendPacket(SDK::Packet*, bool&)`
- packet string callbacks use `std::string&` plus `bool&`

This strongly indicates callback modules can mutate packet data or cancel the
operation through a boolean reference.

Thread ownership, callback blocking behavior, and whether cancel booleans are
checked after every module callback are not verified.

### Native event dispatch to Java

There is no verified bidirectional event bus between game hooks and Android UI.
The observed Java/native communication is primarily state/control commands:

```text
Android UI --> JNI toggle/set/get --> native module/UI state

Native engine --> native render state --> JNI window rect/state query

Android Handler --> JNI native pump --> native engine state/processing
```

## 5. SDK object relationships

```text
Native hook / Minecraft function result
        |
        v
SDK wrapper
        |
        +--> SDK::Actor
        |       +--> used by TargetUtils
        |       +--> onActorTick
        |       +--> onAttack
        |
        +--> SDK::Player
        +--> SDK::LocalPlayer
                +--> player/local-player ticks
                +--> target/module logic
                +--> world/render position consumers

SDK::GameMode
        |
        +--> game-mode tick
        +--> block destruction callbacks

SDK::Packet
        |
        +--> packet send callback
        +--> in/out packet callbacks
```

### `TargetUtils`

The presence of `TargetUtils` and wrapper callbacks strongly indicates centralized
entity selection logic. Its exact algorithm is not verified. It may use actor
distance, entity kind, visibility, team, health, or targeting state, but no
symbol or implementation was safely reconstructed.

### Object lifetime assumptions

**Strongly indicated but unverified:**

- Actor/player wrappers are pointers or transient wrappers rather than long-lived
  owned objects.
- Modules must not retain raw wrapped objects across callback frames without
  lifetime validation.
- Rendering and tick callbacks may observe different Minecraft state objects.
- Game-mode and packet wrapper layouts are build-dependent.

### MCP state dependency

Bundled MCP assets reach state ID 589. This data is adjacent to, but not the
same as, SDK/native wrapper layouts. A module that interprets block/item state
values may be version-dependent.

## 6. Rendering pipeline

### Java/Android rendering setup

```text
GLES3JNIView constructor
        |
        +-- EGL config RGBA8 + depth16
        +-- EGL context client version 3
        +-- GLSurfaceView.Renderer
        +-- WorkerThread

onSurfaceCreated
        |
        +-- create Minecraft package asset context
        +-- create TextureLoader
        +-- GLES3JNIView.init JNI
        +-- WorkerThread.startRendering
        +-- WorkerThread.requestRender

onSurfaceChanged
        |
        +-- GLES3JNIView.resize JNI
        +-- store Java windowSizeX/windowSizeY

onDrawFrame / WorkerThread
        |
        +-- GLES3JNIView.step JNI
```

### Worker thread relationship

The Java `WorkerThread`:

- waits on a lock
- processes render requests
- limits a frame interval to 16 ms nominally
- enqueues `GLES3JNIView.step()` onto the GLSurfaceView GL queue
- posts Choreographer callbacks that request subsequent renders
- calls `Looper.loop()` after GL scheduling in the worker implementation

The exact threading behavior should be considered fragile and is independent of
module logic. It is an Android lifecycle implementation that needs replacement
or cleanup in any new client.

### Native frame step

`Java_dev_blaze_launcher_GLES3JNIView_step` disassembly calls native functions,
render preparation functions, the custom drawing path, and:

1. native/new-frame-style setup
2. native render/module dispatch
3. custom text/draw functions
4. `glClear(0x4000)`
5. native frame/render completion

The exact symbol names at the internal disassembly addresses are stripped.
Addresses such as `0x29289c`, `0x3fd1bc`, and `0x5b6d0c` cannot be mapped to
source-level functions solely from this APK.

The JNI export itself is confirmed:

```text
JNI step --> native ImGui/new-frame state --> ModuleManager.onImRender
         --> custom/native draw state --> glClear/frame completion
```

`onLevelRender()` and the SDK/world callbacks are separate event opportunities
that feed native scene/world overlays. They are not confirmed to share
`ModuleManager.onImRender` storage.

### Texture and font pipeline

`TextureLoader` gets assets from the Minecraft package context and uploads
Android bitmaps through GLES. Native texture exports include:

- `GLES3JNIView.loadImage`
- `TextureLoader.IJOdfj`
- bitmap-to-GLES registration through JNI-related state

Fonts are loaded into Java/native fields:

- title font data
- global font data
- native ImGui font setup during native initialization

### Input/render state bridge

`MotionEventClick` writes native engine state at offsets on the native object:

- `x/y` coordinates at native object offsets `+0xd04` / `+0xd08`
- click state at `+0xd0c`

`getWindowRect` returns native state to Java as
`x|y|width|height`, allowing Java `WindowManager.LayoutParams` to track the
native overlay.

These native object offsets are verified for this binary, but are internal to
the current native library state and are not portable SDK facts.

## 7. JNI communication map

### Main native exports

| Java class/method | JNI export address | Native role |
|---|---:|---|
| `Start.ooOOOooooOOOo` | `0x6c3a10` | Native repeating/pump operation |
| `GLES3JNIView.init` | `0x55c250` | ImGui/render/native initialization |
| `GLES3JNIView.resize` | `0x55cc80` | Surface size/state update |
| `GLES3JNIView.step` | `0x5c278c` | One native frame/render step |
| `GLES3JNIView.MotionEventClick` | `0x5c2854` | Touch/click state |
| `GLES3JNIView.getWindowRect` | `0x5c288c` | Overlay rectangle |
| `GLES3JNIView.setTranslation` | `0x5c5ed4` | Native translation/value state |
| `GLES3JNIView.loadImage` | `0x5c5f08` | Native image loading |
| `GLES3JNIView.imgui_Shutdown` | `0x5c27bc` | Render cleanup |
| `ClickGuiButton.toggle/getEnable` | `0x5c7040` / `0x5c7200` | Click GUI state |
| `ShortcutButton.toggleModuleByName` | `0x717cd0` | Native module toggle |
| `NativeFunction.sendToClient` | `0x6c38c0` | Native packet/bridge send path |
| `NativeFunction.sendToServer` | `0x6c3968` | Native packet/bridge send path |
| `TextureLoader.IJOdfj` | `0x6c5590` | Native texture operation |
| `JNI_OnLoad` | `0x6c3180` | Native library initialization |

These exports show that JNI is not only a launcher bridge; it is a live control
plane for rendering, module state, textures, network operations, and native
overlay geometry.

### `Start` pump

```text
__Start(Activity) after 4500 ms
        |
        +-- start Java thread
        +-- every 100 ms post to Android main looper
        v
Start.ooOOOooooOOOo JNI
        |
        v
libblaze native pump function
```

The native function address is `0x6c3a10`. Its disassembly checks native runtime
state and constructs native string state before calling internal functions.
The exact downstream function relationships are not fully symbolized.

### Packet send JNI exports

Both send exports:

1. obtain a Java `JNIEnv`
2. convert a Java string argument
3. form a native `std::string`
4. call separate internal native functions

The send-client path calls internal address `0x8c9018`.
The send-server path calls internal address `0x8c9178`.
The same native object state (`0x9a9000 + 0x988` in the PIE-relative disassembly)
is read in both paths.

These addresses are implementation details of `libblaze.so`, not public APIs.
They confirm native packet/send separation, but not protocol semantics.

### `libgojni.so` relationship

Confirmed exports:

- `_cgo_cff97c69fa6a_Cfunc_sendToServer`
- `_cgo_cff97c69fa6a_Cfunc_sendToClient`
- `_cgo_cff97c69fa6a_Cfunc_initHandle`
- `_cgoexp_d870eca5e5f1_HandleMethodSymbol`
- `_cgoexp_d870eca5e5f1_StartConnection`
- C++ named `_Z12sendToServerPc`
- C++ named `_Z12sendToClientPc`

The library is likely a connection/handle implementation in Go, with C/cgo and
C++-named wrappers. The remote protocol, endpoints, Java/native caller
ownership, and connection lifecycle are unverified.

## 8. Hook and dynamic-load relationships

### Verified native loader dependencies

`libblaze.so` dynamically imports and calls:

- `dlopen`
- `dlsym`
- `mprotect`
- pthread APIs
- Android logging
- libc++ runtime
- EGL/GLES/OpenSL ES

The loader call areas include call sites near:

- `0x49a7ac` through `0x49a7dc`
- `0x615f1c` through `0x615f88`

The disassembly loads library handles, calls `dlsym` with computed/split names,
and stores resolved function pointers. This supports:

```text
Minecraft/native library loaded
        |
        v
dlopen/dlsym discovery or handle lookup
        |
        v
resolved native function pointer
        |
        v
hook/patch installation
        |
        v
ModuleManager/game callbacks
```

### Hook dependencies

The exact hook method is unverified. Possible mechanisms are suggested by ELF
imports and call behavior:

- function entry hooks
- virtual/indirect table access
- inline patching
- executable-memory modification through `mprotect`
- dynamic symbol lookup
- GOT/PLT relocation

No public/source-proven hook names were recovered. Specific target functions,
trampoline addresses, patch bytes, and restoration behavior must not be inferred
from the loader call alone.

## 9. Version-dependent dependencies

### Directly version-sensitive

| Dependency | Evidence | Recommendation |
|---|---|---|
| Android package gate | hard-coded `972108003` | replace build check with profile discovery |
| SDK wrapper layouts | `SDK::Actor`, `Player`, `LocalPlayer`, `GameMode` | compile/build a separate adapter per target |
| Hook targets | `dlopen`/`dlsym`, `mprotect`, stripped implementation | profile symbols/addresses and validate |
| Virtual/field access | native wrappers access game objects | no raw module field access |
| Packet structures | packet callbacks and send/export functions | typed packet profile and validation |
| Block/item state IDs | bundled MCP assets through ID 589 | per-profile state tables |
| Pick range/block/world operations | callback signatures with game mode/Vector3 | capability checks per profile |
| Actor target logic | `TargetUtils` and actor callbacks | profile-independent algorithm using adapter data |
| Screen/world conversion | native window and coordinate state | replace with validated adapter methods |
| Native ImGui object offsets | internal native state offsets | isolate from SDK/profile offsets |
| Internal native global state | offsets under binary VA/layout | never expose to modules |

### Must not be reused as fixed assumptions

- `+0xd04`, `+0xd08`, `+0xd0c` native UI fields
- native window rectangle offsets
- Click GUI global byte at `0x988000 + 0xe20`
- Minecraft hook addresses
- SDK wrapper field offsets
- virtual-table indices
- MCP state ID assumptions
- the current package version code

These are evidence from this binary, not portable architecture.

## 10. Components independent of Minecraft internals

The following can be independently reimplemented after preserving the
architectural concepts, without copying proprietary implementations:

### Strongly independent

- Android module registry concept
- Name/ID-based module enable state
- Capabilities/lifecycle declaration for modules
- `onTick`, `onRender`, `onPacket`, and world/block event categories
- Boolean cancel/modify state for packet callbacks
- Click GUI/shortcut UI state
- Per-module enable, position, and display configuration
- JNI boundary design
- Render-frame lifecycle abstraction
- Event listener API
- Texture resource cache interface
- Minecraft build/profile registry

### Mostly independent, Android-specific

- `GLES3JNIView` lifecycle wrapper
- Android overlay `WindowManager` setup
- touch forwarding
- surface resize
- Worker/Choreographer frame scheduling
- EGL/GLES setup
- ImGui initialization and shutdown
- texture/font asset loading
- window rectangle synchronization

These should be reimplemented against current Android APIs and an original
threading/lifecycle policy.

### Architecture-specific but independent if adapter-hidden

- target selection logic
- module event orchestration
- render draw commands
- packet filters and behavior rules
- block interaction logic
- GUI settings persistence
- capability reporting
- diagnostics

The behavior may remain conceptually similar, but its implementation must consume
original typed SDK interfaces instead of raw Minecraft pointers.

### Components that remain Minecraft-bound

- `SDK::Actor`
- `SDK::Player`
- `SDK::LocalPlayer`
- `SDK::GameMode`
- `SDK::Packet`
- `TargetUtils` concrete implementation
- native hook discovery
- native symbol/profile matching
- virtual/field layout access
- block/item state mapping
- world-to-screen conversion
- native packet structures

## 11. Recommended independent architecture

```text
AndroidShell
   |
   +-- Activity lifecycle
   +-- Overlay/window
   +-- EGL/ImGui adapter
   +-- Texture/font loader
   +-- JNI bridge to native core

NativeCore
   |
   +-- ModuleRegistry
   +-- Typed EventBus
   +-- Capability registry
   +-- CompatibilityProfile loader
   +-- Render adapter
   +-- Diagnostics

MinecraftAdapter
   |
   +-- build identification
   +-- symbol/layout verification
   +-- hook profile
   +-- SDK wrappers
   +-- packet profile
   +-- state profile
   +-- screen/world conversion
```

The registry and event bus should not know Minecraft classes. Module callbacks
should receive a stable domain model:

- current player snapshot
- actor snapshots
- world/game-state snapshot
- typed packet envelope
- render draw context
- capability status

The compatibility adapter is the only layer allowed to translate build-specific
objects.

## 12. Independent reimplementation boundary

| Preserve conceptually | Reimplement independently | Must never remain generic |
|---|---|---|
| central `ModuleManager` concept | registry, lifecycle, capability metadata | raw Minecraft pointer assumptions |
| lambda/callback dispatch | typed listener/event API | proprietary callback code |
| SDK wrapper abstraction | stable interfaces and adapters | current binary layouts/offsets |
| ImGui render callback | open-source render adapter and original draw code | proprietary binary hook integration |
| native packet callbacks | typed packet event envelope | unknown packet formats/IDs |
| Android overlay | modern activity/surface lifecycle | direct native-global state fields |
| cgo send/receive concept | documented protocol implementation | unknown endpoints/auth behavior |
| compatibility gate concept | profile and capability validation | single hard-coded version code |

## 13. Final relationship summary

```text
Java UI
  -> JNI exported module controls
  -> libblaze native module state

Android surface
  -> GLSurfaceView/GL worker
  -> GLES3JNIView JNI init/resize/step
  -> native frame state and ImGui draw callbacks
  -> ModuleManager.onImRender

Minecraft native runtime
  -> hook/dynamic-loader observation points
  -> SDK wrapper objects
  -> ModuleManager tick/world/packet/attack callbacks
  -> modules

Native send/receive bridge
  -> libblaze JNI send exports
  -> libgojni Go/cgo connection and handle state

Unsupported newer Minecraft build
  -> package gate stops launch
  -> additionally incompatible SDK/hook/state assumptions
  -> modules must be profiled or disabled
```

The strongest verified architectural contribution is the separation between a
launcher/UI shell, native rendering and event control, callback registration,
Minecraft-facing SDK wrappers, and Android/JNI communication. The strongest
architectural risk is that the callbacks and SDK wrappers are directly tied to
the old game's native layouts.

The stable replacement plan is to preserve the callback registry, UI/render
lifecycle, and typed event concepts while rebuilding the SDK, hook, packet, and
compatibility layers for the target version.

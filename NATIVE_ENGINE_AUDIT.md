# Native Engine Audit: BlazeLauncher

## Scope and limitations

This audit covers:

- `/tmp/blaze-native/lib/arm64-v8a/libblaze.so`
- `/tmp/blaze-native/lib/arm64-v8a/libgojni.so`
- The corresponding Java native declarations and call sites decompiled by JADX
- Read-only ELF metadata, strings, dynamic symbols, JNI exports, and selected disassembly

The original APK and native libraries were not modified.

Static analysis establishes architecture and data flow, but cannot reconstruct every runtime address, hook target, offset, or virtual-method layout without the matching Minecraft process and game library loaded. Some of the most useful native symbols are not in the final binaries or ELF symbol tables. Symbols retained in lambda RTTI/type names and JNI export names provide strong evidence, but ordinary implementation functions are stripped.

Evidence labels used below:

- **Confirmed**: directly established by ELF/Java metadata, strings, or disassembly.
- **Strongly indicated**: supported by multiple native and Java artifacts, but missing runtime verification.
- **Not verified**: requires a running instrumented process, debug information, or source.

## Executive findings

1. `libblaze.so` is an integrated native client engine rather than a thin launcher wrapper. It contains JNI, module dispatch, Minecraft-facing SDK abstractions, rendering, hook/install code, and Minecraft state assets.
2. `libgojni.so` is a separate Go/cgo network or handle bridge. It exports connection and send/receive methods, but the protocol and remote endpoint behavior are not confirmed.
3. The module system is callback-based. `ModuleManager` appears to maintain callback lists and invokes modules at actor, player, game-mode, packet, block, render, and pick-range points.
4. The SDK abstractions are real native wrapper types, but the concrete `SDK::LocalPlayer`, `SDK::Player`, `SDK::Actor`, `SDK::GameMode`, `SDK::Packet`, and `TargetUtils` implementations are tightly coupled to Minecraft layout and virtual calls.
5. ImGui integration is present and native draw-list callbacks are used. Rendering depends on EGL/GLES, native frame state, touch state, texture loading, and game/world coordinate APIs.
6. Dynamic loader and memory-protection imports are confirmed, while specific hook targets and patch locations cannot be attributed without runtime data. `dlopen`, `dlsym`, and `mprotect` are all used in `libblaze.so`.
7. The native engine contains substantial version-specific content, but many infrastructure components are potentially reusable if rewritten or isolated behind compatibility interfaces.
8. The package gate is not the only compatibility issue. Bundled MCP state data, SDK layouts, native hook targets, packet assumptions, and direct game-object access are expected to require version profiling and updates.

## 1. ELF and build shape

### libblaze.so

- Format: ELF64 little-endian AArch64 shared object
- ABI/platform: Android
- Build ID: `82f6b59b31867f12dd714f98eb1930964ef2c285`
- Size: approximately 16 MB
- Main native language: C++
- Runtime: Android libc, Android log, EGL, GLESv3/GLESv2, OpenSL ES, pthread, libdl, zlib, and `libc++_shared`
- Dynamic imports include `dlopen`, `dlsym`, `mprotect`, EGL/GLES functions, pthread functions, and Android logging.

The library contains approximately 100 Java JNI exports, including lifecycle, rendering, touch, module/UI, network, shortcut, and texture operations. Most retained export names belong to the package `dev.blaze.launcher`.

### libgojni.so

- Format: ELF64 little-endian AArch64 shared object
- Architecture: AArch64
- Build shape: Go/cgo
- Build string: `unknown`, with no usable Go version recorded
- Main exported C-facing symbols include:
  - `HandleMethodSymbol`
  - `StartConnection`
  - `initHandle`
  - `sendToServer`
  - `_Z12sendToServerPc`
  - `sendToClient`
  - `_Z12sendToClientPc`
- cgo wrappers and runtime symbols include `_cgo_*` and `_cgoexp_*`.

This library is independent from the ImGui/Minecraft SDK implementation in `libblaze.so`, but both participate in the application's native bridge.

## 2. ModuleManager implementation

### Retained callback evidence

Retained mangled lambda type names identify callback registrations for the following `ModuleManager` methods:

| Callback | Retained native signature evidence |
|---|---|
| Player tick | `onPlayerTick(SDK::LocalPlayer*)` |
| Local-player tick | `onLocalPlayerTick(SDK::LocalPlayer*)` |
| Actor tick | `onActorTick(SDK::Actor*)` |
| Game-mode tick | `onTick(SDK::GameMode*)` |
| Attack | `onAttack(SDK::Actor*)` |
| ImGui render | `onImRender(ImDrawList*)` |
| Level render | `onLevelRender()` |
| Packet send | `onSendPacket(SDK::Packet*, bool&)` |
| Packet out bound | `onPacketOutBound(std::string&, bool&)` |
| Packet in bound | `onPacketInBound(std::string&, bool&)` |
| Block build | `onBuildBlock(Vector3, int, int)` |
| Continue destroy | `onContinueDestroy(GameMode*, Vector3, int)` |
| After destroy | `afterContinueDestroy(GameMode*, Vector3, int)` |
| Stop block destruction | `onStopDestroyBlock()` |
| Pick range | `onGetPickRange()` |

Each callback family also has retained lambda type names for at least two lambda variants. This indicates modules register multiple callback objects, rather than a single virtual update entry point.

### Registration model

**Confirmed:**

- The callback registration mechanism uses `std::__ndk1::__function::__func` function objects with lambdas.
- `ModuleManager` has centralized methods corresponding to game lifecycle, world interaction, packet, and rendering events.
- Native modules expose an enabled state through Java-facing JNI functions.
- Module names are passed as strings from UI JNI functions.

**Strongly indicated:**

- Module registration occurs by installing module callbacks into callback storage inside/around `ModuleManager`, with each module constructing SDK-facing lambdas to its own implementation methods.
- The central module manager dispatches callbacks synchronously into enabled modules.
- JNI acts as the UI control plane, while native callbacks remain the runtime execution plane.

**Not verified:**

- Exact module storage container.
- Module creation constructor calls.
- Priority/ordering policy.
- Thread ownership and locking.
- The complete built-in module registration list.
- Whether callbacks are copied, moved, or shared by reference.

### Visible modules

Strings and native references identify modules including:

- ESP
- Aura
- AimBot
- HitBox
- Tracer
- NameTag
- MotionAura
- InfiniteAura
- AutoGapple

Their exact registration constructors and runtime implementations are not fully reconstructable from stripped symbols alone. UI-only or name-only matches must not be treated as proof that a module is active or functional.

### Native UI controls

Confirmed exported functions include:

- `Java_dev_blaze_launcher_ui_ClickGuiButton_toggle`
- `Java_dev_blaze_launcher_ui_ClickGuiButton_getEnable`
- `Java_dev_blaze_launcher_ui_ShortcutButton_toggleModuleByName`

This provides a direct JNI path from Java UI state to native module state. `GLES3JNIView` also stores module/shortcut positions and values under native rendering state.

## 3. Native SDK architecture

### Wrapper model

The retained type names show SDK wrappers for game objects rather than direct Java-level game state:

- `SDK::LocalPlayer`
- `SDK::Player`
- `SDK::Actor`
- `SDK::GameMode`
- `SDK::Packet`
- `TargetUtils`
- `Vector3`
- other SDK/MC utility types

The wrapper model appears to wrap pointers or game objects and exposes tick, attack, actor, packet, and world operation callbacks.

### Object interaction

**Strongly indicated:**

- The engine obtains or receives game pointers from native Minecraft functions/hooks.
- Module callbacks receive SDK wrappers or Minecraft wrapper arguments such as game mode, actor, local player, and packet.
- SDK methods read fields or call virtual/native methods through a class layout or pointer chain.
- Rendering derives screen position and actor targets from these native objects.

**Not verified:**

- Exact SDK wrapper constructors and pointer ownership.
- Whether wrappers are owning pointers, non-owning pointers, caches, or value wrappers.
- Complete member layouts.
- Method signatures and virtual-table indices.
- Runtime validity checks and lifetime rules.

`TargetUtils` indicates central target filtering/ranking logic. Its exact selection criteria are not confirmed.

## 4. Event dispatch system

### Native event types

Retained event-type names include:

- `10ActorEvent`
- `14SetActorMotion`
- `15SetPlayerHealth`
- `17SetPlayerGameType`

Other dispatch points exist at packet and game-object callbacks rather than a simple list of names.

### Dispatch layers

The application has at least three event/control layers:

1. **Android/Java UI events**
   - UI buttons call JNI exports.
   - JNI exports update native module/UI state.
2. **Native game callbacks**
   - Hooked game functions call `ModuleManager` callback methods.
   - Tick, actor, packet, block, and level-render callbacks fan out to registered modules.
3. **Native/Go bridge communication**
   - Java network functions reach `libblaze.so`.
   - `libblaze.so` bridge functions reach `libgojni.so` or its connection machinery.
   - Java receives native short/button status from separate exports.

### Ordering and threading

**Not verified:** callback order, reentrancy protection, synchronization, callback registration lifetime, packet callback execution thread, and cross-thread ownership.

The static evidence does not establish whether dispatch is serialized. Reentrant or concurrent callbacks should not be assumed safe.

## 5. Rendering and ImGui integration

### Rendering chain

Confirmed from JNI symbols and disassembly:

1. `GLES3JNIView.init`
2. `GLES3JNIView.resize`
3. `GLES3JNIView.step`
4. Native new-frame/render functions
5. `onImRender(ImDrawList*)`
6. Custom/native draw and texture calls
7. `glClear` and final GLES operations

JNI exports cover:

- Window resize
- Frame step
- ImGui shutdown
- Touch/click
- Window rectangle
- Translation state
- Generic native values
- Image/texture loading

### Evidence for ImGui

- Retained callback signature: `onImRender(ImDrawList*)`.
- Native symbols/decompiled code reference ImGui initialization and shutdown.
- `libblaze.so` exports `GLES3JNIView_imgui_Shutdown`.

### Touch and coordinate state

Disassembly of `MotionEventClick` indicates native state writes near offsets `+0xd04`, `+0xd08`, and `+0xd0c`.

Disassembly of `getWindowRect` indicates native world-to-screen/window state reads near offsets around:

- `+0x10`
- `+0x18`
- separate `x/y` coordinate fields

These offsets are **not portable Minecraft ABI offsets** and are native engine/UI object offsets based on the APK binary. They still require runtime verification before reuse in another build.

### Independent rendering components

Potentially reusable architectural components include:

- `GLES3JNIView` lifecycle wrapper
- Frame callbacks
- Touch forwarding
- Window rectangle conversion
- Texture loading interface
- ImGui frame lifecycle
- Shortcut and Click GUI state bridges

They remain Android/EGL-specific and still need source-level cleanup, but they do not inherently require one Minecraft build if game-world data is replaced behind an interface.

## 6. Native hooks and dynamic loading

### Dynamic loader

`libblaze.so` has direct imports and call sites for:

- `dlopen`
- `dlsym`
- `mprotect`

`dlopen` call sites are present in the loader-related regions, including addresses around `0x49a7ac` and `0x615f1c`. The code passes a library handle from one call into subsequent symbol lookup calls.

The exact library names and symbol names at loader call sites were not fully resolved into confirmed strings in this static pass; some targets may be computed or stored in relocated data. A loader call alone does not identify a Minecraft hook name or ABI.

### Existing memory modification

The confirmed presence of `mprotect` indicates executable-memory permission changes exist in the binary. It does not by itself prove any particular patch method.

Strongly indicated possibilities include:

- Inline code patching
- Function entry hooks
- GOT/PLT redirection
- Hook trampoline installation
- Restoration or relocation of executable pages

**Not verified:**

- Exact hook framework/library
- Hook targets
- Patch sizes
- Hook entry/return addresses
- Concurrency and exception safety
- Whether hooks survive target process updates

No Minecraft function symbol set or address profile could be confirmed statically. Hook/trampoline implementation should be treated as version-dependent.

## 7. JNI bridge architecture

### libblaze.so JNI

`JNI_OnLoad` is present at export address `0x6c3180`.

Confirmed Java-to-native exports include, at minimum:

- Rendering lifecycle and ImGui
- Native frame stepping
- Native touch/click
- Window rectangles and translations
- Generic native values
- Shortcut positions and toggle state
- Texture loading
- Network send-to-server/send-to-client
- Native repeating runner `Start.ooOOOooooOOOo`

The native bridge is mixed:

- direct JNI for UI/render state
- native state passed through generic integers/values
- native callbacks for SDK/world state
- a cgo-backed communication library for selected network operations

### libgojni.so Go/cgo bridge

Confirmed exports:

- `HandleMethodSymbol`
- `StartConnection`
- `initHandle`
- `sendToServer`
- `sendToClient`

There are C cgo callback wrappers for all four operations.

The code contains Go networking runtime symbols, network-address resolution (`getaddrinfo`, DNS, TCP), and cgo pointer wrappers. This strongly indicates network connection and method dispatch functionality, but it does not establish:

- remote hosts or domains
- authentication
- protocol format
- message encryption
- whether traffic is game-oriented, launcher-oriented, telemetry, or auxiliary
- thread-lifetime ownership
- the Java-facing JNI contract

## 8. Version-specific offsets and structures

### Confirmed version-coupled evidence

- MCP state assets include block/item state IDs through ID 589.
- SDK callback wrappers interact with current native Minecraft class layouts.
- Native event names correspond to game-state transitions but their dispatch requires game objects.
- Direct native object and screen/window state offsets are embedded.
- Hook/dynamic-symbol logic must discover or patch Minecraft functions.
- Version checks block the launcher before native initialization.
- Supporting a new Minecraft build requires matching native ABI and layout information.

### Offset handling model

No separate source-level compatibility profile, offset table, symbol database, or version registry was confirmed in the native binaries.

The most likely model is compiled-in assumptions:

- fixed SDK field/read offsets
- fixed virtual function or vtable assumptions
- fixed module function dispatch targets
- fixed native state offsets
- fixed MCP state identifier tables

This should not be promoted from "strongly indicated" to "confirmed" for each individual offset without runtime reconstruction.

### MCP state data

The MCP data asset set reaches runtime block/item state ID 589. It is evidence that a static state database is shipped, but it is not evidence that 1.26.52.3 state IDs remain compatible.

## 9. Independent vs version-dependent components

### Potentially preserveable with adapter/refactoring

| Component | Reuse assessment | Conditions |
|---|---|---|
| Android dashboard/lifecycle | Moderate | Preserve launcher UI only if package-specific code is replaced behind clean interfaces |
| GLES/EGL frame wrapper | Moderate | Make surface/frame lifecycle explicit and remove engine-global assumptions |
| ImGui frame lifecycle | Moderate | Isolate Dear ImGui version and adapter from SDK/game code |
| Touch forwarding | Moderate | Define normalized Android input events and add lifecycle cleanup |
| Module API/Callbacks | Moderate as an architecture pattern | Recreate clean interfaces; do not copy proprietary implementation |
| Click GUI/shortcut UI | Moderate | Separate configuration/UI state from native module implementation |
| Texture loader | Moderate | Replace with an auditable loader and caching policy |
| Packet send/receive module callbacks | High architectural value | Replace direct memory assumptions and define packet types safely |
| Event abstraction | High architectural value | Use typed/version-neutral event objects and thread-safe dispatch |
| Module enable/configuration model | High architectural value | Define serialization and capability metadata |
| Native/Java bridge shape | Moderate | Redesign for explicit ABI and lifecycle contracts |
| Go/cgo connection code | Case-dependent | Audit protocol and licensing; reimplement if purpose is unknown |

### Version-dependent components

These should be replaced or profiled per Minecraft build:

- Minecraft SDK wrapper layouts
- Minecraft virtual methods and symbols
- game-object pointer chains
- actor/player/game-mode field access
- native event hook targets
- inline patch/trampoline targets
- packet structures and packet IDs
- pick-range/world interaction behavior
- block/item state tables
- screen/world transformation internals
- target filtering depending on game internals
- native ECS/composition assumptions, if actually present

### Items requiring replacement regardless of compatibility

1. Compiled-in target offsets should become explicit compatibility profiles, not code constants.
2. Hook installation should be capability-based and independently logged.
3. Module availability should be gated by profile capabilities, not one package gate.
4. Direct/raw packet manipulation should remain isolated from UI and core setup.
5. Network protocol behavior of `libgojni.so` should be documented or reimplemented.
6. Unknown proprietary implementations should not be copied if they cannot be independently licensed or maintained.

## 10. Compatibility recommendation

Do not modify the package gate alone or add a new supported-version string.

The engine should be refactored into:

1. A launcher/Android shell
2. A build-neutral module framework
3. A typed event bus
4. An EGL/ImGui render adapter
5. A Minecraft compatibility profile
6. A version-specific SDK implementation
7. A hook/symbol discovery layer
8. A capability/canary status model

Each module should declare capabilities such as:

- requires local-player layout
- requires actor collection/layout
- requires packet send hook
- requires packet receive hook
- requires world/block state tables
- requires pick-range method
- requires screen-space transform

At startup, the profile should:

- identify the installed Minecraft build
- load only matching symbol/layout data
- verify each offset or symbol against multiple criteria
- disable incompatible modules
- leave rendering and launcher functionality available where possible

A compatibility profile should never silently treat a version mismatch as success.

## 11. Recommended native implementation roadmap

### Phase A: freeze and document

- Keep the original APK as a read-only reference artifact.
- Snapshot `libblaze.so`, `libgojni.so`, APK SHA-256, manifests, JNI mappings, and asset sets.
- Record every native state assumption as a candidate version-dependent field.

### Phase B: separate reusable infrastructure

- Extract the Android surface/frame lifecycle into a source-controlled implementation.
- Define a replacement event interface and module registry.
- Add module capability metadata and lifecycle state.
- Replace global native/UI state with explicit owners.

### Phase C: establish compatibility profiling

- Create Minecraft build identification independent of launcher `versionCode`.
- Store symbol/layout/hook profiles separately from modules.
- Add runtime discovery and validation before enabling hooks.
- Add per-module diagnostic status: available, disabled, degraded, or error.

### Phase D: build new SDK boundaries

- Introduce stable interfaces for local player, actor/player, world/game mode, packet, and rendering.
- Implement adapters for each Minecraft build.
- Never expose raw fixed offsets to modules.
- Ensure wrappers check object lifetime and invalid pointers.

### Phase E: replace native hooks cautiously

- Discover symbols first.
- Prefer stable public/native extension APIs only if available.
- Use guarded patch/application profiles.
- Restore hooks on shutdown.
- Test on supported devices and target builds.

### Phase F: packet/network isolation

- Document or independently implement every `libgojni.so` function.
- Separate cgo ownership, memory lifetime, and callback behavior.
- Define explicit thread and protocol boundaries.
- Remove any unknown remote behavior until authorized and audited.

### Phase G: validation

- Test launcher startup and version mismatch.
- Test module registration with no game library loaded.
- Test individual module enable/disable.
- Validate hook installation and restoration.
- Validate actor/player lifetimes.
- Run frame rendering and ImGui under surface recreation and Android background/foreground transitions.
- Add crash and capability diagnostics per profile.

## 12. Verified native relationship map

```text
Android DashboardFragment
        |
        | Play button / package gate
        v
GameActivity / AdActivity
        |
        v
Start + GLES3JNIView
        |
        +--> libblaze JNI exports
        |       |
        |       +--> native frame lifecycle
        |       +--> EGL/GLES/ImGui rendering
        |       +--> touch/window state
        |       +--> ModuleManager
        |       |       |
        |       |       +--> tick callbacks
        |       |       +--> actor/player callbacks
        |       |       +--> packet callbacks
        |       |       +--> world/block callbacks
        |       |       +--> ImGui/render callbacks
        |       |
        |       +--> Minecraft-facing SDK wrappers
        |       +--> native hooks/symbol loader/memory protection
        |
        +--> NativeFunction JNI methods
                |
                v
            libgojni.so
                |
                +--> cgo/Go handle/connection functions
                +--> sendToServer / sendToClient
```

## Conclusion

The native engine contains a substantial reusable architectural pattern: a centralized module registry, typed callback areas, a native SDK abstraction, an Android UI bridge, an ImGui render path, and independent Go/cgo communications. However, support for a newer Minecraft version cannot be achieved by changing the displayed supported string. The engine's direct SDK assumptions, hook targets, state tables, and native layout dependencies form the compatibility boundary.

A successful independently maintained client should preserve the architecture only where the implementation can be licensed, maintained, and separated from Minecraft build-specific assumptions. Each module should become capability-driven, and each Minecraft build should have an explicit compatibility profile verified at runtime.

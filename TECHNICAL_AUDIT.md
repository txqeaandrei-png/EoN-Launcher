# BlazeLauncher Technical Audit

Audit date: 2026-10-30  
Artifact: `BlazeLauncher.apk`  
SHA-256: `6a2ad2f85ec34cdcd9569aeb50e096d9c88a1a2f3084af2cf4567ea3bda334e1`

## Scope and limitations

The APK was inspected read-only with ZIP listing, Apktool 3.0.3, JADX 1.5.6, and
ELF/string tools. No extracted source, native library, or APK file was modified.

This is a static architecture audit. It does not execute the launcher on a device,
hook a live Minecraft process, or identify live memory addresses. Therefore:

- Confirmed: decompiled Java control flow, manifest/package data, ELF imports,
  exported JNI symbols, native RTTI/string remnants, and bundled assets.
- Not confirmed: exact runtime offsets, live hook targets, memory-layout fields,
  Minecraft symbol availability, and `libgojni.so` application protocol.
- Assumption: the old supported build associated with version code `972108003`
  corresponds to one of the project's stated 1.21.51/1.21.81 baselines. This
  association is consistent with project context but is not independently
  proven by the static APK alone.

## Executive summary

BlazeLauncher is a patched launcher wrapper around the official installed
`com.mojang.minecraftpe` application:

1. Its dashboard checks the Minecraft package's Android version code.
2. A hard-coded comparison to `972108003` gates the launch.
3. If accepted, it starts Blaze's `GameActivity`.
4. `GameActivity` inherits the official Minecraft `MainActivity`.
5. It loads `libblaze.so`, creates overlay surfaces, forwards touch events, and
   repeatedly invokes native engine entry points.
6. The native engine contains a Minecraft SDK abstraction, module manager,
   event callbacks, packet hooks, ImGui-style rendering, Minecraft runtime-ID
   data, and dynamic/native memory integration.

The observed `Unsupported Version: 1.26.52.3` message is confirmed to come from
the package-code gate. It is not the only blocker: static evidence also shows
version-sensitive native SDK and state assumptions that require update or
replacement before the newer build can be supported safely.

## 1. Package and APK structure

### Manifest facts

| Item | Finding |
|---|---|
| Application package | `dev.blaze.launcher` |
| Application class | `dev.blaze.launcher.App` |
| Launcher activity | `dev.blaze.launcher.MainActivity` |
| Game activity | `dev.blaze.launcher.GameActivity` |
| Target Minecraft package | `com.mojang.minecraftpe` |
| Game inheritance | `GameActivity` -> `AdActivity` -> `com.mojang.minecraftpe.MainActivity` |
| Game native-library metadata | `android.app.lib_name = minecraftpe` |
| ABI | `arm64-v8a` only |
| Compile SDK metadata | 35 / Android 15 |
| DEX files | `classes.dex` through `classes5.dex` |

The manifest declares INTERNET, network/wifi state, wake lock, vibration,
notification, foreground service, external storage, `MANAGE_EXTERNAL_STORAGE`,
`QUERY_ALL_PACKAGES`, C2DM, and cleartext HTTP support. It also enables legacy
external-storage behavior.

### APK contents

Native libraries:

| Library | Size in APK | Architecture | Role |
|---|---:|---|---|
| `libblaze.so` | 10,023,056 bytes | arm64-v8a | Native engine, JNI bridge, rendering, hooks/modules |
| `libgojni.so` | 9,056,776 bytes | arm64-v8a | Go/cgo-style runtime and native bridge; role only partially identified |
| `libc++_shared.so` | 1,027,408 bytes | arm64-v8a | C++ runtime |

`libblaze.so` build ID is
`82f6b59b31867f12dd714f98eb1930964ef2c285`. It was compiled for AArch64 and
links libc++, zlib, Android logging/Android APIs, EGL, GLESv2/3, OpenSL ES,
libc, libm, and libdl. Its dynamic imports include `dlopen`, `dlsym`,
`mprotect`, and pthread APIs, confirming native loading and memory-protection
behavior.

## 2. Application startup and integration

### `dev.blaze.launcher.App`

`App.attachBaseContext()` performs:

- Resource and native installer construction.
- Android class-loader/native-library-path patching.
- Loading native libraries from the launcher/native extraction locations.
- Startup configuration for Firebase/Braze/Xbox-related application components.

`App.patchNativeLibraryDir()` reflects into Android/Dex class-loader structures.
This is compatibility code for older/newer Android class-loader layouts and adds
launcher native paths. It is separate from the Minecraft package's normal native
loading.

### `NativeInstaller`

`NativeInstaller` extracts and installs libraries for the device ABI. It supports
both regular APK and split/app-bundle source layouts. Its extracted libraries
include:

- `libblaze.so`
- `libgojni.so`
- `libc++_shared.so`

### `Patcher` and asset overlay

`Patcher.patchNativeLibraryDir()` adds extracted native paths to Android
class-loader/native search structures.

`AdActivity.getAssets()` combines the Minecraft APK's asset manager and the
BlazeLauncher asset manager. This overlays launcher resources onto the official
Minecraft package context, but it does not itself create a separate game binary.

## 3. Play button flow

The dashboard is implemented by `dev.blaze.launcher.ui.dashboard.DashboardFragment`.
In the temporary decompiled source, it is present at
`/tmp/blaze-jadx/sources/dev/blaze/launcher/ui/dashboard/DashboardFragment.java`.

Confirmed flow:

1. The Play listener sets `isNeedStart = true`.
2. It checks the device architecture for ARM64/AArch64.
3. It calls Android's package manager for
   `com.mojang.minecraftpe`.
4. It reads `PackageInfo.versionCode`.
5. If the value is not `972108003`, it builds and displays:
   `Unsupported Version: ` + `PackageInfo.versionName`.
6. On a matching build it shows `Minecraft Starting...`, waits 3000 ms, and
   checks `isNeedStart` again.
7. It starts `dev.blaze.launcher.GameActivity` with a normal Android `Intent`.

The exact comparison is:

```java
PackageInfo packageInfo =
    packageManager.getPackageInfo("com.mojang.minecraftpe", 0);
if (packageInfo.versionCode != 972108003) {
    // Snackbar: "Unsupported Version: " + packageInfo.versionName
}
```

The obfuscated helper `C0308.m1826()` simply casts the object to
`android.content.pm.PackageInfo` and returns `.versionCode`, confirmed in the
decompiled helper class.

No package-name, signature, or native-feature validation is performed after this
single numeric gate.

## 4. Game activity startup

[`GameActivity.java`](/tmp/blaze-jadx/sources/dev/blaze/launcher/GameActivity.java)
extends `AdActivity` and therefore the official Minecraft `MainActivity`.

`GameActivity.onCreate()`:

1. Calls the inherited Minecraft activity startup chain.
2. Shows the launcher privacy dialog.
3. Calls `System.loadLibrary("blaze")`.
4. Calls `Start._Start(this)`.
5. Calls `Start.__Start(this)`.

`Start._Start()` waits 3000 ms and then posts creation of the native/GLES
overlays. `Start.__Start()` waits 4500 ms, starts a thread, and every 100 ms
posts `Start.ooOOOooooOOOo()` onto the Android main looper.

`Start.Start(context)`:

- Gets the game window manager.
- Creates a touch forwarding view and a `GLES3JNIView` overlay.
- Adds both views as system/window overlay views.
- Forwards ACTION_DOWN/ACTION_UP/ACTION_MOVE to JNI.
- Polls `getWindowRect()` once per second and updates overlay bounds.
- Creates the ClickGUI/logo button.

The result is a launcher-owned activity/window over Minecraft's existing
activity/process rather than a standalone Bedrock executable.

## 5. Java/Kotlin architecture and dependencies

Important classes:

| Class | Responsibility |
|---|---|
| `dev.blaze.launcher.App` | Application startup, installers, native/class-loader patching |
| `dev.blaze.launcher.MainActivity` | Top-level launcher/dashboard shell |
| `dev.blaze.launcher.ui.dashboard.DashboardFragment` | Play button and package-code gate |
| `dev.blaze.launcher.AdActivity` | Official Minecraft activity inheritance and asset overlay |
| `dev.blaze.launcher.GameActivity` | Loads native engine and starts Minecraft activity |
| `dev.blaze.launcher.Start` | Creates overlay windows and native pump loop |
| `dev.blaze.launcher.GLES3JNIView` | GLSurfaceView, renderer, touch forwarding, native bridge |
| `dev.blaze.launcher.ui.ClickGuiButton` | JNI-backed launcher ClickGUI toggle |
| `dev.blaze.launcher.ui.ShortcutButton` | JNI-backed module shortcut UI |
| `dev.blaze.launcher.utils.Patcher` | Class-loader/native library and asset patching |
| `dev.blaze.launcher.task.NativeInstaller` | Extract native libraries |
| `dev.blaze.launcher.task.ResourceInstaller` | Extract MCP resources and launcher assets |
| `dev.blaze.launcher.network.NativeFunction` | JNI send/receive bridge wrappers |
| `dev.blaze.launcher.utils.TextureLoader` | Native-loaded Minecraft/launcher textures |

The bulk of Java names is obfuscated/generated into helper classes. Deobfuscated
source therefore depends heavily on string and control-flow reconstruction.

Framework/dependency evidence includes:

- AndroidX AppCompat, Activity, Fragment, ConstraintLayout, Window
- Kotlin/AndroidX/Kotlin coroutines
- Material Components
- Google Firebase and Play services
- Braze SDK
- Xbox/XAL and Microsoft identity UI components
- OkHttp, Apache HTTP/Simple XML
- Spongy Castle
- OpenGL ES 3 and Android GameActivity/Minecraft classes

## 6. JNI and native bridge

Confirmed exports from `libblaze.so` include:

- `GLES3JNIView.init`
- `GLES3JNIView.resize`
- `GLES3JNIView.step`
- `GLES3JNIView.MotionEventClick`
- `GLES3JNIView.getWindowRect`
- `GLES3JNIView.loadImage`
- `GLES3JNIView.setTranslation`
- `GLES3JNIView.setValue`
- `GLES3JNIView.imgui_Shutdown`
- `GLES3JNIView` shortcut get/set helpers
- `Start.ooOOOooooOOOo`
- `NativeFunction.sendToServer`
- `NativeFunction.sendToClient`
- `TextureLoader.IJOdfj`
- `ClickGuiButton.toggle/getEnable`
- `ShortcutButton.toggleModuleByName`

Java owns the Android window, GLSurfaceView, Activity, dialogs, and texture
contexts. Native code owns the render loop/ImGui state, touch state, module
callbacks, and likely in-process Minecraft interaction.

Native-to-Java callbacks visible from static code include:

- `openLinkInBrowser`
- `showDialog`
- `showToast`
- `addToCircleWheel`
- `removeFromCircleWheel`
- `toggleShortcut`
- `updateShortcut`

## 7. Native engine architecture

Static RTTI and symbol remnants confirm native concepts equivalent to:

- `SDK::LocalPlayer`
- `SDK::Player`
- `SDK::Actor`
- `SDK::GameMode`
- `SDK::Packet`
- `TargetUtils`
- `ModuleManager`
- `Module` callbacks for player tick, local-player tick, actor tick, game-mode
  tick, attack, render, packet in/out, block build/destroy, world render, pick
  range, and packet state changes.

Examples of native event/type names include:

- `10ActorEvent`
- `14SetActorMotion`
- `15SetPlayerHealth`
- `17SetPlayerGameType`

The native module `strings` evidence also confirms named modules:
`AutoGapple`, `ESP`, `Aura`, `AimBot`, `HitBox`, `Tracer`, `NameTag`,
`MotionAura`, and `InfiniteAura`, plus ClickGUI integration.

The native engine uses ImGui/`ImDrawList`-style rendering callbacks for overlays.
`GLES3JNIView` supplies the EGL/GLES3 Java surface, while native code executes
`init`, `resize`, and each frame's `step`.

This is an in-process, object-memory-oriented SDK, not a standalone API client.
It must locate and interpret official Minecraft objects/functions to operate.

## 8. Minecraft version detection and state data

Two separate version mechanisms were observed:

### Android launcher gate

Confirmed:

- Reads installed package `com.mojang.minecraftpe`.
- Uses the Android long-form `PackageInfo.versionCode`; here code decompilation
  confirms an integer and `972108003`.
- Compares exactly with `972108003`.
- Displays `packageInfo.versionName` when mismatched.

### MCP state-table assets

The APK bundles MCP data under `assets/mcpedata/`:

- `blocks/runtime_block_states_<protocol>.dat`
- `items/runtime_item_states_<protocol>.json`
- Versions represented in the last data include protocol/state IDs through 589.

The APK also bundles block hardness, item tags, item indexes, block indexes,
translation configuration, fonts, textures, and UI resources.

Presence of assets for IDs up to 589 does not prove support for Bedrock
1.26.52.3. Minecraft protocol/version numbering and Android package version code
are separate compatibility dimensions.

## 9. Compatibility findings

### Confirmed compatibility blockers

1. **Exact package gate**
   The Play button rejects every package whose `versionCode` differs from
   `972108003`. This explains the current UI result and must be redesigned.

2. **Native engine is old-build-specific**
   Native classes and callbacks refer to direct SDK objects (`Actor`, `Player`,
   `LocalPlayer`, `GameMode`) plus module behavior. The APK contains no generic
   Bedrock API layer or version-independent adapter.

3. **Memory/function integration is not verified as generic**
   Imports for `dlopen`, `dlsym`, and `mprotect`, plus native SDK and event
   symbols, indicate dynamic/native in-process integration. Static analysis did
   not establish symbol-independent discovery or a versioned layout database.

4. **Bundled runtime state data is protocol/version-specific**
   The assets contain state tables up to protocol/state ID 589. No
   1.26/2026 Minecraft state bundle was observed.

5. **ARM-only launcher**
   The APK has no ARM32 or x86/x86_64 native library. Unsupported architectures
   can never reach the native engine.

6. **Obfuscated update surface**
   Java package launch logic is heavily obfuscated helper-based, which is
   maintainability/reverse-engineering cost rather than a runtime blocker.

### Confirmed native coupling signals

- Direct SDK types for local player, player, actor, game mode, packet, and
  target selection.
- Native callbacks for tick/render/attack/destruction/packet events.
- `mprotect` and dynamic loader imports.
- Native `oFFSET` marker and MCP state assets.
- OpenGL ECS-style render integration through JNI.

### Not confirmed

- Exact old-game memory offsets or function addresses.
- Whether current native hooks target source symbols or hard-coded addresses.
- Whether symbol scanning exists and supports the newer game.
- Whether 1.26.52.3 changes SDK layouts/field order/function signatures.
- Exact purpose of every `libgojni.so` function.
- Whether dynamic link symbols are available in the installed Minecraft binary.

## 10. Components that could be preserved

These components are reusable conceptually, subject to licensing review:

- Android dashboard shell and navigation.
- Package discovery/installed-app UX.
- Activity inheritance pattern and asset overlay.
- Lifecycle/window overlay setup.
- GLSurfaceView and touch forwarding architecture.
- ImGui-like overlay concept.
- Module manager/event callback design.
- Configuration and translation framework.
- Texture/font loading abstractions.
- JNI Java callback conventions.

Native functions that directly decode Minecraft memory/layouts should not be
preserved unchanged. UI and lifecycle code may be retained only where it is
legally and contractually available for reuse and compatibility bugs are
handled.

## 11. Components requiring replacement or updating

1. **Version gate**
   Replace the fixed package-code gate with an explicit compatibility matrix.
   Prefer native capability detection, exact build metadata, and signed build
   identity over version-name string matching.

2. **Minecraft SDK**
   Generate/maintain versioned actor, player, local-player, packet, level,
   game-mode, inventory, and rendering adapters.

3. **Offsets/layout database**
   Replace any hard-coded layout assumptions with a tested version profile,
   runtime validation, and safe fallback/disable behavior.

4. **Hook discovery**
   Replace blind function/memory assumptions with validated symbol/signature
   discovery, versioned signatures, and crash-safe rollback.

5. **Protocol/state database**
   Add state tables and parsers for the target Bedrock build, versioned by
   protocol/build ID and independently validated.

6. **Native ABI**
   Add supported ABI builds or reject unsupported architectures explicitly.

7. **Event dispatch**
   Replace direct native callbacks where layout-sensitive with one stable
   internal event API.

8. **Rendering**
   Add target-build-sensitive world projection and preserve only rendering
   utilities proven against the current EGL/GLES and game versions.

9. **`libgojni.so` integration**
   Document, replace, or isolate it according to its verified purpose. Do not
   assume it is a game compatibility layer.

## 12. Recommended implementation roadmap

### Phase 0: Ownership and baseline

- Obtain all source code and legal rights needed for continued maintenance.
- Record the provenance/license of every reused component.
- Create clean independent Android build sources instead of patching proprietary
  binaries where rights do not permit it.
- Remove secrets/credentials and third-party analytics from future builds if
  not required.

### Phase 1: Compatibility boundary

- Install a controlled Minecraft 1.26.52.3 ARM64 build in a test environment.
- Replace the Play gate with build metadata plus launcher capability checks.
- Detect architecture, package, signature, native files, ABI, package code, and
  version name.
- Add explicit `SUPPORTED`, `UNKNOWN`, and `UNSUPPORTED` states.

### Phase 2: Engine separation

- Split Android UI/lifecycle, SDK adapter, rendering, event bus, and Minecraft
  integration behind interfaces.
- Do not bind UI modules directly to raw pointers.
- Keep old Blaze layout access in a compatibility adapter only.

### Phase 3: Symbol/layout discovery

- Inventory the installed game's ELF sections, exports, imports, symbols if
  present, and binary build ID.
- Define a profile schema containing build identity, required symbols/signatures,
  layout offsets, and state-table ID.
- Validate every profile in a device test harness before enabling modules.

### Phase 4: Incremental module port

Port modules one at a time in order:

1. Rendering/world primitives.
2. Local-player reads.
3. Actor/entity enumeration.
4. Target selection.
5. Input/game-mode callbacks.
6. Packet/events.
7. Destructive/block-action modules.

Each module should be disabled automatically if an SDK profile cannot satisfy
its required capabilities.

### Phase 5: Stability and release validation

- Test launch, activity resume/pause, rotation, renderer teardown, overlays,
  touch forwarding, and process recovery.
- Add crash reporting without capturing personal data unnecessarily.
- Add ABI and build-specific profile tests.
- Publish a compatibility matrix generated from actual device runs.
- Never claim support solely from a matching package-version string.

## Conclusion

The immediate Play-button failure is confirmed: Minecraft 1.26.52.3 has package
version code different from `972108003`, so the dashboard intentionally rejects
it.

Changing that integer or the displayed version name would only bypass the UI
gate. The native SDK, hooks, callback layouts, state tables, and binary
integration remain build-specific until independently mapped and validated for
the target build.

A stable port should preserve launcher UX, Android window/overlay structure, the
event/module design, and GLES/JNI boundaries where legal. It should replace
fixed package validation, build-specific native SDK assumptions, offsets,
signatures, and state data with version profiles and capability-based module
enablement.

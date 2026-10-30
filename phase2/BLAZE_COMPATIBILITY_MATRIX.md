# Blaze Compatibility Matrix

## Findings status legend

- **Confirmed**: directly verified in the recovered APK or Phase 1 report
- **Strongly indicated**: supported by static evidence but not runtime-proven
- **Unknown**: not recoverable from static extraction
- **Requires runtime testing**: must be validated on an ARM64 device/emulator running the target build

## Version gate

| Component | Status | Evidence and implication |
|---|---|---|
| Old package gate | Confirmed | Blaze checks `PackageInfo.versionCode == 972108003`. |
| Target package code | Confirmed | Target package reports `972605203`. |
| Gate result | Confirmed | The target code differs from the old gate, so the old gate blocks 1.26.52.3 before launch. |
| Gate replacement sufficient | Confirmed no | The APK comparison is blocked only as a first check; native compatibility is unverified. |

## Package and Android architecture

| Component | Status | Compatibility result |
|---|---|---|
| Launcher package/UI | Strongly indicated reusable | Blaze package/dashboard structure remains independent of target Minecraft internals. |
| Minecraft package name | Confirmed | Target remains `com.mojang.minecraftpe`; package-name-based launch assumptions remain valid. |
| Target SDK 36/min SDK 32 | Confirmed | API behavior and overlays require target Android verification. |
| Game activity inheritance | Confirmed preservation concept | Blaze inherits Minecraft `MainActivity`; target also uses `com.mojang.minecraftpe.MainActivity`. |
| Target uses Google Game Activity | Confirmed | Target `MainActivity` extends `com.google.androidgamesdk.GameActivity` through its hierarchy. |
| Asset merger reflection | Requires runtime testing | Java asset merging is preserved code only if Android/target asset APIs remain compatible. |
| Native-library class-loader patching | Requires runtime testing | Existing Blaze reflection/patching is Android/API-version sensitive. |

## Native library compatibility

| Component | Status | Compatibility result |
|---|---|---|
| `libblaze.so` | Confirmed historical | Cannot be considered target-compatible; it targets historical Blaze assumptions. |
| `libgojni.so` | Confirmed absent from target | Separate target bridge; not evidence of target/Blaze incompatibility by itself. |
| Blaze JNI exports | Confirmed historical | The target exports different Minecraft-native JNI names; direct ABI compatibility is unknown. |
| Target `libminecraftpe.so` | Confirmed | ARM64 ELF build ID `56de9eed077631e03a31f4f58eb2f0e00071d335`. |
| Target native dependencies | Confirmed | GLES/EGL, C++, FMOD, HTTP, PlayFab, MAE, PairIP, Android and libc dependencies. |
| Native hook targets | Unknown | No target offsets, hook addresses, or virtual-table indices should be assumed. |
| Native module SDK wrappers | Strongly indicated incompatible | Old wrappers target historical Minecraft object layouts. |
| Native function calling | Requires runtime testing | Signature compatibility and ABI behavior cannot be established statically. |

## Module system and callbacks

| Component | Status | Compatibility result |
|---|---|---|
| Blaze Java module toggles/UI | Strongly indicated reusable | UI names, Java shortcut controls, ImGui bridge declarations, and overlay controls are independent shell components. |
| Existing module registration | Confirmed historical | Blaze native module registration must remain as source behavior but its target callbacks may not. |
| Event callbacks | Unknown/target-dependent | Target event classes, hooks, function signatures, and object layouts are not verified. |
| Player/Actor/GameMode modules | Unknown | No target SDK layouts were established. |
| Packet send/receive modules | Unknown | Target packet API and structures are unavailable from static content. |
| Block/item modules | Unknown | Target names/IDs are not matched to old MCP state assets. |
| Rendering/ImGui bridge | Strongly indicated reusable shell | EGL/OpenGL ES/JNI surface code may be reusable, but native engine init and target rendering hooks require adaptation. |
| ClickGUI/touch/shortcut UI | Strongly indicated reusable shell | The Java overlay/touch implementation is independent of most target internals, subject to Android API/runtime verification. |

## Rendering and activity lifecycle

| Component | Status | Compatibility result |
|---|---|---|
| `GLES3JNIView` rendering lifecycle | Strongly indicated reusable shell | Java lifecycle can be preserved, while target initialization must be validated. |
| Window/touch overlay | Strongly indicated reusable shell | Preserve original UI implementation if Android permission/window behavior remains valid. |
| Target EGL/GLES dependencies | Confirmed | Target `libminecraftpe.so` imports GLESv2/EGL; GLESv3 needs runtime/package validation. |
| ImGui integration | Unknown in target | No target ImGui integration evidence was recovered. Existing Blaze native integration is not proof of target compatibility. |

## Runtime resources

| Component | Status | Compatibility result |
|---|---|---|
| Historical Blaze runtime block files through ID 589 | Confirmed historical only | Not verified as target data; preserve as legacy reference only. |
| Target vanilla_1.26.50 packs | Confirmed | Latest identified target behavior-pack generation, but not proof of 1.26.52.3 parity. |
| Target item/recipe catalogs | Confirmed | Packaged in JSON/BR archive formats and must be parsed or accessed through target APIs. |
| Target protocol/data version | Unknown | Numeric values and exact format are not established. |
| Target canonical runtime-state tables | Unknown | No offsets, table formats, IDs, or mappings were derived. |

## Independent reimplementation candidates

Confirmed reusable or strongly indicated:

- Dashboard and launcher UI
- Package detection and version-policy framework
- Java Minecraft GameActivity inheritance concept
- Asset manager merging
- Native resource/installer utilities
- WindowManager overlay lifecycle
- Touch forwarding
- ClickGUI/shortcut Java UI models
- Module configuration persistence
- Translation/font/image loading
- Textures/ImGui bindings where they remain ABI-neutral

## Components requiring target-specific replacement/update

- Minecraft package version gate and supported-version model
- `libblaze.so` native compatibility engine
- Historical module callbacks and SDK wrappers
- Native hook discovery/installation
- Minecraft object layouts and offsets
- Block/item/runtime-state tables
- Packet/network modules
- Target-native event integration
- Native activity initialization after target SDK changes
- Modern Android native-library/class-loader policies

## What can be concluded now

Confirmed:

- The target package is 1.26.52.3 and ARM64.
- Its package version code is `972605203`, not Blaze's historical gate value.
- The target has a modern `libminecraftpe.so` and target SDK 36.
- All target native libraries are ARM64.
- Existing historical Blaze native internals cannot be considered validated.

Unknown:

- Exact target object layouts
- Hook targets and offsets
- Module callback compatibility
- Protocol/data-version values
- Runtime stability

## Next concrete step

Preserve the launcher shell and Java UI in Phase 3, but first stop on native compatibility work and create a controlled runtime compatibility harness from the target APK. The next required implementation should be read-only-to-test-device instrumentation in a separate working copy:

1. Obtain/install a complete, valid, signed target APK and verify its hash.
2. Run it on an authorized ARM64 test device or emulator with target Android 32-36 APIs.
3. Capture the loader order, target library base addresses, JNI behavior, crash logs, and feature lifecycle.
4. Establish target SDK symbols/layouts through runtime measurements rather than patch offsets.
5. Update the Blaze package gate only after the target version policy and compatibility model are proven.
6. Reconnect one original Blaze UI/module layer at a time against the measured target engine.

Do not begin patching native offsets or swapping `972108003` until steps 1-4 establish a verifiable compatibility layer.

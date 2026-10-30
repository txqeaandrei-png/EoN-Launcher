# Target Native Report

## ELF inventory

All recoverable native libraries under `lib/arm64-v8a` are ELF64 AArch64 shared objects:

| Library | Size | Build ID | Role indicated by imports/names |
|---|---:|---|---|
| libHttpClient.Android.so | 335,976 | 0066956767792ff9aee8b80fc113fb67b47b664b | HTTP/native networking |
| libMediaDecoders_Android.so | 1,517,320 | Not present in GNU build notes | Media decoding |
| libPlayFabMultiplayer.so | 4,307,040 | Not present in GNU build notes | PlayFab multiplayer |
| libc++_shared.so | 1,253,544 | 7befe631535aa853c4f4ac1293e49dcea34c9b6e | C++ runtime |
| libconscrypt_jni.so | 2,103,592 | f1446306c60470b344a50f938f9632ca54d8b4e4 | Conscrypt JNI |
| libfmod.so | 1,176,776 | 4b8a6d0f35523701689a1db408d649a9 | FMOD audio |
| libmaesdk.so | 7,338,096 | Not present in GNU build notes | Conditional MAE SDK |
| libmcfix.so | 161,640 | Not present in GNU build notes | Native fix/compatibility component; loaded explicitly by `ServerManager` |
| libminecraftpe.so | 328,419,680 | 56de9eed077631e03a31f4f58eb2f0e00071d335 | Main Minecraft implementation |
| libpairipcore.so | 608,112 | Not present in GNU build notes | PairIP integrity/runtime support |

## libminecraftpe.so

Confirmed:

- ELF64 AArch64 shared object
- GNU build ID: `56de9eed077631e03a31f4f58eb2f0e00071d335`
- Defined dynamic symbols: 90,653 lines in the analyzed symbol set
- Exported JNI-like symbol count: 96
- `JNI_OnLoad` export exists
- RTTI/type/vtable string candidates: 197
- Direct dependencies include:
  - `libpairipcore.so`
  - `libGLESv2.so`
  - `libPlayFabMultiplayer.so`
  - `libEGL.so`
  - `libfmod.so`
  - `liblog.so`
  - `libHttpClient.Android.so`
  - `libmaesdk.so`
  - `libdl.so`
  - `libandroid.so`
  - `libc++_shared.so`
  - `libm.so`
  - `libc.so`

Representative confirmed JNI exports include:

- `Java_com_mojang_minecraftpe_MainActivity_nativeOnDestroy`
- `Java_com_mojang_minecraftpe_MainActivity_nativeSuspend`
- `Java_com_mojang_minecraftpe_MainActivity_nativeShutdown`
- `Java_com_mojang_minecraftpe_MainActivity_nativeResize`
- `Java_com_mojang_minecraftpe_MainActivity_nativeBackPressed`
- `Java_com_mojang_minecraftpe_MainActivity_nativeKeyHandler`
- `Java_com_mojang_minecraftpe_MainActivity_nativeRunNativeCallbackOnUiThread`
- `Java_com_mojang_minecraftpe_MainActivity_nativeReturnKeyPressed`
- `Java_com_mojang_minecraftpe_MainActivity_nativeProcessIntentUriQuery`
- `Java_com_mojang_minecraftpe_FilePickerManager_nativeDirectoryPickResult`
- `Java_com_mojang_minecraftpe_FilePickerManager_nativeFilePickResult`
- `Java_com_microsoft_xal_logging_XalLogger_nativeLogBatch`

The Java native declarations and ELF exports are related by name. This does not establish that Blaze-compatible hooks can safely target these functions.

## Symbols, RTTI, and class metadata

Confirmed:

- The binary contains many C++ symbols and RTTI-related names.
- Dynamic symbols are abundant, but the ELF is not evidence that stable public SDK symbols remain.
- `libminecraftpe.so` contains native implementation symbols plus third-party networking, crypto, rendering, and script components.
- 197 type-info/vtable-like strings are visible, but no class layout or virtual-table index has been derived.

Unknown:

- Stable class APIs or intended SDK boundaries
- Virtual-function indices for target Player, Actor, Level, GameMode, Packet, Block, Item, or entity classes
- Minecraft object layouts
- Exact native hook targets
- Whether exported C++ symbols map to stable product APIs

Requires runtime testing:

- Whether the target library loads and resolves each dependency in an ARM64 Android 32/target-36 environment
- Whether `libpairipcore.so` or `libmcfix.so` imposes process/startup constraints
- Whether JNI/native callbacks remain behavior-compatible

## Native differences from BlazeLauncher assumptions

Confirmed by static comparison:

- Blaze uses `libblaze.so` and `libgojni.so`; the target package has neither library.
- The target package contains `libminecraftpe.so` plus ten ARM64 libraries, while Blaze engine statics are separate from the Minecraft target package.
- The target library depends directly on GLES/EGL, PlayFab, FMOD, HTTP, media, C++, and integrity libraries.
- Blaze expected its own native overlays to load after Minecraft package context creation and uses `System.loadLibrary("blaze")`.

Strongly indicated:

- The historical Blaze native engine cannot load against the target package merely by updating the package gate or classpath.
- Target Minecraft internals are now different enough that old native SDK wrappers and offsets should be treated as invalid until measured.

Unknown:

- Whether the target ELF preserves recognizable symbol names for SDK objects
- Exact layouts or hookable functions
- Whether the original Blaze engine has any version-independent JNI interface reusable without targeting target internals

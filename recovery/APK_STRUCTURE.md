# APK Structure

## Provenance

- Original: `BlazeLauncher.apk`
- Working copy: `input/BlazeLauncher.apk`
- SHA-256 original and copy: `6a2ad2f85ec34cdcd9569aeb50e096d9c88a1a2f3084af2cf4567ea3bda334e1`
- Package: `dev.blaze.launcher`
- Target Minecraft package: `com.mojang.minecraftpe`
- Application class: `dev.blaze.launcher.App`
- Main dashboard activity: `dev.blaze.launcher.MainActivity`
- Game activity: `dev.blaze.launcher.GameActivity`

The two APK copies have identical SHA-256 values. The original file was not modified.

## Recovered layout

- `recovery/raw/`: raw ZIP extraction, including classes.dex files and APK entries
- `recovery/apktool/`: Apktool 3.0.3 decode, including manifest, smali, resources, assets, and native libraries
- `recovery/jadx/`: JADX 1.5.6 source output under `sources/` and resource output under `resources/`
- `recovery/native/arm64-v8a/`: recovered native shared objects
- `recovery/native/metadata/`: ELF headers, dynamic data, symbols, relocations, segments, and strings
- `recovery/dex/`: recovered DEX files
- `recovery/assets/`: asset tree copy
- `recovery/resources/`: resource tree copy
- `recovery/manifest/`: decoded manifest copy
- `recovery/metadata/`: inventory, hashes, and tool versions

## DEX and entry counts

The APK contains:

- `classes.dex`, 5,560,868 bytes
- `classes2.dex`, 4,758,616 bytes
- `classes3.dex`, 4,626,952 bytes
- `classes4.dex`, 5,467,856 bytes
- `classes5.dex`, 2,486,188 bytes

JADX recovered 10,469 Java source files. Apktool recovered 19,538 smali files. These counts include framework, SDK, SDK wrapper, and third-party code, not only BlazeLauncher classes.

## Manifest

The decoded manifest declares:

- Internet and network-state permissions
- Legacy external-storage read/write permissions
- `MANAGE_EXTERNAL_STORAGE`
- Multicast, vibration, wake lock, Wi-Fi state, foreground service, notification and package-query permissions
- Firebase/Braze/Xbox-related components
- `GameActivity` as an exported, single-task landscape activity
- File/content handlers for Minecraft `.mcworld`, `.mcpack`, `.mcaddon`, and `.mctemplate`

`GameActivity` metadata names `minecraftpe` as the native application library. Android's class hierarchy is:

`GameActivity -> AdActivity -> com.mojang.minecraftpe.MainActivity`

The launcher must merge or bridge Minecraft classes and assets while retaining the Minecraft `MainActivity` inheritance chain.

## Native libraries

Only the arm64-v8a ABI is present in the recovered APK:

- `libblaze.so`: 10,023,056 bytes
- `libgojni.so`: 9,056,776 bytes
- `libc++_shared.so`: 1,027,408 bytes

Both principal native libraries are ELF64 AArch64 shared objects.

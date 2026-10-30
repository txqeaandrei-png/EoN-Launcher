# Target APK Report

## Executive summary

The supplied file is intended to be the Minecraft 1.26.52.3 ARM64 APK, but its container is incomplete: it begins with valid ZIP local headers and contains 6,758 recoverable named entries, yet it has no ZIP central directory or end record. Apktool and JADX rejected the original file before a reconstructed analysis copy was created.

## Confirmed findings

- Source SHA-256: `71e86eb2e3bdcea7f3e7130be0e2c3b3fe4ec99cccc0d2c9a9f4abb1d45adc17`
- Source size: 302,448,640 bytes
- Package name: `com.mojang.minecraftpe`
- `versionName`: `1.26.52.3`
- `versionCode`: `972605203`
- Minimum SDK: 32
- Target SDK: 36
- Compile/SDK platform build: 36/Android 16
- Application label: Minecraft
- ABI directory: `lib/arm64-v8a`
- DEX files: 4
- Resources table: `resources.arsc`
- Native library: `lib/arm64-v8a/libminecraftpe.so`
- Main activity: `com.mojang.minecraftpe.MainActivity`
- Manifest native metadata: `android.app.lib_name = minecraftpe`
- Install location: `preferExternal`
- GLES requirement: OpenGL ES 2.0 or higher
- Main activity has a launcher intent, Minecraft URL/file intents, and landscape/single-task configuration.

The APK is an ARM64 base-shaped package rather than an App Bundle split: it contains a manifest, complete resources, DEX files, arm64 native libraries, assets, and no `config.*` split library directories. No file with App Bundle metadata was found in the recoverable entries.

## Container limitation

Confirmed:

- ZIP local-entry count: 6,758
- ZIP signatures parsed from local headers: 6,758 named entries
- End-of-central-directory signature count: 0
- Central-directory signature count: 0
- No `META-INF/*.MF`, `.SF`, or `.RSA` entries were found among the recoverable names

Therefore the original file is not a normal installable APK or a separately reconstructed APK from the central directory onward. A read-only reconstructed copy was generated at `phase2/metadata/minecraft-26-52-arm64-v8a-reconstructed.apk` so Apktool and JADX could analyze the recoverable content. Its SHA-256 is `b02e7d2e0256028fc5170357bbe0490d506e763db33cc822db3ff69af715a1f5`.

The reconstructed copy is an analysis artifact, not a repaired or signed target APK.

## Base-versus-split classification

Confirmed:

- Base-package indicators are present: manifest, resources.arsc, classes.dex, native arm64-v8a libraries, launcher activity, and assets.
- Only arm64-v8a is present in the recoverable library tree.

Strongly indicated:

- This was intended as a standalone/base APK, not a language/density/ABI split.

Unknown:

- The original central directory prevents a cryptographic or Android-package signature verification of splitting/installability.
- Whether omitted bytes contain split metadata or signatures cannot be established from the source body alone.

## Supported execution shape

`MainActivity` extends Android Game Activity through the decompiled hierarchy and loads native dependencies before `libminecraftpe.so`.

Confirmed loader order from the static initializer:

1. `libc++_shared.so`
2. `libmaesdk.so`, best-effort
3. `libHttpClient.Android.so`
4. `libPlayFabMultiplayer.so`, best-effort
5. `libfmod.so`
6. `libminecraftpe.so`

Target minimum/target SDK differences are significant compared with BlazeLauncher:

- Blaze target recovery showed Android compile/build SDK values centered on Android 15/SDK 35.
- Target manifest asks minimum SDK 32 and target SDK 36.
- Target activity uses a more recent Game Activity and Android manifest configuration.

This does not prove runtime incompatibility, but the launcher/target launcher assumptions must be tested against Android API behavior.

# Recovery Status

## Status: Phase 1 complete

The original APK and working copy are intact, the full APK structure has been decoded, and all available Java/native recovery artifacts have been produced. No APK modification, native patching, rebuild, or compatibility implementation was performed.

## Tooling

- Java: OpenJDK 25.0.5.0.2
- JADX: 1.5.6
- Apktool: 3.0.3
- ADB: 34.0.41-debian
- Android SDK build tools/platform tools: 29.0.3/28.0.2
- readelf: GNU binutils 2.42
- llvm-readelf/llvm-readobj/llvm-nm: LLVM 18.1.3

Tool metadata is retained in `recovery/metadata/tool_versions.txt`.

## Successfully recovered

- Byte-for-byte original and working-copy provenance
- Full Android manifest
- 1,188 raw APK entries and complete decoded resource inventory
- 5 DEX files
- 10,469 JADX Java source outputs
- 19,538 Apktool smali outputs
- `arm64-v8a/libblaze.so`
- `arm64-v8a/libgojni.so`
- `arm64-v8a/libc++_shared.so`
- ELF headers, symbols, dynamic dependencies, segments, relocations, and strings
- Assets, layouts, resources, MCP state files, fonts, images, and configuration files
- Exact Play package gate
- GameActivity/AdActivity inheritance and startup sequence
- Overlay, renderer, JNI, native installer, resource installer, and asset merge code

## Recovery limitations

- JADX completed with 109 internal decompilation errors; some obfuscated or unusually generated code remains Java-source incomplete.
- Several class names and strings are obfuscated or decoded through runtime short-array transformations.
- Native libraries are stripped.
- Exact native module constructors, hook targets, virtual tables, offsets and layouts are not recoverable from static APK data.
- `libgojni.so` generated Go/cgo exports and package relationships require deeper instrumentation or original source/binary analysis.
- No target Minecraft 1.26.52.3 binaries were recovered from the supplied APK and therefore cannot be analyzed.
- No runtime device/emulator evidence or target build artifacts were available during Phase 1.

## Components that are reusable

Confirmed or likely reusable without an immediate redesign:

- Dashboard UI, resources, themes, layouts, and launcher application classes
- Package and intent handling
- `GameActivity` inheritance structure
- Overlay window lifecycle
- GLSurfaceView and touch forwarding framework
- Minecraft asset merge mechanism
- Native installer/resource installer mechanisms
- Existing Java JNI declaration names
- UI module toggle and shortcut interfaces
- Historical MCP assets as a starting data set

## Components that cannot be recovered from this APK alone

- Target Minecraft symbols and offsets
- Target class layouts and virtual tables
- Exact native hook installation targets
- Exact target runtime state ID mappings
- Original native source code for `libblaze.so`
- Original source/registration code for stripped native ModuleManager internals
- Target-specific compatibility behavior or runtime stability evidence

## Required to update compatibility

The next implementation work requires:

1. A target 1.26.52.3 APK or installed package obtained in an authorized environment.
2. ELF extraction and symbol/RTTI analysis of target libraries.
3. Disassembly and runtime tracing sufficient to identify target objects and callbacks.
4. A compatibility matrix for every existing module.
5. Target MCP runtime-state resources.
6. A device/emulator test matrix for AArch64 and Android versions.
7. A patched test build produced only after compatibility design and review.

## Recommended next step

After this report is reviewed, begin controlled compatibility discovery on the target Minecraft 1.26.52.3 build: map package/build metadata, inspect its ELF architecture, identify stable symbols and changed structures, and compare them against the recovered Blaze native engine. Do not replace the gate or patch native offsets until a target signature is established.

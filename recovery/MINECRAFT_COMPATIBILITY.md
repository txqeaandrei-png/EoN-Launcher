# Minecraft Compatibility Assessment

## Known version gate

The confirmed gate is:

```java
PackageInfo.versionCode != 972108003
```

On mismatch, the application displays:

```text
Unsupported Version: <PackageInfo.versionName>
```

For the target installation reported as `1.26.52.3`, launch is blocked before native engine compatibility or Minecraft process launch.

## What 972108003 means

The APK only establishes this integer as a required launcher gate. The value could correspond to Minecraft package metadata or an app bundle/version scheme. The meaning of the number must not be guessed from the installed `versionName`. It is not evidence that version 1.26.52.3 maps to that code or that the old native engine supports it.

## Version-dependent components

The following native or resource components are known or strongly indicated as version-dependent:

- Minecraft class/library loading and process inheritance
- Minecraft native symbol resolution
- Minecraft virtual-table indices
- Player, actor, game-mode, level, block, item and packet wrapper layouts
- Native function hooks
- Memory offsets and base-address assumptions
- Runtime block/item state identifiers and data mappings
- MCP data assets keyed by historical runtime IDs
- Resource merge ordering
- Supported package and native-library paths

## Bundled MCP data

The assets include MCP state data through:

- Runtime block states ending at ID `589`
- Runtime item states through `560`/`567` and later supported historical files
- `blocks/index.json`
- `items/index.json`
- `block_hardness.json`
- `item_tags.json`

These files provide an inventory of bundled historical state databases. They do not prove support for 1.26.52.3. No `1.26.52.3` or matching runtime-state metadata was verified.

## Missing compatibility information

Compatibility cannot be established without:

1. The target Minecraft APK/asset/native libraries installed in an authorized test environment.
2. The target `libminecraftpe.so` ELF build and exact exported/dynamic symbols.
3. Target virtual tables, object layouts, RTTI and relevant function addresses.
4. Verification of target process/library base addresses and pointer assumptions.
5. Module-specific callback behavior against the target build.
6. Runtime block/item state tables and data format for 1.26.52.3.
7. Android ABI and API compatibility verification.
8. Runtime device/emulator evidence confirming stability and feature behavior.

## Unsupported assumptions

The following are not supported by this recovery:

- Replacing `972108003` with the target version code is sufficient
- Changing a `versionName` is sufficient
- The target build shares class layouts with 1.21.51/1.21.81
- Existing hooks target stable APIs
- Existing runtime-state asset filenames cover the target version
- The old native library can be considered compatible without direct runtime verification

## Reusable versus replacement areas

Potentially reusable as preserved BlazeLauncher code:

- Dashboard and UI implementation
- GameActivity inheritance concept
- Asset merge infrastructure
- Overlay lifecycle
- Touch forwarding surface
- Java/native module toggle names
- MCP historical asset resources
- JNI declaration architecture
- Rendering and window setup if target ELF stability is established

Requires target-specific implementation or replacement:

- Package gate policy
- Minecraft ELF offsets and class layouts
- Native hooks
- SDK object wrappers
- Module callbacks that dereference target internals
- Runtime block/item state assets
- Native library patching assumptions
- Compatibility loader or runtime signature discovery
- Verified target native exports/symbols

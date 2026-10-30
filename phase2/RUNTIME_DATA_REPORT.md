# Runtime Data Report

## Confirmed assets

The target APK contains extensive bundled behavior and resource packs, including:

- Vanilla behavior packs from historical versions through `vanilla_1.26.50`
- Chemistry behavior packs through `chemistry_1.26.40`
- Experimental vanilla behavior packs
- Resource-pack definitions
- Worldgen metadata registries
- Recipes and item catalogs
- Loot tables
- Structure block NBT data
- Shader GLSL headers and material binaries
- ORE UI resources and localized text

The presence of `behavior_packs/vanilla_1.26.50` is confirmed and is the closest identified versioned behavior pack. The APK does not contain a confirmed `vanilla_1.26.52.3` behavior-pack directory.

`item_catalog.brarchive`, `recipes.brarchive`, worldgen metadata archives, and numerous `.dat`/`.json`/`.nbt` files confirm that modern runtime metadata is still distributed through packed and versioned resources.

## Block runtime-state data

Confirmed:

- The target APK contains block-related loot, structure, recipe, and definition resources.
- Target asset locations include behavior packs and definitions, but not a top-level filename in the historical `runtime_block_states_<ID>.dat` format used by Blaze assets.
- The recovery does not prove the absence of block-state data nested in binary `.brarchive` files.

Strongly indicated:

- Runtime block-state data is embedded or generated in binary/native/game-data structures rather than exposed as a simple historical Blaze-style file set.
- The old Blaze historical block-state files (388, 389, 407, ... 589) should be retained only as historical fallback/reference data, not as target compatibility data.

Unknown:

- Target canonical block-state table
- Target runtime block-state serialization or IDs
- Target mapping between block names, block states, and runtime IDs

## Item runtime-state data

Confirmed:

- Target assets contain item catalogs in `.brarchive` form and item/recipe resources.
- Historical standalone Blaze item-state JSON assets (361, 419, 440, 448, etc.) were not matched in equivalent filenames in the target.
- Item definitions and catalogs exist in multiple packed and versioned behavior/resource paths.

Unknown:

- Target runtime item IDs or network serialization
- Whether target item catalogs are complete or supplemental to native registries

## Protocol and data-version metadata

Confirmed:

- Strings and UI labels include `networkProtocolVersion`, `protocolVersion`, and `DataVersion`.
- Target assets are organized by Minecraft behavior/resource versions, including 1.26.50.
- Target native strings contain a generic network protocol-version field and data-version concepts.

Unknown:

- The exact numeric network protocol version
- Exact data-version number used by 1.26.52.3
- Exact packet schema/version table
- Whether protocol values are the same as the APK `versionCode` or independent constants

Requires runtime testing:

- Querying the running target build or inspecting the target native implementation at runtime for exact protocol/data-version values
- Confirming target network packet structures and registries before packet modules are updated

## Resource format differences from Blaze

Confirmed:

- Blaze historically bundled standalone MCP runtime state files and a top-level MCP data directory.
- The target contains versioned behavior packs, `.brarchive` archives, `.dat` metadata registries, `.nbt`, JSON definitions, and native-generated registries.
- No direct `runtime_block_states_<ID>.dat` or Blaze-style item state JSON filename set was verified for the target.

Strongly indicated:

- Historical MCP state assets cannot be assumed to be directly compatible with target block/item registries.
- Block/item modules should treat names and definitions as target-derived data rather than using the old 589/560-era tables.

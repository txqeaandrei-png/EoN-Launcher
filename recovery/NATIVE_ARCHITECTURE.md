# Native Architecture

## ELF inventory

All principal recovered native files are AArch64 ELF64 shared objects:

- `libblaze.so` — native engine and JNI bridge
- `libgojni.so` — Go/cgo-style bridge
- `libc++_shared.so` — Android NDK C++ runtime

## libblaze.so

### Verified exports

`libblaze.so` has the following verified exported native entry points:

- `JNI_OnLoad`
- `Java_dev_blaze_launcher_Start_ooOOOooooOOOo`
- `Java_dev_blaze_launcher_GLES3JNIView_init`
- `Java_dev_blaze_launcher_GLES3JNIView_resize`
- `Java_dev_blaze_launcher_GLES3JNIView_step`
- `Java_dev_blaze_launcher_GLES3JNIView_imgui_Shutdown`
- `Java_dev_blaze_launcher_GLES3JNIView_getWindowRect`
- `Java_dev_blaze_launcher_GLES3JNIView_MotionEventClick`
- `Java_dev_blaze_launcher_GLES3JNIView_loadImage`
- `Java_dev_blaze_launcher_GLES3JNIView_setTranslation`
- `Java_dev_blaze_launcher_GLES3JNIView_setValue`
- `Java_dev_blaze_launcher_GLES3JNIView_setShortcutXByName`
- `Java_dev_blaze_launcher_GLES3JNIView_setShortcutYByName`
- `Java_dev_blaze_launcher_GLES3JNIView_getShortcutXByName`
- `Java_dev_blaze_launcher_GLES3JNIView_getShortcutYByName`
- `Java_dev_blaze_launcher_ui_ClickGuiButton_getEnable`
- `Java_dev_blaze_launcher_ui_ClickGuiButton_toggle`
- `Java_dev_blaze_launcher_ui_ShortcutButton_toggleModuleByName`
- `Java_dev_blaze_launcher_network_NativeFunction_sendToClient`
- `Java_dev_blaze_launcher_network_NativeFunction_sendToServer`
- `Java_dev_blaze_launcher_utils_TextureLoader_IJOdfj`

These exports match the Java native declarations found by JADX. The native library is stripped of friendly constructor and most implementation symbols, so only externally visible C++/JNI symbols can be attributed with confidence.

### Dynamic dependencies

`libblaze.so` imports libc++, zlib, Android logging, Android APIs, EGL, GLESv3, GLESv2, OpenSL ES, libc, libm, and libdl. Direct unresolved imports include GLES functions and Android logging, as expected for the rendering and UI bridge.

The native library also imports many NDK C++ ABI symbols and RTTI/runtime symbols, indicating substantial C++ engine use.

### Imported native APIs

Confirmed imports include:

- `dlopen`, `dlsym`, `mprotect`-related behavior implied by dynamic loading/hooking analysis
- pthread/thread operations
- Android logging
- EGL/OpenGL ES functions
- OpenSL ES
- libc memory and filesystem functions
- C++ exception and RTTI support

## libgojni.so

`libgojni.so` is a separate AArch64 Go/cgo-style runtime. It declares GoSeq style Java classes and native methods:

- `go.Seq.init()`
- `go.Seq.destroyRef`
- `go.Seq.incGoRef`
- `go.Seq.setContext`
- JNI ref tracking and context setup

`Java` loads this library through the static initializer of `go.Seq`. The ELF import set is not as descriptive as `libblaze.so`; dynamic exports and exact generated package bindings require specialized Go/cgo and JNI analysis. The library includes a cgo runtime rather than a standalone application entry point.

## ELF and symbol limitations

Confirmed:

- AArch64 architecture
- Shared-object type
- JNI exports listed above
- Dynamic dependencies and unresolved platform imports
- Embedded ImGui, rendering, SDK, module, and callback strings
- C++ RTTI/vtable-related evidence

Not recoverable from this APK alone:

- Most original source and symbol names
- Exact Minecraft virtual-function indices
- Exact class layouts
- Exact target function addresses
- Hook origin/target verification
- Full native call graph
- Proguard/stripping/constructor metadata
- Independent Minecraft build symbols

## Engine evidence

String and export analysis supports native components for:

- Module/SDK wrappers
- Event callbacks
- EGL/OpenGL ES rendering
- ImGui integration
- Touch forwarding
- Native packet/network hooks
- Dynamic library loading and symbol lookup
- Minecraft state and runtime data asset support

Exact availability of each callback is not proved by string matches alone. Entrypoint/export analysis and previous static audits provide stronger evidence, but no runtime disassembly proof was established for every callback relationship.

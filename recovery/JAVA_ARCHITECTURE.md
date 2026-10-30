# Java and Kotlin Architecture

## Startup sequence

1. Android starts `dev.blaze.launcher.App`.
2. `attachBaseContext()` performs Braze and other initialization, creates `ResourceInstaller` and `NativeInstaller`, patches native-library/class-loader paths, and loads libraries.
3. `App.onCreate()` initializes the application SDK stack.
4. `MainActivity` presents the dashboard.
5. The Play action queries `com.mojang.minecraftpe` package metadata.
6. The package gate compares `PackageInfo.versionCode` with `972108003`.
7. On a match, the app schedules launch into `GameActivity` after a delay.
8. `GameActivity.onCreate()` invokes the Minecraft `MainActivity` chain and initializes Blaze native overlays.

## Key classes

- `dev.blaze.launcher.App`: application initialization, library loading, resource/native installer creation, class-loader patching.
- `dev.blaze.launcher.MainActivity`: launcher dashboard host.
- `dev.blaze.launcher.ui.dashboard.DashboardFragment`: Play button and Minecraft package/version gate.
- `dev.blaze.launcher.GameActivity`: Minecraft `MainActivity` subclass and native launcher entry point.
- `dev.blaze.launcher.AdActivity`: asset merging bridge over Minecraft `MainActivity`.
- `dev.blaze.launcher.Start`: native overlay lifecycle, window layout, touch forwarding, delayed JNI calls.
- `dev.blaze.launcher.GLES3JNIView`: Android GLSurfaceView/Renderer, ImGui bridge input, resize, step, and renderer lifecycle.
- `dev.blaze.launcher.ui.ClickGuiButton`: launcher overlay button and native enabled state.
- `dev.blaze.launcher.ui.ShortcutButton`: module shortcuts and native module toggle.
- `dev.blaze.launcher.Patcher`: merged asset manager setup and native library directory/class-loader patching.
- `dev.blaze.launcher.utils.Patcher`: alternate native-library patching implementation.
- `dev.blaze.launcher.task.NativeInstaller`: extracts native libraries from APK splits/app bundles.
- `dev.blaze.launcher.task.ResourceInstaller`: resource installation logic.

## Play button implementation

In `DashboardFragment`, the Play listener first verifies:

- Required installed-package state
- Readiness of launcher/Minecraft components
- `PackageInfo.versionCode == 972108003`

A mismatch creates a Snackbar containing the observed `versionName`. This code is the exact source of the `Unsupported Version: 1.26.52.3` message. The gate is before `Intent` launch of `GameActivity`; therefore updating the displayed version alone cannot help.

After a successful gate, the code launches `GameActivity` with an Android `Intent` after a delay.

## Game activity

`GameActivity.onCreate()` executes:

1. `super.onCreate(savedInstanceState)`
2. Privacy dialog state handling
3. `System.loadLibrary("blaze")`
4. `Start._Start(this)`
5. `Start.__Start(this)`
6. Native load logging

`Start._Start()` schedules Android-side overlay creation after 3 seconds. `Start.__Start()` starts a background loop that repeatedly posts `Start.ooOOOooooOOOo()` to the main thread every 100 ms. `ooOOOooooOOOo()` is a native method implemented in `libblaze.so`.

## Overlay and touch implementation

`Start.Start(Context)` creates:

- An `Activity.getWindowManager()` overlay manager
- A transparent full-window GLSurfaceView
- A secondary transparent touch View
- WindowManager layout parameters
- A `ClickGuiButton`

Touch down/move/up is forwarded to native JNI through `GLES3JNIView.MotionEventClick(...)`.

`GLES3JNIView`:

- Uses EGL/OpenGL ES 3
- Creates a `GLSurfaceView.Renderer`
- Loads Minecraft package context and assets
- Calls native `init()` on surface creation
- Calls native `resize()` on surface changes
- Calls native `step()` every frame
- Calls native `imgui_Shutdown()` when detached

## Asset merging

`AdActivity.getAssets()` combines the Minecraft APK asset manager and the launcher APK asset manager using reflection. `Patcher.getPluginAssetsManager()` adds both source APK paths to the Android `AssetManager`.

This is reusable infrastructure only if it remains compatible with target Android/AssetManager implementations.

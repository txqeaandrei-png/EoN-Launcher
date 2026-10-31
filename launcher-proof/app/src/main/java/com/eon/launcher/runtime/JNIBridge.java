package com.eon.launcher.runtime;

import android.util.Log;

public final class JNIBridge {
    private static final String TAG = "EonJNIBridge";
    private static final boolean LIBRARY_LOADED;
    private static volatile String lastError = "";

    static {
        boolean loaded;
        try {
            System.loadLibrary("eoncore");
            loaded = true;
        } catch (LinkageError | RuntimeException error) {
            loaded = false;
            lastError = error.toString();
            Log.e(TAG, "Unable to load eoncore", error);
        }
        LIBRARY_LOADED = loaded;
    }

    private JNIBridge() {
    }

    public static boolean isLibraryLoaded() {
        return LIBRARY_LOADED;
    }

    public static String getLastError() {
        return lastError;
    }

    public static boolean initialize() {
        if (!LIBRARY_LOADED) return false;
        try {
            boolean initialized = nativeInitialize();
            if (!initialized) lastError = "Native runtime rejected initialization";
            return initialized;
        } catch (LinkageError | RuntimeException error) {
            recordError("initialize", error);
            return false;
        }
    }

    public static void resume() { invoke("resume", JNIBridge::nativeResume); }
    public static void pause() { invoke("pause", JNIBridge::nativePause); }
    public static void shutdown() { invoke("shutdown", JNIBridge::nativeShutdown); }
    public static void setGuiVisible(boolean visible) { invoke("gui visibility", () -> nativeSetGuiVisible(visible)); }
    public static void setGuiCategory(String category) { invoke("gui category", () -> nativeSetGuiCategory(category)); }
    public static void setGuiSearch(String search) { invoke("gui search", () -> nativeSetGuiSearch(search)); }
    public static void setModuleEnabled(String id, boolean enabled) {
        invoke("module toggle", () -> nativeSetModuleEnabled(id, enabled));
    }
    public static void setSetting(String id, String setting, String value) {
        invoke("setting", () -> nativeSetSetting(id, setting, value));
    }
    public static void updateScreenMetrics(int width, int height, float density) {
        invoke("screen metrics", () -> nativeUpdateScreenMetrics(width, height, density));
    }
    public static boolean onInputEvent(int phase, int pointerId, int keyCode, float x, float y,
            long eventTime, int width, int height, float density) {
        if (!LIBRARY_LOADED) return false;
        try {
            return nativeOnInputEvent(phase, pointerId, keyCode, x, y, eventTime,
                    width, height, density);
        } catch (LinkageError | RuntimeException error) {
            recordError("input", error);
            return false;
        }
    }
    public static boolean onSurfaceCreated() {
        if (!LIBRARY_LOADED) return false;
        try {
            return nativeOnSurfaceCreated();
        } catch (LinkageError | RuntimeException error) {
            recordError("surface creation", error);
            return false;
        }
    }
    public static void onSurfaceChanged(int width, int height, float density) {
        invoke("surface resize", () -> nativeOnSurfaceChanged(width, height, density));
    }
    public static void renderFrame(double deltaSeconds) {
        invoke("render frame", () -> nativeRenderFrame(deltaSeconds));
    }
    public static void onSurfaceDestroyed() { invoke("surface destruction", JNIBridge::nativeOnSurfaceDestroyed); }

    public static String getDiagnosticsJson() {
        if (!LIBRARY_LOADED) return "{}";
        try {
            return nativeGetDiagnostics();
        } catch (LinkageError | RuntimeException error) {
            recordError("diagnostics", error);
            return "{}";
        }
    }

    private static void invoke(String operation, Runnable action) {
        if (!LIBRARY_LOADED) return;
        try {
            action.run();
        } catch (LinkageError | RuntimeException error) {
            recordError(operation, error);
        }
    }

    private static void recordError(String operation, Throwable error) {
        lastError = operation + ": " + error;
        Log.e(TAG, lastError, error);
    }

    private static native boolean nativeInitialize();
    private static native void nativeResume();
    private static native void nativePause();
    private static native void nativeShutdown();
    private static native void nativeSetGuiVisible(boolean visible);
    private static native void nativeSetGuiCategory(String category);
    private static native void nativeSetGuiSearch(String search);
    private static native void nativeSetModuleEnabled(String id, boolean enabled);
    private static native void nativeSetSetting(String id, String setting, String value);
    private static native void nativeUpdateScreenMetrics(int width, int height, float density);
    private static native boolean nativeOnInputEvent(int phase, int pointerId, int keyCode,
            float x, float y, long eventTime, int width, int height, float density);
    private static native boolean nativeOnSurfaceCreated();
    private static native void nativeOnSurfaceChanged(int width, int height, float density);
    private static native void nativeRenderFrame(double deltaSeconds);
    private static native void nativeOnSurfaceDestroyed();
    private static native String nativeGetDiagnostics();
}
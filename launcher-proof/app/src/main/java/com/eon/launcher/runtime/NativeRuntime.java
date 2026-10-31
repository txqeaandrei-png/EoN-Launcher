package com.eon.launcher.runtime;

public final class NativeRuntime {
    private boolean initialized;
    private boolean resumed;
    private boolean shutdown;
    private final GuiBridge guiBridge = new GuiBridge();

    public boolean initialize() {
        if (initialized) return true;
        initialized = JNIBridge.initialize();
        shutdown = !initialized;
        return initialized;
    }

    public void onResume() {
        if (!initialized || resumed) return;
        JNIBridge.resume();
        resumed = true;
    }

    public void onPause() {
        if (!initialized || !resumed) return;
        JNIBridge.pause();
        resumed = false;
    }

    public void shutdown() {
        if (!initialized || shutdown) return;
        onPause();
        JNIBridge.shutdown();
        shutdown = true;
        initialized = false;
    }

    public GuiBridge guiBridge() {
        return guiBridge;
    }

    public RuntimeDiagnostics diagnostics() {
        return RuntimeDiagnostics.fromNative(JNIBridge.getDiagnosticsJson(),
                JNIBridge.isLibraryLoaded(), JNIBridge.getLastError());
    }
}
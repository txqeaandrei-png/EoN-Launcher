package com.eon.launcher.runtime;

import org.json.JSONException;
import org.json.JSONObject;

public final class RuntimeDiagnostics {
    public final boolean libraryLoaded;
    public final boolean initialized;
    public final String runtimeState;
    public final String jniBridgeStatus;
    public final String rendererStatus;
    public final boolean rendererInitialized;
    public final String inputStatus;
    public final String hostStatus;
    public final boolean guiInitialized;
    public final boolean guiVisible;
    public final int screenWidth;
    public final int screenHeight;
    public final float density;
    public final long frameCount;
    public final long inputEventCount;
    public final int activePointers;
    public final long guiEventCount;
    public final int prototypeToggles;
    public final String guiCategory;
    public final String search;
    public final String lastGuiEvent;
    public final String lastInputEvent;
    public final String renderError;
    public final String runtimeError;
    public final long generation;

    private RuntimeDiagnostics(JSONObject value, boolean javaLibraryLoaded, String bridgeError) {
        libraryLoaded = value.optBoolean("libraryLoaded", javaLibraryLoaded);
        initialized = value.optBoolean("initialized", false);
        runtimeState = value.optString("runtimeState", "unknown");
        jniBridgeStatus = value.optString("jniBridgeStatus", javaLibraryLoaded ? "CONNECTED" : "DISCONNECTED");
        rendererStatus = value.optString("rendererStatus", "DISCONNECTED");
        rendererInitialized = value.optBoolean("rendererInitialized", false);
        inputStatus = value.optString("inputStatus", "DISCONNECTED");
        hostStatus = value.optString("hostStatus", "DISCONNECTED");
        guiInitialized = value.optBoolean("guiInitialized", false);
        guiVisible = value.optBoolean("guiVisible", false);
        screenWidth = value.optInt("screenWidth", 0);
        screenHeight = value.optInt("screenHeight", 0);
        density = (float) value.optDouble("density", 1.0);
        frameCount = value.optLong("frameCount", 0);
        inputEventCount = value.optLong("inputEventCount", 0);
        activePointers = value.optInt("activePointers", 0);
        guiEventCount = value.optLong("guiEventCount", 0);
        prototypeToggles = value.optInt("prototypeToggles", 0);
        guiCategory = value.optString("guiCategory", "Combat");
        search = value.optString("search", "");
        lastGuiEvent = value.optString("lastGuiEvent", "none");
        lastInputEvent = value.optString("lastInputEvent", "none");
        renderError = value.optString("renderError", "");
        String nativeError = value.optString("runtimeError", "");
        runtimeError = nativeError.isEmpty() ? bridgeError : nativeError;
        generation = value.optLong("generation", 0);
    }

    public static RuntimeDiagnostics fromNative(String json, boolean libraryLoaded, String bridgeError) {
        try {
            return new RuntimeDiagnostics(new JSONObject(json), libraryLoaded, bridgeError);
        } catch (JSONException | NullPointerException error) {
            JSONObject fallback = new JSONObject();
            try {
                fallback.put("runtimeError", error.toString());
            } catch (JSONException ignored) {
                // Empty fallback still yields explicit disconnected defaults.
            }
            return new RuntimeDiagnostics(fallback, libraryLoaded, bridgeError);
        }
    }

    public String[] rows() {
        return new String[]{
                "Native library: " + status(libraryLoaded),
                "Runtime initialized: " + status(initialized),
                "Runtime state: " + runtimeState,
                "JNI bridge: " + jniBridgeStatus,
                "Renderer: " + rendererStatus + (rendererInitialized ? " / READY" : " / DISCONNECTED"),
                "Input: " + inputStatus,
                "Authorized Minecraft host: " + hostStatus,
                "ClickGUI: " + (guiVisible ? "VISIBLE" : "HIDDEN") + " / " + (guiInitialized ? "READY" : "DISCONNECTED"),
                "Category/search: " + guiCategory + " / " + search,
                "Screen: " + screenWidth + "x" + screenHeight + " @ " + density,
                "Frames/input events: " + frameCount + " / " + inputEventCount,
                "Pointers/GUI events: " + activePointers + " / " + guiEventCount,
                "Prototype toggles: " + prototypeToggles,
                "Last GUI/input: " + lastGuiEvent + " / " + lastInputEvent,
                "Render error: " + none(renderError),
                "Runtime error: " + none(runtimeError),
                "Runtime generation: " + generation
        };
    }

    private static String status(boolean value) {
        return value ? "YES" : "NO";
    }

    private static String none(String value) {
        return value == null || value.isEmpty() ? "none" : value;
    }
}
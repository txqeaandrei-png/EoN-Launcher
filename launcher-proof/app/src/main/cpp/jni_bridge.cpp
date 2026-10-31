#include <jni.h>

#include <exception>
#include <string>

#include "eon/runtime/runtime.h"
#include "eon/runtime/runtime_diagnostics.h"

namespace {

eon::runtime::Runtime& runtime() {
    return eon::runtime::sharedRuntime();
}

std::string fromJavaString(JNIEnv* env, jstring value) {
    if (value == nullptr) return {};
    const char* chars = env->GetStringUTFChars(value, nullptr);
    if (chars == nullptr) return {};
    std::string result(chars);
    env->ReleaseStringUTFChars(value, chars);
    return result;
}

void saveException(const char* operation, const std::exception& error) {
    runtime().setError(std::string(operation) + ": " + error.what());
}

void saveUnknownException(const char* operation) {
    runtime().setError(std::string(operation) + ": unknown native exception");
}

eon::runtime::InputPhase inputPhase(jint phase) {
    switch (phase) {
        case 0: return eon::runtime::InputPhase::Down;
        case 1: return eon::runtime::InputPhase::Move;
        case 2: return eon::runtime::InputPhase::Up;
        case 3: return eon::runtime::InputPhase::Cancel;
        case 4: return eon::runtime::InputPhase::KeyDown;
        case 5: return eon::runtime::InputPhase::KeyUp;
        default: return eon::runtime::InputPhase::Cancel;
    }
}

}  // namespace

extern "C" JNIEXPORT jboolean JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativeInitialize(JNIEnv*, jclass) {
    try { return runtime().initialize() ? JNI_TRUE : JNI_FALSE; }
    catch (const std::exception& error) { saveException("initialize", error); }
    catch (...) { saveUnknownException("initialize"); }
    return JNI_FALSE;
}

extern "C" JNIEXPORT void JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativeResume(JNIEnv*, jclass) {
    try { runtime().resume(); }
    catch (const std::exception& error) { saveException("resume", error); }
    catch (...) { saveUnknownException("resume"); }
}

extern "C" JNIEXPORT void JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativePause(JNIEnv*, jclass) {
    try { runtime().pause(); }
    catch (const std::exception& error) { saveException("pause", error); }
    catch (...) { saveUnknownException("pause"); }
}

extern "C" JNIEXPORT void JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativeShutdown(JNIEnv*, jclass) {
    try { runtime().shutdown(); }
    catch (const std::exception& error) { saveException("shutdown", error); }
    catch (...) { saveUnknownException("shutdown"); }
}

extern "C" JNIEXPORT void JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativeSetGuiVisible(JNIEnv*, jclass, jboolean visible) {
    try { runtime().setGuiVisible(visible == JNI_TRUE); }
    catch (const std::exception& error) { saveException("gui visibility", error); }
    catch (...) { saveUnknownException("gui visibility"); }
}

extern "C" JNIEXPORT void JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativeSetGuiCategory(JNIEnv* env, jclass, jstring category) {
    try { runtime().setGuiCategory(fromJavaString(env, category)); }
    catch (const std::exception& error) { saveException("gui category", error); }
    catch (...) { saveUnknownException("gui category"); }
}

extern "C" JNIEXPORT void JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativeSetGuiSearch(JNIEnv* env, jclass, jstring search) {
    try { runtime().setGuiSearch(fromJavaString(env, search)); }
    catch (const std::exception& error) { saveException("gui search", error); }
    catch (...) { saveUnknownException("gui search"); }
}

extern "C" JNIEXPORT void JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativeSetModuleEnabled(JNIEnv* env, jclass, jstring id,
                                                               jboolean enabled) {
    try { runtime().setModuleEnabled(fromJavaString(env, id), enabled == JNI_TRUE); }
    catch (const std::exception& error) { saveException("module toggle", error); }
    catch (...) { saveUnknownException("module toggle"); }
}

extern "C" JNIEXPORT void JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativeSetSetting(JNIEnv* env, jclass, jstring id,
                                                         jstring setting, jstring value) {
    try { runtime().setSetting(fromJavaString(env, id), fromJavaString(env, setting), fromJavaString(env, value)); }
    catch (const std::exception& error) { saveException("setting", error); }
    catch (...) { saveUnknownException("setting"); }
}

extern "C" JNIEXPORT void JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativeUpdateScreenMetrics(JNIEnv*, jclass,
        jint width, jint height, jfloat density) {
    try { runtime().updateScreenMetrics(eon::runtime::SurfaceMetrics{width, height, density}); }
    catch (const std::exception& error) { saveException("screen metrics", error); }
    catch (...) { saveUnknownException("screen metrics"); }
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativeOnInputEvent(JNIEnv*, jclass, jint phase,
        jint pointerId, jint keyCode, jfloat x, jfloat y, jlong eventTime,
        jint width, jint height, jfloat density) {
    try {
        eon::runtime::InputEvent event;
        event.phase = inputPhase(phase);
        event.pointerId = pointerId;
        event.keyCode = keyCode;
        event.x = x;
        event.y = y;
        event.eventTimeMillis = eventTime;
        const eon::runtime::SurfaceMetrics metrics{width, height, density};
        return runtime().processInput(event, metrics) ? JNI_TRUE : JNI_FALSE;
    } catch (const std::exception& error) { saveException("input", error); }
    catch (...) { saveUnknownException("input"); }
    return JNI_FALSE;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativeOnSurfaceCreated(JNIEnv*, jclass) {
    try { return runtime().initializeRenderSurface() ? JNI_TRUE : JNI_FALSE; }
    catch (const std::exception& error) { saveException("surface created", error); }
    catch (...) { saveUnknownException("surface created"); }
    return JNI_FALSE;
}

extern "C" JNIEXPORT void JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativeOnSurfaceChanged(JNIEnv*, jclass,
        jint width, jint height, jfloat density) {
    try { runtime().resizeRenderSurface(eon::runtime::SurfaceMetrics{width, height, density}); }
    catch (const std::exception& error) { saveException("surface changed", error); }
    catch (...) { saveUnknownException("surface changed"); }
}

extern "C" JNIEXPORT void JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativeRenderFrame(JNIEnv*, jclass, jdouble deltaSeconds) {
    try { runtime().renderFrame(deltaSeconds); }
    catch (const std::exception& error) { saveException("render frame", error); }
    catch (...) { saveUnknownException("render frame"); }
}

extern "C" JNIEXPORT void JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativeOnSurfaceDestroyed(JNIEnv*, jclass) {
    try { runtime().destroyRenderSurface(); }
    catch (const std::exception& error) { saveException("surface destroyed", error); }
    catch (...) { saveUnknownException("surface destroyed"); }
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_eon_launcher_runtime_JNIBridge_nativeGetDiagnostics(JNIEnv* env, jclass) {
    try {
        const std::string json = eon::runtime::RuntimeDiagnostics::toJson(runtime().snapshot());
        return env->NewStringUTF(json.c_str());
    } catch (const std::exception& error) {
        saveException("diagnostics", error);
    } catch (...) {
        saveUnknownException("diagnostics");
    }
    return env->NewStringUTF("{\"runtimeError\":\"diagnostics unavailable\"}");
}
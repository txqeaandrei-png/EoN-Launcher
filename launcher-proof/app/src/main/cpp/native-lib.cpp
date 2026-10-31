#include <android/log.h>
#include <jni.h>
#include <unistd.h>
#include <fstream>
#include <string>

#include "eon/runtime/runtime.h"

#define LOG_TAG "EonLauncherCore"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

namespace {

eon::runtime::Runtime gRuntime;

static std::string getProcessName() {
    std::ifstream cmdline("/proc/self/cmdline", std::ios::binary);
    std::string processName;
    std::getline(cmdline, processName, '\0');
    return processName.empty() ? "unknown" : processName;
}

}  // namespace

extern "C" JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved) {
    JNIEnv* env = nullptr;
    if (vm->GetEnv(reinterpret_cast<void**>(&env), JNI_VERSION_1_6) != JNI_OK) {
        LOGE("JNI_OnLoad failed to get JNIEnv");
        return JNI_ERR;
    }

    pid_t pid = getpid();
    std::string processName = getProcessName();
    LOGI("eoncore loaded. pid=%d, process=%s", pid, processName.c_str());
    return JNI_VERSION_1_6;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_eon_launcher_MainActivity_nativeInitialize(JNIEnv*, jobject) {
    const bool initialized = gRuntime.initialize();
    const eon::runtime::RuntimeSnapshot snapshot = gRuntime.snapshot();
    LOGI("runtime initialized=%d, state=%s, generation=%llu", initialized,
         eon::runtime::lifecycleStateName(snapshot.state),
         static_cast<unsigned long long>(snapshot.generation));
    return initialized ? JNI_TRUE : JNI_FALSE;
}

extern "C" JNIEXPORT void JNICALL
Java_com_eon_launcher_MainActivity_nativeOnResume(JNIEnv*, jobject) {
    gRuntime.resume();
}

extern "C" JNIEXPORT void JNICALL
Java_com_eon_launcher_MainActivity_nativeOnPause(JNIEnv*, jobject) {
    gRuntime.pause();
}

extern "C" JNIEXPORT void JNICALL
Java_com_eon_launcher_MainActivity_nativeShutdown(JNIEnv*, jobject) {
    gRuntime.shutdown();
    const eon::runtime::RuntimeSnapshot snapshot = gRuntime.snapshot();
    LOGI("runtime shutdown, state=%s", eon::runtime::lifecycleStateName(snapshot.state));
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_eon_launcher_MainActivity_nativeGetStatus(JNIEnv* env, jobject /* this */) {
    pid_t pid = getpid();
    std::string processName = getProcessName();
    const eon::runtime::RuntimeSnapshot snapshot = gRuntime.snapshot();
    std::string message = "eoncore state=";
    message += eon::runtime::lifecycleStateName(snapshot.state);
    message += "; generation=" + std::to_string(snapshot.generation);
    message += "; host=unbound; pid=" + std::to_string(pid) + "; process=" + processName;
    LOGI("nativeGetStatus called. %s", message.c_str());
    return env->NewStringUTF(message.c_str());
}

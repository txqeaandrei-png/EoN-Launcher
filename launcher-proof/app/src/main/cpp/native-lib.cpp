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

    eon::runtime::sharedRuntime().setLibraryLoaded(true);
    pid_t pid = getpid();
    std::string processName = getProcessName();
    LOGI("eoncore loaded. pid=%d, process=%s", pid, processName.c_str());
    return JNI_VERSION_1_6;
}

#include <android/log.h>
#include <jni.h>
#include <unistd.h>
#include <fstream>
#include <string>

#define LOG_TAG "EonLauncherCore"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

static std::string getProcessName() {
    std::ifstream cmdline("/proc/self/cmdline", std::ios::binary);
    std::string processName;
    std::getline(cmdline, processName, '\0');
    return processName.empty() ? "unknown" : processName;
}

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

extern "C" JNIEXPORT jstring JNICALL
Java_com_eon_launcher_MainActivity_nativeGetStatus(JNIEnv* env, jobject /* this */) {
    pid_t pid = getpid();
    std::string processName = getProcessName();
    std::string message = "eoncore ready; pid=" + std::to_string(pid) + "; process=" + processName;
    LOGI("nativeGetStatus called. %s", message.c_str());
    return env->NewStringUTF(message.c_str());
}

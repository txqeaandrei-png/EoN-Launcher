#include <android/log.h>
#include <jni.h>
#include <unistd.h>
#include <string>

#define LOG_TAG "EonRuntimeProofJNI"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

extern "C" JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved) {
    JNIEnv* env = nullptr;
    if (vm->GetEnv(reinterpret_cast<void**>(&env), JNI_VERSION_1_6) != JNI_OK) {
        LOGE("JNI_OnLoad failed to get JNIEnv");
        return JNI_ERR;
    }

    pid_t pid = getpid();
    LOGI("proofnative loaded. pid=%d, version=1.26.52.3-runtime-proof", pid);
    return JNI_VERSION_1_6;
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_eon_launcher_MainActivity_nativeGetStatus(JNIEnv* env, jobject /* this */) {
    pid_t pid = getpid();
    std::string message = "native proof initialized; pid=" + std::to_string(pid) + "; library=proofnative; target=Bedrock 1.26.52.3 ARM64";
    LOGI("nativeGetStatus called. %s", message.c_str());
    return env->NewStringUTF(message.c_str());
}

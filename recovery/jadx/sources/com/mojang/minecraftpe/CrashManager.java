package com.mojang.minecraftpe;

/* JADX INFO: loaded from: classes3.dex */
public class CrashManager {
    private static native String nativeNotifyUncaughtException();

    private String uploadCrashFile(String str, String str2, String str3) {
        return null;
    }

    public void installGlobalExceptionHandler() {
    }

    public String getCrashUploadURI() {
        return "http://localhost:1234/";
    }

    public String getExceptionUploadURI() {
        return "http://localhost:1234/";
    }
}

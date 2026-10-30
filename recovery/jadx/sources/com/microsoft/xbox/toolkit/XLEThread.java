package com.microsoft.xbox.toolkit;

/* JADX INFO: loaded from: classes3.dex */
public class XLEThread extends Thread {
    public XLEThread(Runnable runnable, String str) {
        super(runnable, str);
        setUncaughtExceptionHandler(XLEUnhandledExceptionHandler.Instance);
    }
}

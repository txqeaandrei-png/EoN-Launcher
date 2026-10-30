package com.microsoft.xbox.toolkit.network;

import com.microsoft.xbox.toolkit.XLEThread;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes3.dex */
public class XLEThreadPool {
    public static XLEThreadPool biOperationsThreadPool = new XLEThreadPool(false, 1, "XLEPerfMarkerOperationsPool");
    public static XLEThreadPool nativeOperationsThreadPool = new XLEThreadPool(true, 4, "XLENativeOperationsPool");
    public static XLEThreadPool networkOperationsThreadPool = new XLEThreadPool(false, 3, "XLENetworkOperationsPool");
    public static XLEThreadPool textureThreadPool = new XLEThreadPool(false, 1, "XLETexturePool");
    private final ExecutorService executor;
    public String name;

    public XLEThreadPool(boolean z, final int i, String str) {
        this.name = str;
        ThreadFactory threadFactory = new ThreadFactory() { // from class: com.microsoft.xbox.toolkit.network.XLEThreadPool$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return this.f$0.lambda$new$0(i, runnable);
            }
        };
        if (z) {
            this.executor = Executors.newSingleThreadExecutor(threadFactory);
        } else {
            this.executor = Executors.newCachedThreadPool(threadFactory);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Thread lambda$new$0(int i, Runnable runnable) {
        XLEThread xLEThread = new XLEThread(runnable, this.name);
        xLEThread.setDaemon(true);
        xLEThread.setPriority(i);
        return xLEThread;
    }

    public void run(Runnable runnable) {
        this.executor.execute(runnable);
    }
}

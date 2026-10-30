package dev.blaze.launcher;

import android.os.Looper;
import android.view.Choreographer;

/* JADX INFO: loaded from: classes3.dex */
public class WorkerThread extends Thread {
    private static final long FRAME_TIME_MILLIS = 16;
    private final GLES3JNIView glView;
    private volatile boolean running = false;
    private final Object lock = new Object();
    private boolean renderRequest = false;
    private long lastFrameTime = 0;

    public WorkerThread(GLES3JNIView gLES3JNIView) {
        this.glView = gLES3JNIView;
    }

    public void startRendering() {
        this.running = true;
        start();
    }

    public void stopRendering() {
        this.running = false;
        synchronized (this.lock) {
            this.lock.notify();
        }
        try {
            join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void requestRender() {
        synchronized (this.lock) {
            this.renderRequest = true;
            this.lock.notify();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (this.running) {
            synchronized (this.lock) {
                if (!this.renderRequest && this.running) {
                    try {
                        this.lock.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                this.renderRequest = false;
            }
            if (this.running) {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.lastFrameTime;
                if (jCurrentTimeMillis < FRAME_TIME_MILLIS) {
                    try {
                        Thread.sleep(FRAME_TIME_MILLIS - jCurrentTimeMillis);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
                this.lastFrameTime = System.currentTimeMillis();
                this.glView.queueEvent(new Runnable() { // from class: dev.blaze.launcher.WorkerThread$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        GLES3JNIView.step();
                    }
                });
                Looper.prepare();
                Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: dev.blaze.launcher.WorkerThread$$ExternalSyntheticLambda1
                    @Override // android.view.Choreographer.FrameCallback
                    public final void doFrame(long j) {
                        this.f$0.lambda$run$1(j);
                    }
                });
                Looper.loop();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$run$1(long j) {
        requestRender();
    }
}

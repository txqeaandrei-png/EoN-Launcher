package com.microsoft.xal.androidjava;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.lifecycle.ProcessLifecycleOwner;

/* JADX INFO: loaded from: classes4.dex */
public class PresenceManager implements LifecycleObserver {
    private static boolean isAttached;
    private boolean m_paused = false;

    private static native void pausePresence();

    private static native void resumePresence();

    static void attach() {
        if (isAttached) {
            return;
        }
        isAttached = true;
        ProcessLifecycleOwner.get().getLifecycle().addObserver(new PresenceManager());
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    synchronized void onForeground() {
        try {
            if (this.m_paused) {
                try {
                    System.out.println("Resuming presence on paused app resume");
                    resumePresence();
                    this.m_paused = false;
                } catch (UnsatisfiedLinkError e) {
                    System.out.println("Failed to resume presence: " + e.toString());
                }
            } else {
                System.out.println("Ignoring resume, not currently paused");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    synchronized void onBackground() {
        if (this.m_paused) {
            System.out.println("Ignoring pause, already paused");
        } else {
            try {
                System.out.println("Pausing presence on app pause");
                pausePresence();
                this.m_paused = true;
            } catch (UnsatisfiedLinkError e) {
                System.out.println("Failed to pause presence: " + e.toString());
            }
        }
    }
}

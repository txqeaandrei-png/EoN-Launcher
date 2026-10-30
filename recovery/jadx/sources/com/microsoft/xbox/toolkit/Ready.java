package com.microsoft.xbox.toolkit;

/* JADX INFO: loaded from: classes3.dex */
public class Ready {
    private final Object syncObj = new Object();
    private boolean ready = false;

    public boolean getIsReady() {
        boolean z;
        synchronized (this.syncObj) {
            z = this.ready;
        }
        return z;
    }

    public void setReady() {
        synchronized (this.syncObj) {
            this.ready = true;
            this.syncObj.notifyAll();
        }
    }

    public void waitForReady() {
        waitForReady(0);
    }

    public void waitForReady(int i) {
        synchronized (this.syncObj) {
            if (!this.ready) {
                if (i > 0) {
                    try {
                        this.syncObj.wait(i);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                } else {
                    try {
                        this.syncObj.wait();
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
                throw th;
            }
        }
    }

    public void reset() {
        synchronized (this.syncObj) {
            this.ready = false;
        }
    }
}

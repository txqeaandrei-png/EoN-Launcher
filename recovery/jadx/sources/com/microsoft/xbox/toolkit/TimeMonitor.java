package com.microsoft.xbox.toolkit;

/* JADX INFO: loaded from: classes3.dex */
public class TimeMonitor {
    private final long NSTOMSEC = 1000000;
    private long endTicks = 0;
    private long startTicks = 0;

    public boolean getIsStarted() {
        return this.startTicks != 0;
    }

    public boolean getIsEnded() {
        return this.endTicks != 0;
    }

    public void reset() {
        this.startTicks = 0L;
        this.endTicks = 0L;
    }

    public void start() {
        this.startTicks = System.nanoTime();
        this.endTicks = 0L;
    }

    public void stop() {
        if (this.startTicks == 0 || this.endTicks != 0) {
            return;
        }
        this.endTicks = System.nanoTime();
    }

    public long currentTime() {
        return (System.nanoTime() - this.startTicks) / 1000000;
    }

    public void saveCurrentTime() {
        if (getIsStarted()) {
            this.endTicks = System.nanoTime();
        }
    }

    public long getElapsedMs() {
        if (!getIsStarted()) {
            return 0L;
        }
        long jNanoTime = this.endTicks;
        if (jNanoTime == 0) {
            jNanoTime = System.nanoTime();
        }
        return (jNanoTime - this.startTicks) / 1000000;
    }
}

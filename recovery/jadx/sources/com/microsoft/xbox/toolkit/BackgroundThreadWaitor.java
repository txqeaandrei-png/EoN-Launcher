package com.microsoft.xbox.toolkit;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class BackgroundThreadWaitor {
    private static BackgroundThreadWaitor instance = new BackgroundThreadWaitor();
    private final Hashtable<WaitType, WaitObject> blockingTable = new Hashtable<>();
    private final Ready waitReady = new Ready();
    private final ArrayList<Runnable> waitingRunnables = new ArrayList<>();
    private BackgroundThreadWaitorChangedCallback blockingChangedCallback = null;

    public interface BackgroundThreadWaitorChangedCallback {
        void run(EnumSet<WaitType> enumSet, boolean z);
    }

    public enum WaitType {
        Navigation,
        ApplicationBar,
        ListScroll,
        ListLayout,
        PivotScroll
    }

    public static BackgroundThreadWaitor getInstance() {
        if (instance == null) {
            instance = new BackgroundThreadWaitor();
        }
        return instance;
    }

    public void waitForReady(int i) {
        XLEAssert.assertTrue(ThreadManager.UIThread != Thread.currentThread());
        ThreadManager.UIThreadPost(new Runnable() { // from class: com.microsoft.xbox.toolkit.BackgroundThreadWaitor.1
            @Override // java.lang.Runnable
            public void run() {
                BackgroundThreadWaitor.this.updateWaitReady();
            }
        });
        this.waitReady.waitForReady(i);
    }

    public void setBlocking(WaitType waitType, int i) {
        XLEAssert.assertTrue(ThreadManager.UIThread == Thread.currentThread());
        this.blockingTable.put(waitType, new WaitObject(waitType, i));
        updateWaitReady();
    }

    public void clearBlocking(WaitType waitType) {
        XLEAssert.assertTrue(ThreadManager.UIThread == Thread.currentThread());
        this.blockingTable.remove(waitType);
        updateWaitReady();
    }

    public void setChangedCallback(BackgroundThreadWaitorChangedCallback backgroundThreadWaitorChangedCallback) {
        this.blockingChangedCallback = backgroundThreadWaitorChangedCallback;
    }

    public boolean isBlocking() {
        return !this.waitReady.getIsReady();
    }

    public void updateWaitReady() {
        boolean z = true;
        XLEAssert.assertTrue(ThreadManager.UIThread == Thread.currentThread());
        HashSet hashSet = new HashSet();
        EnumSet<WaitType> enumSetNoneOf = EnumSet.noneOf(WaitType.class);
        Enumeration<WaitObject> enumerationElements = this.blockingTable.elements();
        while (enumerationElements.hasMoreElements()) {
            WaitObject waitObjectNextElement = enumerationElements.nextElement();
            if (waitObjectNextElement.isExpired()) {
                hashSet.add(waitObjectNextElement.type);
            } else {
                enumSetNoneOf.add(waitObjectNextElement.type);
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            this.blockingTable.remove(it.next());
        }
        if (this.blockingTable.size() == 0) {
            this.waitReady.setReady();
            drainWaitingRunnables();
            z = false;
        } else {
            this.waitReady.reset();
        }
        BackgroundThreadWaitorChangedCallback backgroundThreadWaitorChangedCallback = this.blockingChangedCallback;
        if (backgroundThreadWaitorChangedCallback != null) {
            backgroundThreadWaitorChangedCallback.run(enumSetNoneOf, z);
        }
    }

    public void postRunnableAfterReady(Runnable runnable) {
        XLEAssert.assertTrue(ThreadManager.UIThread == Thread.currentThread());
        if (runnable != null) {
            if (!isBlocking()) {
                runnable.run();
            } else {
                this.waitingRunnables.add(runnable);
            }
        }
    }

    private void drainWaitingRunnables() {
        XLEAssert.assertTrue(ThreadManager.UIThread == Thread.currentThread());
        Iterator<Runnable> it = this.waitingRunnables.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        this.waitingRunnables.clear();
    }

    private class WaitObject {
        private final long expires;
        public WaitType type;

        public WaitObject(WaitType waitType, long j) {
            this.type = waitType;
            this.expires = SystemClock.uptimeMillis() + j;
        }

        public boolean isExpired() {
            return this.expires < SystemClock.uptimeMillis();
        }
    }
}

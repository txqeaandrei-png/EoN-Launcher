package com.microsoft.xbox.toolkit;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class XLEObservable<T> {
    private final HashSet<XLEObserver<T>> data = new HashSet<>();

    public synchronized void addUniqueObserver(XLEObserver<T> xLEObserver) {
        if (!this.data.contains(xLEObserver)) {
            addObserver(xLEObserver);
        }
    }

    public synchronized void addObserver(XLEObserver<T> xLEObserver) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        this.data.add(xLEObserver);
    }

    public synchronized void removeObserver(XLEObserver<T> xLEObserver) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        this.data.remove(xLEObserver);
    }

    public synchronized void notifyObservers(AsyncResult<T> asyncResult) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        Iterator it = new ArrayList(this.data).iterator();
        while (it.hasNext()) {
            ((XLEObserver) it.next()).update(asyncResult);
        }
    }

    public synchronized void clearObserver() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        this.data.clear();
    }

    public synchronized ArrayList<XLEObserver<T>> getObservers() {
        return new ArrayList<>(this.data);
    }
}

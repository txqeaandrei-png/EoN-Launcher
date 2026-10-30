package com.microsoft.xbox.toolkit;

import java.util.HashSet;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes3.dex */
public class ThreadSafePriorityQueue<T> {
    private final HashSet<T> hashSet = new HashSet<>();
    private final PriorityQueue<T> queue = new PriorityQueue<>();
    private final Object syncObject = new Object();

    public void push(T t) {
        synchronized (this.syncObject) {
            if (!this.hashSet.contains(t)) {
                this.queue.add(t);
                this.hashSet.add(t);
                this.syncObject.notifyAll();
            }
        }
    }

    public T pop() {
        T tRemove = null;
        try {
            synchronized (this.syncObject) {
                while (this.queue.isEmpty()) {
                    this.syncObject.wait();
                }
                tRemove = this.queue.remove();
                this.hashSet.remove(tRemove);
            }
        } catch (InterruptedException unused) {
        }
        return tRemove;
    }
}

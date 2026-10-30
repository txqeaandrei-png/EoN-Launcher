package com.microsoft.xbox.toolkit;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes3.dex */
public class ThreadSafeFixedSizeHashtable<K, V> {
    private final int maxSize;
    private final PriorityQueue<ThreadSafeFixedSizeHashtable<K, V>.KeyTuple> fifo = new PriorityQueue<>();
    private final Hashtable<K, V> hashtable = new Hashtable<>();
    private final Object syncObject = new Object();
    private int count = 0;

    public ThreadSafeFixedSizeHashtable(int i) {
        this.maxSize = i;
        if (i <= 0) {
            throw new IllegalArgumentException();
        }
    }

    public void put(K k, V v) {
        if (k == null || v == null) {
            return;
        }
        synchronized (this.syncObject) {
            if (!this.hashtable.containsKey(k)) {
                this.count++;
                this.fifo.add(new KeyTuple(k, this.count));
                this.hashtable.put(k, v);
                cleanupIfNecessary();
            }
        }
    }

    public V get(K k) {
        V v;
        if (k == null) {
            return null;
        }
        synchronized (this.syncObject) {
            v = this.hashtable.get(k);
        }
        return v;
    }

    public void remove(K k) {
        ThreadSafeFixedSizeHashtable<K, V>.KeyTuple keyTuple;
        if (k != null) {
            synchronized (this.syncObject) {
                if (this.hashtable.containsKey(k)) {
                    this.hashtable.remove(k);
                    Iterator<ThreadSafeFixedSizeHashtable<K, V>.KeyTuple> it = this.fifo.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            keyTuple = null;
                            break;
                        }
                        ThreadSafeFixedSizeHashtable<K, V>.KeyTuple next = it.next();
                        if (((KeyTuple) next).key.equals(k)) {
                            keyTuple = next;
                            break;
                        }
                    }
                    if (keyTuple != null) {
                        this.fifo.remove(keyTuple);
                    }
                }
            }
        }
    }

    public Enumeration<V> elements() {
        return this.hashtable.elements();
    }

    public Enumeration<K> keys() {
        return this.hashtable.keys();
    }

    private void cleanupIfNecessary() {
        XLEAssert.assertTrue(this.hashtable.size() == this.fifo.size());
        while (this.hashtable.size() > this.maxSize) {
            this.hashtable.remove(this.fifo.remove().getKey());
            XLEAssert.assertTrue(this.hashtable.size() == this.fifo.size());
        }
    }

    public class KeyTuple implements Comparable<ThreadSafeFixedSizeHashtable<K, V>.KeyTuple> {
        private int index;
        private final K key;

        public KeyTuple(K k, int i) {
            this.key = k;
            this.index = i;
        }

        @Override // java.lang.Comparable
        public int compareTo(ThreadSafeFixedSizeHashtable<K, V>.KeyTuple keyTuple) {
            return this.index - keyTuple.index;
        }

        public K getKey() {
            return this.key;
        }
    }
}

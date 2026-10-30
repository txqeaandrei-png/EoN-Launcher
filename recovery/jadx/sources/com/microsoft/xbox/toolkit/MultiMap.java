package com.microsoft.xbox.toolkit;

import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class MultiMap<K, V> {
    private final Hashtable<K, HashSet<V>> data = new Hashtable<>();
    private final Hashtable<V, K> dataInverse = new Hashtable<>();

    public HashSet<V> get(K k) {
        return this.data.get(k);
    }

    public int size() {
        return this.data.size();
    }

    public int TESTsizeDegenerate() {
        Iterator<K> it = this.data.keySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            if (this.data.get(it.next()).size() == 0) {
                i++;
            }
        }
        return i;
    }

    public void clear() {
        this.data.clear();
        this.dataInverse.clear();
    }

    public boolean containsKey(K k) {
        return this.data.containsKey(k);
    }

    public boolean containsValue(V v) {
        return getKey(v) != null;
    }

    public K getKey(V v) {
        return this.dataInverse.get(v);
    }

    public void removeValue(V v) {
        K key = getKey(v);
        this.data.get(key).remove(v);
        this.dataInverse.remove(v);
        removeKeyIfEmpty(key);
    }

    public void removeKey(K k) {
        for (V v : this.data.get(k)) {
            XLEAssert.assertTrue(this.dataInverse.containsKey(v));
            this.dataInverse.remove(v);
        }
        this.data.remove(k);
    }

    public void put(K k, V v) {
        if (this.data.get(k) == null) {
            this.data.put(k, new HashSet<>());
        }
        XLEAssert.assertTrue(!this.dataInverse.containsKey(v));
        this.data.get(k).add(v);
        this.dataInverse.put(v, k);
    }

    public boolean keyValueMatches(K k, V v) {
        HashSet<V> hashSet = get(k);
        if (hashSet == null) {
            return false;
        }
        return hashSet.contains(v);
    }

    private void removeKeyIfEmpty(K k) {
        HashSet<V> hashSet = get(k);
        if (hashSet == null || !hashSet.isEmpty()) {
            return;
        }
        this.data.remove(k);
    }
}

package com.microsoft.xbox.toolkit;

import com.google.firebase.messaging.Constants;

/* JADX INFO: loaded from: classes3.dex */
public class XLEMemoryCacheEntry<V> {
    private final int byteCount;
    private final V data;

    public XLEMemoryCacheEntry(V v, int i) {
        if (v == null) {
            throw new IllegalArgumentException(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
        }
        if (i > 0) {
            this.data = v;
            this.byteCount = i;
            return;
        }
        throw new IllegalArgumentException("byteCount");
    }

    public int getByteCount() {
        return this.byteCount;
    }

    public V getValue() {
        return this.data;
    }
}

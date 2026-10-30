package com.google.android.gms.common.data;

import java.util.ArrayList;
import java.util.Iterator;
import org.simpleframework.xml.stream.DocumentReader;

/* JADX INFO: loaded from: classes.dex */
public final class FreezableUtils {
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(ArrayList<E> arrayList) {
        DocumentReader.Start start = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            start.add(arrayList.get(i).freeze());
        }
        return start;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freezeIterable(Iterable<E> iterable) {
        DocumentReader.Start start = (ArrayList<T>) new ArrayList();
        Iterator<E> it = iterable.iterator();
        while (it.hasNext()) {
            start.add(it.next().freeze());
        }
        return start;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freeze(E[] eArr) {
        DocumentReader.Start start = (ArrayList<T>) new ArrayList(eArr.length);
        for (E e : eArr) {
            start.add(e.freeze());
        }
        return start;
    }
}

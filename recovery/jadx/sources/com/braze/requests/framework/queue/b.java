package com.braze.requests.framework.queue;

import java.util.Comparator;
import kotlin.comparisons.ComparisonsKt;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ComparisonsKt.compareValues(Long.valueOf(((com.braze.requests.framework.h) obj).b), Long.valueOf(((com.braze.requests.framework.h) obj2).b));
    }
}

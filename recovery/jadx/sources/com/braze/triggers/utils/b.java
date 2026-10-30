package com.braze.triggers.utils;

import com.braze.triggers.actions.g;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.PriorityQueue;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final Comparator b = new Comparator() { // from class: com.braze.triggers.utils.b$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return b.a((com.braze.triggers.actions.a) obj, (com.braze.triggers.actions.a) obj2);
        }
    };
    public final PriorityQueue a;

    public b(ArrayList fallbackActions) {
        Intrinsics.checkNotNullParameter(fallbackActions, "fallbackActions");
        PriorityQueue priorityQueue = new PriorityQueue(12, b);
        this.a = priorityQueue;
        priorityQueue.addAll(fallbackActions);
    }

    public static final int a(com.braze.triggers.actions.a actionA, com.braze.triggers.actions.a actionB) {
        Intrinsics.checkNotNullParameter(actionA, "actionA");
        Intrinsics.checkNotNullParameter(actionB, "actionB");
        g gVar = (g) actionA;
        int i = gVar.b.c;
        g gVar2 = (g) actionB;
        int i2 = gVar2.b.c;
        if (i > i2) {
            return -1;
        }
        if (i < i2) {
            return 1;
        }
        return gVar.a.compareTo(gVar2.a);
    }
}

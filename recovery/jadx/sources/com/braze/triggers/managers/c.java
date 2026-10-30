package com.braze.triggers.managers;

import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.triggers.events.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    public static boolean a(com.braze.triggers.events.b triggerEvent, com.braze.triggers.actions.g action, long j, final long j2) {
        long j3;
        Intrinsics.checkNotNullParameter(triggerEvent, "triggerEvent");
        Intrinsics.checkNotNullParameter(action, "action");
        if (triggerEvent instanceof h) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, f.q, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.c$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.a();
                }
            }, 14, (Object) null);
            return true;
        }
        long jNowInSeconds = DateTimeUtils.nowInSeconds();
        com.braze.triggers.config.c cVar = action.b;
        final long j4 = jNowInSeconds + ((long) cVar.d);
        final int i = cVar.g;
        if (i != -1) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, f.q, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.c$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.a(i);
                }
            }, 14, (Object) null);
            j3 = j + ((long) i);
        } else {
            j3 = j + j2;
        }
        final long j5 = j3;
        if (j4 >= j5) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, f.q, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.c$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.a(j4, j5);
                }
            }, 12, (Object) null);
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, f.q, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.c$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.a(j2, j5, j4);
            }
        }, 12, (Object) null);
        return false;
    }

    public static final String a() {
        return "Ignoring minimum time interval between triggered actions because the trigger event is a test.";
    }

    public static final String a(int i) {
        return "Using override minimum display interval: " + i;
    }

    public static final String a(long j, long j2) {
        return "Minimum time interval requirement met for matched trigger. Action display time: " + j + " . Next viable display time: " + j2;
    }

    public static final String a(long j, long j2, long j3) {
        return "Minimum time interval requirement and triggered action override time interval requirement of " + j + " not met for matched trigger. Returning null. Next viable display time: " + j2 + ". Action display time: " + j3;
    }
}

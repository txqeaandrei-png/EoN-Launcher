package com.braze.analytics;

import com.braze.j;
import com.braze.models.i;
import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements c {
    public static final String e(String str) {
        return j.a("Cannot create card control event for Feed card. Returning null. Card id: ", str);
    }

    public static final String f(String str) {
        return j.a("Cannot create card dismissed event for Feed card. Returning null. Card id: ", str);
    }

    @Override // com.braze.analytics.c
    public final i a(final String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.analytics.b$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.f(cardId);
            }
        }, 6, (Object) null);
        return null;
    }

    @Override // com.braze.analytics.c
    public final i b(String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        return com.braze.models.outgoing.event.b.g.k(cardId);
    }

    @Override // com.braze.analytics.c
    public final i c(final String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.analytics.b$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.e(cardId);
            }
        }, 6, (Object) null);
        return null;
    }

    @Override // com.braze.analytics.c
    public final i d(String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        return com.braze.models.outgoing.event.b.g.m(cardId);
    }
}

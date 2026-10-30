package com.braze.events.internal.dispatchmanager;

import com.braze.models.o;
import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public final c a(o oVar) {
        if (oVar == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.events.internal.dispatchmanager.a$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.a();
                }
            }, 7, (Object) null);
        }
        return new c(b.FLUSH_PENDING_BRAZE_EVENTS, null, oVar, null, 10);
    }

    public static final String a() {
        return "There should be a session ID here";
    }
}

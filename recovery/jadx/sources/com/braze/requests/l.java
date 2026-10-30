package com.braze.requests;

import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l {
    public static final String b(String str) {
        return com.braze.j.a("No RequestEndpointDestination found for name: ", str);
    }

    public final m a(final String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        try {
            return m.valueOf(name);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.requests.l$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return l.b(name);
                }
            }, 4, (Object) null);
            return null;
        }
    }
}

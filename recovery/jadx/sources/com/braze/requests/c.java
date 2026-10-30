package com.braze.requests;

import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    public static void a(final Object obj, Function0 function0) {
        try {
            function0.invoke();
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, obj, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.requests.c$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.a(obj);
                }
            }, 4, (Object) null);
        }
    }

    public static final String a(Object obj) {
        return "Encountered exception while parsing server response for " + obj;
    }
}

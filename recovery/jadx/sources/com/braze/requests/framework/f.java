package com.braze.requests.framework;

import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements c {
    public static final String b(com.braze.models.response.g gVar) {
        return "Shutdown sync got success response: " + gVar;
    }

    @Override // com.braze.requests.framework.c
    public final void a(final com.braze.models.response.g apiResponse) {
        Intrinsics.checkNotNullParameter(apiResponse, "apiResponse");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.f$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.b(apiResponse);
            }
        }, 7, (Object) null);
    }

    public static final String b(com.braze.models.response.a aVar) {
        return "Shutdown sync got error response: " + aVar;
    }

    @Override // com.braze.requests.framework.c
    public final void a(final com.braze.models.response.a apiResponse) {
        Intrinsics.checkNotNullParameter(apiResponse, "apiResponse");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.f$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.b(apiResponse);
            }
        }, 7, (Object) null);
    }
}

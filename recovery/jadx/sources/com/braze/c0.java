package com.braze;

import com.braze.models.outgoing.AttributionData;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class c0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ BrazeUser a;
    public final /* synthetic */ AttributionData b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(BrazeUser brazeUser, AttributionData attributionData, Continuation continuation) {
        super(2, continuation);
        this.a = brazeUser;
        this.b = attributionData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new c0(this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new c0(this.a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        JSONObject jsonKey;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        com.braze.storage.h0 h0Var = this.a.userCache;
        AttributionData attributionData = this.b;
        synchronized (h0Var) {
            if (attributionData != null) {
                try {
                    jsonKey = attributionData.getJsonKey();
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                jsonKey = null;
            }
            h0Var.b(jsonKey);
        }
        return Unit.INSTANCE;
    }
}

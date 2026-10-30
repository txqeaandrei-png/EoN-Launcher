package com.braze;

import com.braze.enums.NotificationSubscriptionType;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes2.dex */
public final class p0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ BrazeUser a;
    public final /* synthetic */ NotificationSubscriptionType b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p0(BrazeUser brazeUser, NotificationSubscriptionType notificationSubscriptionType, Continuation continuation) {
        super(2, continuation);
        this.a = brazeUser;
        this.b = notificationSubscriptionType;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new p0(this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new p0(this.a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        com.braze.storage.h0 h0Var = this.a.userCache;
        NotificationSubscriptionType notificationSubscriptionType = this.b;
        synchronized (h0Var) {
            h0Var.c("push_subscribe", notificationSubscriptionType != null ? notificationSubscriptionType.getJsonKey() : null);
        }
        return Unit.INSTANCE;
    }
}

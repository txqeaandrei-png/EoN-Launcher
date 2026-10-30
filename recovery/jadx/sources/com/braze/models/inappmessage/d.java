package com.braze.models.inappmessage;

import com.braze.events.internal.f0;
import com.braze.managers.c0;
import com.braze.managers.m;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends SuspendLambda implements Function2 {
    public final /* synthetic */ InAppMessageBase a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(InAppMessageBase inAppMessageBase, Continuation continuation) {
        super(2, continuation);
        this.a = inAppMessageBase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new d(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new d(this.a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        c0 brazeManager;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        if (this.a.clickLogged.get() && (brazeManager = this.a.getBrazeManager()) != null) {
            com.braze.triggers.events.d triggerEvent = new com.braze.triggers.events.d(this.a.getTriggerId());
            Intrinsics.checkNotNullParameter(triggerEvent, "triggerEvent");
            ((m) brazeManager).d.b(new f0(triggerEvent), f0.class);
        }
        return Unit.INSTANCE;
    }
}

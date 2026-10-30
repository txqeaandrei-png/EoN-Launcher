package com.braze.models.inappmessage;

import com.braze.managers.c0;
import com.braze.managers.m;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends SuspendLambda implements Function2 {
    public final /* synthetic */ String a;
    public final /* synthetic */ InAppMessageBase b;
    public final /* synthetic */ c0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(String str, InAppMessageBase inAppMessageBase, c0 c0Var, Continuation continuation) {
        super(2, continuation);
        this.a = str;
        this.b = inAppMessageBase;
        this.c = c0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new c(this.a, this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((c) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        com.braze.models.i iVarM = com.braze.models.outgoing.event.b.g.m(this.a, this.b.getMessageExtras());
        if (iVarM != null) {
            ((m) this.c).a(iVarM);
        }
        return Unit.INSTANCE;
    }
}

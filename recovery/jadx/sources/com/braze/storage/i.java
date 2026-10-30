package com.braze.storage;

import java.util.LinkedHashSet;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends SuspendLambda implements Function2 {
    public final /* synthetic */ p a;
    public final /* synthetic */ LinkedHashSet b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(p pVar, LinkedHashSet linkedHashSet, Continuation continuation) {
        super(2, continuation);
        this.a = pVar;
        this.b = linkedHashSet;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new i(this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new i(this.a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        this.a.j.edit().putStringSet("test", this.b).apply();
        return Unit.INSTANCE;
    }
}

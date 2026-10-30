package com.braze.triggers.managers;

import com.braze.support.BrazeLogger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends SuspendLambda implements Function1 {
    public final /* synthetic */ com.braze.triggers.actions.a a;
    public final /* synthetic */ f b;
    public final /* synthetic */ com.braze.triggers.events.b c;
    public final /* synthetic */ long d;
    public final /* synthetic */ long e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(com.braze.triggers.actions.a aVar, f fVar, com.braze.triggers.events.b bVar, long j, long j2, Continuation continuation) {
        super(1, continuation);
        this.a = aVar;
        this.b = fVar;
        this.c = bVar;
        this.d = j;
        this.e = j2;
    }

    public static final String a(long j) {
        return "Performing triggered action after a delay of " + j + " ms.";
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new d(this.a, this.b, this.c, this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((d) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        String str = f.q;
        final long j = this.e;
        BrazeLogger.brazelog$default(brazeLogger, str, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.d$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d.a(j);
            }
        }, 14, (Object) null);
        com.braze.triggers.actions.a aVar = this.a;
        f fVar = this.b;
        aVar.a(fVar.a, fVar.c, this.c, this.d);
        return Unit.INSTANCE;
    }
}

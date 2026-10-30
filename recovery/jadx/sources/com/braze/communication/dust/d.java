package com.braze.communication.dust;

import java.io.BufferedReader;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends SuspendLambda implements Function2 {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ BufferedReader c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(BufferedReader bufferedReader, Continuation continuation) {
        super(2, continuation);
        this.c = bufferedReader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        d dVar = new d(this.c, continuation);
        dVar.b = obj;
        return dVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        d dVar = new d(this.c, (Continuation) obj2);
        dVar.b = (ProducerScope) obj;
        return dVar.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ProducerScope producerScope;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            producerScope = (ProducerScope) this.b;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            producerScope = (ProducerScope) this.b;
            ResultKt.throwOnFailure(obj);
        }
        while (CoroutineScopeKt.isActive(producerScope)) {
            CoroutineDispatcher io = Dispatchers.getIO();
            c cVar = new c(this.c, producerScope, null);
            this.b = producerScope;
            this.a = 1;
            if (BuildersKt.withContext(io, cVar, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}

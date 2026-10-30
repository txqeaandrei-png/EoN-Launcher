package com.braze.communication.dust;

import com.braze.support.BrazeLogger;
import java.io.BufferedReader;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends SuspendLambda implements Function2 {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ BufferedReader c;
    public final /* synthetic */ ProducerScope d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(BufferedReader bufferedReader, ProducerScope producerScope, Continuation continuation) {
        super(2, continuation);
        this.c = bufferedReader;
        this.d = producerScope;
    }

    public static final String a() {
        return "Caught unexpected exception in stream producer";
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        c cVar = new c(this.c, this.d, continuation);
        cVar.b = obj;
        return cVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((c) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [int, kotlinx.coroutines.CoroutineScope] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r2 = this.a;
        try {
            if (r2 == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                String line = this.c.readLine();
                if (line == null) {
                    return Unit.INSTANCE;
                }
                ProducerScope producerScope = this.d;
                this.b = coroutineScope;
                this.a = 1;
                if (producerScope.send(line, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (r2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (Exception e) {
            if (CoroutineScopeKt.isActive(r2)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.communication.dust.c$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return c.a();
                    }
                }, 8, (Object) null);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.c$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return c.a(e);
                    }
                }, 14, (Object) null);
            }
        }
        return Unit.INSTANCE;
    }

    public static final String a(Exception exc) {
        return "Stream producer job cancelled " + exc;
    }
}

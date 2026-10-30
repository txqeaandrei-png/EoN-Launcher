package com.braze.dispatch;

import android.content.BroadcastReceiver;
import android.content.Intent;
import com.braze.events.internal.o;
import com.braze.support.BrazeLogger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ f b;
    public final /* synthetic */ Intent c;
    public final /* synthetic */ BroadcastReceiver.PendingResult d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(f fVar, Intent intent, BroadcastReceiver.PendingResult pendingResult, Continuation continuation) {
        super(2, continuation);
        this.b = fVar;
        this.c = intent;
        this.d = pendingResult;
    }

    public static final String a() {
        return "Retrieving connectivity event data in background";
    }

    public static final String b() {
        return "Failed to process connectivity event.";
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        c cVar = new c(this.b, this.c, this.d, continuation);
        cVar.a = obj;
        return cVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((c) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.a;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) coroutineScope, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.dispatch.c$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.a();
            }
        }, 6, (Object) null);
        try {
            f fVar = this.b;
            com.braze.enums.f fVar2 = fVar.j;
            fVar.j = com.braze.support.c.a(this.c, fVar.i);
            f fVar3 = this.b;
            com.braze.enums.f fVar4 = fVar3.j;
            if (fVar2 != fVar4) {
                fVar3.b.b(new o(fVar2, fVar4), o.class);
            }
            this.b.b();
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) coroutineScope, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.dispatch.c$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.b();
                }
            }, 4, (Object) null);
            f fVar5 = this.b;
            fVar5.a(fVar5.b, e);
        }
        this.d.finish();
        return Unit.INSTANCE;
    }
}

package com.braze.managers;

import android.content.BroadcastReceiver;
import com.braze.support.BrazeLogger;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class o extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ r b;
    public final /* synthetic */ BroadcastReceiver.PendingResult c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(r rVar, BroadcastReceiver.PendingResult pendingResult, Continuation continuation) {
        super(2, continuation);
        this.b = rVar;
        this.c = pendingResult;
    }

    public static final String a() {
        return "Failed to log throwable during seal session.";
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        o oVar = new o(this.b, this.c, continuation);
        oVar.a = obj;
        return oVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((o) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.a;
        r rVar = this.b;
        ReentrantLock reentrantLock = rVar.h;
        reentrantLock.lock();
        try {
            try {
                rVar.i();
            } catch (Exception e) {
                try {
                    rVar.c.b(e, Throwable.class);
                } catch (Exception e2) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) coroutineScope, BrazeLogger.Priority.E, (Throwable) e2, false, new Function0() { // from class: com.braze.managers.o$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return o.a();
                        }
                    }, 4, (Object) null);
                }
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            this.c.finish();
            return unit;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}

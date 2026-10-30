package com.braze.managers;

import com.braze.support.BrazeLogger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class t0 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ u0 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t0(u0 u0Var, Continuation continuation) {
        super(2, continuation);
        this.b = u0Var;
    }

    public static final String a() {
        return "User cache was locked, waiting.";
    }

    public static final String b() {
        return "User cache notified. Continuing UserDependencyManager shutdown";
    }

    public static final String c() {
        return "Device cache was locked, waiting.";
    }

    public static final String d() {
        return "Device cache notified. Continuing UserDependencyManager shutdown";
    }

    public static final String e() {
        return "Exception while shutting down dispatch manager. Continuing.";
    }

    public static final String f() {
        return "Exception while stopping data sync. Continuing.";
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        t0 t0Var = new t0(this.b, continuation);
        t0Var.a = obj;
        return t0Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        t0 t0Var = new t0(this.b, (Continuation) obj2);
        t0Var.a = (CoroutineScope) obj;
        return t0Var.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.a;
        try {
            if (this.b.a().a.getAvailablePermits() == 0) {
                BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
                BrazeLogger.brazelog$default(brazeLogger, (Object) coroutineScope, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.t0$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return t0.a();
                    }
                }, 6, (Object) null);
                com.braze.storage.h0 h0VarA = this.b.a();
                h0VarA.getClass();
                BuildersKt__BuildersKt.runBlocking$default(null, new com.braze.storage.a(h0VarA, null), 1, null);
                BrazeLogger.brazelog$default(brazeLogger, (Object) coroutineScope, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.t0$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return t0.b();
                    }
                }, 7, (Object) null);
            }
            com.braze.storage.r rVar = this.b.k;
            if (rVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("deviceCache");
                rVar = null;
            }
            if (rVar.a.getAvailablePermits() == 0) {
                BrazeLogger brazeLogger2 = BrazeLogger.INSTANCE;
                BrazeLogger.brazelog$default(brazeLogger2, (Object) coroutineScope, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.t0$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return t0.c();
                    }
                }, 6, (Object) null);
                com.braze.storage.r rVar2 = this.b.k;
                if (rVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("deviceCache");
                    rVar2 = null;
                }
                rVar2.getClass();
                BuildersKt__BuildersKt.runBlocking$default(null, new com.braze.storage.a(rVar2, null), 1, null);
                BrazeLogger.brazelog$default(brazeLogger2, (Object) coroutineScope, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.t0$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return t0.d();
                    }
                }, 7, (Object) null);
            }
            this.b.E.e();
            this.b.l.c();
            this.b.q.l();
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) coroutineScope, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.managers.t0$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return t0.e();
                }
            }, 4, (Object) null);
        }
        try {
            this.b.p.f();
        } catch (Exception e2) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) coroutineScope, BrazeLogger.Priority.W, (Throwable) e2, false, new Function0() { // from class: com.braze.managers.t0$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return t0.f();
                }
            }, 4, (Object) null);
        }
        return Unit.INSTANCE;
    }
}

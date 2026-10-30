package com.braze.storage;

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
public final class u extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ Function0 b;
    public final /* synthetic */ v c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(Function0 function0, v vVar, String str, Continuation continuation) {
        super(2, continuation);
        this.b = function0;
        this.c = vVar;
        this.d = str;
    }

    public static final String a(String str) {
        return com.braze.j.a("Failed to ", str);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        u uVar = new u(this.b, this.c, this.d, continuation);
        uVar.a = obj;
        return uVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((u) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.a;
        try {
            this.b.invoke();
        } catch (Exception e) {
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeLogger.Priority priority = BrazeLogger.Priority.E;
            final String str = this.d;
            BrazeLogger.brazelog$default(brazeLogger, (Object) coroutineScope, priority, (Throwable) e, false, new Function0() { // from class: com.braze.storage.u$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return u.a(str);
                }
            }, 4, (Object) null);
            this.c.a(e);
        }
        return Unit.INSTANCE;
    }
}

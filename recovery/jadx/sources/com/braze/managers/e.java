package com.braze.managers;

import android.content.Context;
import android.view.View;
import com.braze.Braze;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends SuspendLambda implements Function2 {
    public final /* synthetic */ View a;
    public final /* synthetic */ String b;
    public final /* synthetic */ d c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(View view, String str, d dVar, Continuation continuation) {
        super(2, continuation);
        this.a = view;
        this.b = str;
        this.c = dVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new e(this.a, this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((e) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        Braze.Companion companion = Braze.INSTANCE;
        Context context = this.a.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        companion.getInstance(context).logBannerImpression(this.b);
        ReentrantLock reentrantLock = h.n;
        d dVar = this.c;
        reentrantLock.lock();
        try {
            dVar.c = true;
            return Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }
}

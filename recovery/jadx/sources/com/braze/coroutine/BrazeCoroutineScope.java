package com.braze.coroutine;

import com.braze.support.BrazeLogger;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0011H\u0001J;\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\r2\u001c\u0010\u0017\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0018¢\u0006\u0002\u0010\u001bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\rX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/braze/coroutine/BrazeCoroutineScope;", "Lkotlinx/coroutines/CoroutineScope;", "<init>", "()V", "shouldReRaiseExceptions", "", "getShouldReRaiseExceptions$android_sdk_base_release", "()Z", "setShouldReRaiseExceptions$android_sdk_base_release", "(Z)V", "exceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "cancelChildren", "", "launchDelayed", "Lkotlinx/coroutines/Job;", "startDelayInMs", "", "specificContext", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Ljava/lang/Number;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeCoroutineScope implements CoroutineScope {
    public static final BrazeCoroutineScope INSTANCE = new BrazeCoroutineScope();
    private static final CoroutineContext coroutineContext;
    private static final CoroutineExceptionHandler exceptionHandler;
    private static boolean shouldReRaiseExceptions;

    static {
        c cVar = new c(CoroutineExceptionHandler.INSTANCE);
        exceptionHandler = cVar;
        coroutineContext = Dispatchers.getIO().plus(cVar).plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null));
    }

    private BrazeCoroutineScope() {
    }

    @JvmStatic
    public static final void cancelChildren() {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeCoroutineScope brazeCoroutineScope = INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) brazeCoroutineScope, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.coroutine.BrazeCoroutineScope$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeCoroutineScope.cancelChildren$lambda$1();
            }
        }, 6, (Object) null);
        JobKt__JobKt.cancelChildren$default(brazeCoroutineScope.getCoroutineContext(), (CancellationException) null, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String cancelChildren$lambda$1() {
        return "Cancelling children of BrazeCoroutineScope";
    }

    public static /* synthetic */ Job launchDelayed$default(BrazeCoroutineScope brazeCoroutineScope, Number number, CoroutineContext coroutineContext2, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            coroutineContext2 = brazeCoroutineScope.getCoroutineContext();
        }
        return brazeCoroutineScope.launchDelayed(number, coroutineContext2, function1);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return coroutineContext;
    }

    public final boolean getShouldReRaiseExceptions$android_sdk_base_release() {
        return shouldReRaiseExceptions;
    }

    public final Job launchDelayed(Number startDelayInMs, CoroutineContext specificContext, Function1<? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(startDelayInMs, "startDelayInMs");
        Intrinsics.checkNotNullParameter(specificContext, "specificContext");
        Intrinsics.checkNotNullParameter(block, "block");
        return BuildersKt__Builders_commonKt.launch$default(this, specificContext, null, new b(startDelayInMs, block, null), 2, null);
    }

    public final void setShouldReRaiseExceptions$android_sdk_base_release(boolean z) {
        shouldReRaiseExceptions = z;
    }
}

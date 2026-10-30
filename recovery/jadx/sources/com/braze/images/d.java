package com.braze.images;

import android.content.Context;
import com.braze.support.BrazeLogger;
import java.io.File;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends SuspendLambda implements Function2 {
    public final /* synthetic */ Context a;
    public final /* synthetic */ DefaultBrazeImageLoader b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Context context, DefaultBrazeImageLoader defaultBrazeImageLoader, Continuation continuation) {
        super(2, continuation);
        this.a = context;
        this.b = defaultBrazeImageLoader;
    }

    public static final String a() {
        return "Initializing disk cache";
    }

    public static final String b() {
        return "Disk cache initialized";
    }

    public static final String c() {
        return "Caught exception creating new disk cache. Unable to create new disk cache";
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new d(this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new d(this.a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        c cVar = DefaultBrazeImageLoader.Companion;
        Context context = this.a;
        cVar.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(DefaultBrazeImageLoader.BRAZE_LRU_CACHE_FOLDER, "uniqueName");
        File file = new File(com.braze.c.a(new StringBuilder().append(context.getCacheDir().getPath()), File.separator, DefaultBrazeImageLoader.BRAZE_LRU_CACHE_FOLDER));
        ReentrantLock reentrantLock = this.b.diskCacheLock;
        DefaultBrazeImageLoader defaultBrazeImageLoader = this.b;
        reentrantLock.lock();
        try {
            try {
                BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
                BrazeLogger.brazelog$default(brazeLogger, DefaultBrazeImageLoader.TAG, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.images.d$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return d.a();
                    }
                }, 14, (Object) null);
                defaultBrazeImageLoader.diskLruCache = new a(file);
                BrazeLogger.brazelog$default(brazeLogger, DefaultBrazeImageLoader.TAG, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.images.d$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return d.b();
                    }
                }, 14, (Object) null);
                defaultBrazeImageLoader.isDiskCacheStarting = false;
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, DefaultBrazeImageLoader.TAG, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.images.d$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return d.c();
                    }
                }, 8, (Object) null);
            }
            return Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }
}

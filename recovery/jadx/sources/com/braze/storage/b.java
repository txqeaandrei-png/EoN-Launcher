package com.braze.storage;

import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public final Semaphore a = SemaphoreKt.Semaphore$default(1, 0, 2, null);

    public static final String b(b bVar) {
        return "Cache locked successfully for export: " + bVar;
    }

    public final synchronized Object a() {
        Object objC;
        if (this.a.tryAcquire()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.b$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.b(this.f$0);
                }
            }, 7, (Object) null);
            objC = c();
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.b$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.b();
                }
            }, 7, (Object) null);
            objC = null;
        }
        return objC;
    }

    public abstract Object c();

    public abstract void c(Object obj, boolean z);

    public static final String b() {
        return "Received call to export dirty object, but the cache was already locked.";
    }

    public static final String b(Object obj, boolean z) {
        return "Tried to confirm outboundObject [" + obj + "] with success [" + z + "], but the cache wasn't locked, so not doing anything.";
    }

    public final synchronized void a(final Object obj, final boolean z) {
        if (this.a.getAvailablePermits() != 0) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.storage.b$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.b(obj, z);
                }
            }, 6, (Object) null);
            return;
        }
        c(obj, z);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.storage.b$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.a(this.f$0);
            }
        }, 6, (Object) null);
        this.a.release();
    }

    public static final String a(b bVar) {
        return "Notifying confirmAndUnlock listeners for cache: " + bVar;
    }
}

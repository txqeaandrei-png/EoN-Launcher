package com.braze.requests.framework;

import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements c {
    public final /* synthetic */ g a;
    public final /* synthetic */ h b;
    public final /* synthetic */ b c;

    public e(g gVar, h hVar, b bVar) {
        this.a = gVar;
        this.b = hVar;
        this.c = bVar;
    }

    @Override // com.braze.requests.framework.c
    public final void a(com.braze.models.response.g apiResponse) {
        Intrinsics.checkNotNullParameter(apiResponse, "apiResponse");
        ReentrantLock reentrantLock = this.a.g;
        final h hVar = this.b;
        b bVar = this.c;
        reentrantLock.lock();
        try {
            final long jNowInMillisecondsSystemClock = DateTimeUtils.nowInMillisecondsSystemClock();
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, g.n, (BrazeLogger.Priority) null, (Throwable) null, true, new Function0() { // from class: com.braze.requests.framework.e$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e.a(hVar, jNowInMillisecondsSystemClock);
                }
            }, 6, (Object) null);
            hVar.a(jNowInMillisecondsSystemClock, i.COMPLETE);
            bVar.a(jNowInMillisecondsSystemClock, hVar, apiResponse);
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public static final String a(h hVar, long j) {
        return "Request success received for " + hVar.a(j);
    }

    @Override // com.braze.requests.framework.c
    public final void a(com.braze.models.response.a apiResponse) {
        Intrinsics.checkNotNullParameter(apiResponse, "apiResponse");
        final g gVar = this.a;
        ReentrantLock reentrantLock = gVar.g;
        final h hVar = this.b;
        b bVar = this.c;
        reentrantLock.lock();
        try {
            final long jNowInMillisecondsSystemClock = DateTimeUtils.nowInMillisecondsSystemClock();
            com.braze.models.response.g gVar2 = apiResponse instanceof com.braze.models.response.g ? (com.braze.models.response.g) apiResponse : null;
            final com.braze.models.response.d dVar = gVar2 != null ? gVar2.d : null;
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeLogger.brazelog$default(brazeLogger, g.n, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.e$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e.a(hVar, jNowInMillisecondsSystemClock, dVar);
                }
            }, 14, (Object) null);
            hVar.a(jNowInMillisecondsSystemClock, i.PENDING_RETRY);
            bVar.a(jNowInMillisecondsSystemClock, hVar, apiResponse);
            if (dVar instanceof com.braze.models.response.h) {
                gVar.i = jNowInMillisecondsSystemClock;
                gVar.h = ((com.braze.requests.b) ((com.braze.models.response.h) dVar).a).i;
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.e$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return e.a(gVar, hVar, jNowInMillisecondsSystemClock);
                    }
                }, 7, (Object) null);
                gVar.j = jNowInMillisecondsSystemClock + g.o;
            }
            if (dVar instanceof com.braze.models.response.e) {
                gVar.k.incrementAndGet();
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.e$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return e.a(gVar);
                    }
                }, 7, (Object) null);
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public static final String a(h hVar, long j, com.braze.models.response.d dVar) {
        return "Request failure received " + hVar.a(j) + " \n" + dVar;
    }

    public static final String a(g gVar, h hVar, long j) {
        return "Got failed token " + gVar.h + " for\n " + hVar.a(j);
    }

    public static final String a(g gVar) {
        return "Incremented invalidApiKeyErrorCounter to " + gVar.k.get();
    }
}

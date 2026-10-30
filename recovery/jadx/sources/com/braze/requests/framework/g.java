package com.braze.requests.framework;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.events.IEventSubscriber;
import com.braze.events.internal.o;
import com.braze.managers.u0;
import com.braze.models.outgoing.k;
import com.braze.requests.m;
import com.braze.requests.n;
import com.braze.requests.p;
import com.braze.requests.u;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.StringUtils;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    public static final String n = BrazeLogger.getBrazeLogTag((Class<?>) g.class);
    public static final long o = TimeUnit.HOURS.toMillis(1);
    public static final long p = TimeUnit.MINUTES.toMillis(1);
    public final com.braze.dispatch.h a;
    public final u b;
    public final boolean c;
    public final boolean d;
    public final LinkedHashMap e;
    public Deferred f;
    public final ReentrantLock g;
    public String h;
    public long i;
    public long j;
    public final AtomicInteger k;
    public final com.braze.requests.util.d l;
    public com.braze.enums.f m;

    public g(com.braze.dispatch.h dispatchDataProvider, u requestExecutor, boolean z, boolean z2) throws NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(dispatchDataProvider, "dispatchDataProvider");
        Intrinsics.checkNotNullParameter(requestExecutor, "requestExecutor");
        this.a = dispatchDataProvider;
        this.b = requestExecutor;
        this.c = z;
        this.d = z2;
        this.e = new LinkedHashMap();
        this.g = new ReentrantLock();
        this.i = -1L;
        this.j = -1L;
        this.k = new AtomicInteger(0);
        int iN = dispatchDataProvider.a.m.n();
        int iO = dispatchDataProvider.a.m.o();
        Intrinsics.checkNotNullParameter(dispatchDataProvider, "dispatchDataProvider");
        Intrinsics.checkNotNullParameter("com.braze.requestframework.tokenbucket", "filePrefix");
        Intrinsics.checkNotNullParameter("", "specificName");
        u0 u0Var = dispatchDataProvider.a;
        Context context = u0Var.a;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.braze.requestframework.tokenbucket." + StringUtils.getCacheFileSuffix(context, u0Var.g, u0Var.h), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.l = new com.braze.requests.util.d(iN, iO, sharedPreferences);
        this.m = com.braze.enums.f.GOOD;
        dispatchDataProvider.a.l.c(com.braze.events.internal.dispatchmanager.c.class, new IEventSubscriber() { // from class: com.braze.requests.framework.g$$ExternalSyntheticLambda13
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                g.a(this.f$0, (com.braze.events.internal.dispatchmanager.c) obj);
            }
        });
        dispatchDataProvider.a.l.c(o.class, new IEventSubscriber() { // from class: com.braze.requests.framework.g$$ExternalSyntheticLambda1
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                g.a(this.f$0, (o) obj);
            }
        });
    }

    public static final void a(g gVar, com.braze.events.internal.dispatchmanager.c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<destruct>");
        com.braze.events.internal.dispatchmanager.b bVar = cVar.a;
        n nVar = cVar.d;
        ReentrantLock reentrantLock = gVar.g;
        reentrantLock.lock();
        try {
            if (bVar == com.braze.events.internal.dispatchmanager.b.ADD_REQUEST && nVar != null) {
                gVar.a(nVar);
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public static final String b() {
        return "Starting request sweeper job.";
    }

    public static final String c() {
        return "Skipping request sending due to lacking a global request rate limiting token.";
    }

    public static final String d() {
        return "Skipping request sending due to lacking an endpoint request rate limiting token.";
    }

    public static final String f() {
        return "Got call to shutdown request framework";
    }

    public static final String h() {
        return "Kicking off request framework.";
    }

    public final void e() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, n, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.g$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return g.f();
            }
        }, 14, (Object) null);
        Deferred deferred = this.f;
        if (deferred != null) {
            Job.DefaultImpls.cancel$default((Job) deferred, (CancellationException) null, 1, (Object) null);
        }
        u0 u0Var = this.a.a;
        com.braze.requests.f fVar = new com.braze.requests.f(u0Var.m, u0Var.b.getBaseUrlForRequests(), new k(null, null, null, null));
        this.a.a((n) fVar);
        long jNowInMillisecondsSystemClock = DateTimeUtils.nowInMillisecondsSystemClock();
        a(jNowInMillisecondsSystemClock, fVar, new h(fVar, jNowInMillisecondsSystemClock, jNowInMillisecondsSystemClock), new f(), false);
    }

    public final void g() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.g$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return g.h();
            }
        }, 7, (Object) null);
        a();
    }

    public static final String b(long j, h hVar) {
        return "Running at " + j + " for request " + hVar.a(j);
    }

    public static final String b(g gVar, long j) {
        return gVar.b(j);
    }

    public final String b(final long j) {
        LinkedHashMap linkedHashMap = this.e;
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add((b) ((Map.Entry) it.next()).getValue());
        }
        return StringsKt.trimMargin$default(com.braze.c.a(new StringBuilder("RequestFramework->\n            |mockAllNetworkRequests=").append(this.c).append("\n            |lastSdkAuthFailedToken=").append(this.h).append("\n            |lastSdkAuthFailureAt=").append(this.i - j).append("\n            |sdkAuthFailureBackoffUntil=").append(this.j - j).append("\n            |invalidApiKeyErrorCounter=").append(this.k.get()).append("\n            |globalRequestRateLimiter=").append(this.l).append("\n            |lastNetworkLevel=").append(this.m).append("\n            |currentSdkAuthToken=").append(this.a.a.t.d.getString("auth_signature", null)).append("\n            |endpointQueues=\n            | \n            |"), CollectionsKt.joinToString$default(arrayList, "\n\n", null, null, 0, null, new Function1() { // from class: com.braze.requests.framework.g$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return g.b(j, (b) obj);
            }
        }, 30, null), "\n            |  \n            |\n        "), null, 1, null);
    }

    public final void a(long j, b queue) {
        Intrinsics.checkNotNullParameter(queue, "queue");
        if (j <= queue.f) {
            return;
        }
        queue.b(j);
        ArrayList arrayList = queue.e;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            h hVar = (h) obj;
            if (hVar.d.a() && j >= hVar.b) {
                arrayList2.add(obj);
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            a(j, queue, (h) it.next());
        }
    }

    public static final void a(g gVar, final o it) {
        Intrinsics.checkNotNullParameter(it, "it");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, n, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.g$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return g.a(it);
            }
        }, 14, (Object) null);
        gVar.m = it.b;
    }

    public static final String a(o oVar) {
        return "Got network change event: " + oVar;
    }

    public static void a(g gVar) {
        long jNowInMillisecondsSystemClock = DateTimeUtils.nowInMillisecondsSystemClock();
        ReentrantLock reentrantLock = gVar.g;
        reentrantLock.lock();
        try {
            if ((!gVar.d || gVar.m != com.braze.enums.f.NONE) && ((gVar.h == null || jNowInMillisecondsSystemClock >= gVar.j || !Intrinsics.areEqual(gVar.a.a.t.d.getString("auth_signature", null), gVar.h)) && gVar.a(jNowInMillisecondsSystemClock))) {
                Iterator it = gVar.e.entrySet().iterator();
                while (it.hasNext()) {
                    gVar.a(jNowInMillisecondsSystemClock, (b) ((Map.Entry) it.next()).getValue());
                }
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void a() {
        Deferred deferred = this.f;
        if (deferred == null || !deferred.isActive()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.g$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.b();
                }
            }, 6, (Object) null);
            Deferred deferredAsync$default = BuildersKt__Builders_commonKt.async$default(BrazeCoroutineScope.INSTANCE, null, CoroutineStart.LAZY, new d(this, null), 1, null);
            this.f = deferredAsync$default;
            if (deferredAsync$default != null) {
                deferredAsync$default.start();
            }
        }
    }

    public final void a(final long j, b queue, final h requestInfo) {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, this, (BrazeLogger.Priority) null, (Throwable) null, queue.c(), new Function0() { // from class: com.braze.requests.framework.g$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return g.b(j, requestInfo);
            }
        }, 3, (Object) null);
        if (!a(j)) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.g$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.c();
                }
            }, 7, (Object) null);
            return;
        }
        com.braze.requests.util.d dVarB = queue.b();
        if (dVarB == null || dVarB.a(j) >= 1.0d) {
            n nVarA = this.a.a(requestInfo.a);
            Intrinsics.checkNotNullParameter(queue, "queue");
            Intrinsics.checkNotNullParameter(requestInfo, "requestInfo");
            e eVar = new e(this, requestInfo, queue);
            requestInfo.a(j, i.IN_FLIGHT);
            com.braze.requests.util.d dVarB2 = queue.b();
            Integer numValueOf = dVarB2 == null ? null : Integer.valueOf((int) dVarB2.a(j));
            requestInfo.f = numValueOf != null ? Integer.valueOf(RangesKt.coerceAtLeast(numValueOf.intValue() - 1, 0)) : null;
            requestInfo.e = RangesKt.coerceAtLeast(((int) this.l.a(j)) - 1, 0);
            if (a(j, nVarA, requestInfo, eVar, false)) {
                return;
            }
            a(j, requestInfo);
            queue.a(j, requestInfo);
            return;
        }
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.g$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return g.d();
            }
        }, 7, (Object) null);
        com.braze.requests.util.d dVarB3 = queue.b();
        requestInfo.b = j + (dVarB3 != null ? dVarB3.b() : 0L);
    }

    public static final CharSequence b(long j, b it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.d(j);
    }

    public final boolean a(final long j, n nVar, final h hVar, c cVar, boolean z) {
        p pVar;
        final boolean z2 = nVar.a() || this.c;
        if (z2) {
            pVar = this.a.a.D;
        } else {
            pVar = this.b;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, true, new Function0() { // from class: com.braze.requests.framework.g$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return g.a(z2, hVar, j);
            }
        }, 3, (Object) null);
        pVar.a(hVar, cVar, z);
        return z2;
    }

    public static final String a(boolean z, h hVar, long j) {
        return "Running on " + (z ? "no-op" : "network") + " executor for " + hVar.a(j);
    }

    public final void a(n request) {
        b aVar;
        Intrinsics.checkNotNullParameter(request, "request");
        m mVarC = request.c();
        if (!this.e.containsKey(mVarC)) {
            int iOrdinal = mVarC.ordinal();
            if (iOrdinal == 0) {
                aVar = new com.braze.requests.framework.queue.a(this.a);
            } else if (iOrdinal == 1) {
                aVar = new com.braze.requests.framework.queue.f(this.a);
            } else if (iOrdinal == 2) {
                aVar = new com.braze.requests.framework.queue.c(this.a);
            } else if (iOrdinal != 3) {
                switch (iOrdinal) {
                    case 9:
                        aVar = new com.braze.requests.framework.queue.g(this.a);
                        break;
                    case 10:
                        aVar = new com.braze.requests.framework.queue.h(this.a);
                        break;
                    case 11:
                        aVar = new com.braze.requests.framework.queue.e(this.a);
                        break;
                    default:
                        aVar = new com.braze.requests.framework.queue.d(mVarC, this.a);
                        break;
                }
            } else {
                aVar = new com.braze.requests.framework.queue.i(this.a);
            }
            this.e.put(mVarC, aVar);
        } else {
            aVar = (b) this.e.get(mVarC);
        }
        if (aVar == null) {
            return;
        }
        final long jNowInMillisecondsSystemClock = DateTimeUtils.nowInMillisecondsSystemClock();
        aVar.a(jNowInMillisecondsSystemClock, request);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, true, new Function0() { // from class: com.braze.requests.framework.g$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return g.a(this.f$0, jNowInMillisecondsSystemClock);
            }
        }, 3, (Object) null);
        a();
    }

    public static final String a(g gVar, long j) {
        return gVar.b(j);
    }

    public final void a(final long j, final h requestInfo) {
        Intrinsics.checkNotNullParameter(requestInfo, "requestInfo");
        this.l.a();
        if (!a(j)) {
            final long jB = this.l.b();
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.g$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.a(requestInfo, j, jB, this);
                }
            }, 7, (Object) null);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, true, new Function0() { // from class: com.braze.requests.framework.g$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return g.b(this.f$0, j);
            }
        }, 3, (Object) null);
    }

    public static final String a(h hVar, long j, long j2, g gVar) {
        return "Delaying next request after " + hVar.a(j) + " until next token is available in " + j2 + "ms - '" + DateTimeUtils.formatDateFromMillis$default(j + j2, null, null, 3, null) + "'\n" + gVar.l;
    }

    public final boolean a(long j) {
        return !this.a.a.m.J() || this.l.a(j) >= 1.0d;
    }
}

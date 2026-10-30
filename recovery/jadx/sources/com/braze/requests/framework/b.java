package com.braze.requests.framework;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.managers.u0;
import com.braze.models.response.j;
import com.braze.requests.m;
import com.braze.requests.n;
import com.braze.storage.e0;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static final String j = BrazeLogger.getBrazeLogTag((Class<?>) b.class);
    public final m a;
    public final com.braze.dispatch.h b;
    public long c;
    public long d;
    public final ArrayList e;
    public long f;
    public final long g;
    public final com.braze.requests.util.b h;
    public com.braze.requests.util.d i;

    public b(m destination, com.braze.dispatch.h dispatchDataProvider) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(dispatchDataProvider, "dispatchDataProvider");
        this.a = destination;
        this.b = dispatchDataProvider;
        this.e = new ArrayList();
        int iOrdinal = destination.ordinal();
        this.g = iOrdinal != 0 ? iOrdinal != 2 ? 0L : 75L : 25L;
        this.h = new com.braze.requests.util.b(dispatchDataProvider.a.m.j(), dispatchDataProvider.a.m.k(), dispatchDataProvider.a.m.l());
    }

    public static final String d(b bVar, long j2) {
        return "New state after request success\n" + bVar.d(j2);
    }

    public abstract void a(long j2);

    public final void a(final long j2, n request) {
        Intrinsics.checkNotNullParameter(request, "request");
        request.a(this.b.a.l);
        this.e.add(new h(request, j2 + this.g, j2));
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this, (BrazeLogger.Priority) null, (Throwable) null, c(), new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.a(this.f$0, j2);
            }
        }, 3, (Object) null);
    }

    public final com.braze.requests.util.d b() {
        Map mapW;
        e0 e0Var = this.b.a.m;
        ReentrantLock reentrantLock = e0Var.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = e0Var.e;
            if (mVar == null || (mapW = mVar.E) == null) {
                mapW = e0Var.w();
            }
            reentrantLock.unlock();
            j jVar = (j) mapW.get(this.a);
            if (jVar == null) {
                this.i = null;
                return null;
            }
            com.braze.requests.util.d dVar = this.i;
            int i = jVar.b;
            int i2 = jVar.a;
            if (dVar == null) {
                com.braze.dispatch.h dispatchDataProvider = this.b;
                String specificName = String.valueOf(this.a.hashCode());
                Intrinsics.checkNotNullParameter(dispatchDataProvider, "dispatchDataProvider");
                Intrinsics.checkNotNullParameter("com.braze.endpointqueue.tokenbucket", "filePrefix");
                Intrinsics.checkNotNullParameter(specificName, "specificName");
                u0 u0Var = dispatchDataProvider.a;
                Context context = u0Var.a;
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.braze.endpointqueue.tokenbucket." + specificName + StringUtils.getCacheFileSuffix(context, u0Var.g, u0Var.h), 0);
                Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
                dVar = new com.braze.requests.util.d(i2, i, sharedPreferences);
            } else {
                dVar.a(i2, i);
            }
            this.i = dVar;
            return dVar;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public boolean c() {
        return false;
    }

    public final void c(long j2) {
        ArrayList arrayList = this.e;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((h) obj).d.a()) {
                arrayList2.add(obj);
            }
        }
        List listSortedWith = CollectionsKt.sortedWith(arrayList2, new a());
        if (listSortedWith.size() >= 2) {
            int size = listSortedWith.size();
            for (int i = 1; i < size; i++) {
                final h hVar = (h) listSortedWith.get(i);
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, j, (BrazeLogger.Priority) null, (Throwable) null, c(), new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b.a(hVar);
                    }
                }, 6, (Object) null);
                hVar.a(j2, i.BATCHED);
            }
        }
    }

    public final String d(final long j2) {
        String string;
        String strJoinToString$default = CollectionsKt.joinToString$default(this.e, "\n\n", null, null, 0, null, new Function1() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return b.b(j2, (h) obj);
            }
        }, 30, null);
        StringBuilder sbAppend = new StringBuilder("\n            |EndpointQueue: ").append(this.a).append("\n            |   lastFailureAt = ").append(this.c - j2).append("\n            |   lastSuccessAt = ").append(this.d - j2).append("\n            |   failureBackoffUntil = ").append(this.f - j2).append("\n            |   pendingWaitDuration = ").append(this.g).append("\n            |   endpointRateLimiter = ");
        com.braze.requests.util.d dVar = this.i;
        if (dVar == null || (string = dVar.toString()) == null) {
            string = "unset";
        }
        return StringsKt.trimMargin$default(sbAppend.append(string).append("\n            |   requestInfoQueue: \n            |").append(strJoinToString$default).append("\n        ").toString(), null, 1, null);
    }

    public com.braze.requests.util.b a() {
        return this.h;
    }

    public static final String a(b bVar, long j2) {
        return "Added request now to queue " + bVar.d(j2);
    }

    public static final String a(h hVar, long j2, int i) {
        return "Set retry count for " + hVar.a(j2) + " to " + i;
    }

    public static final String a(h hVar, long j2) {
        return "Marking request as framework complete \n" + hVar.a(j2);
    }

    public final void a(final long j2, final h requestInfo) {
        Intrinsics.checkNotNullParameter(requestInfo, "requestInfo");
        final com.braze.requests.util.d dVarB = b();
        if (dVarB == null) {
            return;
        }
        dVarB.a();
        com.braze.requests.util.d dVarB2 = b();
        if (dVarB2 != null && dVarB2.a(j2) < 1.0d) {
            final long jB = dVarB.b();
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this, (BrazeLogger.Priority) null, (Throwable) null, c(), new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.a(requestInfo, j2, jB, dVarB);
                }
            }, 3, (Object) null);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.b(this.f$0, j2);
            }
        }, 7, (Object) null);
    }

    public static final String a(h hVar, long j2, long j3, com.braze.requests.util.d dVar) {
        return "Delaying next request after '" + hVar.a(j2) + "' until next token is available in " + j3 + "ms - '" + DateTimeUtils.formatDateFromMillis$default(j2 + j3, null, null, 3, null) + "'\n" + dVar;
    }

    public static final String a(h hVar) {
        return "About to batch request " + hVar;
    }

    public void a(final long j2, h requestInfo, com.braze.models.response.a apiResponse) {
        Intrinsics.checkNotNullParameter(requestInfo, "requestInfo");
        Intrinsics.checkNotNullParameter(apiResponse, "apiResponse");
        com.braze.models.response.g gVar = apiResponse instanceof com.braze.models.response.g ? (com.braze.models.response.g) apiResponse : null;
        com.braze.models.response.d dVar = gVar != null ? gVar.d : null;
        Long l = apiResponse.b;
        long jLongValue = l != null ? l.longValue() : 0L;
        this.c = j2;
        if (!(dVar instanceof com.braze.models.response.h)) {
            com.braze.requests.util.b bVarA = a();
            this.f = jLongValue + j2 + ((long) bVarA.a(bVarA.b));
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, j, (BrazeLogger.Priority) null, (Throwable) null, c(), new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.c(this.f$0, j2);
            }
        }, 6, (Object) null);
    }

    public void a(final long j2, h requestInfo, com.braze.models.response.g apiResponse) {
        Intrinsics.checkNotNullParameter(requestInfo, "requestInfo");
        Intrinsics.checkNotNullParameter(apiResponse, "apiResponse");
        a().f = 0;
        this.d = j2;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, j, (BrazeLogger.Priority) null, (Throwable) null, c(), new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.d(this.f$0, j2);
            }
        }, 6, (Object) null);
    }

    public final void b(final long j2) {
        a(j2);
        ArrayList arrayList = this.e;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((h) obj).d == i.BATCHED) {
                arrayList2.add(obj);
            }
        }
        if (!arrayList2.isEmpty()) {
            Iterator it = arrayList2.iterator();
            if (it.hasNext()) {
                final int i = ((h) it.next()).h;
                while (it.hasNext()) {
                    int i2 = ((h) it.next()).h;
                    if (i < i2) {
                        i = i2;
                    }
                }
                ArrayList arrayList3 = this.e;
                ArrayList<h> arrayList4 = new ArrayList();
                for (Object obj2 : arrayList3) {
                    if (((h) obj2).d.a()) {
                        arrayList4.add(obj2);
                    }
                }
                for (final h hVar : arrayList4) {
                    hVar.h = i;
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this, (BrazeLogger.Priority) null, (Throwable) null, c(), new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return b.a(hVar, j2, i);
                        }
                    }, 3, (Object) null);
                }
            } else {
                throw new NoSuchElementException();
            }
        }
        ArrayList<h> arrayList5 = new ArrayList();
        ArrayList arrayList6 = this.e;
        ArrayList arrayList7 = new ArrayList();
        for (Object obj3 : arrayList6) {
            i iVar = ((h) obj3).d;
            if (iVar == i.BATCHED || iVar == i.COMPLETE) {
                arrayList7.add(obj3);
            }
        }
        arrayList5.addAll(arrayList7);
        ArrayList arrayList8 = this.e;
        ArrayList arrayList9 = new ArrayList();
        for (Object obj4 : arrayList8) {
            h hVar2 = (h) obj4;
            if (hVar2.h >= 15 && hVar2.d.a()) {
                arrayList9.add(obj4);
            }
        }
        arrayList5.addAll(arrayList9);
        for (final h hVar3 : arrayList5) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, j, (BrazeLogger.Priority) null, (Throwable) null, c(), new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.a(hVar3, j2);
                }
            }, 6, (Object) null);
            hVar3.a.a((com.braze.events.e) this.b.a.l);
        }
        this.e.removeAll(arrayList5);
    }

    public static final String c(b bVar, long j2) {
        return "New state after request error " + bVar.d(j2);
    }

    public static final String b(b bVar, long j2) {
        return bVar.d(j2);
    }

    public static final CharSequence b(long j2, h it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.a(j2);
    }
}

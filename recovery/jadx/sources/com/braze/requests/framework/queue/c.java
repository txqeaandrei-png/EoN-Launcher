package com.braze.requests.framework.queue;

import com.braze.models.outgoing.k;
import com.braze.requests.m;
import com.braze.requests.n;
import com.braze.support.BrazeLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends com.braze.requests.framework.b {
    public static final String k = BrazeLogger.getBrazeLogTag((Class<?>) c.class);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(com.braze.dispatch.h dispatchDataProvider) {
        super(m.V3_DATA, dispatchDataProvider);
        Intrinsics.checkNotNullParameter(dispatchDataProvider, "dispatchDataProvider");
    }

    public final void a(final long j, final com.braze.requests.framework.h hVar, List list) {
        com.braze.models.b bVar;
        com.braze.models.b bVar2;
        n nVar = hVar != null ? hVar.a : null;
        com.braze.requests.f fVar = nVar instanceof com.braze.requests.f ? (com.braze.requests.f) nVar : null;
        if (fVar == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final com.braze.requests.framework.h hVar2 = (com.braze.requests.framework.h) it.next();
            n nVar2 = hVar2.a;
            final com.braze.requests.f fVar2 = nVar2 instanceof com.braze.requests.f ? (com.braze.requests.f) nVar2 : null;
            if (fVar2 != null && ((fVar.l == null || fVar2.l == null) && (((bVar = fVar.m) == null || bVar.b) && ((bVar2 = fVar2.m) == null || bVar2.b)))) {
                k kVar = fVar2.j;
                k kVar2 = fVar.j;
                Boolean bool = (kVar2.b == null && kVar.b == null) ? null : Boolean.TRUE;
                Boolean bool2 = (kVar2.b() || kVar.b()) ? Boolean.TRUE : null;
                com.braze.models.outgoing.i outboundConfigParams = fVar.j.d;
                if (outboundConfigParams != null) {
                    Intrinsics.checkNotNullParameter(outboundConfigParams, "outboundConfigParams");
                } else {
                    outboundConfigParams = null;
                }
                com.braze.models.outgoing.i outboundConfigParams2 = kVar.d;
                if (outboundConfigParams2 != null) {
                    Intrinsics.checkNotNullParameter(outboundConfigParams2, "outboundConfigParams");
                    outboundConfigParams = outboundConfigParams2;
                }
                String str = fVar.j.a;
                if (str == null) {
                    str = null;
                }
                String str2 = kVar.a;
                if (str2 != null) {
                    str = str2;
                }
                fVar.j = new k(str, bool, bool2, outboundConfigParams);
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, k, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.queue.c$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return c.a(hVar2, j, hVar);
                    }
                }, 14, (Object) null);
                hVar2.a(j, com.braze.requests.framework.i.BATCHED);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.queue.c$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return c.a(fVar2, hVar);
                    }
                }, 7, (Object) null);
            }
        }
    }

    @Override // com.braze.requests.framework.b
    public final void a(long j) {
        ArrayList arrayList = this.e;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((com.braze.requests.framework.h) obj).d.a()) {
                arrayList2.add(obj);
            }
        }
        List listSortedWith = CollectionsKt.sortedWith(arrayList2, new b());
        int size = listSortedWith.size();
        if (size < 2) {
            return;
        }
        a(j, (com.braze.requests.framework.h) CollectionsKt.first(listSortedWith), listSortedWith.subList(1, size));
    }

    public static final String a(com.braze.requests.framework.h hVar, long j, com.braze.requests.framework.h hVar2) {
        return "Batched request " + hVar.a(j) + " and combined into " + hVar2.a(j);
    }

    public static final String a(com.braze.requests.f fVar, com.braze.requests.framework.h hVar) {
        return "Could not merge other request: " + fVar + " into parent: " + hVar;
    }
}

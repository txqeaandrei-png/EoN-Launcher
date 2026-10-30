package com.braze.managers;

import android.graphics.Rect;
import android.view.View;
import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.support.BrazeLogger;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    public static final String a(String str) {
        return com.braze.b.a("Banner is shown ", str, '.');
    }

    public static void b() {
        if (h.m != null) {
            return;
        }
        h.m = BrazeCoroutineScope.launchDelayed$default(BrazeCoroutineScope.INSTANCE, 200L, null, new f(null), 2, null);
    }

    public static final String c(d dVar) {
        return "Resetting impression for " + dVar.a;
    }

    public static final String b(List list) {
        return "Setting banner placement list to " + list;
    }

    public static final String b(d dVar) {
        return com.braze.c.a(new StringBuilder("Banner is not shown "), dVar.a, " because view is null");
    }

    public static void a(final String placementId, final View view, boolean z) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(view, "view");
        ReentrantLock reentrantLock = h.n;
        reentrantLock.lock();
        try {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) h.k, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.g$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.a(placementId, view);
                }
            }, 7, (Object) null);
            Iterator it = h.o.iterator();
            while (it.hasNext()) {
                final d dVar = (d) it.next();
                if (Intrinsics.areEqual(dVar.b.get(), view)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) h.k, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.g$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return g.a(dVar, placementId);
                        }
                    }, 6, (Object) null);
                    it.remove();
                }
            }
            g gVar = h.k;
            h.o.add(new d(placementId, new WeakReference(view), z));
            b();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public static void a() {
        ReentrantLock reentrantLock = h.n;
        reentrantLock.lock();
        try {
            for (final d dVar : h.o) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) h.k, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.g$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.c(dVar);
                    }
                }, 6, (Object) null);
                dVar.c = false;
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            b();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final boolean a(final d dVar) {
        View view = (View) dVar.b.get();
        if (view == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.g$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.b(dVar);
                }
            }, 7, (Object) null);
            return true;
        }
        final String str = dVar.a;
        if (view.isShown()) {
            Rect rect = new Rect();
            if (view.getGlobalVisibleRect(rect) && rect.width() != 0 && rect.height() != 0) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.g$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.a(str);
                    }
                }, 7, (Object) null);
                BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, null, null, new e(view, str, dVar, null), 3, null);
            }
        }
        return false;
    }

    public final void a(final List placementIds) {
        Intrinsics.checkNotNullParameter(placementIds, "placementIds");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.g$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return g.b(placementIds);
            }
        }, 7, (Object) null);
        ReentrantLock reentrantLock = h.p;
        reentrantLock.lock();
        try {
            ArrayList arrayList = h.q;
            arrayList.clear();
            arrayList.addAll(placementIds);
        } finally {
            reentrantLock.unlock();
        }
    }

    public static final String a(String str, View view) {
        return "Adding monitor for " + str + " for BannerView " + view;
    }

    public static final String a(d dVar, String str) {
        return "Removing banner from monitor list " + dVar.a + " because view is now used by " + str;
    }
}

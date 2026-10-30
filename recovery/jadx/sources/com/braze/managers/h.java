package com.braze.managers;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.KeyEvent;
import android.view.View;
import com.braze.events.BannersUpdatedEvent;
import com.braze.events.BrazeUserChangeEvent;
import com.braze.events.IEventSubscriber;
import com.braze.models.Banner;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.Job;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    public static Job m;
    public final String a;
    public final com.braze.events.e b;
    public final com.braze.storage.e0 c;
    public final m d;
    public List e;
    public final AtomicBoolean f;
    public final SharedPreferences g;
    public final SharedPreferences h;
    public final SharedPreferences i;
    public final AtomicInteger j;
    public static final g k = new g();
    public static final LinkedHashMap l = new LinkedHashMap();
    public static final ReentrantLock n = new ReentrantLock();
    public static final ArrayList o = new ArrayList();
    public static final ReentrantLock p = new ReentrantLock();
    public static final ArrayList q = new ArrayList();

    public h(Context context, String apiKey, String str, com.braze.events.e internalEventPublisher, com.braze.events.e externalEventPublisher, com.braze.storage.e0 serverConfigStorageProvider, m brazeManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(internalEventPublisher, "internalEventPublisher");
        Intrinsics.checkNotNullParameter(externalEventPublisher, "externalEventPublisher");
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        this.a = str;
        this.b = externalEventPublisher;
        this.c = serverConfigStorageProvider;
        this.d = brazeManager;
        this.e = CollectionsKt.emptyList();
        this.f = new AtomicBoolean(false);
        SharedPreferences sharedPreferencesA = c.a(context, str, apiKey, new StringBuilder("com.braze.managers.banners.eligibility"), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferencesA, "getSharedPreferences(...)");
        this.g = sharedPreferencesA;
        SharedPreferences sharedPreferencesA2 = c.a(context, str, apiKey, new StringBuilder("com.braze.managers.banners.storage"), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferencesA2, "getSharedPreferences(...)");
        this.h = sharedPreferencesA2;
        SharedPreferences sharedPreferencesA3 = c.a(context, str, apiKey, new StringBuilder("com.braze.managers.banners.impressions"), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferencesA3, "getSharedPreferences(...)");
        this.i = sharedPreferencesA3;
        this.j = new AtomicInteger(0);
        e();
        com.braze.events.d dVar = (com.braze.events.d) internalEventPublisher;
        dVar.c(com.braze.events.internal.q.class, new IEventSubscriber() { // from class: com.braze.managers.h$$ExternalSyntheticLambda0
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                h.a(this.f$0, (com.braze.events.internal.q) obj);
            }
        });
        dVar.c(com.braze.events.internal.c.class, new IEventSubscriber() { // from class: com.braze.managers.h$$ExternalSyntheticLambda11
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                h.a(this.f$0, (com.braze.events.internal.c) obj);
            }
        });
        dVar.c(com.braze.events.internal.b.class, new IEventSubscriber() { // from class: com.braze.managers.h$$ExternalSyntheticLambda22
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                h.a(this.f$0, (com.braze.events.internal.b) obj);
            }
        });
        dVar.d(BrazeUserChangeEvent.class, new IEventSubscriber() { // from class: com.braze.managers.h$$ExternalSyntheticLambda28
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                h.a(this.f$0, (BrazeUserChangeEvent) obj);
            }
        });
        dVar.c(com.braze.events.internal.d.class, new IEventSubscriber() { // from class: com.braze.managers.h$$ExternalSyntheticLambda29
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                h.a(this.f$0, (com.braze.events.internal.d) obj);
            }
        });
    }

    public static final void a(h hVar, com.braze.events.internal.d it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (!it.a.F || it.b.F) {
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) hVar, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda27
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.d();
            }
        }, 7, (Object) null);
        hVar.a();
    }

    public static final String b(String str) {
        return com.braze.b.a("Returning test Banner with placement id ", str, '.');
    }

    public static final String c(String str) {
        return com.braze.a.a("Banner with placement id ", str, " not found in cache. Returning null for this Banner.");
    }

    public static final String d(String str) {
        return com.braze.a.a("Received null or blank serialized Banner string for Banner id ", str, " from shared preferences. Not parsing.");
    }

    public static final String e(String str) {
        return com.braze.j.a("Encountered unexpected exception while parsing stored banner: ", str);
    }

    public static final String f(String str) {
        return com.braze.a.a("Not logging a Banner click for Banner with placement id ", str, ". The Banner was not present in cache.");
    }

    public static final String h(String str) {
        return com.braze.a.a("Not logging a Banner impression for Banner with placement id ", str, ". The Banner was not present in cache.");
    }

    public static final String i(String str) {
        return com.braze.b.a("Logging impression for Banner with placement id ", str, '.');
    }

    public static final String k() {
        return "Resetting BannersManager for new session.";
    }

    public static final String l() {
        return "Added new Banners to local storage.";
    }

    public static final String n() {
        return "View is not an IBannerView. Cannot update banner data.";
    }

    public final boolean g(final String id) {
        Set<String> setKeySet;
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        final Banner banner = (Banner) l.get(id);
        if (banner == null) {
            Iterator it = this.e.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.areEqual(id, ((Banner) next).getPlacementId()));
            banner = (Banner) next;
        }
        boolean zContains = false;
        if (banner == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.h(id);
                }
            }, 6, (Object) null);
            return false;
        }
        String id2 = banner.getTrackingId();
        Intrinsics.checkNotNullParameter(id2, "id");
        Map<String, ?> all = this.i.getAll();
        if (all != null && (setKeySet = all.keySet()) != null) {
            zContains = setKeySet.contains(id2);
        }
        if (zContains) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.b(banner);
                }
            }, 6, (Object) null);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.i(id);
                }
            }, 7, (Object) null);
            com.braze.models.i iVarA = com.braze.models.outgoing.event.b.g.a(banner.getTrackingId());
            if (iVarA != null) {
                this.d.a(iVarA);
            }
            Intrinsics.checkNotNullParameter(id2, "id");
            this.i.edit().putBoolean(id2, true).apply();
        }
        return true;
    }

    public final void j() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.k();
            }
        }, 6, (Object) null);
        this.i.edit().clear().apply();
        this.f.set(false);
        g.a();
    }

    public final void m() {
        ArrayList arrayList = new ArrayList();
        ReentrantLock reentrantLock = n;
        reentrantLock.lock();
        try {
            List<d> list = CollectionsKt.toList(o);
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            for (final d dVar : list) {
                try {
                    KeyEvent.Callback callback = (View) dVar.b.get();
                    if (callback == null) {
                        arrayList.add(dVar);
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda31
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return h.a(dVar);
                            }
                        }, 7, (Object) null);
                    } else if (callback instanceof IBannerView) {
                        ((IBannerView) callback).initBanner(dVar.a);
                    } else {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda32
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return h.n();
                            }
                        }, 6, (Object) null);
                        arrayList.add(dVar);
                    }
                } catch (Exception e) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda33
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return h.b(dVar);
                        }
                    }, 4, (Object) null);
                    arrayList.add(dVar);
                }
            }
            ReentrantLock reentrantLock2 = n;
            reentrantLock2.lock();
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    o.remove((d) it.next());
                }
                Unit unit2 = Unit.INSTANCE;
            } finally {
                reentrantLock2.unlock();
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void o() {
        final long jNowInSeconds = DateTimeUtils.nowInSeconds();
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda30
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.a(jNowInSeconds);
            }
        }, 6, (Object) null);
        this.g.edit().putLong("last_refresh", jNowInSeconds).apply();
    }

    public static final void a(h hVar, com.braze.events.internal.q it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it.a instanceof com.braze.requests.a) {
            hVar.j.decrementAndGet();
        }
    }

    public static final void a(h hVar, com.braze.events.internal.c it) {
        Intrinsics.checkNotNullParameter(it, "it");
        hVar.f.set(true);
        hVar.o();
    }

    public static final void a(h hVar, com.braze.events.internal.b it) {
        Intrinsics.checkNotNullParameter(it, "it");
        ((com.braze.events.d) hVar.b).b(it, com.braze.events.internal.b.class);
    }

    public static final void a(h hVar, final BrazeUserChangeEvent it) {
        Intrinsics.checkNotNullParameter(it, "it");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) hVar, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.a(it);
            }
        }, 7, (Object) null);
        hVar.m();
        BrazeLogger.brazelog$default(brazeLogger, (Object) hVar, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.b(it);
            }
        }, 7, (Object) null);
    }

    public static final String a(BrazeUserChangeEvent brazeUserChangeEvent) {
        return "Updating banners because of user change to " + brazeUserChangeEvent.getCurrentUserId() + '.';
    }

    public final void a(boolean z) {
        ReentrantLock reentrantLock = p;
        reentrantLock.lock();
        try {
            List mutableList = CollectionsKt.toMutableList((Collection) q);
            reentrantLock.unlock();
            if (mutableList.isEmpty()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.b();
                    }
                }, 7, (Object) null);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.c();
                    }
                }, 7, (Object) null);
                a(mutableList, z);
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final boolean a(final List ids, boolean z) {
        String trackingId;
        Object next;
        Intrinsics.checkNotNullParameter(ids, "ids");
        if (this.j.get() > 0) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.a(this.f$0);
                }
            }, 7, (Object) null);
            return false;
        }
        if (z) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.h();
                }
            }, 7, (Object) null);
        } else if (this.f.get()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.i();
                }
            }, 6, (Object) null);
            return false;
        }
        if (ids.size() > this.c.p()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.a(this.f$0, ids);
                }
            }, 7, (Object) null);
        }
        this.j.incrementAndGet();
        List<String> ids2 = CollectionsKt.take(ids, this.c.p());
        Intrinsics.checkNotNullParameter(ids2, "ids");
        ArrayList arrayList = new ArrayList();
        for (String str : ids2) {
            Iterator it = this.e.iterator();
            do {
                trackingId = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.areEqual(((Banner) next).getPlacementId(), str));
            Banner banner = (Banner) next;
            if (banner != null) {
                trackingId = banner.getTrackingId();
            }
            arrayList.add(new Pair(str, trackingId));
        }
        this.d.a(arrayList);
        return true;
    }

    public static final String b(BrazeUserChangeEvent brazeUserChangeEvent) {
        return "Done updating banners because of user change to " + brazeUserChangeEvent.getCurrentUserId() + '.';
    }

    public static final String b() {
        return "Cached Banners placement IDs are empty. Not refreshing Banners on forced internal call.";
    }

    public static final String b(Banner banner) {
        return "Not logging a Banner impression for Banner " + banner + ". The Banner already had an impression logged in the current session";
    }

    public static final String b(String str, String str2) {
        return "Logging click for Banner with placement id " + str + " with buttonID of " + str2 + '.';
    }

    public static final String b(d dVar) {
        return com.braze.c.a(new StringBuilder("Error checking banner visibility for "), dVar.a, ".Removing banner from visibility monitoring.");
    }

    public static final String c() {
        return "Refreshing Banners on forced internal refresh.";
    }

    public static final String c(Banner banner) {
        return "Not storing expired Banner: " + banner + ". The Banner's expiration timestamp is in the past.";
    }

    public static final String h() {
        return "Bypassing rate limit for Banner refresh.";
    }

    public static final String i() {
        return "Banners have already been sync'd. Only one sync per session is allowed.";
    }

    public static final String f() {
        return "Did not find stored Banners.";
    }

    public static final String d() {
        return "Banners have moved to disabled. Clearing banners data.";
    }

    public static final String d(Banner banner) {
        return "Error storing Banner: " + banner + '.';
    }

    public final void e() {
        SharedPreferences sharedPreferences = this.h;
        ArrayList arrayList = new ArrayList();
        Map<String, ?> all = sharedPreferences.getAll();
        if (all != null && !all.isEmpty()) {
            Set<String> setKeySet = all.keySet();
            if (setKeySet.isEmpty()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda17
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.g();
                    }
                }, 6, (Object) null);
                this.e = CollectionsKt.emptyList();
                return;
            }
            for (final String str : setKeySet) {
                final String str2 = (String) all.get(str);
                if (str2 != null) {
                    try {
                        if (!StringsKt.isBlank(str2)) {
                            Banner bannerA = Banner.Companion.a(new JSONObject(str2));
                            if (bannerA != null) {
                                arrayList.add(bannerA);
                            }
                        }
                    } catch (Exception e) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda19
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return h.e(str2);
                            }
                        }, 4, (Object) null);
                        Unit unit = Unit.INSTANCE;
                    }
                }
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda18
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.d(str);
                    }
                }, 6, (Object) null);
            }
            this.e = arrayList;
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.f();
            }
        }, 7, (Object) null);
        this.e = CollectionsKt.emptyList();
    }

    public static final String a(h hVar) {
        return "Not refreshing Banners since another " + hVar.j.get() + " request is currently in-flight.";
    }

    public static final String a(h hVar, List list) {
        return "The number of Banner placements requested exceeds the maximum allowed by the server. The server allows a maximum of " + hVar.c.p() + " placements, but " + list.size() + " were requested. Truncating request to fit.\nPlacements that will be requested: " + CollectionsKt.take(list, hVar.c.p()) + "\nTruncated placements not requested: " + list.subList(hVar.c.p(), list.size());
    }

    public final Banner a(final String id) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        final Banner banner = (Banner) l.get(id);
        if (banner != null) {
            if (banner.isExpired()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.a(banner);
                    }
                }, 6, (Object) null);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.b(id);
                    }
                }, 6, (Object) null);
                banner.setUserId(this.a);
                return banner;
            }
        }
        Iterator it = this.e.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.areEqual(((Banner) next).getPlacementId(), id));
        final Banner banner2 = (Banner) next;
        if (banner2 == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.c(id);
                }
            }, 6, (Object) null);
            return null;
        }
        if (banner2.isExpired()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.a(id, banner2);
                }
            }, 6, (Object) null);
            return null;
        }
        banner2.setUserId(this.a);
        return banner2;
    }

    public static final String g() {
        return "Failed to find stored Banner keys.";
    }

    public static final String a(Banner banner) {
        return "Found test banner, but it is expired. Attempting to find non-test banner. " + banner;
    }

    public static final String a(String str, Banner banner) {
        return "Banner with placement id " + str + " has expired. Returning null for this Banner " + banner;
    }

    public final void a(final String id, final String str) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        Banner banner = (Banner) l.get(id);
        if (banner == null) {
            Iterator it = this.e.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.areEqual(id, ((Banner) next).getPlacementId()));
            banner = (Banner) next;
        }
        if (banner == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda34
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.f(id);
                }
            }, 6, (Object) null);
            return;
        }
        String trackingId = banner.getTrackingId();
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.b(id, str);
            }
        }, 7, (Object) null);
        com.braze.models.i iVarC = com.braze.models.outgoing.event.b.g.c(trackingId, str);
        if (iVarC != null) {
            this.d.a(iVarC);
        }
    }

    public final BannersUpdatedEvent a(JSONObject bannersJson) {
        Intrinsics.checkNotNullParameter(bannersJson, "bannerData");
        Banner.Companion.getClass();
        Intrinsics.checkNotNullParameter(bannersJson, "bannersJson");
        ArrayList arrayList = new ArrayList();
        Iterator<String> itKeys = bannersJson.keys();
        Intrinsics.checkNotNullExpressionValue(itKeys, "keys(...)");
        while (itKeys.hasNext()) {
            Banner bannerA = Banner.Companion.a(bannersJson.optJSONObject(itKeys.next()));
            if (bannerA != null) {
                arrayList.add(bannerA);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList) {
            if (((Banner) obj).getIsTestSend()) {
                arrayList2.add(obj);
            } else {
                arrayList3.add(obj);
            }
        }
        Pair pair = new Pair(arrayList2, arrayList3);
        List<Banner> list = (List) pair.component1();
        List list2 = (List) pair.component2();
        for (Banner banner : list) {
            l.put(banner.getPlacementId(), banner);
        }
        this.e = list2;
        SharedPreferences.Editor editorEdit = this.h.edit();
        editorEdit.clear();
        for (final Banner banner2 : this.e) {
            if (banner2.isExpired()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda24
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.c(banner2);
                    }
                }, 6, (Object) null);
            } else {
                try {
                    editorEdit.putString(banner2.getPlacementId(), banner2.getJsonKey().toString());
                } catch (Exception e) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda25
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return h.d(banner2);
                        }
                    }, 4, (Object) null);
                }
            }
        }
        editorEdit.apply();
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.l();
            }
        }, 7, (Object) null);
        m();
        List list3 = this.e;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
        Iterator it = list3.iterator();
        while (it.hasNext()) {
            arrayList4.add(((Banner) it.next()).deepcopy$android_sdk_base_release());
        }
        return new BannersUpdatedEvent(arrayList4);
    }

    public static final String a(long j) {
        return "Updating last Banners refresh time: " + j;
    }

    public static final String a(d dVar) {
        return com.braze.c.a(new StringBuilder("Banner "), dVar.a, " removed because view is null");
    }

    public final void a() {
        this.e = CollectionsKt.emptyList();
        this.h.edit().clear().apply();
        m();
    }
}

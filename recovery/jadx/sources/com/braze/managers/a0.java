package com.braze.managers;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.events.FeatureFlagsUpdatedEvent;
import com.braze.events.IEventSubscriber;
import com.braze.models.FeatureFlag;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class a0 {
    public final com.braze.events.e a;
    public final com.braze.events.e b;
    public final com.braze.storage.e0 c;
    public final m d;
    public List e;
    public final AtomicBoolean f;
    public final SharedPreferences g;
    public final SharedPreferences h;
    public final SharedPreferences i;
    public final AtomicInteger j;

    public a0(Context context, String apiKey, String str, com.braze.events.e internalEventPublisher, com.braze.events.e externalEventPublisher, com.braze.storage.e0 serverConfigStorageProvider, m brazeManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(internalEventPublisher, "internalEventPublisher");
        Intrinsics.checkNotNullParameter(externalEventPublisher, "externalEventPublisher");
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        this.a = internalEventPublisher;
        this.b = externalEventPublisher;
        this.c = serverConfigStorageProvider;
        this.d = brazeManager;
        this.e = CollectionsKt.emptyList();
        this.f = new AtomicBoolean(false);
        SharedPreferences sharedPreferencesA = c.a(context, str, apiKey, new StringBuilder("com.braze.managers.featureflags.eligibility"), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferencesA, "getSharedPreferences(...)");
        this.g = sharedPreferencesA;
        SharedPreferences sharedPreferencesA2 = c.a(context, str, apiKey, new StringBuilder("com.braze.managers.featureflags.storage"), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferencesA2, "getSharedPreferences(...)");
        this.h = sharedPreferencesA2;
        SharedPreferences sharedPreferencesA3 = c.a(context, str, apiKey, new StringBuilder("com.braze.managers.featureflags.impressions"), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferencesA3, "getSharedPreferences(...)");
        this.i = sharedPreferencesA3;
        this.j = new AtomicInteger(0);
        c();
        h();
    }

    public static final String a(String str) {
        return com.braze.a.a("Received null or blank serialized Feature Flag string for Feature Flag id ", str, " from shared preferences. Not parsing.");
    }

    public static final String b(String str) {
        return com.braze.j.a("Encountered unexpected exception while parsing stored feature flags: ", str);
    }

    public static final String d(String str) {
        return com.braze.a.a("Not logging a Feature Flag impression for Feature Flag with id ", str, ". The Feature Flag was not part of any matching campaign");
    }

    public static final String i() {
        return "Features flags have moved to disabled. Clearing feature flag data.";
    }

    public static final String j() {
        return "Added new Feature Flags to local storage.";
    }

    public final void c(final String id) {
        Set<String> setKeySet;
        Intrinsics.checkNotNullParameter(id, "id");
        final FeatureFlag featureFlag = (FeatureFlag) CollectionsKt.firstOrNull((List) e(id));
        if ((featureFlag != null ? featureFlag.getTrackingString() : null) == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a0.d(id);
                }
            }, 6, (Object) null);
            return;
        }
        String id2 = featureFlag.getId();
        Intrinsics.checkNotNullParameter(id2, "id");
        Map<String, ?> all = this.i.getAll();
        if ((all == null || (setKeySet = all.keySet()) == null) ? false : setKeySet.contains(id2)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a0.a(featureFlag);
                }
            }, 6, (Object) null);
            return;
        }
        com.braze.models.i iVarA = com.braze.models.outgoing.event.b.g.a(featureFlag);
        if (iVarA != null) {
            this.d.a(iVarA);
        }
        String id3 = featureFlag.getId();
        Intrinsics.checkNotNullParameter(id3, "id");
        this.i.edit().putBoolean(id3, true).apply();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.ArrayList] */
    public final ArrayList e(String str) {
        ?? arrayList;
        if (str != null) {
            List list = this.e;
            arrayList = new ArrayList();
            for (Object obj : list) {
                if (Intrinsics.areEqual(((FeatureFlag) obj).getId(), str)) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = this.e;
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((FeatureFlag) it.next()).deepcopy$android_sdk_base_release());
        }
        return arrayList2;
    }

    public final void f() {
        if (this.j.get() > 0) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a0.a(this.f$0);
                }
            }, 7, (Object) null);
            return;
        }
        final long jNowInSeconds = DateTimeUtils.nowInSeconds();
        if (jNowInSeconds - this.g.getLong("last_refresh", 0L) >= this.c.m()) {
            this.d.w();
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a0.a(this.f$0, jNowInSeconds);
            }
        }, 6, (Object) null);
        ((com.braze.events.d) this.a).b(new com.braze.events.internal.j(), com.braze.events.internal.j.class);
    }

    public final void g() {
        this.i.edit().clear().apply();
    }

    public final void h() {
        ((com.braze.events.d) this.a).c(com.braze.events.internal.r.class, new IEventSubscriber() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda10
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                a0.a(this.f$0, (com.braze.events.internal.r) obj);
            }
        });
        ((com.braze.events.d) this.a).c(com.braze.events.internal.q.class, new IEventSubscriber() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda11
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                a0.a(this.f$0, (com.braze.events.internal.q) obj);
            }
        });
        ((com.braze.events.d) this.a).c(com.braze.events.internal.k.class, new IEventSubscriber() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda12
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                a0.a(this.f$0, (com.braze.events.internal.k) obj);
            }
        });
        ((com.braze.events.d) this.a).c(com.braze.events.internal.j.class, new IEventSubscriber() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda13
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                a0.a(this.f$0, (com.braze.events.internal.j) obj);
            }
        });
        ((com.braze.events.d) this.a).c(com.braze.events.internal.d.class, new IEventSubscriber() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda14
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                a0.a(this.f$0, (com.braze.events.internal.d) obj);
            }
        });
    }

    public final void k() {
        final long jNowInSeconds = DateTimeUtils.nowInSeconds();
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a0.a(jNowInSeconds);
            }
        }, 6, (Object) null);
        this.g.edit().putLong("last_refresh", jNowInSeconds).apply();
    }

    public static final String d() {
        return "Did not find stored Feature Flags.";
    }

    public final FeatureFlagsUpdatedEvent a(JSONArray featureFlagsJson) {
        Intrinsics.checkNotNullParameter(featureFlagsJson, "featureFlagsData");
        Intrinsics.checkNotNullParameter(featureFlagsJson, "featureFlagsJson");
        ArrayList arrayList = new ArrayList();
        Iterator it = SequencesKt.map(SequencesKt.filter(CollectionsKt.asSequence(RangesKt.until(0, featureFlagsJson.length())), new com.braze.support.g(featureFlagsJson)), new com.braze.support.h(featureFlagsJson)).iterator();
        while (it.hasNext()) {
            FeatureFlag featureFlagA = com.braze.support.i.a.a((JSONObject) it.next());
            if (featureFlagA != null) {
                arrayList.add(featureFlagA);
            }
        }
        this.e = arrayList;
        SharedPreferences.Editor editorEdit = this.h.edit();
        editorEdit.clear();
        for (final FeatureFlag featureFlag : this.e) {
            try {
                editorEdit.putString(featureFlag.getId(), featureFlag.getJsonKey().toString());
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return a0.b(featureFlag);
                    }
                }, 4, (Object) null);
            }
        }
        editorEdit.apply();
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a0.j();
            }
        }, 7, (Object) null);
        List list = this.e;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((FeatureFlag) it2.next()).deepcopy$android_sdk_base_release());
        }
        return new FeatureFlagsUpdatedEvent(arrayList2);
    }

    public static final String b(FeatureFlag featureFlag) {
        return "Error storing Feature Flag: " + featureFlag + '.';
    }

    public static final String b() {
        return "Clearing Feature Flags.";
    }

    public final void c() {
        SharedPreferences sharedPreferences = this.h;
        ArrayList arrayList = new ArrayList();
        Map<String, ?> all = sharedPreferences.getAll();
        if (all != null && !all.isEmpty()) {
            Set<String> setKeySet = all.keySet();
            if (setKeySet.isEmpty()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return a0.e();
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
                            FeatureFlag featureFlagA = com.braze.support.i.a.a(new JSONObject(str2));
                            if (featureFlagA != null) {
                                arrayList.add(featureFlagA);
                            }
                        }
                    } catch (Exception e) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda7
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return a0.b(str2);
                            }
                        }, 4, (Object) null);
                        Unit unit = Unit.INSTANCE;
                    }
                }
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return a0.a(str);
                    }
                }, 6, (Object) null);
            }
            this.e = arrayList;
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a0.d();
            }
        }, 7, (Object) null);
        this.e = CollectionsKt.emptyList();
    }

    public static final String e() {
        return "Failed to find stored Feature Flag keys.";
    }

    public static final void a(a0 a0Var, com.braze.events.internal.d it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (!it.a.m || it.b.m) {
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) a0Var, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a0.i();
            }
        }, 7, (Object) null);
        a0Var.a();
    }

    public static final void a(a0 a0Var, com.braze.events.internal.r it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it.a instanceof com.braze.requests.i) {
            a0Var.j.incrementAndGet();
        }
    }

    public static final void a(a0 a0Var, com.braze.events.internal.q it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it.a instanceof com.braze.requests.i) {
            a0Var.j.decrementAndGet();
        }
    }

    public static final void a(a0 a0Var, com.braze.events.internal.k it) {
        Intrinsics.checkNotNullParameter(it, "it");
        a0Var.f.set(true);
        a0Var.k();
    }

    public static final void a(a0 a0Var, com.braze.events.internal.j it) {
        Intrinsics.checkNotNullParameter(it, "it");
        a0Var.f.set(true);
        if (a0Var.f.get()) {
            List list = a0Var.e;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(((FeatureFlag) it2.next()).deepcopy$android_sdk_base_release());
            }
            ((com.braze.events.d) a0Var.b).b(new FeatureFlagsUpdatedEvent(arrayList), FeatureFlagsUpdatedEvent.class);
        }
    }

    public static final String a(a0 a0Var) {
        return "Not refreshing Feature Flags since another " + a0Var.j.get() + " request is currently in-flight.";
    }

    public static final String a(a0 a0Var, long j) {
        return "Not enough time has passed since last Feature Flags refresh. Not refreshing Feature Flags. " + ((a0Var.g.getLong("last_refresh", 0L) - j) + ((long) a0Var.c.m())) + " seconds remaining until next available flush.";
    }

    public static final String a(FeatureFlag featureFlag) {
        return "Not logging a Feature Flag impression for Feature Flag with id " + featureFlag.getId() + ". The Feature Flag already had an impression logged in the current session";
    }

    public static final String a(long j) {
        return "Updating last Feature Flags refresh time: " + j;
    }

    public final void a() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.a0$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a0.b();
            }
        }, 7, (Object) null);
        this.h.edit().clear().apply();
        this.e = CollectionsKt.emptyList();
        if (this.f.get()) {
            List list = this.e;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((FeatureFlag) it.next()).deepcopy$android_sdk_base_release());
            }
            ((com.braze.events.d) this.b).b(new FeatureFlagsUpdatedEvent(arrayList), FeatureFlagsUpdatedEvent.class);
        }
    }
}

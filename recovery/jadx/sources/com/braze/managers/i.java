package com.braze.managers;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.enums.GeofenceTransitionType;
import com.braze.events.IEventSubscriber;
import com.braze.models.BrazeGeofence;
import com.braze.support.BrazeLogger;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes.dex */
public final class i {
    public final SharedPreferences a;
    public final SharedPreferences b;
    public final ConcurrentHashMap c;
    public final AtomicBoolean d;
    public long e;
    public long f;
    public int g;
    public int h;

    public i(Context context, String apiKey, com.braze.storage.e0 serverConfigStorageProvider, com.braze.events.e internalIEventMessenger) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(internalIEventMessenger, "internalIEventMessenger");
        ((com.braze.events.d) internalIEventMessenger).c(com.braze.events.internal.y.class, new IEventSubscriber() { // from class: com.braze.managers.i$$ExternalSyntheticLambda9
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                i.a(this.f$0, (com.braze.events.internal.y) obj);
            }
        });
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.appboy.managers.geofences.eligibility.global." + apiKey, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.a = sharedPreferences;
        SharedPreferences sharedPreferences2 = context.getSharedPreferences("com.appboy.managers.geofences.eligibility.individual." + apiKey, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences2, "getSharedPreferences(...)");
        this.b = sharedPreferences2;
        this.c = a(sharedPreferences2);
        this.d = new AtomicBoolean(false);
        this.e = sharedPreferences.getLong("last_request_global", 0L);
        this.f = sharedPreferences.getLong("last_report_global", 0L);
        this.g = serverConfigStorageProvider.t();
        this.h = serverConfigStorageProvider.s();
    }

    public static final String b(String str) {
        return com.braze.j.a("Exception trying to parse re-eligibility id: ", str);
    }

    public static final String c(String str) {
        return com.braze.a.a("Deleting outdated id ", str, " from re-eligibility list.");
    }

    public static final String d(String str) {
        return com.braze.a.a("Retaining id ", str, " in re-eligibility list.");
    }

    public final void a(com.braze.models.response.m serverConfig) {
        Intrinsics.checkNotNullParameter(serverConfig, "serverConfig");
        final int i = serverConfig.e;
        if (i >= 0) {
            this.g = i;
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return i.a(i);
                }
            }, 6, (Object) null);
        }
        final int i2 = serverConfig.f;
        if (i2 >= 0) {
            this.h = i2;
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return i.b(i2);
                }
            }, 6, (Object) null);
        }
    }

    public static final void a(i iVar, com.braze.events.internal.y it) {
        Intrinsics.checkNotNullParameter(it, "it");
        iVar.d.set(false);
    }

    public final void a(List brazeGeofenceList) {
        Intrinsics.checkNotNullParameter(brazeGeofenceList, "brazeGeofenceList");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = brazeGeofenceList.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(((BrazeGeofence) it.next()).getId());
        }
        HashSet hashSet = new HashSet(this.c.keySet());
        SharedPreferences.Editor editorEdit = this.b.edit();
        Iterator it2 = hashSet.iterator();
        Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
        while (it2.hasNext()) {
            final String str = (String) it2.next();
            Intrinsics.checkNotNull(str);
            if (!linkedHashSet.contains(a(str))) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return i.c(str);
                    }
                }, 7, (Object) null);
                this.c.remove(str);
                editorEdit.remove(str);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return i.d(str);
                    }
                }, 7, (Object) null);
            }
        }
        editorEdit.apply();
    }

    public final boolean a(long j, BrazeGeofence geofence, final GeofenceTransitionType transitionType) {
        Intrinsics.checkNotNullParameter(geofence, "geofence");
        Intrinsics.checkNotNullParameter(transitionType, "transitionType");
        final String geofenceId = geofence.getId();
        final long j2 = j - this.f;
        if (this.h > j2) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return i.a(j2, this, geofenceId);
                }
            }, 7, (Object) null);
            return false;
        }
        Intrinsics.checkNotNullParameter(geofenceId, "geofenceId");
        Intrinsics.checkNotNullParameter(transitionType, "transitionType");
        StringBuilder sb = new StringBuilder();
        String string = transitionType.toString();
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = string.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String string2 = sb.append(lowerCase).append('_').append(geofenceId).toString();
        final int cooldownEnterSeconds = transitionType == GeofenceTransitionType.ENTER ? geofence.getCooldownEnterSeconds() : geofence.getCooldownExitSeconds();
        if (this.c.containsKey(string2)) {
            Long l = (Long) this.c.get(string2);
            if (l != null) {
                final long jLongValue = j - l.longValue();
                if (cooldownEnterSeconds > jLongValue) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return i.a(jLongValue, cooldownEnterSeconds, geofenceId, transitionType);
                        }
                    }, 7, (Object) null);
                    return false;
                }
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return i.b(jLongValue, cooldownEnterSeconds, geofenceId, transitionType);
                    }
                }, 7, (Object) null);
            }
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return i.a(geofenceId, transitionType);
                }
            }, 7, (Object) null);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return i.b(j2, this, geofenceId);
            }
        }, 7, (Object) null);
        this.c.put(string2, Long.valueOf(j));
        this.b.edit().putLong(string2, j).apply();
        this.f = j;
        this.a.edit().putLong("last_report_global", j).apply();
        return true;
    }

    public static final String c(long j) {
        return "Updating the last successful location request time to: " + j;
    }

    public static final String b(long j, int i, String str, GeofenceTransitionType geofenceTransitionType) {
        return j + " seconds have passed since the last time this geofence/transition combination was reported (minimum interval: " + i + "). id:" + str + " transition:" + geofenceTransitionType;
    }

    public static final String b(long j, i iVar, String str) {
        return "Geofence report eligible since " + j + " seconds have passed since the last time geofences were reported globally (minimum interval: " + iVar.h + "). id:" + str;
    }

    public static final String b(long j, i iVar) {
        return "Geofence request suppressed since only " + j + " seconds have passed since the last time geofences were requested (minimum interval: " + iVar.g + ").";
    }

    public static final String b() {
        return "Geofences have already been requested for the current session. Geofence request not eligible.";
    }

    public final void b(final long j) {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return i.c(j);
            }
        }, 7, (Object) null);
        this.e = j;
        this.a.edit().putLong("last_request_global", this.e).apply();
    }

    public static final String b(int i) {
        return "Min time since last geofence report reset via server configuration: " + i + '.';
    }

    public static final String a(long j, i iVar, String str) {
        return "Geofence report suppressed since only " + j + " seconds have passed since the last time geofences were reported globally (minimum interval: " + iVar.h + "). id:" + str;
    }

    public static final String a(long j, int i, String str, GeofenceTransitionType geofenceTransitionType) {
        return "Geofence report suppressed since only " + j + " seconds have passed since the last time this geofence/transition combination was reported (minimum interval: " + i + "). id:" + str + " transition:" + geofenceTransitionType;
    }

    public static final String a(String str, GeofenceTransitionType geofenceTransitionType) {
        return "Geofence report eligible since this geofence/transition combination has never been reported.id:" + str + " transition:" + geofenceTransitionType;
    }

    public final boolean a(boolean z, long j) {
        final long j2 = j - this.e;
        if (!z && this.g > j2) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return i.b(j2, this);
                }
            }, 7, (Object) null);
            return false;
        }
        if (z) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return i.a(j2);
                }
            }, 7, (Object) null);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return i.a(j2, this);
                }
            }, 7, (Object) null);
        }
        if (this.d.compareAndSet(false, true)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return i.a();
                }
            }, 7, (Object) null);
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return i.b();
            }
        }, 7, (Object) null);
        return false;
    }

    public static final String a(long j) {
        return "Ignoring rate limit for this geofence request. Elapsed time since last request:" + j;
    }

    public static final String a(long j, i iVar) {
        return j + " seconds have passed since the last time geofences were requested (minimum interval: " + iVar.g + ").";
    }

    public static final String a() {
        return "Geofences have not been requested for the current session yet. Request is eligible.";
    }

    public final String a(final String reEligibilityId) {
        Intrinsics.checkNotNullParameter(reEligibilityId, "reEligibilityId");
        try {
            return new Regex("_").split(reEligibilityId, 2).get(1);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return i.b(reEligibilityId);
                }
            }, 4, (Object) null);
            return null;
        }
    }

    public static final String a(int i) {
        return "Min time since last geofence request reset via server configuration: " + i + '.';
    }

    public final ConcurrentHashMap a(SharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        Map<String, ?> all = sharedPreferences.getAll();
        if (all != null && !all.isEmpty()) {
            Set<String> setKeySet = all.keySet();
            if (setKeySet.isEmpty()) {
                return concurrentHashMap;
            }
            for (final String str : setKeySet) {
                long j = sharedPreferences.getLong(str, 0L);
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.i$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return i.a(this.f$0, str);
                    }
                }, 7, (Object) null);
                concurrentHashMap.put(str, Long.valueOf(j));
            }
        }
        return concurrentHashMap;
    }

    public static final String a(i iVar, String str) {
        StringBuilder sb = new StringBuilder("Retrieving geofence id ");
        Intrinsics.checkNotNull(str);
        return sb.append(iVar.a(str)).append(" eligibility information from local storage.").toString();
    }
}

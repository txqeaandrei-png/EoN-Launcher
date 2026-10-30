package com.braze.triggers.managers;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.triggers.actions.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    public final SharedPreferences a;
    public final ConcurrentHashMap b;
    public final LinkedHashMap c;

    public g(Context context, String str, String apiKey) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        SharedPreferences sharedPreferencesA = com.braze.managers.c.a(context, str, apiKey, new StringBuilder("com.appboy.storage.triggers.re_eligibility"), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferencesA, "getSharedPreferences(...)");
        this.a = sharedPreferencesA;
        this.b = a();
        this.c = new LinkedHashMap();
    }

    public static final String a(String str) {
        return com.braze.a.a("Deleting outdated triggered action id ", str, " from stored re-eligibility list. In-memory re-eligibility list is unchanged.");
    }

    public static final String b(String str) {
        return com.braze.a.a("Retaining triggered action ", str, " in re-eligibility list.");
    }

    public static final String c(String str) {
        return com.braze.a.a("Retrieving triggered action id ", str, " eligibility information from local storage.");
    }

    public final void d(final com.braze.triggers.actions.a triggeredAction) {
        Intrinsics.checkNotNullParameter(triggeredAction, "triggeredAction");
        com.braze.triggers.actions.g gVar = (com.braze.triggers.actions.g) triggeredAction;
        if (gVar.b.f.a == -1) {
            this.b.remove(gVar.a);
            this.a.edit().remove(gVar.a).apply();
            return;
        }
        Long l = (Long) this.c.get(gVar.a);
        final long jLongValue = l != null ? l.longValue() : 0L;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return g.b(triggeredAction, jLongValue);
            }
        }, 7, (Object) null);
        this.b.put(gVar.a, Long.valueOf(jLongValue));
        this.a.edit().putLong(gVar.a, jLongValue).apply();
    }

    public final boolean a(final com.braze.triggers.actions.g triggeredAction) {
        Intrinsics.checkNotNullParameter(triggeredAction, "triggeredAction");
        final com.braze.triggers.config.b bVar = triggeredAction.b.f;
        if (bVar.a == 0) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.a(triggeredAction);
                }
            }, 7, (Object) null);
            return true;
        }
        if (!this.b.containsKey(triggeredAction.a)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.b(triggeredAction);
                }
            }, 7, (Object) null);
            return true;
        }
        if (bVar.a == -1) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.c(triggeredAction);
                }
            }, 7, (Object) null);
            return false;
        }
        Long l = (Long) this.b.get(triggeredAction.a);
        final long jLongValue = l != null ? l.longValue() : 0L;
        long jNowInSeconds = DateTimeUtils.nowInSeconds() + ((long) triggeredAction.b.d);
        int i = bVar.a;
        Integer numValueOf = i > 0 ? Integer.valueOf(i) : null;
        if (jNowInSeconds >= ((long) (numValueOf != null ? numValueOf.intValue() : 0)) + jLongValue) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.a(jLongValue, bVar);
                }
            }, 7, (Object) null);
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return g.b(jLongValue, bVar);
            }
        }, 7, (Object) null);
        return false;
    }

    public static final String b(com.braze.triggers.actions.a aVar) {
        return com.braze.c.a(new StringBuilder("Triggered action id "), ((com.braze.triggers.actions.g) aVar).a, " always eligible via never having been triggered. Returning true for eligibility status");
    }

    public static final String a(com.braze.triggers.actions.a aVar) {
        return com.braze.c.a(new StringBuilder("Triggered action id "), ((com.braze.triggers.actions.g) aVar).a, " always eligible via configuration. Returning true for eligibility status");
    }

    public static final String b(long j, com.braze.triggers.config.a aVar) {
        StringBuilder sbAppend = new StringBuilder("Trigger action is not re-eligible for display since only ").append(DateTimeUtils.nowInSeconds() - j).append(" seconds have passed since the last time it was triggered (minimum interval: ");
        int i = ((com.braze.triggers.config.b) aVar).a;
        return sbAppend.append(i > 0 ? Integer.valueOf(i) : null).append(").").toString();
    }

    public static final String b(com.braze.triggers.actions.a aVar, long j) {
        return "Resetting re-eligibility for action Id " + ((com.braze.triggers.actions.g) aVar).a + " to " + j;
    }

    public static final String b() {
        return "Encountered unexpected exception while parsing stored re-eligibility information.";
    }

    public static final String c(com.braze.triggers.actions.a aVar) {
        return com.braze.c.a(new StringBuilder("Triggered action id "), ((com.braze.triggers.actions.g) aVar).a, " no longer eligible due to having been triggered in the past and is only eligible once.");
    }

    public static final String a(long j, com.braze.triggers.config.a aVar) {
        StringBuilder sbAppend = new StringBuilder("Trigger action is re-eligible for display since ").append(DateTimeUtils.nowInSeconds() - j).append(" seconds have passed since the last time it was triggered (minimum interval: ");
        int i = ((com.braze.triggers.config.b) aVar).a;
        return sbAppend.append(i > 0 ? Integer.valueOf(i) : null).append(").").toString();
    }

    public final void a(final h triggeredAction, final long j) {
        Intrinsics.checkNotNullParameter(triggeredAction, "triggeredAction");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return g.a(triggeredAction, j);
            }
        }, 7, (Object) null);
        LinkedHashMap linkedHashMap = this.c;
        String str = triggeredAction.a;
        Long l = (Long) this.b.get(str);
        linkedHashMap.put(str, Long.valueOf(l != null ? l.longValue() : 0L));
        this.b.put(triggeredAction.a, Long.valueOf(j));
        this.a.edit().putLong(triggeredAction.a, j).apply();
    }

    public static final String a(com.braze.triggers.actions.a aVar, long j) {
        return "Updating re-eligibility for action Id " + ((com.braze.triggers.actions.g) aVar).a + " to time " + j + '.';
    }

    public final ConcurrentHashMap a() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        try {
            for (final String str : this.a.getAll().keySet()) {
                long j = this.a.getLong(str, 0L);
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.c(str);
                    }
                }, 7, (Object) null);
                concurrentHashMap.put(str, Long.valueOf(j));
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.b();
                }
            }, 4, (Object) null);
        }
        return concurrentHashMap;
    }

    public final void a(List triggeredActions) {
        Intrinsics.checkNotNullParameter(triggeredActions, "triggeredActions");
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(triggeredActions, 10));
        Iterator it = triggeredActions.iterator();
        while (it.hasNext()) {
            arrayList.add(((com.braze.triggers.actions.g) ((com.braze.triggers.actions.a) it.next())).a);
        }
        SharedPreferences.Editor editorEdit = this.a.edit();
        for (final String str : CollectionsKt.toSet(this.b.keySet())) {
            if (!arrayList.contains(str)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.a(str);
                    }
                }, 7, (Object) null);
                editorEdit.remove(str);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.g$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.b(str);
                    }
                }, 7, (Object) null);
            }
        }
        editorEdit.apply();
    }
}

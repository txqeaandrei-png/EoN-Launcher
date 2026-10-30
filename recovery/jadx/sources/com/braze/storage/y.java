package com.braze.storage;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class y {
    public static final long b = TimeUnit.DAYS.toSeconds(45);
    public final SharedPreferences a;

    public y(Context context, String str, String str2) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferencesA = com.braze.managers.c.a(context, str2, str, new StringBuilder("com.braze.storage.push_identifier_storage"), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferencesA, "getSharedPreferences(...)");
        this.a = sharedPreferencesA;
        a();
    }

    public static final String b(String str) {
        return com.braze.a.a("Push dedupe id ", str, " has already been seen. Returning false.");
    }

    public final boolean a(final String pushId) {
        Intrinsics.checkNotNullParameter(pushId, "pushId");
        if (StringsKt.isBlank(pushId)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.y$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return y.b();
                }
            }, 7, (Object) null);
            return true;
        }
        Intrinsics.checkNotNullParameter(pushId, "pushId");
        if (this.a.contains(pushId)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.y$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return y.b(pushId);
                }
            }, 7, (Object) null);
            return false;
        }
        a();
        Intrinsics.checkNotNullParameter(pushId, "pushId");
        this.a.edit().putLong(pushId, DateTimeUtils.nowInSeconds()).apply();
        return true;
    }

    public static final String b() {
        return "Push dedupe id is blank. Returning true.";
    }

    public final void a() {
        final long jNowInSeconds = DateTimeUtils.nowInSeconds() - b;
        SharedPreferences.Editor editorEdit = this.a.edit();
        Map<String, ?> all = this.a.getAll();
        Intrinsics.checkNotNullExpressionValue(all, "getAll(...)");
        for (final Map.Entry<String, ?> entry : all.entrySet()) {
            Long l = (Long) entry.getValue();
            if (l == null || l.longValue() < jNowInSeconds) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.storage.y$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return y.a(entry, jNowInSeconds);
                    }
                }, 6, (Object) null);
                editorEdit.remove(entry.getKey());
            }
        }
        editorEdit.apply();
    }

    public static final String a(Map.Entry entry, long j) {
        return "Evicting push id key " + entry + " based on cutoff: " + j;
    }
}

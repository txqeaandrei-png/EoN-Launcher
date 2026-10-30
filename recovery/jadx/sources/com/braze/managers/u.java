package com.braze.managers;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class u implements e0 {
    public final Lazy a;
    public final SharedPreferences b;

    public u(final Context context, String apiKey) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        this.a = LazyKt.lazy(new Function0() { // from class: com.braze.managers.u$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return u.a(context);
            }
        });
        SharedPreferences sharedPreferencesA = c.a(context, null, apiKey, new StringBuilder("com.braze.device_id"), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferencesA, "getSharedPreferences(...)");
        this.b = sharedPreferencesA;
    }

    public static final SharedPreferences a(Context context) {
        return context.getSharedPreferences("com.appboy.device", 0);
    }

    public final String a() {
        String string = this.b.getString("device_id", null);
        if (string == null) {
            Object value = this.a.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
            string = ((SharedPreferences) value).getString("device_id", null);
            Object value2 = this.a.getValue();
            Intrinsics.checkNotNullExpressionValue(value2, "getValue(...)");
            ((SharedPreferences) value2).edit().clear().apply();
        }
        if ((this.b.contains("persistent_device_id") ? !Intrinsics.areEqual(this.b.getString("persistent_device_id", null), String.valueOf(722989291)) : false) || string == null) {
            string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        }
        this.b.edit().putString("persistent_device_id", String.valueOf(722989291)).putString("device_id", string).apply();
        return string;
    }
}

package com.braze.models;

import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final String b() {
        return "Received null inner banner object. Not parsing.";
    }

    public final Banner a(final JSONObject jSONObject) {
        if (jSONObject == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.models.a$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.a();
                }
            }, 6, (Object) null);
            return null;
        }
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(Banner.BANNER_KEY);
            if (jSONObjectOptJSONObject == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.models.a$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return a.b();
                    }
                }, 6, (Object) null);
                return null;
            }
            String string = jSONObjectOptJSONObject.getString("id");
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = jSONObjectOptJSONObject.getString(Banner.PLACEMENT_ID);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String string3 = jSONObjectOptJSONObject.getString(Banner.HTML);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            return new Banner(string, string2, string3, jSONObjectOptJSONObject.getBoolean("is_control"), jSONObjectOptJSONObject.getLong(Banner.EXPIRATION), jSONObjectOptJSONObject.getBoolean("is_test_send"));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.a$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.b(jSONObject);
                }
            }, 4, (Object) null);
            return null;
        }
    }

    public static final String b(JSONObject jSONObject) {
        return "Failed to deserialize banner Json: " + jSONObject;
    }

    public static final String a() {
        return "Received null banner object. Not parsing.";
    }
}

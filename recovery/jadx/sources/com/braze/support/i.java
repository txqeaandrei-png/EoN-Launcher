package com.braze.support;

import com.braze.models.FeatureFlag;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class i {
    public static final i a = new i();

    public static final String b(JSONObject jSONObject) {
        return "Failed to deserialize feature flag Json: " + jSONObject;
    }

    public final FeatureFlag a(final JSONObject featureFlagObject) {
        Intrinsics.checkNotNullParameter(featureFlagObject, "featureFlagObject");
        try {
            String string = featureFlagObject.getString("id");
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            boolean z = featureFlagObject.getBoolean(FeatureFlag.ENABLED);
            JSONObject jSONObjectOptJSONObject = featureFlagObject.optJSONObject(FeatureFlag.PROPERTIES);
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
            }
            return new FeatureFlag(string, z, jSONObjectOptJSONObject, JsonUtils.getOptionalString(featureFlagObject, FeatureFlag.TRACKING_STRING));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.support.i$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return i.b(featureFlagObject);
                }
            }, 4, (Object) null);
            return null;
        }
    }
}

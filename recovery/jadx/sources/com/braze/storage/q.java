package com.braze.storage;

import com.braze.enums.DeviceKey;
import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class q {
    public static final String b() {
        return "shouldReportPushPermissionsAsGranted: Returning true given that push is permissible now and notifications enabled transitioned to true.";
    }

    public static final String c() {
        return "shouldReportPushPermissionsAsGranted: Returning true since notifications enabled is true and device has upgraded to Tiramisu or beyond.";
    }

    public static final String d() {
        return "Returning false for shouldReportPushPermissionsAsGranted.";
    }

    public final JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObject3 = new JSONObject();
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = jSONObject2.opt(next);
            Object objOpt2 = jSONObject.opt(next);
            if (objOpt != null) {
                try {
                    if (objOpt instanceof JSONObject) {
                        if (objOpt2 == null || !JsonUtils.areJsonObjectsEqual((JSONObject) objOpt, (JSONObject) objOpt2)) {
                            jSONObject3.put(next, objOpt);
                        }
                    } else if (!Intrinsics.areEqual(objOpt, objOpt2)) {
                        jSONObject3.put(next, objOpt);
                    }
                } catch (JSONException e) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.q$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return q.a();
                        }
                    }, 4, (Object) null);
                    return null;
                }
            }
        }
        return jSONObject3;
    }

    public static final String a() {
        return "Caught json exception while creating the diff. Returning null";
    }

    public final boolean a(JSONObject cachedDeviceJson, JSONObject liveDeviceJson, int i, int i2) {
        Intrinsics.checkNotNullParameter(cachedDeviceJson, "cachedDeviceJson");
        Intrinsics.checkNotNullParameter(liveDeviceJson, "liveDeviceJson");
        boolean z = i2 >= 33;
        boolean z2 = i < 33 && z;
        DeviceKey deviceKey = DeviceKey.NOTIFICATIONS_ENABLED;
        boolean zOptBoolean = liveDeviceJson.optBoolean(deviceKey.getKey(), false);
        boolean z3 = zOptBoolean && !cachedDeviceJson.optBoolean(deviceKey.getKey(), false);
        if (z && z3) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.q$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return q.b();
                }
            }, 7, (Object) null);
            return true;
        }
        if (zOptBoolean && z2) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.q$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return q.c();
                }
            }, 7, (Object) null);
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.storage.q$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return q.d();
            }
        }, 6, (Object) null);
        return false;
    }
}

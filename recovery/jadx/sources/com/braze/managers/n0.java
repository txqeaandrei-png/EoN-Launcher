package com.braze.managers;

import com.braze.models.FeatureFlag;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class n0 {
    public static final String b() {
        return "Error getting required SDK debugging fields in SdkDebugManager. Disabling SDK debugging.";
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002a A[Catch: JSONException -> 0x001d, TryCatch #0 {JSONException -> 0x001d, blocks: (B:4:0x0012, B:11:0x0022, B:13:0x002a, B:14:0x0030, B:16:0x0036, B:17:0x0040, B:19:0x0066, B:24:0x0081, B:26:0x0085, B:28:0x0091, B:23:0x0070), top: B:35:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:16:0x0036 A[Catch: JSONException -> 0x001d, TryCatch #0 {JSONException -> 0x001d, blocks: (B:4:0x0012, B:11:0x0022, B:13:0x002a, B:14:0x0030, B:16:0x0036, B:17:0x0040, B:19:0x0066, B:24:0x0081, B:26:0x0085, B:28:0x0091, B:23:0x0070), top: B:35:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0070 A[Catch: JSONException -> 0x001d, TryCatch #0 {JSONException -> 0x001d, blocks: (B:4:0x0012, B:11:0x0022, B:13:0x002a, B:14:0x0030, B:16:0x0036, B:17:0x0040, B:19:0x0066, B:24:0x0081, B:26:0x0085, B:28:0x0091, B:23:0x0070), top: B:35:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x00a2  */
    public final o0 a(final JSONObject jsonData, boolean z) {
        Long l;
        Intrinsics.checkNotNullParameter(jsonData, "jsonData");
        o0 o0Var = new o0();
        boolean z2 = true;
        boolean z3 = false;
        if (z) {
            o0Var.a = z;
            if (jsonData.has("authorization_code")) {
                o0Var.c = jsonData.getString("authorization_code");
            }
            if (jsonData.has("expiration_time")) {
                o0Var.b = Long.valueOf(jsonData.getLong("expiration_time"));
            }
            JSONObject jSONObject = jsonData.getJSONObject("batching_config");
            o0Var.d = jSONObject.getLong("flush_interval_size");
            o0Var.e = jSONObject.getLong("flush_interval_seconds");
            long j = jSONObject.getLong("max_payload_size");
            o0Var.f = j;
            if (o0Var.d > 0) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.n0$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return n0.a(jsonData);
                    }
                }, 7, (Object) null);
                z3 = true;
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.n0$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return n0.a(jsonData);
                    }
                }, 7, (Object) null);
                z3 = true;
            }
            l = o0Var.b;
            if (l != null) {
                z2 = z3;
            } else {
                z2 = z3;
            }
        } else {
            try {
                boolean z4 = jsonData.getBoolean(FeatureFlag.ENABLED);
                o0Var.a = z4;
                if (jsonData.has("authorization_code")) {
                    o0Var.c = jsonData.getString("authorization_code");
                }
                if (jsonData.has("expiration_time")) {
                    o0Var.b = Long.valueOf(jsonData.getLong("expiration_time"));
                }
                JSONObject jSONObject2 = jsonData.getJSONObject("batching_config");
                o0Var.d = jSONObject2.getLong("flush_interval_size");
                o0Var.e = jSONObject2.getLong("flush_interval_seconds");
                long j2 = jSONObject2.getLong("max_payload_size");
                o0Var.f = j2;
                if (o0Var.d > 0 || o0Var.e <= 0 || j2 <= 0) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.n0$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return n0.a(jsonData);
                        }
                    }, 7, (Object) null);
                    z3 = true;
                }
                l = o0Var.b;
                if (l != null || l.longValue() >= DateTimeUtils.nowInSeconds()) {
                    z2 = z3;
                } else {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.n0$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return n0.a();
                        }
                    }, 7, (Object) null);
                }
            } catch (JSONException e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.n0$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return n0.b();
                    }
                }, 4, (Object) null);
            }
        }
        return z2 ? new o0() : o0Var;
    }

    public static final String a(JSONObject jSONObject) {
        return "sdkDebuggerObject contains invalid values. Disabling SDK debugging. " + jSONObject;
    }

    public static final String a() {
        return "SDK Debugger expiration time is in the past. Disabling SDK debugging.";
    }
}

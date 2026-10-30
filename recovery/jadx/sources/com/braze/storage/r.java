package com.braze.storage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.enums.DeviceKey;
import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class r extends b {
    public static final q f = new q();
    public final BrazeConfigurationProvider b;
    public final SharedPreferences c;
    public final SharedPreferences d;
    public com.braze.models.outgoing.h e;

    public r(Context context, String str, String str2) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.b = new BrazeConfigurationProvider(context);
        SharedPreferences sharedPreferencesA = com.braze.managers.c.a(context, str, str2, new StringBuilder("com.appboy.storage.device_cache.v3"), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferencesA, "getSharedPreferences(...)");
        this.c = sharedPreferencesA;
        SharedPreferences sharedPreferencesA2 = com.braze.managers.c.a(context, str, str2, new StringBuilder("com.braze.storage.device_cache.metadata"), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferencesA2, "getSharedPreferences(...)");
        this.d = sharedPreferencesA2;
    }

    public static final String a(boolean z, boolean z2) {
        return "Exporting the full device due to either: shouldShouldFullDeviceOnNextExport: " + z + ", shouldReportPushPermissionsAsGranted: " + z2;
    }

    public static final String d() {
        return "Caught exception confirming and unlocking device cache.";
    }

    public static final String f() {
        return "Sending full device on next export but keeping cache intact.";
    }

    public static final String h() {
        return "Caught exception confirming and unlocking JSON objects.";
    }

    public static final String i() {
        return "Failed to generate diff between the cached and live device. Returning the live device.";
    }

    public static final String j() {
        return "Remote Notification Enabled changed to true. Updating user subscription.";
    }

    public final void e() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.storage.r$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return r.f();
            }
        }, 6, (Object) null);
        this.d.edit().putBoolean("sfone", true).apply();
    }

    @Override // com.braze.storage.b
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final com.braze.models.outgoing.h c() {
        JSONObject jsonObject;
        String str = "{}";
        JSONObject jSONObject = new JSONObject();
        com.braze.models.outgoing.h hVar = this.e;
        JSONObject jsonKey = hVar != null ? hVar.getJsonKey() : new JSONObject();
        try {
            String string = this.c.getString("cached_device", "{}");
            if (string != null) {
                str = string;
            }
            jSONObject = new JSONObject(str);
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.r$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return r.h();
                }
            }, 4, (Object) null);
        }
        q qVar = f;
        SharedPreferences sharedPreferences = this.d;
        int i = Build.VERSION.SDK_INT;
        final boolean zA = qVar.a(jSONObject, jsonKey, sharedPreferences.getInt("ldov", i), i);
        final boolean z = this.d.getBoolean("sfone", false);
        if (z || zA) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.r$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return r.a(z, zA);
                }
            }, 7, (Object) null);
            jsonObject = qVar.a(new JSONObject(), jsonKey);
        } else {
            jsonObject = qVar.a(jSONObject, jsonKey);
        }
        if (jsonObject == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.r$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return r.i();
                }
            }, 7, (Object) null);
            return this.e;
        }
        BrazeConfigurationProvider configurationProvider = this.b;
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        String optionalString = null;
        String optionalString2 = null;
        String str2 = null;
        String optionalString3 = null;
        String optionalString4 = null;
        String optionalString5 = null;
        String optionalString6 = null;
        Boolean boolValueOf = null;
        Boolean boolValueOf2 = null;
        String optionalString7 = null;
        Boolean boolValueOf3 = null;
        for (DeviceKey deviceKey : DeviceKey.values()) {
            String key = deviceKey.getKey();
            switch (com.braze.models.outgoing.f.a[deviceKey.ordinal()]) {
                case 1:
                    optionalString5 = JsonUtils.getOptionalString(jsonObject, key);
                    break;
                case 2:
                    optionalString2 = JsonUtils.getOptionalString(jsonObject, key);
                    break;
                case 3:
                    optionalString = JsonUtils.getOptionalString(jsonObject, key);
                    break;
                case 4:
                    optionalString6 = JsonUtils.getOptionalString(jsonObject, key);
                    break;
                case 5:
                    optionalString4 = JsonUtils.getOptionalString(jsonObject, key);
                    break;
                case 6:
                    String optionalString8 = JsonUtils.getOptionalString(jsonObject, key);
                    if (optionalString8 != null && !StringsKt.isBlank(optionalString8)) {
                        str2 = optionalString8;
                    }
                    break;
                case 7:
                    optionalString3 = JsonUtils.getOptionalString(jsonObject, key);
                    break;
                case 8:
                    if (jsonObject.has(key)) {
                        boolValueOf = Boolean.valueOf(jsonObject.optBoolean(key, true));
                    }
                    Unit unit = Unit.INSTANCE;
                    break;
                case 9:
                    if (jsonObject.has(key)) {
                        boolValueOf2 = Boolean.valueOf(jsonObject.optBoolean(key, false));
                    }
                    Unit unit2 = Unit.INSTANCE;
                    break;
                case 10:
                    optionalString7 = JsonUtils.getOptionalString(jsonObject, key);
                    break;
                case 11:
                    if (jsonObject.has(key)) {
                        boolValueOf3 = Boolean.valueOf(jsonObject.optBoolean(key));
                    }
                    Unit unit3 = Unit.INSTANCE;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
        com.braze.models.outgoing.h hVar2 = new com.braze.models.outgoing.h(configurationProvider, optionalString, optionalString2, str2, optionalString3, optionalString4, optionalString5, optionalString6, boolValueOf, boolValueOf2, optionalString7, boolValueOf3);
        if (zA) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.storage.r$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return r.j();
                }
            }, 6, (Object) null);
            hVar2.m = true;
        }
        return hVar2;
    }

    @Override // com.braze.storage.b
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void c(com.braze.models.outgoing.h outboundObject, boolean z) {
        String str = "{}";
        Intrinsics.checkNotNullParameter(outboundObject, "outboundObject");
        if (z) {
            try {
                String string = this.c.getString("cached_device", "{}");
                if (string != null) {
                    str = string;
                }
                this.c.edit().putString("cached_device", JsonUtils.mergeJsonObjects(new JSONObject(str), outboundObject.getJsonKey()).toString()).apply();
                this.d.edit().putBoolean("sfone", false).putInt("ldov", Build.VERSION.SDK_INT).apply();
            } catch (JSONException e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.r$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return r.d();
                    }
                }, 4, (Object) null);
            }
        }
    }
}

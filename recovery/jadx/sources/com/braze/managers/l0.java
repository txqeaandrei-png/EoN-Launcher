package com.braze.managers;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class l0 implements g0 {
    public final BrazeConfigurationProvider a;
    public final SharedPreferences b;

    public l0(Context context, BrazeConfigurationProvider configurationProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        this.a = configurationProvider;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.braze.push_registration", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.b = sharedPreferences;
    }

    public static final String a(int i, int i2) {
        return "Stored push registration ID version code " + i + " does not match live version code " + i2 + ". Not returning saved registration ID.";
    }

    public final synchronized String b() {
        final int versionCode;
        final int i;
        if ((this.a.isFirebaseCloudMessagingRegistrationEnabled() || this.a.isAdmMessagingRegistrationEnabled()) && this.b.contains("version_code") && (versionCode = this.a.getVersionCode()) != (i = this.b.getInt("version_code", Integer.MIN_VALUE))) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.l0$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return l0.a(i, versionCode);
                }
            }, 6, (Object) null);
            return null;
        }
        if (this.b.contains("device_identifier")) {
            if (!Intrinsics.areEqual(String.valueOf(722989291), this.b.getString("device_identifier", ""))) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.l0$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return l0.a();
                    }
                }, 6, (Object) null);
                return null;
            }
        }
        return this.b.getString("registration_id", null);
    }

    public static final String a() {
        return "Device identifier differs from saved device identifier. Returning null token.";
    }

    public final synchronized void a(String str) {
        try {
            if (str != null) {
                this.b.edit().putString("registration_id", str).putInt("version_code", this.a.getVersionCode()).putString("device_identifier", String.valueOf(722989291)).apply();
            } else {
                throw new NullPointerException("Provided push token is null. Cannot set null push token.");
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}

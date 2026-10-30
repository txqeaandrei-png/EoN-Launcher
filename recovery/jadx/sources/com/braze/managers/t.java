package com.braze.managers;

import android.app.ActivityManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.core.content.pm.PackageInfoCompat;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.support.BrazeLogger;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public final class t implements d0 {
    public static final s f = new s();
    public final Context a;
    public final BrazeConfigurationProvider b;
    public final String c;
    public final SharedPreferences d;
    public PackageInfo e;

    public t(Context context, BrazeConfigurationProvider configurationProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        this.a = context;
        this.b = configurationProvider;
        PackageInfo packageInfoJ = j();
        this.c = packageInfoJ != null ? packageInfoJ.versionName : null;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.appboy.managers.device_data_provider", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.d = sharedPreferences;
    }

    public static final String a(String str) {
        return com.braze.b.a("Unable to inspect package [", str, ']');
    }

    public static final String e() {
        return "Failed to read notifications enabled state from NotificationManagerCompat.";
    }

    public static final String g() {
        return "Failed to collect background restriction information from Activity Manager";
    }

    public static final String i() {
        return "Caught exception while reading the phone carrier name.";
    }

    public final com.braze.models.outgoing.h b() {
        BrazeConfigurationProvider configurationProvider = this.b;
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        String strValueOf = String.valueOf(Build.VERSION.SDK_INT);
        String strH = h();
        String str = Build.BRAND;
        String str2 = (str == null || StringsKt.isBlank(str)) ? null : str;
        String str3 = Build.MODEL;
        s sVar = f;
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String string = locale.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        TimeZone timeZone = TimeZone.getDefault();
        Intrinsics.checkNotNullExpressionValue(timeZone, "getDefault(...)");
        String id = timeZone.getID();
        Context context = this.a;
        return new com.braze.models.outgoing.h(configurationProvider, strValueOf, strH, str2, str3, string, id, sVar.a(context, context.getResources().getConfiguration().orientation == 2), Boolean.valueOf(d()), Boolean.valueOf(f()), this.d.getString("google_ad_id", null), !this.d.contains("ad_tracking_enabled") ? null : Boolean.valueOf(this.d.getBoolean("ad_tracking_enabled", true)));
    }

    public final String c() {
        PackageInfo packageInfoJ = j();
        if (packageInfoJ != null) {
            return (Build.VERSION.SDK_INT >= 28 ? packageInfoJ.getLongVersionCode() : PackageInfoCompat.getLongVersionCode(packageInfoJ)) + ".0.0.0";
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.t$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return t.a();
            }
        }, 7, (Object) null);
        return null;
    }

    public final boolean f() {
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        try {
            Object systemService = this.a.getSystemService("activity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            return ((ActivityManager) systemService).isBackgroundRestricted();
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.t$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return t.g();
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final String h() {
        try {
            Object systemService = this.a.getSystemService("phone");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
            String networkOperatorName = ((TelephonyManager) systemService).getNetworkOperatorName();
            if (networkOperatorName != null) {
                return StringsKt.trim((CharSequence) networkOperatorName).toString();
            }
            return null;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.t$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return t.i();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    public final PackageInfo j() {
        PackageInfo packageInfo = this.e;
        if (packageInfo != null) {
            return packageInfo;
        }
        final String packageName = this.a.getPackageName();
        try {
            PackageInfo packageInfo2 = Build.VERSION.SDK_INT >= 33 ? this.a.getPackageManager().getPackageInfo(packageName, PackageManager.PackageInfoFlags.of(0L)) : this.a.getPackageManager().getPackageInfo(packageName, 0);
            this.e = packageInfo2;
            return packageInfo2;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.t$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return t.a(packageName);
                }
            }, 4, (Object) null);
            ApplicationInfo applicationInfo = this.a.getApplicationInfo();
            PackageInfo packageArchiveInfo = Build.VERSION.SDK_INT >= 33 ? this.a.getPackageManager().getPackageArchiveInfo(applicationInfo.sourceDir, PackageManager.PackageInfoFlags.of(0L)) : this.a.getPackageManager().getPackageArchiveInfo(applicationInfo.sourceDir, 0);
            this.e = packageArchiveInfo;
            return packageArchiveInfo;
        }
    }

    public final boolean d() {
        Object systemService = this.a.getSystemService("notification");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        return ((NotificationManager) systemService).areNotificationsEnabled();
    }

    public static final String a() {
        return "App version code could not be read. Returning null";
    }

    public final void a(boolean z) {
        this.d.edit().putBoolean("ad_tracking_enabled", !z).apply();
    }

    public final void b(String googleAdvertisingId) {
        Intrinsics.checkNotNullParameter(googleAdvertisingId, "googleAdvertisingId");
        this.d.edit().putString("google_ad_id", googleAdvertisingId).apply();
    }
}

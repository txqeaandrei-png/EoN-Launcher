package com.braze.support;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.gms.common.GoogleApiAvailability;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    public static final k a = new k();

    public static final boolean a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Class.forName("com.google.android.gms.common.GoogleApiAvailability");
            final int iIsGooglePlayServicesAvailable = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context);
            if (iIsGooglePlayServicesAvailable == 0) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) a, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.support.k$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return k.b();
                    }
                }, 7, (Object) null);
                return true;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) a, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.support.k$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return k.a(iIsGooglePlayServicesAvailable);
                }
            }, 7, (Object) null);
            return false;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) a, BrazeLogger.Priority.I, (Throwable) e, false, new Function0() { // from class: com.braze.support.k$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return k.a();
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public static final String b() {
        return "Google Play Services is available.";
    }

    public static final String c() {
        return "Unexpected exception while checking for com.google.android.gsf";
    }

    public static final boolean b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                context.getPackageManager().getPackageInfo("com.google.android.gsf", PackageManager.PackageInfoFlags.of(0L));
            } else {
                context.getPackageManager().getPackageInfo("com.google.android.gsf", 0);
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) a, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.support.k$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return k.c();
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public static final String a() {
        return "Google Play Services Availability API not found. Google Play Services not enabled.";
    }

    public static final String a(int i) {
        return "Google Play Services is unavailable. Connection result: " + i;
    }
}

package com.braze.support;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final c a = new c();

    public static final String a(String str) {
        return com.braze.b.a("Unexpected system broadcast received [", str, ']');
    }

    public static final com.braze.enums.f a(Intent intent, ConnectivityManager connectivityManager) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(connectivityManager, "connectivityManager");
        final String action = intent.getAction();
        if (Intrinsics.areEqual("android.net.conn.CONNECTIVITY_CHANGE", action)) {
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                boolean booleanExtra = intent.getBooleanExtra("noConnectivity", false);
                if (activeNetworkInfo != null && !booleanExtra) {
                    int type = activeNetworkInfo.getType();
                    if (type != 0) {
                        if (type == 1 || type == 6) {
                            return com.braze.enums.f.GREAT;
                        }
                        if (type != 9) {
                            return com.braze.enums.f.NONE;
                        }
                        return com.braze.enums.f.GOOD;
                    }
                    int subtype = activeNetworkInfo.getSubtype();
                    if (subtype == 3) {
                        return com.braze.enums.f.GOOD;
                    }
                    if (subtype != 13 && subtype != 20) {
                        return com.braze.enums.f.BAD;
                    }
                    return com.braze.enums.f.GREAT;
                }
                return com.braze.enums.f.NONE;
            } catch (SecurityException e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) a, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.support.c$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return c.a();
                    }
                }, 4, (Object) null);
                return com.braze.enums.f.NONE;
            }
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) a, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.support.c$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.a(action);
            }
        }, 6, (Object) null);
        return com.braze.enums.f.NONE;
    }

    public static final String a() {
        return "Failed to get active network information. Ensure the permission android.permission.ACCESS_NETWORK_STATE is defined in your AndroidManifest.xml";
    }

    public static final com.braze.enums.f a(NetworkCapabilities networkCapabilities) {
        if (networkCapabilities == null) {
            return com.braze.enums.f.NONE;
        }
        int iMin = Math.min(networkCapabilities.getLinkDownstreamBandwidthKbps(), networkCapabilities.getLinkUpstreamBandwidthKbps());
        if (iMin > 14000) {
            return com.braze.enums.f.GREAT;
        }
        if (iMin > 4000) {
            return com.braze.enums.f.GOOD;
        }
        return com.braze.enums.f.BAD;
    }
}

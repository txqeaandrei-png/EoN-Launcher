package com.braze.models.outgoing;

import android.location.Location;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final Double a(c cVar, Location location) {
        cVar.getClass();
        if (Build.VERSION.SDK_INT < 26 || !location.hasVerticalAccuracy()) {
            return null;
        }
        return Double.valueOf(location.getVerticalAccuracyMeters());
    }
}

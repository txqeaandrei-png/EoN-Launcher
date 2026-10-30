package com.braze.location;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public final IBrazeGeofenceApi a;

    public a() {
        IBrazeGeofenceApi iBrazeGeofenceApi = null;
        try {
            Object objNewInstance = Class.forName("com.braze.location.BrazeInternalGeofenceApi").getDeclaredConstructor(null).newInstance(null);
            Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type com.braze.location.IBrazeGeofenceApi");
            iBrazeGeofenceApi = (IBrazeGeofenceApi) objNewInstance;
        } catch (Exception unused) {
        }
        this.a = iBrazeGeofenceApi;
    }
}

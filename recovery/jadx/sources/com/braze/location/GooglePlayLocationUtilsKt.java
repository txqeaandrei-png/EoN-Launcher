package com.braze.location;

import com.braze.models.BrazeGeofence;
import com.google.android.gms.location.Geofence;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toGeofence", "Lcom/google/android/gms/location/Geofence;", "Lcom/braze/models/BrazeGeofence;", "android-sdk-location_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class GooglePlayLocationUtilsKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final Geofence toGeofence(BrazeGeofence brazeGeofence) {
        Intrinsics.checkNotNullParameter(brazeGeofence, "<this>");
        Geofence.Builder builder = new Geofence.Builder();
        builder.setRequestId(brazeGeofence.getId()).setCircularRegion(brazeGeofence.getLatitude(), brazeGeofence.getLongitude(), brazeGeofence.getRadiusMeter()).setNotificationResponsiveness(brazeGeofence.getNotificationResponsivenessMs()).setExpirationDuration(-1L);
        boolean enterEvents = brazeGeofence.getEnterEvents();
        int i = enterEvents;
        if (brazeGeofence.getExitEvents()) {
            i = (enterEvents ? 1 : 0) | 2;
        }
        builder.setTransitionTypes(i);
        Geofence geofenceBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(geofenceBuild, "build(...)");
        return geofenceBuild;
    }
}

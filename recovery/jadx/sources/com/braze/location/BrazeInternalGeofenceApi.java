package com.braze.location;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.braze.Constants;
import com.braze.models.BrazeGeofence;
import com.braze.support.IntentUtils;
import com.google.android.gms.location.LocationServices;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J&\u0010\f\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\u0012"}, d2 = {"Lcom/braze/location/BrazeInternalGeofenceApi;", "Lcom/braze/location/IBrazeGeofenceApi;", "<init>", "()V", "getGeofenceTransitionPendingIntent", "Landroid/app/PendingIntent;", "context", "Landroid/content/Context;", "teardownGeofences", "", "applicationContext", "intent", "registerGeofences", "geofenceList", "", "Lcom/braze/models/BrazeGeofence;", "geofenceRequestIntent", "deleteRegisteredGeofenceCache", "android-sdk-location_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeInternalGeofenceApi implements IBrazeGeofenceApi {
    @Override // com.braze.location.IBrazeGeofenceApi
    public PendingIntent getGeofenceTransitionPendingIntent(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intent intent = new Intent(Constants.BRAZE_ACTION_RECEIVER_GEOFENCE_UPDATE_INTENT_ACTION).setClass(context, BrazeActionReceiver.class);
        Intrinsics.checkNotNullExpressionValue(intent, "setClass(...)");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 134217728 | IntentUtils.getMutablePendingIntentFlags());
        Intrinsics.checkNotNullExpressionValue(broadcast, "getBroadcast(...)");
        return broadcast;
    }

    @Override // com.braze.location.IBrazeGeofenceApi
    public void teardownGeofences(Context applicationContext, PendingIntent intent) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(intent, "intent");
        LocationServices.getGeofencingClient(applicationContext).removeGeofences(intent);
    }

    @Override // com.braze.location.IBrazeGeofenceApi
    public void registerGeofences(Context context, List<BrazeGeofence> geofenceList, PendingIntent geofenceRequestIntent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(geofenceList, "geofenceList");
        Intrinsics.checkNotNullParameter(geofenceRequestIntent, "geofenceRequestIntent");
        GooglePlayLocationUtils.registerGeofencesWithGooglePlayIfNecessary$default(context, geofenceList, geofenceRequestIntent, null, null, 24, null);
    }

    @Override // com.braze.location.IBrazeGeofenceApi
    public void deleteRegisteredGeofenceCache(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        GooglePlayLocationUtils.deleteRegisteredGeofenceCache(context);
    }
}

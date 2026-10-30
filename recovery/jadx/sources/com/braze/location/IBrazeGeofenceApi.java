package com.braze.location;

import android.app.PendingIntent;
import android.content.Context;
import com.braze.models.BrazeGeofence;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0003H&J&\u0010\n\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000e\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0010À\u0006\u0001"}, d2 = {"Lcom/braze/location/IBrazeGeofenceApi;", "", "getGeofenceTransitionPendingIntent", "Landroid/app/PendingIntent;", "context", "Landroid/content/Context;", "teardownGeofences", "", "applicationContext", "intent", "registerGeofences", "geofenceList", "", "Lcom/braze/models/BrazeGeofence;", "geofenceRequestIntent", "deleteRegisteredGeofenceCache", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface IBrazeGeofenceApi {
    void deleteRegisteredGeofenceCache(Context context);

    PendingIntent getGeofenceTransitionPendingIntent(Context context);

    void registerGeofences(Context context, List<BrazeGeofence> geofenceList, PendingIntent geofenceRequestIntent);

    void teardownGeofences(Context applicationContext, PendingIntent intent);
}

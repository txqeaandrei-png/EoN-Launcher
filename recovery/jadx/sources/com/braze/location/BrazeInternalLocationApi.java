package com.braze.location;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import com.braze.Constants;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.enums.LocationProviderName;
import com.braze.models.IBrazeLocation;
import com.braze.models.outgoing.BrazeLocation;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.IntentUtils;
import com.braze.support.PermissionUtils;
import java.util.EnumSet;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 $2\u00020\u0001:\u0001$B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\f\u001a\u00020\rH\u0016J+\u0010\u0014\u001a\u00020\u00152!\u0010\u0016\u001a\u001d\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u00120\u0017H\u0016J.\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u0015J\u0012\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u001dH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082.¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/braze/location/BrazeInternalLocationApi;", "Lcom/braze/location/IBrazeLocationApi;", "<init>", "()V", "context", "Landroid/content/Context;", "locationManager", "Landroid/location/LocationManager;", "getLocationManager$android_sdk_location_release", "()Landroid/location/LocationManager;", "setLocationManager$android_sdk_location_release", "(Landroid/location/LocationManager;)V", "appConfigurationProvider", "Lcom/braze/configuration/BrazeConfigurationProvider;", "allowedLocationProviders", "Ljava/util/EnumSet;", "Lcom/braze/enums/LocationProviderName;", "initWithContext", "", "allowedProviders", "requestSingleLocationUpdate", "", "locationUpdateCallback", "Lkotlin/Function1;", "Lcom/braze/models/IBrazeLocation;", "Lkotlin/ParameterName;", "name", "location", "getSuitableLocationProvider", "", "hasFinePermission", "hasCoarsePermission", "getLastKnownGpsLocationIfValid", "Landroid/location/Location;", "requestSingleUpdateFromLocationManager", "provider", "Companion", "android-sdk-location_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeInternalLocationApi implements IBrazeLocationApi {
    public static final int LAST_KNOWN_GPS_LOCATION_MAX_AGE_MS = 600000;
    private EnumSet<LocationProviderName> allowedLocationProviders;
    private BrazeConfigurationProvider appConfigurationProvider;
    private Context context;
    public LocationManager locationManager;

    public final LocationManager getLocationManager$android_sdk_location_release() {
        LocationManager locationManager = this.locationManager;
        if (locationManager != null) {
            return locationManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("locationManager");
        return null;
    }

    public final void setLocationManager$android_sdk_location_release(LocationManager locationManager) {
        Intrinsics.checkNotNullParameter(locationManager, "<set-?>");
        this.locationManager = locationManager;
    }

    @Override // com.braze.location.IBrazeLocationApi
    public void initWithContext(Context context, EnumSet<LocationProviderName> allowedProviders, BrazeConfigurationProvider appConfigurationProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
        Intrinsics.checkNotNullParameter(appConfigurationProvider, "appConfigurationProvider");
        this.context = context;
        this.appConfigurationProvider = appConfigurationProvider;
        this.allowedLocationProviders = allowedProviders;
        Object systemService = context.getSystemService("location");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.location.LocationManager");
        setLocationManager$android_sdk_location_release((LocationManager) systemService);
    }

    @Override // com.braze.location.IBrazeLocationApi
    public boolean requestSingleLocationUpdate(final Function1<? super IBrazeLocation, Unit> locationUpdateCallback) {
        final Location lastKnownGpsLocationIfValid;
        Intrinsics.checkNotNullParameter(locationUpdateCallback, "locationUpdateCallback");
        Context context = this.context;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
            context = null;
        }
        boolean zHasPermission = PermissionUtils.hasPermission(context, "android.permission.ACCESS_FINE_LOCATION");
        Context context2 = this.context;
        if (context2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
            context2 = null;
        }
        boolean zHasPermission2 = PermissionUtils.hasPermission(context2, "android.permission.ACCESS_COARSE_LOCATION");
        if (!zHasPermission2 && !zHasPermission) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeInternalLocationApi$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInternalLocationApi.requestSingleLocationUpdate$lambda$0();
                }
            }, 6, (Object) null);
            return false;
        }
        if (zHasPermission && (lastKnownGpsLocationIfValid = getLastKnownGpsLocationIfValid(getLocationManager$android_sdk_location_release())) != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeInternalLocationApi$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInternalLocationApi.requestSingleLocationUpdate$lambda$1(lastKnownGpsLocationIfValid);
                }
            }, 7, (Object) null);
            locationUpdateCallback.invoke(new BrazeLocation(lastKnownGpsLocationIfValid));
            return true;
        }
        LocationManager locationManager$android_sdk_location_release = getLocationManager$android_sdk_location_release();
        EnumSet<LocationProviderName> enumSet = this.allowedLocationProviders;
        if (enumSet == null) {
            Intrinsics.throwUninitializedPropertyAccessException("allowedLocationProviders");
            enumSet = null;
        }
        final String suitableLocationProvider = getSuitableLocationProvider(locationManager$android_sdk_location_release, enumSet, zHasPermission, zHasPermission2);
        if (suitableLocationProvider == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeInternalLocationApi$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInternalLocationApi.requestSingleLocationUpdate$lambda$2();
                }
            }, 7, (Object) null);
            return false;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeInternalLocationApi$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeInternalLocationApi.requestSingleLocationUpdate$lambda$3(suitableLocationProvider);
            }
        }, 7, (Object) null);
        try {
            if (Build.VERSION.SDK_INT >= 30) {
                getLocationManager$android_sdk_location_release().getCurrentLocation(suitableLocationProvider, null, ExecutorsKt.asExecutor(Dispatchers.getIO()), new Consumer() { // from class: com.braze.location.BrazeInternalLocationApi$$ExternalSyntheticLambda5
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        BrazeInternalLocationApi.requestSingleLocationUpdate$lambda$5(this.f$0, locationUpdateCallback, (Location) obj);
                    }
                });
            } else {
                requestSingleUpdateFromLocationManager(suitableLocationProvider);
            }
            return true;
        } catch (SecurityException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.location.BrazeInternalLocationApi$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInternalLocationApi.requestSingleLocationUpdate$lambda$6();
                }
            }, 4, (Object) null);
            return false;
        } catch (Exception e2) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e2, false, new Function0() { // from class: com.braze.location.BrazeInternalLocationApi$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInternalLocationApi.requestSingleLocationUpdate$lambda$7();
                }
            }, 4, (Object) null);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestSingleLocationUpdate$lambda$0() {
        return "Did not request single location update. Neither fine nor coarse location permissions found.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestSingleLocationUpdate$lambda$1(Location location) {
        return "Setting user location to last known GPS location: " + location;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestSingleLocationUpdate$lambda$2() {
        return "Could not request single location update. Could not find suitable location provider.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestSingleLocationUpdate$lambda$3(String str) {
        return "Requesting single location update with provider: " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestSingleLocationUpdate$lambda$5(BrazeInternalLocationApi brazeInternalLocationApi, Function1 function1, final Location location) {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInternalLocationApi, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeInternalLocationApi$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeInternalLocationApi.requestSingleLocationUpdate$lambda$5$lambda$4(location);
            }
        }, 7, (Object) null);
        if (location != null) {
            function1.invoke(new BrazeLocation(location));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestSingleLocationUpdate$lambda$5$lambda$4(Location location) {
        return "Location manager getCurrentLocation got location: " + location;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestSingleLocationUpdate$lambda$6() {
        return "Failed to request single location update due to security exception from insufficient permissions.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestSingleLocationUpdate$lambda$7() {
        return "Failed to request single location update due to exception.";
    }

    public final String getSuitableLocationProvider(LocationManager locationManager, EnumSet<LocationProviderName> allowedProviders, boolean hasFinePermission, boolean hasCoarsePermission) {
        Intrinsics.checkNotNullParameter(locationManager, "locationManager");
        Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
        if (hasFinePermission && allowedProviders.contains(LocationProviderName.GPS) && locationManager.isProviderEnabled("gps")) {
            return "gps";
        }
        if ((hasCoarsePermission || hasFinePermission) && allowedProviders.contains(LocationProviderName.NETWORK) && locationManager.isProviderEnabled("network")) {
            return "network";
        }
        if (hasFinePermission && allowedProviders.contains(LocationProviderName.PASSIVE) && locationManager.isProviderEnabled("passive")) {
            return "passive";
        }
        return null;
    }

    public final Location getLastKnownGpsLocationIfValid(LocationManager locationManager) {
        final Location lastKnownLocation;
        Intrinsics.checkNotNullParameter(locationManager, "locationManager");
        if (!locationManager.isProviderEnabled("gps") || (lastKnownLocation = locationManager.getLastKnownLocation("gps")) == null) {
            return null;
        }
        final long jNowInMilliseconds = DateTimeUtils.nowInMilliseconds() - lastKnownLocation.getTime();
        if (jNowInMilliseconds > 600000) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeInternalLocationApi$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInternalLocationApi.getLastKnownGpsLocationIfValid$lambda$8(jNowInMilliseconds);
                }
            }, 6, (Object) null);
            return null;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeInternalLocationApi$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeInternalLocationApi.getLastKnownGpsLocationIfValid$lambda$9(lastKnownLocation);
            }
        }, 7, (Object) null);
        return lastKnownLocation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getLastKnownGpsLocationIfValid$lambda$8(long j) {
        return "Last known GPS location is too old and will not be used. Age ms: " + j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getLastKnownGpsLocationIfValid$lambda$9(Location location) {
        return "Using last known GPS location: " + location;
    }

    private final void requestSingleUpdateFromLocationManager(String provider) {
        Intent intent = new Intent(Constants.BRAZE_ACTION_RECEIVER_SINGLE_LOCATION_UPDATE_INTENT_ACTION);
        Context context = this.context;
        Context context2 = null;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
            context = null;
        }
        Intent intent2 = intent.setClass(context, BrazeActionReceiver.class);
        Intrinsics.checkNotNullExpressionValue(intent2, "setClass(...)");
        int mutablePendingIntentFlags = 134217728 | IntentUtils.getMutablePendingIntentFlags();
        Context context3 = this.context;
        if (context3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        } else {
            context2 = context3;
        }
        getLocationManager$android_sdk_location_release().requestSingleUpdate(provider, PendingIntent.getBroadcast(context2, 0, intent2, mutablePendingIntentFlags));
    }
}

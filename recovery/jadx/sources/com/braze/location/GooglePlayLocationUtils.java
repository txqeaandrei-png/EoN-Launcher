package com.braze.location;

import android.app.PendingIntent;
import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import com.braze.managers.BrazeGeofenceManager;
import com.braze.managers.IBrazeGeofenceLocationUpdateListener;
import com.braze.models.BrazeGeofence;
import com.braze.models.outgoing.BrazeLocation;
import com.braze.support.BrazeLogger;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J^\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u001a\b\u0002\u0010\u000f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u000b\u0012\u0004\u0012\u00020\u00070\u00102\u001a\b\u0002\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0004\u0012\u00020\u00070\u0010H\u0007J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007J&\u0010\u0016\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0002J#\u0010\u0018\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bH\u0001¢\u0006\u0002\b\u001aJ\u0015\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\b\u001a\u00020\tH\u0001¢\u0006\u0002\b\u001dJ#\u0010\u001e\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0001¢\u0006\u0002\b\u001fJ\u001e\u0010 \u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/braze/location/GooglePlayLocationUtils;", "", "<init>", "()V", "REGISTERED_GEOFENCE_SHARED_PREFS_LOCATION", "", "registerGeofencesWithGooglePlayIfNecessary", "", "context", "Landroid/content/Context;", "desiredGeofencesToRegister", "", "Lcom/braze/models/BrazeGeofence;", "geofenceRequestIntent", "Landroid/app/PendingIntent;", "removalFunction", "Lkotlin/Function1;", "registerFunction", "requestSingleLocationUpdateFromGooglePlay", "resultListener", "Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;", "deleteRegisteredGeofenceCache", "registerGeofencesWithGeofencingClient", "newGeofencesToRegister", "removeGeofencesRegisteredWithGeofencingClient", "obsoleteGeofenceIds", "removeGeofencesRegisteredWithGeofencingClient$android_sdk_location_release", "getRegisteredGeofenceSharedPrefs", "Landroid/content/SharedPreferences;", "getRegisteredGeofenceSharedPrefs$android_sdk_location_release", "storeGeofencesToSharedPrefs", "storeGeofencesToSharedPrefs$android_sdk_location_release", "removeGeofencesFromSharedPrefs", "android-sdk-location_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class GooglePlayLocationUtils {
    public static final GooglePlayLocationUtils INSTANCE = new GooglePlayLocationUtils();
    private static final String REGISTERED_GEOFENCE_SHARED_PREFS_LOCATION = "com.appboy.support.geofences";

    private GooglePlayLocationUtils() {
    }

    public static /* synthetic */ void registerGeofencesWithGooglePlayIfNecessary$default(final Context context, List list, final PendingIntent pendingIntent, Function1 function1, Function1 function2, int i, Object obj) {
        if ((i & 8) != 0) {
            function1 = new Function1() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return GooglePlayLocationUtils.registerGeofencesWithGooglePlayIfNecessary$lambda$0(context, (List) obj2);
                }
            };
        }
        if ((i & 16) != 0) {
            function2 = new Function1() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return GooglePlayLocationUtils.registerGeofencesWithGooglePlayIfNecessary$lambda$1(context, pendingIntent, (List) obj2);
                }
            };
        }
        registerGeofencesWithGooglePlayIfNecessary(context, list, pendingIntent, function1, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit registerGeofencesWithGooglePlayIfNecessary$lambda$0(Context context, List it) {
        Intrinsics.checkNotNullParameter(it, "it");
        INSTANCE.removeGeofencesRegisteredWithGeofencingClient$android_sdk_location_release(context, it);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit registerGeofencesWithGooglePlayIfNecessary$lambda$1(Context context, PendingIntent pendingIntent, List it) {
        Intrinsics.checkNotNullParameter(it, "it");
        INSTANCE.registerGeofencesWithGeofencingClient(context, it, pendingIntent);
        return Unit.INSTANCE;
    }

    @JvmStatic
    public static final void registerGeofencesWithGooglePlayIfNecessary(Context context, final List<BrazeGeofence> desiredGeofencesToRegister, PendingIntent geofenceRequestIntent, Function1<? super List<String>, Unit> removalFunction, Function1<? super List<BrazeGeofence>, Unit> registerFunction) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(desiredGeofencesToRegister, "desiredGeofencesToRegister");
        Intrinsics.checkNotNullParameter(geofenceRequestIntent, "geofenceRequestIntent");
        Intrinsics.checkNotNullParameter(removalFunction, "removalFunction");
        Intrinsics.checkNotNullParameter(registerFunction, "registerFunction");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        GooglePlayLocationUtils googlePlayLocationUtils = INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) googlePlayLocationUtils, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GooglePlayLocationUtils.registerGeofencesWithGooglePlayIfNecessary$lambda$2(desiredGeofencesToRegister);
            }
        }, 6, (Object) null);
        try {
            List<BrazeGeofence> listRetrieveBrazeGeofencesFromLocalStorage = BrazeGeofenceManager.INSTANCE.retrieveBrazeGeofencesFromLocalStorage(googlePlayLocationUtils.getRegisteredGeofenceSharedPrefs$android_sdk_location_release(context));
            List<BrazeGeofence> list = listRetrieveBrazeGeofencesFromLocalStorage;
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list, 10)), 16));
            for (Object obj : list) {
                linkedHashMap.put(((BrazeGeofence) obj).getId(), obj);
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : listRetrieveBrazeGeofencesFromLocalStorage) {
                BrazeGeofence brazeGeofence = (BrazeGeofence) obj2;
                List<BrazeGeofence> list2 = desiredGeofencesToRegister;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator<T> it = list2.iterator();
                    do {
                        if (it.hasNext()) {
                        }
                    } while (!Intrinsics.areEqual(((BrazeGeofence) it.next()).getId(), brazeGeofence.getId()));
                }
                arrayList.add(obj2);
            }
            ArrayList arrayList2 = arrayList;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                arrayList3.add(((BrazeGeofence) it2.next()).getId());
            }
            final ArrayList arrayList4 = arrayList3;
            final ArrayList arrayList5 = new ArrayList();
            for (final BrazeGeofence brazeGeofence2 : desiredGeofencesToRegister) {
                BrazeGeofence brazeGeofence3 = (BrazeGeofence) linkedHashMap.get(brazeGeofence2.getId());
                if (brazeGeofence3 == null || !brazeGeofence2.equivalentServerData(brazeGeofence3)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda25
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return GooglePlayLocationUtils.registerGeofencesWithGooglePlayIfNecessary$lambda$7(brazeGeofence2);
                        }
                    }, 7, (Object) null);
                    arrayList5.add(brazeGeofence2);
                }
            }
            if (!arrayList4.isEmpty()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda26
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return GooglePlayLocationUtils.registerGeofencesWithGooglePlayIfNecessary$lambda$8(arrayList4);
                    }
                }, 7, (Object) null);
                removalFunction.invoke(arrayList4);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda27
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return GooglePlayLocationUtils.registerGeofencesWithGooglePlayIfNecessary$lambda$9();
                    }
                }, 7, (Object) null);
            }
            if (!arrayList5.isEmpty()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda28
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return GooglePlayLocationUtils.registerGeofencesWithGooglePlayIfNecessary$lambda$10(arrayList5);
                    }
                }, 7, (Object) null);
                registerFunction.invoke(arrayList5);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda29
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return GooglePlayLocationUtils.registerGeofencesWithGooglePlayIfNecessary$lambda$11();
                    }
                }, 7, (Object) null);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda30
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return GooglePlayLocationUtils.registerGeofencesWithGooglePlayIfNecessary$lambda$12();
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofencesWithGooglePlayIfNecessary$lambda$2(List list) {
        return "registerGeofencesWithGooglePlayIfNecessary called with " + list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofencesWithGooglePlayIfNecessary$lambda$7(BrazeGeofence brazeGeofence) {
        return "Geofence with id: " + brazeGeofence.getId() + " is new or has been updated.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofencesWithGooglePlayIfNecessary$lambda$8(List list) {
        return "Un-registering " + list + " obsolete geofences from Google Play Services.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofencesWithGooglePlayIfNecessary$lambda$9() {
        return "No obsolete geofences need to be unregistered from Google Play Services.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofencesWithGooglePlayIfNecessary$lambda$10(List list) {
        return "Registering " + list + " new geofences with Google Play Services.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofencesWithGooglePlayIfNecessary$lambda$11() {
        return "No new geofences need to be registered with Google Play Services.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofencesWithGooglePlayIfNecessary$lambda$12() {
        return "Exception while adding geofences.";
    }

    @JvmStatic
    public static final void requestSingleLocationUpdateFromGooglePlay(Context context, final IBrazeGeofenceLocationUpdateListener resultListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(resultListener, "resultListener");
        try {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return GooglePlayLocationUtils.requestSingleLocationUpdateFromGooglePlay$lambda$13();
                }
            }, 7, (Object) null);
            Task<Location> currentLocation = LocationServices.getFusedLocationProviderClient(context).getCurrentLocation(100, (CancellationToken) null);
            final Function1 function1 = new Function1() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return GooglePlayLocationUtils.requestSingleLocationUpdateFromGooglePlay$lambda$15(resultListener, (Location) obj);
                }
            };
            currentLocation.addOnSuccessListener(new OnSuccessListener() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda13
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    function1.invoke(obj);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda14
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    GooglePlayLocationUtils.requestSingleLocationUpdateFromGooglePlay$lambda$18(resultListener, exc);
                }
            });
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return GooglePlayLocationUtils.requestSingleLocationUpdateFromGooglePlay$lambda$19();
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestSingleLocationUpdateFromGooglePlay$lambda$13() {
        return "Requesting single location update from Google Play Services.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit requestSingleLocationUpdateFromGooglePlay$lambda$15(IBrazeGeofenceLocationUpdateListener iBrazeGeofenceLocationUpdateListener, Location location) {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GooglePlayLocationUtils.requestSingleLocationUpdateFromGooglePlay$lambda$15$lambda$14();
            }
        }, 6, (Object) null);
        Intrinsics.checkNotNull(location);
        iBrazeGeofenceLocationUpdateListener.onLocationRequestComplete(new BrazeLocation(location));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestSingleLocationUpdateFromGooglePlay$lambda$15$lambda$14() {
        return "Single location request from Google Play services was successful.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestSingleLocationUpdateFromGooglePlay$lambda$18(IBrazeGeofenceLocationUpdateListener iBrazeGeofenceLocationUpdateListener, Exception exc) {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) exc, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GooglePlayLocationUtils.requestSingleLocationUpdateFromGooglePlay$lambda$18$lambda$17();
            }
        }, 4, (Object) null);
        iBrazeGeofenceLocationUpdateListener.onLocationRequestComplete(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestSingleLocationUpdateFromGooglePlay$lambda$18$lambda$17() {
        return "Failed to get single location update from Google Play services.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestSingleLocationUpdateFromGooglePlay$lambda$19() {
        return "Failed to request location update due to exception.";
    }

    @JvmStatic
    public static final void deleteRegisteredGeofenceCache(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        GooglePlayLocationUtils googlePlayLocationUtils = INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) googlePlayLocationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GooglePlayLocationUtils.deleteRegisteredGeofenceCache$lambda$20();
            }
        }, 7, (Object) null);
        googlePlayLocationUtils.getRegisteredGeofenceSharedPrefs$android_sdk_location_release(context).edit().clear().apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String deleteRegisteredGeofenceCache$lambda$20() {
        return "Deleting registered geofence cache.";
    }

    private final void registerGeofencesWithGeofencingClient(final Context context, final List<BrazeGeofence> newGeofencesToRegister, PendingIntent geofenceRequestIntent) {
        List<BrazeGeofence> list = newGeofencesToRegister;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(GooglePlayLocationUtilsKt.toGeofence((BrazeGeofence) it.next()));
        }
        GeofencingRequest geofencingRequestBuild = new GeofencingRequest.Builder().addGeofences(arrayList).setInitialTrigger(0).build();
        Intrinsics.checkNotNullExpressionValue(geofencingRequestBuild, "build(...)");
        Task<Void> taskAddGeofences = LocationServices.getGeofencingClient(context).addGeofences(geofencingRequestBuild, geofenceRequestIntent);
        final Function1 function1 = new Function1() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GooglePlayLocationUtils.registerGeofencesWithGeofencingClient$lambda$23(context, newGeofencesToRegister, (Void) obj);
            }
        };
        taskAddGeofences.addOnSuccessListener(new OnSuccessListener() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda4
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                function1.invoke(obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda5
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                GooglePlayLocationUtils.registerGeofencesWithGeofencingClient$lambda$31(exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit registerGeofencesWithGeofencingClient$lambda$23(Context context, List list, Void r10) {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        GooglePlayLocationUtils googlePlayLocationUtils = INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) googlePlayLocationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GooglePlayLocationUtils.registerGeofencesWithGeofencingClient$lambda$23$lambda$22();
            }
        }, 7, (Object) null);
        googlePlayLocationUtils.storeGeofencesToSharedPrefs$android_sdk_location_release(context, list);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofencesWithGeofencingClient$lambda$23$lambda$22() {
        return "Geofences successfully registered with Google Play Services.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerGeofencesWithGeofencingClient$lambda$31(Exception exc) {
        if (exc instanceof ApiException) {
            final int statusCode = ((ApiException) exc).getStatusCode();
            if (statusCode != 0) {
                switch (statusCode) {
                    case 1000:
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda22
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return GooglePlayLocationUtils.registerGeofencesWithGeofencingClient$lambda$31$lambda$27(statusCode);
                            }
                        }, 6, (Object) null);
                        break;
                    case 1001:
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return GooglePlayLocationUtils.registerGeofencesWithGeofencingClient$lambda$31$lambda$25(statusCode);
                            }
                        }, 6, (Object) null);
                        break;
                    case 1002:
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda11
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return GooglePlayLocationUtils.registerGeofencesWithGeofencingClient$lambda$31$lambda$26(statusCode);
                            }
                        }, 6, (Object) null);
                        break;
                    default:
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda33
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return GooglePlayLocationUtils.registerGeofencesWithGeofencingClient$lambda$31$lambda$29(statusCode);
                            }
                        }, 6, (Object) null);
                        break;
                }
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda32
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return GooglePlayLocationUtils.registerGeofencesWithGeofencingClient$lambda$31$lambda$28();
                }
            }, 7, (Object) null);
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) exc, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda34
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GooglePlayLocationUtils.registerGeofencesWithGeofencingClient$lambda$31$lambda$30();
            }
        }, 4, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofencesWithGeofencingClient$lambda$31$lambda$25(int i) {
        return "Geofences not registered with Google Play Services due to GEOFENCE_TOO_MANY_GEOFENCES: " + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofencesWithGeofencingClient$lambda$31$lambda$26(int i) {
        return "Geofences not registered with Google Play Services due to GEOFENCE_TOO_MANY_PENDING_INTENTS: " + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofencesWithGeofencingClient$lambda$31$lambda$27(int i) {
        return "Geofences not registered with Google Play Services due to GEOFENCE_NOT_AVAILABLE: " + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofencesWithGeofencingClient$lambda$31$lambda$28() {
        return "Received Geofence registration success code in failure block with Google Play Services.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofencesWithGeofencingClient$lambda$31$lambda$29(int i) {
        return "Geofence pending result returned unknown status code: " + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofencesWithGeofencingClient$lambda$31$lambda$30() {
        return "Geofence exception encountered while adding geofences.";
    }

    public final void removeGeofencesRegisteredWithGeofencingClient$android_sdk_location_release(final Context context, final List<String> obsoleteGeofenceIds) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(obsoleteGeofenceIds, "obsoleteGeofenceIds");
        Task<Void> taskRemoveGeofences = LocationServices.getGeofencingClient(context).removeGeofences(obsoleteGeofenceIds);
        final Function1 function1 = new Function1() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GooglePlayLocationUtils.removeGeofencesRegisteredWithGeofencingClient$lambda$33(context, obsoleteGeofenceIds, (Void) obj);
            }
        };
        taskRemoveGeofences.addOnSuccessListener(new OnSuccessListener() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda20
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                function1.invoke(obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda21
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                GooglePlayLocationUtils.removeGeofencesRegisteredWithGeofencingClient$lambda$41(exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit removeGeofencesRegisteredWithGeofencingClient$lambda$33(Context context, List list, Void r10) {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        GooglePlayLocationUtils googlePlayLocationUtils = INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) googlePlayLocationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GooglePlayLocationUtils.removeGeofencesRegisteredWithGeofencingClient$lambda$33$lambda$32();
            }
        }, 7, (Object) null);
        googlePlayLocationUtils.removeGeofencesFromSharedPrefs(context, list);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeGeofencesRegisteredWithGeofencingClient$lambda$33$lambda$32() {
        return "Geofences successfully un-registered with Google Play Services.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeGeofencesRegisteredWithGeofencingClient$lambda$41(Exception exc) {
        if (exc instanceof ApiException) {
            final int statusCode = ((ApiException) exc).getStatusCode();
            if (statusCode != 0) {
                switch (statusCode) {
                    case 1000:
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda37
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return GooglePlayLocationUtils.removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$37(statusCode);
                            }
                        }, 6, (Object) null);
                        break;
                    case 1001:
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda35
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return GooglePlayLocationUtils.removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$35(statusCode);
                            }
                        }, 6, (Object) null);
                        break;
                    case 1002:
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda36
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return GooglePlayLocationUtils.removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$36(statusCode);
                            }
                        }, 6, (Object) null);
                        break;
                    default:
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda1
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return GooglePlayLocationUtils.removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$39(statusCode);
                            }
                        }, 6, (Object) null);
                        break;
                }
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda38
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return GooglePlayLocationUtils.removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$38();
                }
            }, 7, (Object) null);
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) exc, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GooglePlayLocationUtils.removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$40();
            }
        }, 4, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$35(int i) {
        return "Geofences cannot be un-registered with Google Play Services due to GEOFENCE_TOO_MANY_GEOFENCES: " + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$36(int i) {
        return "Geofences cannot be un-registered with Google Play Services due to GEOFENCE_TOO_MANY_PENDING_INTENTS: " + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$37(int i) {
        return "Geofences cannot be un-registered with Google Play Services due to GEOFENCE_NOT_AVAILABLE: " + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$38() {
        return "Received Geofence un-registration success code in failure block with Google Play Services.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$39(int i) {
        return "Geofence pending result returned unknown status code: " + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$40() {
        return "Geofence exception encountered while removing geofences.";
    }

    public final SharedPreferences getRegisteredGeofenceSharedPrefs$android_sdk_location_release(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences(REGISTERED_GEOFENCE_SHARED_PREFS_LOCATION, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        return sharedPreferences;
    }

    public final void storeGeofencesToSharedPrefs$android_sdk_location_release(Context context, List<BrazeGeofence> newGeofencesToRegister) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(newGeofencesToRegister, "newGeofencesToRegister");
        SharedPreferences.Editor editorEdit = getRegisteredGeofenceSharedPrefs$android_sdk_location_release(context).edit();
        for (final BrazeGeofence brazeGeofence : newGeofencesToRegister) {
            editorEdit.putString(brazeGeofence.getId(), brazeGeofence.getJsonKey().toString());
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda23
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return GooglePlayLocationUtils.storeGeofencesToSharedPrefs$lambda$42(brazeGeofence);
                }
            }, 6, (Object) null);
        }
        editorEdit.apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String storeGeofencesToSharedPrefs$lambda$42(BrazeGeofence brazeGeofence) {
        return "Geofence with id: " + brazeGeofence.getId() + " added to shared preferences.";
    }

    private final void removeGeofencesFromSharedPrefs(Context context, List<String> obsoleteGeofenceIds) {
        SharedPreferences.Editor editorEdit = getRegisteredGeofenceSharedPrefs$android_sdk_location_release(context).edit();
        for (final String str : obsoleteGeofenceIds) {
            editorEdit.remove(str);
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.location.GooglePlayLocationUtils$$ExternalSyntheticLambda31
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return GooglePlayLocationUtils.removeGeofencesFromSharedPrefs$lambda$43(str);
                }
            }, 6, (Object) null);
        }
        editorEdit.apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeGeofencesFromSharedPrefs$lambda$43(String str) {
        return "Geofence with id: " + str + " removed from shared preferences.";
    }
}

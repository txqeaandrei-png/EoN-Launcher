package com.braze.managers;

import android.app.PendingIntent;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.enums.GeofenceTransitionType;
import com.braze.location.IBrazeGeofenceApi;
import com.braze.location.IBrazeLocationApi;
import com.braze.models.BrazeGeofence;
import com.braze.models.IBrazeLocation;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.PermissionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\t\b\u0007\u0018\u0000 ~2\u00020\u00012\u00020\u0002:\u0001~B7\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0014H\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001c\u001a\u00020\u00112\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010!\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0007¢\u0006\u0004\b!\u0010\"J\u0019\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010\u001e\u001a\u00020\u0005H\u0007¢\u0006\u0004\b$\u0010%J\u001f\u0010'\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u001fH\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010+\u001a\u00020\u00112\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u0017\u0010+\u001a\u00020\u00112\u0006\u0010-\u001a\u00020\u0014H\u0016¢\u0006\u0004\b+\u0010\u0019J\u0017\u00100\u001a\u00020\u00112\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J\u001d\u00104\u001a\u00020\u00112\f\u00103\u001a\b\u0012\u0004\u0012\u00020#02H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0011H\u0016¢\u0006\u0004\b6\u0010\u0013J\u0019\u00107\u001a\u00020\u00112\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b7\u0010,J\u000f\u00108\u001a\u00020\u0011H\u0007¢\u0006\u0004\b8\u0010\u0013J%\u00109\u001a\u00020\u00112\f\u00103\u001a\b\u0012\u0004\u0012\u00020#022\u0006\u0010\u001b\u001a\u00020\u001aH\u0007¢\u0006\u0004\b9\u0010:R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010;\u001a\u0004\b<\u0010=R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010>R\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010?R \u0010A\u001a\u00020@8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\bA\u0010B\u0012\u0004\bE\u0010\u0013\u001a\u0004\bC\u0010DR \u0010G\u001a\u00020F8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\bG\u0010H\u0012\u0004\bK\u0010\u0013\u001a\u0004\bI\u0010JR\u001c\u0010M\u001a\n L*\u0004\u0018\u00010\u00030\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010NR\u0014\u0010P\u001a\u00020O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010QR \u0010S\u001a\u00020R8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\bS\u0010T\u0012\u0004\bW\u0010\u0013\u001a\u0004\bU\u0010VR&\u0010Y\u001a\b\u0012\u0004\u0012\u00020#0X8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\bY\u0010Z\u0012\u0004\b]\u0010\u0013\u001a\u0004\b[\u0010\\R\"\u0010^\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b^\u0010_\u0012\u0004\bb\u0010\u0013\u001a\u0004\b`\u0010aR(\u0010d\u001a\u00020c8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\bd\u0010e\u0012\u0004\bj\u0010\u0013\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR*\u0010k\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\bk\u0010l\u0012\u0004\bp\u0010\u0013\u001a\u0004\bm\u0010n\"\u0004\bo\u0010,R(\u0010q\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\bq\u0010r\u0012\u0004\bu\u0010\u0013\u001a\u0004\bq\u0010s\"\u0004\bt\u0010\u0019R(\u0010w\u001a\u00020v8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\bw\u0010x\u0012\u0004\b}\u0010\u0013\u001a\u0004\by\u0010z\"\u0004\b{\u0010|¨\u0006\u007f"}, d2 = {"Lcom/braze/managers/BrazeGeofenceManager;", "", "Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;", "Landroid/content/Context;", "context", "", "apiKey", "Lcom/braze/managers/c0;", "brazeManager", "Lcom/braze/configuration/BrazeConfigurationProvider;", "configurationProvider", "Lcom/braze/storage/e0;", "serverConfigStorageProvider", "Lcom/braze/events/e;", "internalIEventMessenger", "<init>", "(Landroid/content/Context;Ljava/lang/String;Lcom/braze/managers/c0;Lcom/braze/configuration/BrazeConfigurationProvider;Lcom/braze/storage/e0;Lcom/braze/events/e;)V", "", "initializeGeofences", "()V", "", "isGeofencesEnabledFromEnvironment", "(Landroid/content/Context;)Z", "reRegisterGeofences", "setUpGeofences", "(Z)V", "Landroid/app/PendingIntent;", "geofenceRequestIntent", "tearDownGeofences", "(Landroid/app/PendingIntent;)V", "geofenceId", "Lcom/braze/enums/GeofenceTransitionType;", "geofenceTransitionType", "analyticsEnabledForGeofenceId", "(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)Z", "Lcom/braze/models/BrazeGeofence;", "getBrazeGeofenceForGeofenceId", "(Ljava/lang/String;)Lcom/braze/models/BrazeGeofence;", "transitionType", "postGeofenceReport", "(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)V", "Lcom/braze/models/IBrazeLocation;", "location", "requestGeofenceRefresh", "(Lcom/braze/models/IBrazeLocation;)V", "ignoreRateLimit", "Lcom/braze/models/response/m;", "serverConfig", "configureFromServerConfig", "(Lcom/braze/models/response/m;)V", "", "geofenceList", "registerGeofences", "(Ljava/util/List;)V", "unregisterGeofences", "onLocationRequestComplete", "requestSingleLocationUpdateFromGooglePlay", "registerGeofencesWithGooglePlay", "(Ljava/util/List;Landroid/app/PendingIntent;)V", "Lcom/braze/managers/c0;", "getBrazeManager", "()Lcom/braze/managers/c0;", "Lcom/braze/configuration/BrazeConfigurationProvider;", "Lcom/braze/storage/e0;", "Lcom/braze/location/a;", "brazeGeofenceApi", "Lcom/braze/location/a;", "getBrazeGeofenceApi", "()Lcom/braze/location/a;", "getBrazeGeofenceApi$annotations", "Lcom/braze/location/b;", "brazeLocationApi", "Lcom/braze/location/b;", "getBrazeLocationApi", "()Lcom/braze/location/b;", "getBrazeLocationApi$annotations", "kotlin.jvm.PlatformType", "applicationContext", "Landroid/content/Context;", "Ljava/util/concurrent/locks/ReentrantLock;", "geofenceListLock", "Ljava/util/concurrent/locks/ReentrantLock;", "Landroid/content/SharedPreferences;", "geofenceStorageSharedPreferences", "Landroid/content/SharedPreferences;", "getGeofenceStorageSharedPreferences", "()Landroid/content/SharedPreferences;", "getGeofenceStorageSharedPreferences$annotations", "", "brazeGeofences", "Ljava/util/List;", "getBrazeGeofences", "()Ljava/util/List;", "getBrazeGeofences$annotations", "geofenceTransitionPendingIntent", "Landroid/app/PendingIntent;", "getGeofenceTransitionPendingIntent", "()Landroid/app/PendingIntent;", "getGeofenceTransitionPendingIntent$annotations", "Lcom/braze/managers/i;", "brazeGeofenceReEligibilityManager", "Lcom/braze/managers/i;", "getBrazeGeofenceReEligibilityManager", "()Lcom/braze/managers/i;", "setBrazeGeofenceReEligibilityManager", "(Lcom/braze/managers/i;)V", "getBrazeGeofenceReEligibilityManager$annotations", "geofenceRequestLocation", "Lcom/braze/models/IBrazeLocation;", "getGeofenceRequestLocation", "()Lcom/braze/models/IBrazeLocation;", "setGeofenceRequestLocation", "getGeofenceRequestLocation$annotations", "isGeofencesEnabled", "Z", "()Z", "setGeofencesEnabled", "isGeofencesEnabled$annotations", "", "maxNumToRegister", "I", "getMaxNumToRegister", "()I", "setMaxNumToRegister", "(I)V", "getMaxNumToRegister$annotations", "Companion", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeGeofenceManager implements IBrazeGeofenceLocationUpdateListener {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String GEOFENCE_STORAGE_SHARED_PREFS_LOCATION = "com.appboy.managers.geofences.storage";
    private final Context applicationContext;
    private final com.braze.location.a brazeGeofenceApi;
    private i brazeGeofenceReEligibilityManager;
    private final List<BrazeGeofence> brazeGeofences;
    private final com.braze.location.b brazeLocationApi;
    private final c0 brazeManager;
    private final BrazeConfigurationProvider configurationProvider;
    private final ReentrantLock geofenceListLock;
    private IBrazeLocation geofenceRequestLocation;
    private final SharedPreferences geofenceStorageSharedPreferences;
    private final PendingIntent geofenceTransitionPendingIntent;
    private boolean isGeofencesEnabled;
    private int maxNumToRegister;
    private final com.braze.storage.e0 serverConfigStorageProvider;

    /* JADX INFO: loaded from: classes.dex */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0007¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/braze/managers/BrazeGeofenceManager$Companion;", "", "<init>", "()V", "", "apiKey", "getGeofenceSharedPreferencesName", "(Ljava/lang/String;)Ljava/lang/String;", "Lcom/braze/configuration/BrazeConfigurationProvider;", "configurationProvider", "", "getGeofencesEnabledFromConfiguration", "(Lcom/braze/configuration/BrazeConfigurationProvider;)Z", "Lcom/braze/storage/e0;", "serverConfigStorageProvider", "getGeofencesEnabledFromServerConfig", "(Lcom/braze/storage/e0;)Z", "", "getMaxNumToRegister", "(Lcom/braze/storage/e0;)I", "Landroid/content/SharedPreferences;", "sharedPreferences", "", "Lcom/braze/models/BrazeGeofence;", "retrieveBrazeGeofencesFromLocalStorage", "(Landroid/content/SharedPreferences;)Ljava/util/List;", "GEOFENCE_STORAGE_SHARED_PREFS_LOCATION", "Ljava/lang/String;", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getGeofencesEnabledFromServerConfig$lambda$0() {
            return "Geofences enabled in server configuration.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getGeofencesEnabledFromServerConfig$lambda$1() {
            return "Geofences explicitly disabled via server configuration.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getGeofencesEnabledFromServerConfig$lambda$2() {
            return "Geofences implicitly disabled via server configuration.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String retrieveBrazeGeofencesFromLocalStorage$lambda$3() {
            return "Did not find stored geofences.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String retrieveBrazeGeofencesFromLocalStorage$lambda$4() {
            return "Failed to find stored geofence keys.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String retrieveBrazeGeofencesFromLocalStorage$lambda$5(String str) {
            return com.braze.a.a("Received null or blank serialized geofence string for geofence id ", str, " from shared preferences. Not parsing.");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String retrieveBrazeGeofencesFromLocalStorage$lambda$6(String str) {
            return com.braze.j.a("Encountered Json exception while parsing stored geofence: ", str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String retrieveBrazeGeofencesFromLocalStorage$lambda$7(String str) {
            return com.braze.j.a("Encountered unexpected exception while parsing stored geofence: ", str);
        }

        @JvmStatic
        public final String getGeofenceSharedPreferencesName(String apiKey) {
            Intrinsics.checkNotNullParameter(apiKey, "apiKey");
            return "com.appboy.managers.geofences.storage." + apiKey;
        }

        @JvmStatic
        public final boolean getGeofencesEnabledFromConfiguration(BrazeConfigurationProvider configurationProvider) {
            Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
            return configurationProvider.isGeofencesEnabled();
        }

        @JvmStatic
        public final boolean getGeofencesEnabledFromServerConfig(com.braze.storage.e0 serverConfigStorageProvider) {
            Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
            if (!serverConfigStorageProvider.I()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeGeofenceManager.Companion.getGeofencesEnabledFromServerConfig$lambda$2();
                    }
                }, 6, (Object) null);
                return false;
            }
            if (serverConfigStorageProvider.H()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeGeofenceManager.Companion.getGeofencesEnabledFromServerConfig$lambda$0();
                    }
                }, 6, (Object) null);
                return true;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.Companion.getGeofencesEnabledFromServerConfig$lambda$1();
                }
            }, 6, (Object) null);
            return false;
        }

        @JvmStatic
        public final int getMaxNumToRegister(com.braze.storage.e0 serverConfigStorageProvider) {
            Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
            if (serverConfigStorageProvider.q() > 0) {
                return serverConfigStorageProvider.q();
            }
            return 20;
        }

        @JvmStatic
        public final List<BrazeGeofence> retrieveBrazeGeofencesFromLocalStorage(SharedPreferences sharedPreferences) {
            Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
            ArrayList arrayList = new ArrayList();
            Map<String, ?> all = sharedPreferences.getAll();
            if (all == null || all.isEmpty()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeGeofenceManager.Companion.retrieveBrazeGeofencesFromLocalStorage$lambda$3();
                    }
                }, 7, (Object) null);
                return arrayList;
            }
            Set<String> setKeySet = all.keySet();
            if (setKeySet.isEmpty()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeGeofenceManager.Companion.retrieveBrazeGeofencesFromLocalStorage$lambda$4();
                    }
                }, 6, (Object) null);
                return arrayList;
            }
            for (final String str : setKeySet) {
                final String string = sharedPreferences.getString(str, null);
                if (string != null) {
                    try {
                        if (!StringsKt.isBlank(string)) {
                            arrayList.add(new BrazeGeofence(new JSONObject(string)));
                        }
                    } catch (JSONException e) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return BrazeGeofenceManager.Companion.retrieveBrazeGeofencesFromLocalStorage$lambda$6(string);
                            }
                        }, 4, (Object) null);
                        Unit unit = Unit.INSTANCE;
                    } catch (Exception e2) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e2, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return BrazeGeofenceManager.Companion.retrieveBrazeGeofencesFromLocalStorage$lambda$7(string);
                            }
                        }, 4, (Object) null);
                        Unit unit2 = Unit.INSTANCE;
                    }
                }
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeGeofenceManager.Companion.retrieveBrazeGeofencesFromLocalStorage$lambda$5(str);
                    }
                }, 6, (Object) null);
            }
            return arrayList;
        }

        private Companion() {
        }
    }

    public BrazeGeofenceManager(Context context, String apiKey, c0 brazeManager, BrazeConfigurationProvider configurationProvider, com.braze.storage.e0 serverConfigStorageProvider, com.braze.events.e internalIEventMessenger) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(internalIEventMessenger, "internalIEventMessenger");
        this.brazeManager = brazeManager;
        this.configurationProvider = configurationProvider;
        this.serverConfigStorageProvider = serverConfigStorageProvider;
        com.braze.location.a aVar = new com.braze.location.a();
        this.brazeGeofenceApi = aVar;
        this.brazeLocationApi = new com.braze.location.b(context, k.d.a(configurationProvider), configurationProvider);
        this.applicationContext = context.getApplicationContext();
        this.geofenceListLock = new ReentrantLock();
        Companion companion = INSTANCE;
        boolean z = false;
        SharedPreferences sharedPreferences = context.getSharedPreferences(companion.getGeofenceSharedPreferencesName(apiKey), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.geofenceStorageSharedPreferences = sharedPreferences;
        this.brazeGeofences = CollectionsKt.toMutableList((Collection) companion.retrieveBrazeGeofencesFromLocalStorage(sharedPreferences));
        Intrinsics.checkNotNullParameter(context, "context");
        IBrazeGeofenceApi iBrazeGeofenceApi = aVar.a;
        this.geofenceTransitionPendingIntent = iBrazeGeofenceApi != null ? iBrazeGeofenceApi.getGeofenceTransitionPendingIntent(context) : null;
        this.brazeGeofenceReEligibilityManager = new i(context, apiKey, serverConfigStorageProvider, internalIEventMessenger);
        if (companion.getGeofencesEnabledFromServerConfig(serverConfigStorageProvider) && isGeofencesEnabledFromEnvironment(context) && aVar.a != null) {
            z = true;
        }
        this.isGeofencesEnabled = z;
        this.maxNumToRegister = companion.getMaxNumToRegister(serverConfigStorageProvider);
        if (aVar.a == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager._init_$lambda$0();
                }
            }, 6, (Object) null);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeGeofenceManager._init_$lambda$1();
            }
        }, 6, (Object) null);
        setUpGeofences(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$0() {
        return "***Geofence API not found. Please include the android-sdk-location module***";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$1() {
        return "Calling setUpGeofences on geofence manager init";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String configureFromServerConfig$lambda$27(boolean z) {
        return "Geofences enabled server config value " + z + " received.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String configureFromServerConfig$lambda$28(BrazeGeofenceManager brazeGeofenceManager) {
        return "Geofences enabled status newly set to " + brazeGeofenceManager.isGeofencesEnabled + " during server config update.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String configureFromServerConfig$lambda$29(boolean z) {
        return "Geofences enabled status of `" + z + "` was unchanged during server config update.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String configureFromServerConfig$lambda$30(BrazeGeofenceManager brazeGeofenceManager) {
        return "Max number to register newly set to " + brazeGeofenceManager.maxNumToRegister + " via server config.";
    }

    public static /* synthetic */ void getBrazeGeofenceApi$annotations() {
    }

    public static /* synthetic */ void getBrazeGeofenceReEligibilityManager$annotations() {
    }

    public static /* synthetic */ void getBrazeGeofences$annotations() {
    }

    public static /* synthetic */ void getBrazeLocationApi$annotations() {
    }

    public static /* synthetic */ void getGeofenceRequestLocation$annotations() {
    }

    @JvmStatic
    public static final String getGeofenceSharedPreferencesName(String str) {
        return INSTANCE.getGeofenceSharedPreferencesName(str);
    }

    public static /* synthetic */ void getGeofenceStorageSharedPreferences$annotations() {
    }

    public static /* synthetic */ void getGeofenceTransitionPendingIntent$annotations() {
    }

    @JvmStatic
    public static final boolean getGeofencesEnabledFromConfiguration(BrazeConfigurationProvider brazeConfigurationProvider) {
        return INSTANCE.getGeofencesEnabledFromConfiguration(brazeConfigurationProvider);
    }

    @JvmStatic
    public static final boolean getGeofencesEnabledFromServerConfig(com.braze.storage.e0 e0Var) {
        return INSTANCE.getGeofencesEnabledFromServerConfig(e0Var);
    }

    @JvmStatic
    public static final int getMaxNumToRegister(com.braze.storage.e0 e0Var) {
        return INSTANCE.getMaxNumToRegister(e0Var);
    }

    public static /* synthetic */ void getMaxNumToRegister$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String initializeGeofences$lambda$2() {
        return "Request to set up geofences received.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String initializeGeofences$lambda$3() {
        return "Not automatically requesting Geofences on initialization due to configuration.";
    }

    public static /* synthetic */ void isGeofencesEnabled$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isGeofencesEnabledFromEnvironment$lambda$10() {
        return "Location permissions granted and Google Play Services available. Braze Geofencing enabled via config.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isGeofencesEnabledFromEnvironment$lambda$4() {
        return "Braze Geofences disabled or Braze location collection disabled in local configuration. Geofences not enabled.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isGeofencesEnabledFromEnvironment$lambda$5() {
        return "Fine grained location permissions not found. Geofences not enabled.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isGeofencesEnabledFromEnvironment$lambda$6() {
        return "Background location access permission not found. Geofences not enabled.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isGeofencesEnabledFromEnvironment$lambda$7() {
        return "Google Play Services not available. Geofences not enabled.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isGeofencesEnabledFromEnvironment$lambda$8() {
        return "Braze Geofence API is not available";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isGeofencesEnabledFromEnvironment$lambda$9() {
        return "Google Play Services Location API not found. Geofences not enabled.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onLocationRequestComplete$lambda$40(IBrazeLocation iBrazeLocation) {
        return "Single location request was successful, requesting Geofence refresh. Location:\n " + iBrazeLocation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onLocationRequestComplete$lambda$41() {
        return "Single location request was unsuccessful, not storing last updated time.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String postGeofenceReport$lambda$22() {
        return "Braze geofences not enabled. Not posting geofence report.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String postGeofenceReport$lambda$23(String str, GeofenceTransitionType geofenceTransitionType) {
        return "Failed to record geofence " + str + " transition with transition type " + geofenceTransitionType + '.';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofences$lambda$31() {
        return "Braze geofences not enabled. Not adding new geofences to local storage.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofences$lambda$37$lambda$33(List list) {
        return "Received new geofence list of size: " + list.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofences$lambda$37$lambda$34(BrazeGeofenceManager brazeGeofenceManager) {
        return "Reached maximum number of new geofences: " + brazeGeofenceManager.maxNumToRegister;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofences$lambda$37$lambda$35(BrazeGeofence brazeGeofence) {
        return "Adding new geofence to local storage: " + brazeGeofence;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofences$lambda$37$lambda$36(BrazeGeofenceManager brazeGeofenceManager) {
        return "Added " + brazeGeofenceManager.brazeGeofences.size() + " new geofences to local storage.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestGeofenceRefresh$lambda$24() {
        return "Braze geofences not enabled. Not requesting geofences.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestGeofenceRefresh$lambda$26() {
        return "Braze geofences not enabled. Not requesting geofences.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit requestSingleLocationUpdateFromGooglePlay$lambda$42(BrazeGeofenceManager brazeGeofenceManager, IBrazeLocation location) {
        Intrinsics.checkNotNullParameter(location, "location");
        brazeGeofenceManager.onLocationRequestComplete(location);
        return Unit.INSTANCE;
    }

    @JvmStatic
    public static final List<BrazeGeofence> retrieveBrazeGeofencesFromLocalStorage(SharedPreferences sharedPreferences) {
        return INSTANCE.retrieveBrazeGeofencesFromLocalStorage(sharedPreferences);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setUpGeofences$lambda$11() {
        return "Braze geofences not enabled. Geofences not set up.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setUpGeofences$lambda$12(boolean z) {
        return "Setting up geofences in setUpGeofences with reRegisterGeofences: " + z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setUpGeofences$lambda$13() {
        return "Could not get pending intent to setup geofences";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String tearDownGeofences$lambda$15() {
        return "Tearing down geofences.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String tearDownGeofences$lambda$16() {
        return "Unregistering any Braze geofences from Google Play Services.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String tearDownGeofences$lambda$18$lambda$17() {
        return "Deleting locally stored geofences.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String unregisterGeofences$lambda$38() {
        return "Braze geofences not enabled. Not un-registering geofences.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String unregisterGeofences$lambda$39() {
        return "Tearing down all geofences.";
    }

    public final boolean analyticsEnabledForGeofenceId(String geofenceId, GeofenceTransitionType geofenceTransitionType) {
        Intrinsics.checkNotNullParameter(geofenceId, "geofenceId");
        Intrinsics.checkNotNullParameter(geofenceTransitionType, "geofenceTransitionType");
        ReentrantLock reentrantLock = this.geofenceListLock;
        reentrantLock.lock();
        try {
            BrazeGeofence brazeGeofenceForGeofenceId = getBrazeGeofenceForGeofenceId(geofenceId);
            if (brazeGeofenceForGeofenceId != null) {
                if (geofenceTransitionType == GeofenceTransitionType.ENTER) {
                    return brazeGeofenceForGeofenceId.getAnalyticsEnabledEnter();
                }
                if (geofenceTransitionType == GeofenceTransitionType.EXIT) {
                    return brazeGeofenceForGeofenceId.getAnalyticsEnabledExit();
                }
            }
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0031  */
    public void configureFromServerConfig(com.braze.models.response.m serverConfig) {
        final boolean z;
        Intrinsics.checkNotNullParameter(serverConfig, "serverConfig");
        final boolean z2 = serverConfig.i;
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeGeofenceManager.configureFromServerConfig$lambda$27(z2);
            }
        }, 7, (Object) null);
        if (z2) {
            Context applicationContext = this.applicationContext;
            Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
            if (!isGeofencesEnabledFromEnvironment(applicationContext) || this.brazeGeofenceApi.a == null) {
                z = false;
            } else {
                z = true;
            }
        } else {
            z = false;
        }
        if (z != this.isGeofencesEnabled) {
            this.isGeofencesEnabled = z;
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.configureFromServerConfig$lambda$28(this.f$0);
                }
            }, 6, (Object) null);
            if (this.isGeofencesEnabled) {
                setUpGeofences(false);
                if (this.configurationProvider.isAutomaticGeofenceRequestsEnabled()) {
                    requestGeofenceRefresh(true);
                }
            } else {
                tearDownGeofences(this.geofenceTransitionPendingIntent);
            }
        } else {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.configureFromServerConfig$lambda$29(z);
                }
            }, 7, (Object) null);
        }
        int i = serverConfig.g;
        if (i >= 0) {
            this.maxNumToRegister = i;
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.configureFromServerConfig$lambda$30(this.f$0);
                }
            }, 6, (Object) null);
        }
        this.brazeGeofenceReEligibilityManager.a(serverConfig);
    }

    public final com.braze.location.a getBrazeGeofenceApi() {
        return this.brazeGeofenceApi;
    }

    public final BrazeGeofence getBrazeGeofenceForGeofenceId(String geofenceId) {
        Object next;
        Intrinsics.checkNotNullParameter(geofenceId, "geofenceId");
        ReentrantLock reentrantLock = this.geofenceListLock;
        reentrantLock.lock();
        try {
            Iterator<T> it = this.brazeGeofences.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.areEqual(((BrazeGeofence) next).getId(), geofenceId));
            return (BrazeGeofence) next;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final i getBrazeGeofenceReEligibilityManager() {
        return this.brazeGeofenceReEligibilityManager;
    }

    public final List<BrazeGeofence> getBrazeGeofences() {
        return this.brazeGeofences;
    }

    public final com.braze.location.b getBrazeLocationApi() {
        return this.brazeLocationApi;
    }

    public final c0 getBrazeManager() {
        return this.brazeManager;
    }

    public final IBrazeLocation getGeofenceRequestLocation() {
        return this.geofenceRequestLocation;
    }

    public final SharedPreferences getGeofenceStorageSharedPreferences() {
        return this.geofenceStorageSharedPreferences;
    }

    public final PendingIntent getGeofenceTransitionPendingIntent() {
        return this.geofenceTransitionPendingIntent;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0031  */
    public final void initializeGeofences() {
        boolean z;
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda33
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeGeofenceManager.initializeGeofences$lambda$2();
            }
        }, 7, (Object) null);
        if (INSTANCE.getGeofencesEnabledFromServerConfig(this.serverConfigStorageProvider)) {
            Context applicationContext = this.applicationContext;
            Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
            if (!isGeofencesEnabledFromEnvironment(applicationContext) || this.brazeGeofenceApi.a == null) {
                z = false;
            } else {
                z = true;
            }
        } else {
            z = false;
        }
        this.isGeofencesEnabled = z;
        if (this.configurationProvider.isAutomaticGeofenceRequestsEnabled()) {
            requestGeofenceRefresh(true);
        } else {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda34
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.initializeGeofences$lambda$3();
                }
            }, 7, (Object) null);
        }
    }

    /* JADX INFO: renamed from: isGeofencesEnabled, reason: from getter */
    public final boolean getIsGeofencesEnabled() {
        return this.isGeofencesEnabled;
    }

    public final boolean isGeofencesEnabledFromEnvironment(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!INSTANCE.getGeofencesEnabledFromConfiguration(this.configurationProvider)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.isGeofencesEnabledFromEnvironment$lambda$4();
                }
            }, 7, (Object) null);
            return false;
        }
        if (!PermissionUtils.hasPermission(context, "android.permission.ACCESS_FINE_LOCATION")) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.isGeofencesEnabledFromEnvironment$lambda$5();
                }
            }, 6, (Object) null);
            return false;
        }
        if (Build.VERSION.SDK_INT >= 29 && !PermissionUtils.hasPermission(context, "android.permission.ACCESS_BACKGROUND_LOCATION")) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.isGeofencesEnabledFromEnvironment$lambda$6();
                }
            }, 6, (Object) null);
            return false;
        }
        if (!com.braze.support.k.a(context)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.isGeofencesEnabledFromEnvironment$lambda$7();
                }
            }, 7, (Object) null);
            return false;
        }
        if (this.brazeGeofenceApi.a == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.isGeofencesEnabledFromEnvironment$lambda$8();
                }
            }, 7, (Object) null);
            return false;
        }
        try {
            Class.forName("com.google.android.gms.location.LocationServices", false, BrazeGeofenceManager.class.getClassLoader());
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.isGeofencesEnabledFromEnvironment$lambda$10();
                }
            }, 7, (Object) null);
            return true;
        } catch (Exception unused) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.isGeofencesEnabledFromEnvironment$lambda$9();
                }
            }, 7, (Object) null);
            return false;
        }
    }

    @Override // com.braze.managers.IBrazeGeofenceLocationUpdateListener
    public void onLocationRequestComplete(final IBrazeLocation location) {
        if (location == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda21
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.onLocationRequestComplete$lambda$41();
                }
            }, 7, (Object) null);
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeGeofenceManager.onLocationRequestComplete$lambda$40(location);
            }
        }, 7, (Object) null);
        requestGeofenceRefresh(location);
        this.brazeGeofenceReEligibilityManager.b(DateTimeUtils.nowInSeconds());
    }

    public void postGeofenceReport(final String geofenceId, final GeofenceTransitionType transitionType) {
        Intrinsics.checkNotNullParameter(geofenceId, "geofenceId");
        Intrinsics.checkNotNullParameter(transitionType, "transitionType");
        if (!this.isGeofencesEnabled) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda30
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.postGeofenceReport$lambda$22();
                }
            }, 6, (Object) null);
            return;
        }
        com.braze.models.outgoing.event.a aVar = com.braze.models.outgoing.event.b.g;
        String string = transitionType.toString();
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = string.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        com.braze.models.i iVarG = aVar.g(geofenceId, lowerCase);
        if (iVarG == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda31
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.postGeofenceReport$lambda$23(geofenceId, transitionType);
                }
            }, 6, (Object) null);
            return;
        }
        if (analyticsEnabledForGeofenceId(geofenceId, transitionType)) {
            ((m) this.brazeManager).a(iVarG);
        }
        BrazeGeofence brazeGeofenceForGeofenceId = getBrazeGeofenceForGeofenceId(geofenceId);
        if (brazeGeofenceForGeofenceId != null && this.brazeGeofenceReEligibilityManager.a(DateTimeUtils.nowInSeconds(), brazeGeofenceForGeofenceId, transitionType)) {
            ((m) this.brazeManager).h(iVarG);
        }
    }

    public void registerGeofences(List<BrazeGeofence> geofenceList) {
        BrazeGeofenceManager brazeGeofenceManager = this;
        Intrinsics.checkNotNullParameter(geofenceList, "geofenceList");
        final List<BrazeGeofence> mutableList = CollectionsKt.toMutableList((Collection) geofenceList);
        if (!brazeGeofenceManager.isGeofencesEnabled) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.registerGeofences$lambda$31();
                }
            }, 6, (Object) null);
            return;
        }
        if (brazeGeofenceManager.geofenceRequestLocation != null) {
            for (BrazeGeofence brazeGeofence : mutableList) {
                IBrazeLocation iBrazeLocation = brazeGeofenceManager.geofenceRequestLocation;
                if (iBrazeLocation != null) {
                    double latitude = iBrazeLocation.getLatitude();
                    double longitude = iBrazeLocation.getLongitude();
                    double latitude2 = brazeGeofence.getLatitude();
                    double longitude2 = brazeGeofence.getLongitude();
                    double radians = Math.toRadians(latitude2 - latitude);
                    double radians2 = Math.toRadians(longitude2 - longitude);
                    double d = 2;
                    brazeGeofence.setDistanceFromGeofenceRefresh(Math.asin(Math.sqrt((Math.cos(Math.toRadians(latitude2)) * Math.cos(Math.toRadians(latitude)) * Math.pow(Math.sin(radians2 / d), 2.0d)) + Math.pow(Math.sin(radians / d), 2.0d))) * 1.2742E7d);
                }
                brazeGeofenceManager = this;
            }
            CollectionsKt.sort(mutableList);
        }
        ReentrantLock reentrantLock = this.geofenceListLock;
        reentrantLock.lock();
        try {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.registerGeofences$lambda$37$lambda$33(mutableList);
                }
            }, 7, (Object) null);
            SharedPreferences.Editor editorEdit = this.geofenceStorageSharedPreferences.edit();
            editorEdit.clear();
            this.brazeGeofences.clear();
            int i = 0;
            for (final BrazeGeofence brazeGeofence2 : mutableList) {
                if (i == this.maxNumToRegister) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda16
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeGeofenceManager.registerGeofences$lambda$37$lambda$34(this.f$0);
                        }
                    }, 7, (Object) null);
                    break;
                }
                this.brazeGeofences.add(brazeGeofence2);
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda17
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeGeofenceManager.registerGeofences$lambda$37$lambda$35(brazeGeofence2);
                    }
                }, 7, (Object) null);
                editorEdit.putString(brazeGeofence2.getId(), brazeGeofence2.getJsonKey().toString());
                i++;
            }
            editorEdit.apply();
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.registerGeofences$lambda$37$lambda$36(this.f$0);
                }
            }, 7, (Object) null);
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            this.brazeGeofenceReEligibilityManager.a(mutableList);
            setUpGeofences(true);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void registerGeofencesWithGooglePlay(List<BrazeGeofence> geofenceList, PendingIntent geofenceRequestIntent) {
        Intrinsics.checkNotNullParameter(geofenceList, "geofenceList");
        Intrinsics.checkNotNullParameter(geofenceRequestIntent, "geofenceRequestIntent");
        com.braze.location.a aVar = this.brazeGeofenceApi;
        Context context = this.applicationContext;
        Intrinsics.checkNotNullExpressionValue(context, "applicationContext");
        aVar.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(geofenceList, "geofenceList");
        Intrinsics.checkNotNullParameter(geofenceRequestIntent, "geofenceRequestIntent");
        IBrazeGeofenceApi iBrazeGeofenceApi = aVar.a;
        if (iBrazeGeofenceApi != null) {
            iBrazeGeofenceApi.registerGeofences(context, geofenceList, geofenceRequestIntent);
        }
    }

    public void requestGeofenceRefresh(IBrazeLocation location) {
        Intrinsics.checkNotNullParameter(location, "location");
        if (!this.isGeofencesEnabled) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda32
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.requestGeofenceRefresh$lambda$24();
                }
            }, 7, (Object) null);
            return;
        }
        this.geofenceRequestLocation = location;
        if (location != null) {
            ((m) this.brazeManager).a(location);
        }
    }

    public final void requestSingleLocationUpdateFromGooglePlay() {
        com.braze.location.b bVar = this.brazeLocationApi;
        Function1<? super IBrazeLocation, Unit> locationUpdateCallback = new Function1() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BrazeGeofenceManager.requestSingleLocationUpdateFromGooglePlay$lambda$42(this.f$0, (IBrazeLocation) obj);
            }
        };
        bVar.getClass();
        Intrinsics.checkNotNullParameter(locationUpdateCallback, "locationUpdateCallback");
        IBrazeLocationApi iBrazeLocationApi = bVar.a;
        if (iBrazeLocationApi != null) {
            iBrazeLocationApi.requestSingleLocationUpdate(locationUpdateCallback);
        }
    }

    public final void setBrazeGeofenceReEligibilityManager(i iVar) {
        Intrinsics.checkNotNullParameter(iVar, "<set-?>");
        this.brazeGeofenceReEligibilityManager = iVar;
    }

    public final void setGeofenceRequestLocation(IBrazeLocation iBrazeLocation) {
        this.geofenceRequestLocation = iBrazeLocation;
    }

    public final void setGeofencesEnabled(boolean z) {
        this.isGeofencesEnabled = z;
    }

    public final void setMaxNumToRegister(int i) {
        this.maxNumToRegister = i;
    }

    public final void setUpGeofences(final boolean reRegisterGeofences) {
        if (!this.isGeofencesEnabled) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda25
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.setUpGeofences$lambda$11();
                }
            }, 7, (Object) null);
            return;
        }
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeGeofenceManager.setUpGeofences$lambda$12(reRegisterGeofences);
            }
        }, 6, (Object) null);
        PendingIntent pendingIntent = this.geofenceTransitionPendingIntent;
        if (pendingIntent == null) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda27
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.setUpGeofences$lambda$13();
                }
            }, 7, (Object) null);
            return;
        }
        if (reRegisterGeofences) {
            ReentrantLock reentrantLock = this.geofenceListLock;
            reentrantLock.lock();
            try {
                registerGeofencesWithGooglePlay(this.brazeGeofences, pendingIntent);
                Unit unit = Unit.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public final void tearDownGeofences(PendingIntent geofenceRequestIntent) {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeGeofenceManager.tearDownGeofences$lambda$15();
            }
        }, 7, (Object) null);
        if (geofenceRequestIntent != null) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda28
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.tearDownGeofences$lambda$16();
                }
            }, 7, (Object) null);
            com.braze.location.a aVar = this.brazeGeofenceApi;
            Context applicationContext = this.applicationContext;
            Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
            aVar.getClass();
            Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
            Intrinsics.checkNotNullParameter(geofenceRequestIntent, "intent");
            IBrazeGeofenceApi iBrazeGeofenceApi = aVar.a;
            if (iBrazeGeofenceApi != null) {
                iBrazeGeofenceApi.teardownGeofences(applicationContext, geofenceRequestIntent);
            }
        }
        ReentrantLock reentrantLock = this.geofenceListLock;
        reentrantLock.lock();
        try {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda29
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.tearDownGeofences$lambda$18$lambda$17();
                }
            }, 7, (Object) null);
            this.geofenceStorageSharedPreferences.edit().clear().apply();
            this.brazeGeofences.clear();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void unregisterGeofences() {
        if (!this.isGeofencesEnabled) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda23
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.unregisterGeofences$lambda$38();
                }
            }, 7, (Object) null);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda24
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.unregisterGeofences$lambda$39();
                }
            }, 7, (Object) null);
            tearDownGeofences(this.geofenceTransitionPendingIntent);
        }
    }

    public final int getMaxNumToRegister() {
        return this.maxNumToRegister;
    }

    public void requestGeofenceRefresh(boolean ignoreRateLimit) {
        if (!this.isGeofencesEnabled) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda19
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeGeofenceManager.requestGeofenceRefresh$lambda$26();
                }
            }, 7, (Object) null);
        } else if (this.brazeGeofenceReEligibilityManager.a(ignoreRateLimit, DateTimeUtils.nowInSeconds())) {
            requestSingleLocationUpdateFromGooglePlay();
        }
    }
}

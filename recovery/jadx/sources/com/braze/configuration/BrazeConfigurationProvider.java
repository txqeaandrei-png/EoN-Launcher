package com.braze.configuration;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.braze.enums.BrazeSdkMetadata;
import com.braze.enums.DeviceKey;
import com.braze.enums.LocationProviderName;
import com.braze.enums.SdkFlavor;
import com.braze.j;
import com.braze.support.BrazeLogger;
import com.braze.support.PackageUtils;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0017\u0018\u0000 \u007f2\u00020\u0001:\u0003\n\u0080\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J;\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f\"\u000e\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0010\u0010\u0011R \u0010\u0003\u001a\u00020\u00028\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0003\u0010\u0012\u0012\u0004\b\u0015\u0010\u0011\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\u001a\u001a\u00020\u00168F¢\u0006\f\u0012\u0004\b\u0019\u0010\u0011\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001d\u001a\u00020\u00168G¢\u0006\f\u0012\u0004\b\u001c\u0010\u0011\u001a\u0004\b\u001b\u0010\u0018R\u001a\u0010\"\u001a\u00020\u001e8BX\u0082\u0004¢\u0006\f\u0012\u0004\b!\u0010\u0011\u001a\u0004\b\u001f\u0010 R\u0011\u0010$\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b$\u0010%R\u0017\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001e0&8F¢\u0006\u0006\u001a\u0004\b'\u0010(R\u0011\u0010+\u001a\u00020\u001e8F¢\u0006\u0006\u001a\u0004\b*\u0010 R\u0011\u0010/\u001a\u00020,8F¢\u0006\u0006\u001a\u0004\b-\u0010.R\u0011\u00100\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b0\u0010%R\u0011\u00101\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b1\u0010%R\u0011\u00102\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b2\u0010%R\u0011\u00104\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\b3\u0010\u0018R\u0011\u00106\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\b5\u0010\u0018R\u0011\u0010:\u001a\u0002078F¢\u0006\u0006\u001a\u0004\b8\u00109R\u0011\u0010<\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\b;\u0010\u0018R\u0013\u0010>\u001a\u0004\u0018\u00010\u001e8F¢\u0006\u0006\u001a\u0004\b=\u0010 R\u0011\u0010@\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b?\u0010%R\u0011\u0010A\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\bA\u0010%R\u0011\u0010C\u001a\u00020\u001e8F¢\u0006\u0006\u001a\u0004\bB\u0010 R\u0011\u0010E\u001a\u00020\u001e8F¢\u0006\u0006\u001a\u0004\bD\u0010 R\u0011\u0010G\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\bF\u0010\u0018R\u0013\u0010K\u001a\u0004\u0018\u00010H8F¢\u0006\u0006\u001a\u0004\bI\u0010JR\u0011\u0010L\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\bL\u0010%R\u0013\u0010N\u001a\u0004\u0018\u00010\u001e8F¢\u0006\u0006\u001a\u0004\bM\u0010 R\u0011\u0010O\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\bO\u0010%R\u0011\u0010P\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\bP\u0010%R\u0011\u0010Q\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\bQ\u0010%R\u0013\u0010S\u001a\u0004\u0018\u00010\u001e8F¢\u0006\u0006\u001a\u0004\bR\u0010 R\u0017\u0010W\u001a\b\u0012\u0004\u0012\u00020T0\f8G¢\u0006\u0006\u001a\u0004\bU\u0010VR\u0017\u0010Y\u001a\b\u0012\u0004\u0012\u00020T0\f8F¢\u0006\u0006\u001a\u0004\bX\u0010VR\u0011\u0010Z\u001a\u00020#8G¢\u0006\u0006\u001a\u0004\bZ\u0010%R\u0011\u0010[\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b[\u0010%R\u0011\u0010\\\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b\\\u0010%R\u0011\u0010]\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b]\u0010%R\u0011\u0010^\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b^\u0010%R\u0011\u0010`\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b_\u0010%R\u0011\u0010a\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\ba\u0010%R\u0011\u0010b\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\bb\u0010%R\u0011\u0010d\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\bc\u0010\u0018R\u0013\u0010f\u001a\u0004\u0018\u00010\u001e8F¢\u0006\u0006\u001a\u0004\be\u0010 R\u0011\u0010h\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\bg\u0010\u0018R\u0017\u0010k\u001a\b\u0012\u0004\u0012\u00020i0\f8F¢\u0006\u0006\u001a\u0004\bj\u0010VR\u0011\u0010l\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\bl\u0010%R\u0011\u0010m\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\bm\u0010%R\u0011\u0010n\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\bn\u0010%R\u0011\u0010o\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\bo\u0010%R\u0011\u0010p\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\bp\u0010%R\u0017\u0010s\u001a\b\u0012\u0004\u0012\u00020q0\f8F¢\u0006\u0006\u001a\u0004\br\u0010VR\u0011\u0010t\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\bt\u0010%R\u0013\u0010v\u001a\u0004\u0018\u00010\u001e8F¢\u0006\u0006\u001a\u0004\bu\u0010 R\u0011\u0010x\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\bw\u0010%R\u0011\u0010z\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\by\u0010%R\u0011\u0010|\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b{\u0010%R\u0011\u0010~\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b}\u0010%¨\u0006\u0081\u0001"}, d2 = {"Lcom/braze/configuration/BrazeConfigurationProvider;", "Lcom/braze/configuration/CachedConfigurationProvider;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", "E", "Ljava/lang/Class;", "targetEnumClass", "Lcom/braze/configuration/b;", "configField", "Ljava/util/EnumSet;", "getGenericEnumSetFromStringSet", "(Ljava/lang/Class;Lcom/braze/configuration/b;)Ljava/util/EnumSet;", "", "clear", "()V", "Landroid/content/Context;", "getContext$android_sdk_base_release", "()Landroid/content/Context;", "getContext$android_sdk_base_release$annotations", "", "getVersionCode", "()I", "getVersionCode$annotations", "versionCode", "getDefaultNotificationAccentColor", "getDefaultNotificationAccentColor$annotations", "defaultNotificationAccentColor", "", "getServerTarget", "()Ljava/lang/String;", "getServerTarget$annotations", "serverTarget", "", "isEphemeralEventsEnabled", "()Z", "", "getEphemeralEventKeys", "()Ljava/util/Set;", "ephemeralEventKeys", "getBaseUrlForRequests", "baseUrlForRequests", "Lcom/braze/models/outgoing/b;", "getBrazeApiKey", "()Lcom/braze/models/outgoing/b;", "brazeApiKey", "isAdmMessagingRegistrationEnabled", "isLocationCollectionEnabled", "isGeofencesEnabled", "getSmallNotificationIconResourceId", "smallNotificationIconResourceId", "getLargeNotificationIconResourceId", "largeNotificationIconResourceId", "", "getTriggerActionMinimumTimeIntervalInSeconds", "()J", "triggerActionMinimumTimeIntervalInSeconds", "getSessionTimeoutSeconds", "sessionTimeoutSeconds", "getCustomEndpoint", "customEndpoint", "getDoesHandlePushDeepLinksAutomatically", "doesHandlePushDeepLinksAutomatically", "isNewsfeedVisualIndicatorOn", "getDefaultNotificationChannelName", "defaultNotificationChannelName", "getDefaultNotificationChannelDescription", "defaultNotificationChannelDescription", "getApplicationIconResourceId", "applicationIconResourceId", "Lcom/braze/enums/SdkFlavor;", "getSdkFlavor", "()Lcom/braze/enums/SdkFlavor;", "sdkFlavor", "isPushDeepLinkBackStackActivityEnabled", "getPushDeepLinkBackStackActivityClassName", "pushDeepLinkBackStackActivityClassName", "isSessionStartBasedTimeoutEnabled", "isFirebaseCloudMessagingRegistrationEnabled", "isContentCardsUnreadVisualIndicatorEnabled", "getFirebaseCloudMessagingSenderIdKey", "firebaseCloudMessagingSenderIdKey", "Lcom/braze/enums/DeviceKey;", "getDeviceObjectWhitelist", "()Ljava/util/EnumSet;", "deviceObjectWhitelist", "getDeviceObjectAllowlist", "deviceObjectAllowlist", "isDeviceObjectWhitelistEnabled", "isDeviceObjectAllowlistEnabled", "isInAppMessageAccessibilityExclusiveModeEnabled", "isPushWakeScreenForNotificationEnabled", "isPushNotificationHtmlRenderingEnabled", "getDoesPushStoryDismissOnClick", "doesPushStoryDismissOnClick", "isInAppMessageTestPushEagerDisplayEnabled", "isAutomaticGeofenceRequestsEnabled", "getLoggerInitialLogLevel", "loggerInitialLogLevel", "getCustomHtmlWebViewActivityClassName", "customHtmlWebViewActivityClassName", "getInAppMessageWebViewClientOnPageFinishedMaxWaitMs", "inAppMessageWebViewClientOnPageFinishedMaxWaitMs", "Lcom/braze/enums/LocationProviderName;", "getCustomLocationProviderNames", "customLocationProviderNames", "isFirebaseMessagingServiceOnNewTokenRegistrationEnabled", "isSdkAuthenticationEnabled", "isTouchModeRequiredForHtmlInAppMessages", "isHtmlInAppMessageApplyWindowInsetsEnabled", "isHtmlInAppMessageHtmlLinkTargetEnabled", "Lcom/braze/enums/BrazeSdkMetadata;", "getSdkMetadata", "sdkMetadata", "isFallbackFirebaseMessagingServiceEnabled", "getFallbackFirebaseMessagingServiceClasspath", "fallbackFirebaseMessagingServiceClasspath", "getShouldOptInWhenPushAuthorized", "shouldOptInWhenPushAuthorized", "getShouldUseWindowFlagSecureInActivities", "shouldUseWindowFlagSecureInActivities", "getShouldPersistWebViewWhenBackgroundingApp", "shouldPersistWebViewWhenBackgroundingApp", "getShouldAddStatusBarPaddingToInAppMessages", "shouldAddStatusBarPaddingToInAppMessages", "Companion", "com/braze/configuration/a", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class BrazeConfigurationProvider extends CachedConfigurationProvider {
    public static final a Companion = new a();
    public static final int DEFAULT_IN_APP_MESSAGE_WEBVIEW_ONPAGEFINISHED_WAIT_MS = (int) TimeUnit.SECONDS.toMillis(15);
    public static final String DEFAULT_NOTIFICATION_CHANNEL_DESCRIPTION_DEFAULT_VALUE = "";
    public static final String DEFAULT_NOTIFICATION_CHANNEL_NAME_DEFAULT_VALUE = "General";
    private static final int DEFAULT_SESSION_TIMEOUT_SECONDS = 10;
    private static final int DEFAULT_TRIGGER_MINIMUM_INTERVAL = 30;
    public static final int MAX_ALLOWED_EPHEMERAL_EVENTS = 12;
    private final Context context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BrazeConfigurationProvider(Context context) {
        super(context, false, null, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.context = applicationContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_applicationIconResourceId_$lambda$12(String str) {
        return j.a("Couldn't find application icon for package: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_brazeApiKey_$lambda$1() {
        return "Found an override api key. Using it to configure the Braze SDK";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_brazeApiKey_$lambda$10() {
        return "****************************************************";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_brazeApiKey_$lambda$2() {
        return "****************************************************";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_brazeApiKey_$lambda$3() {
        return "**                                                **";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_brazeApiKey_$lambda$4() {
        return "**                 !! WARNING !!                  **";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_brazeApiKey_$lambda$5() {
        return "**                                                **";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_brazeApiKey_$lambda$6() {
        return "**     No API key set in res/values/braze.xml     **";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_brazeApiKey_$lambda$7() {
        return "** No cached API Key found from Braze.configure   **";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_brazeApiKey_$lambda$8() {
        return "**          Braze functionality disabled          **";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_brazeApiKey_$lambda$9() {
        return "**                                                **";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_defaultNotificationAccentColor_$lambda$13() {
        return "Using default notification accent color found in resources";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_ephemeralEventKeys_$lambda$0() {
        return "More than 12 ephemeral/graylisted events detected. Only using first 12 events. Please truncate this list!";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_sdkFlavor_$lambda$14() {
        return "Exception while parsing stored SDK flavor. Returning null.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_versionCode_$lambda$11() {
        return "Unable to read the version code.";
    }

    public static /* synthetic */ void getContext$android_sdk_base_release$annotations() {
    }

    public static /* synthetic */ void getDefaultNotificationAccentColor$annotations() {
    }

    private final <E extends Enum<E>> EnumSet<E> getGenericEnumSetFromStringSet(Class<E> targetEnumClass, b configField) {
        String str = configField.a;
        if (getConfigurationCache().containsKey(str)) {
            Object obj = getConfigurationCache().get(str);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.util.EnumSet<E of com.braze.configuration.BrazeConfigurationProvider.getGenericEnumSetFromStringSet>");
            return (EnumSet) obj;
        }
        Set<String> stringSetValue = getStringSetValue(configField.a, new HashSet());
        if (stringSetValue == null) {
            stringSetValue = new HashSet<>();
        }
        EnumSet<E> enumSetA = com.braze.support.f.a(targetEnumClass, stringSetValue);
        getConfigurationCache().put(str, enumSetA);
        return enumSetA;
    }

    private final String getServerTarget() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        String stringValue = getStringValue("com_braze_server_target", "PROD");
        return stringValue == null ? "PROD" : stringValue;
    }

    private static /* synthetic */ void getServerTarget$annotations() {
    }

    public static /* synthetic */ void getVersionCode$annotations() {
    }

    public final void clear() {
        getConfigurationCache().clear();
        getRuntimeAppConfigurationProvider().getStorageMap().edit().clear().apply();
    }

    public final String getBaseUrlForRequests() {
        String serverTarget = getServerTarget();
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = serverTarget.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return Intrinsics.areEqual("STAGING", upperCase) ? "https://sondheim.braze.com/api/v3/" : "https://sdk.iad-01.braze.com/api/v3/";
    }

    public final com.braze.models.outgoing.b getBrazeApiKey() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        String stringValue = (String) getConfigurationCache().get("com_braze_api_key");
        if (stringValue == null) {
            stringValue = getRuntimeAppConfigurationProvider().getStringValue("com_braze_api_key", null);
            if (stringValue != null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfigurationProvider$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeConfigurationProvider._get_brazeApiKey_$lambda$1();
                    }
                }, 6, (Object) null);
            } else {
                stringValue = getStringValue("com_braze_api_key", null);
            }
            if (stringValue != null) {
                getConfigurationCache().put("com_braze_api_key", stringValue);
            }
        }
        if (stringValue != null) {
            return new com.braze.models.outgoing.b(stringValue);
        }
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.Priority priority = BrazeLogger.Priority.W;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfigurationProvider$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeConfigurationProvider._get_brazeApiKey_$lambda$2();
            }
        }, 6, (Object) null);
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfigurationProvider$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeConfigurationProvider._get_brazeApiKey_$lambda$3();
            }
        }, 6, (Object) null);
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfigurationProvider$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeConfigurationProvider._get_brazeApiKey_$lambda$4();
            }
        }, 6, (Object) null);
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfigurationProvider$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeConfigurationProvider._get_brazeApiKey_$lambda$5();
            }
        }, 6, (Object) null);
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfigurationProvider$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeConfigurationProvider._get_brazeApiKey_$lambda$6();
            }
        }, 6, (Object) null);
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfigurationProvider$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeConfigurationProvider._get_brazeApiKey_$lambda$7();
            }
        }, 6, (Object) null);
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfigurationProvider$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeConfigurationProvider._get_brazeApiKey_$lambda$8();
            }
        }, 6, (Object) null);
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfigurationProvider$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeConfigurationProvider._get_brazeApiKey_$lambda$9();
            }
        }, 6, (Object) null);
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfigurationProvider$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeConfigurationProvider._get_brazeApiKey_$lambda$10();
            }
        }, 6, (Object) null);
        throw new RuntimeException("Unable to read the Braze API key from the res/values/braze.xml file or from runtime configuration via BrazeConfig. See log for more details.");
    }

    /* JADX INFO: renamed from: getContext$android_sdk_base_release, reason: from getter */
    public final Context getContext() {
        return this.context;
    }

    public final String getCustomEndpoint() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getStringValue("com_braze_custom_endpoint", null);
    }

    public final String getCustomHtmlWebViewActivityClassName() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getStringValue("com_braze_custom_html_webview_activity_class_name", "");
    }

    public final EnumSet<LocationProviderName> getCustomLocationProviderNames() {
        return getGenericEnumSetFromStringSet(LocationProviderName.class, b.CUSTOM_LOCATION_PROVIDERS_LIST_KEY);
    }

    public final int getDefaultNotificationAccentColor() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        Integer colorValue = getColorValue("com_braze_default_notification_accent_color");
        if (colorValue == null) {
            return 0;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfigurationProvider$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeConfigurationProvider._get_defaultNotificationAccentColor_$lambda$13();
            }
        }, 7, (Object) null);
        return colorValue.intValue();
    }

    public final String getDefaultNotificationChannelDescription() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        String stringValue = getStringValue("com_braze_default_notification_channel_description", "");
        return stringValue == null ? "" : stringValue;
    }

    public final String getDefaultNotificationChannelName() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        String stringValue = getStringValue("com_braze_default_notification_channel_name", DEFAULT_NOTIFICATION_CHANNEL_NAME_DEFAULT_VALUE);
        return stringValue == null ? DEFAULT_NOTIFICATION_CHANNEL_NAME_DEFAULT_VALUE : stringValue;
    }

    public final EnumSet<DeviceKey> getDeviceObjectAllowlist() {
        return getGenericEnumSetFromStringSet(DeviceKey.class, b.DEVICE_OBJECT_ALLOWLIST_VALUE);
    }

    @Deprecated(message = "Use {@link #getDeviceObjectAllowList()}", replaceWith = @ReplaceWith(expression = "getDeviceObjectAllowlist", imports = {}))
    public final EnumSet<DeviceKey> getDeviceObjectWhitelist() {
        return getDeviceObjectAllowlist();
    }

    public final boolean getDoesHandlePushDeepLinksAutomatically() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_handle_push_deep_links_automatically", false);
    }

    public final boolean getDoesPushStoryDismissOnClick() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_does_push_story_dismiss_on_click", true);
    }

    public final Set<String> getEphemeralEventKeys() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        Set<String> stringSetValue = getStringSetValue("com_braze_ephemeral_events_keys", SetsKt.emptySet());
        if (stringSetValue == null) {
            stringSetValue = SetsKt.emptySet();
        }
        if (stringSetValue.size() > 12) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfigurationProvider$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeConfigurationProvider._get_ephemeralEventKeys_$lambda$0();
                }
            }, 6, (Object) null);
        }
        return CollectionsKt.toSet(CollectionsKt.take(stringSetValue, 12));
    }

    public final String getFallbackFirebaseMessagingServiceClasspath() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getStringValue("com_braze_fallback_firebase_cloud_messaging_service_classpath", null);
    }

    public final String getFirebaseCloudMessagingSenderIdKey() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getStringValue("com_braze_firebase_cloud_messaging_sender_id", null);
    }

    public final int getInAppMessageWebViewClientOnPageFinishedMaxWaitMs() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getIntValue("com_braze_in_app_message_webview_client_max_onpagefinished_wait_ms", DEFAULT_IN_APP_MESSAGE_WEBVIEW_ONPAGEFINISHED_WAIT_MS);
    }

    public final int getLargeNotificationIconResourceId() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getDrawableValue("com_braze_push_large_notification_icon", 0);
    }

    public final int getLoggerInitialLogLevel() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getIntValue("com_braze_logger_initial_log_level", 4);
    }

    public final String getPushDeepLinkBackStackActivityClassName() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getStringValue("com_braze_push_deep_link_back_stack_activity_class_name", "");
    }

    public final SdkFlavor getSdkFlavor() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        String stringValue = getStringValue("com_braze_sdk_flavor", null);
        if (stringValue == null || StringsKt.isBlank(stringValue)) {
            return null;
        }
        try {
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = stringValue.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            return SdkFlavor.valueOf(upperCase);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.configuration.BrazeConfigurationProvider$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeConfigurationProvider._get_sdkFlavor_$lambda$14();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    public final EnumSet<BrazeSdkMetadata> getSdkMetadata() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        d dVar = d.STRING_ARRAY;
        Object resourceConfigurationValue = getResourceConfigurationValue(dVar, "com_braze_internal_sdk_metadata", new HashSet());
        Intrinsics.checkNotNull(resourceConfigurationValue, "null cannot be cast to non-null type kotlin.collections.MutableSet<kotlin.String>");
        Set<String> setAsMutableSet = TypeIntrinsics.asMutableSet(resourceConfigurationValue);
        Object resourceConfigurationValue2 = getResourceConfigurationValue(dVar, "com_braze_sdk_metadata", new HashSet());
        Intrinsics.checkNotNull(resourceConfigurationValue2, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
        Object runtimeConfigurationValue = getRuntimeConfigurationValue(dVar, "com_braze_sdk_metadata", new HashSet());
        Intrinsics.checkNotNull(runtimeConfigurationValue, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
        setAsMutableSet.addAll((Set) resourceConfigurationValue2);
        setAsMutableSet.addAll((Set) runtimeConfigurationValue);
        EnumSet<BrazeSdkMetadata> enumSetNoneOf = EnumSet.noneOf(BrazeSdkMetadata.class);
        for (String str : setAsMutableSet) {
            try {
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String upperCase = str.toUpperCase(US);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                BrazeSdkMetadata[] brazeSdkMetadataArrValues = BrazeSdkMetadata.values();
                int length = brazeSdkMetadataArrValues.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        throw new NoSuchElementException("Array contains no element matching the predicate.");
                    }
                    BrazeSdkMetadata brazeSdkMetadata = brazeSdkMetadataArrValues[i];
                    if (Intrinsics.areEqual(brazeSdkMetadata.name(), upperCase)) {
                        enumSetNoneOf.add(brazeSdkMetadata);
                        break;
                    }
                    i++;
                }
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) com.braze.support.f.a, BrazeLogger.Priority.E, (Throwable) e, false, (Function0) new com.braze.support.e(str), 4, (Object) null);
            }
        }
        Intrinsics.checkNotNull(enumSetNoneOf);
        return enumSetNoneOf;
    }

    public final int getSessionTimeoutSeconds() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getIntValue("com_braze_session_timeout", 10);
    }

    public final boolean getShouldAddStatusBarPaddingToInAppMessages() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_in_app_message_add_status_bar_padding", false);
    }

    public final boolean getShouldOptInWhenPushAuthorized() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_optin_when_push_authorized", true);
    }

    public final boolean getShouldPersistWebViewWhenBackgroundingApp() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_persist_webview_when_backgrounding_app", true);
    }

    public final boolean getShouldUseWindowFlagSecureInActivities() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_use_activity_window_flag_secure", false);
    }

    public final int getSmallNotificationIconResourceId() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getDrawableValue("com_braze_push_small_notification_icon", 0);
    }

    public final long getTriggerActionMinimumTimeIntervalInSeconds() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getIntValue("com_braze_trigger_action_minimum_time_interval_seconds", 30);
    }

    public final boolean isAdmMessagingRegistrationEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_push_adm_messaging_registration_enabled", false);
    }

    public final boolean isAutomaticGeofenceRequestsEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_automatic_geofence_requests_enabled", true);
    }

    public final boolean isContentCardsUnreadVisualIndicatorEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_content_cards_unread_visual_indicator_enabled", true);
    }

    public final boolean isDeviceObjectAllowlistEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_device_object_whitelisting_enabled", false);
    }

    @Deprecated(message = "Use {@link #getIsDeviceObjectAllowlistEnabled()}", replaceWith = @ReplaceWith(expression = "isDeviceObjectAllowlistEnabled", imports = {}))
    public final boolean isDeviceObjectWhitelistEnabled() {
        return isDeviceObjectAllowlistEnabled();
    }

    public final boolean isEphemeralEventsEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_ephemeral_events_enabled", false);
    }

    public final boolean isFallbackFirebaseMessagingServiceEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_fallback_firebase_cloud_messaging_service_enabled", false);
    }

    public final boolean isFirebaseCloudMessagingRegistrationEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_firebase_cloud_messaging_registration_enabled", false);
    }

    public final boolean isFirebaseMessagingServiceOnNewTokenRegistrationEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_firebase_messaging_service_automatically_register_on_new_token", isFirebaseCloudMessagingRegistrationEnabled());
    }

    public final boolean isGeofencesEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_geofences_enabled", isLocationCollectionEnabled());
    }

    public final boolean isHtmlInAppMessageApplyWindowInsetsEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_html_in_app_message_apply_insets", false);
    }

    public final boolean isHtmlInAppMessageHtmlLinkTargetEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_html_in_app_message_enable_html_link_target", true);
    }

    public final boolean isInAppMessageAccessibilityExclusiveModeEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_device_in_app_message_accessibility_exclusive_mode_enabled", false);
    }

    public final boolean isInAppMessageTestPushEagerDisplayEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_in_app_message_push_test_eager_display_enabled", true);
    }

    public final boolean isLocationCollectionEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_enable_location_collection", false);
    }

    public final boolean isNewsfeedVisualIndicatorOn() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_newsfeed_unread_visual_indicator_on", true);
    }

    public final boolean isPushDeepLinkBackStackActivityEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_push_deep_link_back_stack_activity_enabled", true);
    }

    public final boolean isPushNotificationHtmlRenderingEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_push_notification_html_rendering_enabled", false);
    }

    public final boolean isPushWakeScreenForNotificationEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_push_wake_screen_for_notification_enabled", true);
    }

    public final boolean isSdkAuthenticationEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_sdk_authentication_enabled", false);
    }

    public final boolean isSessionStartBasedTimeoutEnabled() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_session_start_based_timeout_enabled", false);
    }

    public final boolean isTouchModeRequiredForHtmlInAppMessages() {
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        return getBooleanValue("com_braze_require_touch_mode_for_html_in_app_messages", true);
    }

    public final int getApplicationIconResourceId() {
        int i;
        if (getConfigurationCache().containsKey("application_icon")) {
            Object obj = getConfigurationCache().get("application_icon");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
            return ((Integer) obj).intValue();
        }
        final String packageName = this.context.getPackageName();
        try {
            ApplicationInfo applicationInfo = Build.VERSION.SDK_INT >= 33 ? this.context.getPackageManager().getApplicationInfo(packageName, PackageManager.ApplicationInfoFlags.of(0L)) : this.context.getPackageManager().getApplicationInfo(packageName, 0);
            Intrinsics.checkNotNull(applicationInfo);
            i = applicationInfo.icon;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.configuration.BrazeConfigurationProvider$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeConfigurationProvider._get_applicationIconResourceId_$lambda$12(packageName);
                }
            }, 4, (Object) null);
            i = 0;
        }
        getConfigurationCache().put("application_icon", Integer.valueOf(i));
        return i;
    }

    public final int getVersionCode() {
        int i;
        if (getConfigurationCache().containsKey("version_code")) {
            Object obj = getConfigurationCache().get("version_code");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
            return ((Integer) obj).intValue();
        }
        try {
            i = this.context.getPackageManager().getPackageInfo(PackageUtils.getResourcePackageName(this.context), 0).versionCode;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.configuration.BrazeConfigurationProvider$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeConfigurationProvider._get_versionCode_$lambda$11();
                }
            }, 4, (Object) null);
            i = -1;
        }
        getConfigurationCache().put("version_code", Integer.valueOf(i));
        return i;
    }
}

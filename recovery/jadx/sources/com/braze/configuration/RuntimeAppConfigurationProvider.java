package com.braze.configuration;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.BrazeInternal;
import com.braze.enums.BrazeSdkMetadata;
import com.braze.enums.DeviceKey;
import com.braze.enums.LocationProviderName;
import com.braze.support.BrazeLogger;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\"\n\u0002\u0010#\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 ?2\u00020\u0001:\u0001@B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ9\u0010\u0014\u001a\u00020\n\"\u0010\b\u0000\u0010\u0011*\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00102\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00122\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\n¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010\u001d\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u001d\u0010\u001eJ\u001d\u0010\u001f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\b¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010!\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\r¢\u0006\u0004\b!\u0010\"J/\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010$2\u0006\u0010\u0007\u001a\u00020\u00062\u0010\u0010\u001c\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010#¢\u0006\u0004\b%\u0010&J\u0015\u0010'\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b'\u0010(J%\u0010)\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0010H\u0007¢\u0006\u0004\b)\u0010*J\u001f\u0010+\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b+\u0010,J5\u0010.\u001a\u00020\n\"\u0010\b\u0000\u0010\u0011*\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00102\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010-\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012¢\u0006\u0004\b.\u0010/J\r\u00100\u001a\u00020\n¢\u0006\u0004\b0\u0010\u001bJ\r\u00101\u001a\u00020\n¢\u0006\u0004\b1\u0010\u001bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00102R\u0017\u00104\u001a\u0002038\u0006¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R$\u00109\u001a\u0004\u0018\u0001088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>¨\u0006A"}, d2 = {"Lcom/braze/configuration/RuntimeAppConfigurationProvider;", "", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", "key", "", "value", "", "putInt", "(Ljava/lang/String;Ljava/lang/Integer;)V", "", "putBoolean", "(Ljava/lang/String;Ljava/lang/Boolean;)V", "", "T", "Ljava/util/EnumSet;", "enumSet", "putEnumSet", "(Ljava/util/EnumSet;Ljava/lang/String;)V", "Lcom/braze/configuration/BrazeConfig;", "config", "setConfiguration", "(Lcom/braze/configuration/BrazeConfig;)V", "clearAllConfigurationValues", "()V", "defaultValue", "getStringValue", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "getIntValue", "(Ljava/lang/String;I)I", "getBooleanValue", "(Ljava/lang/String;Z)Z", "", "", "getStringSetValue", "(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;", "containsKey", "(Ljava/lang/String;)Z", "putEnumAsString", "(Ljava/lang/String;Ljava/lang/Enum;)V", "putString", "(Ljava/lang/String;Ljava/lang/String;)V", "updateValue", "updateEnumSetData", "(Ljava/lang/String;Ljava/util/EnumSet;)V", "startEdit", "applyEdit", "Landroid/content/Context;", "Landroid/content/SharedPreferences;", "storageMap", "Landroid/content/SharedPreferences;", "getStorageMap", "()Landroid/content/SharedPreferences;", "Landroid/content/SharedPreferences$Editor;", "editor", "Landroid/content/SharedPreferences$Editor;", "getEditor", "()Landroid/content/SharedPreferences$Editor;", "setEditor", "(Landroid/content/SharedPreferences$Editor;)V", "Companion", "com/braze/configuration/f", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RuntimeAppConfigurationProvider {
    public static final f Companion = new f();
    private static final String SHARED_PREFERENCES_NAME = "com.appboy.override.configuration.cache";
    private final Context context;
    private SharedPreferences.Editor editor;
    private final SharedPreferences storageMap;

    public RuntimeAppConfigurationProvider(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.storageMap = sharedPreferences;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String clearAllConfigurationValues$lambda$2() {
        return "Clearing Braze Override configuration cache";
    }

    private final void putBoolean(String key, Boolean value) {
        if (value != null) {
            boolean zBooleanValue = value.booleanValue();
            SharedPreferences.Editor editor = this.editor;
            if (editor != null) {
                editor.putBoolean(key, zBooleanValue);
            }
        }
    }

    private final <T extends Enum<T>> void putEnumSet(EnumSet<T> enumSet, String key) {
        if (enumSet == null) {
            return;
        }
        Set<String> setA = com.braze.support.f.a(enumSet);
        SharedPreferences.Editor editor = this.editor;
        if (editor != null) {
            editor.putStringSet(key, setA);
        }
    }

    private final void putInt(String key, Integer value) {
        if (value != null) {
            int iIntValue = value.intValue();
            SharedPreferences.Editor editor = this.editor;
            if (editor != null) {
                editor.putInt(key, iIntValue);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setConfiguration$lambda$0(BrazeConfig brazeConfig) {
        return "Setting Braze Override configuration with config: " + brazeConfig;
    }

    public final void applyEdit() {
        SharedPreferences.Editor editor = this.editor;
        if (editor != null) {
            editor.apply();
        }
    }

    public final void clearAllConfigurationValues() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.RuntimeAppConfigurationProvider$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RuntimeAppConfigurationProvider.clearAllConfigurationValues$lambda$2();
            }
        }, 7, (Object) null);
        this.storageMap.edit().clear().apply();
    }

    public final boolean containsKey(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.storageMap.contains(key);
    }

    public final boolean getBooleanValue(String key, boolean defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.storageMap.getBoolean(key, defaultValue);
    }

    public final SharedPreferences.Editor getEditor() {
        return this.editor;
    }

    public final int getIntValue(String key, int defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.storageMap.getInt(key, defaultValue);
    }

    public final SharedPreferences getStorageMap() {
        return this.storageMap;
    }

    public final Set<String> getStringSetValue(String key, Set<String> defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.storageMap.getStringSet(key, defaultValue);
    }

    public final String getStringValue(String key, String defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.storageMap.getString(key, defaultValue);
    }

    public final void putEnumAsString(String key, Enum<?> value) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (value != null) {
            putString(key, value.toString());
        }
    }

    public final void putString(String key, String value) {
        SharedPreferences.Editor editor;
        Intrinsics.checkNotNullParameter(key, "key");
        if (value == null || (editor = this.editor) == null) {
            return;
        }
        editor.putString(key, value);
    }

    public final void setConfiguration(final BrazeConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.RuntimeAppConfigurationProvider$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RuntimeAppConfigurationProvider.setConfiguration$lambda$0(config);
            }
        }, 6, (Object) null);
        startEdit();
        b bVar = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putString("com_braze_api_key", config.apiKey);
        b bVar2 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putString("com_braze_server_target", config.serverTarget);
        b bVar3 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putEnumAsString("com_braze_sdk_flavor", config.sdkFlavor);
        b bVar4 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_newsfeed_unread_visual_indicator_on", config.isNewsFeedVisualIndicatorOn);
        b bVar5 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putString("com_braze_custom_endpoint", config.customEndpoint);
        b bVar6 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putString("com_braze_push_small_notification_icon", config.smallNotificationIcon);
        b bVar7 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putString("com_braze_push_large_notification_icon", config.largeNotificationIcon);
        b bVar8 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putInt("com_braze_session_timeout", config.sessionTimeout);
        b bVar9 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putInt("com_braze_default_notification_accent_color", config.defaultNotificationAccentColor);
        b bVar10 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putInt("com_braze_trigger_action_minimum_time_interval_seconds", config.triggerActionMinimumTimeIntervalSeconds);
        b bVar11 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_push_adm_messaging_registration_enabled", config.isAdmMessagingRegistrationEnabled);
        b bVar12 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_handle_push_deep_links_automatically", config.willHandlePushDeepLinksAutomatically);
        b bVar13 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_enable_location_collection", config.isLocationCollectionEnabled);
        b bVar14 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putInt("com_braze_data_flush_interval_bad_network", config.badNetworkInterval);
        b bVar15 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putInt("com_braze_data_flush_interval_good_network", config.goodNetworkInterval);
        b bVar16 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putInt("com_braze_data_flush_interval_great_network", config.greatNetworkInterval);
        b bVar17 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putString("com_braze_default_notification_channel_name", config.defaultNotificationChannelName);
        b bVar18 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putString("com_braze_default_notification_channel_description", config.defaultNotificationChannelDescription);
        b bVar19 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_push_deep_link_back_stack_activity_enabled", config.isPushDeepLinkBackStackActivityEnabled);
        b bVar20 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putString("com_braze_push_deep_link_back_stack_activity_class_name", config.pushDeepLinkBackStackActivityClassName);
        b bVar21 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_session_start_based_timeout_enabled", config.isSessionStartBasedTimeoutEnabled);
        b bVar22 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_firebase_cloud_messaging_registration_enabled", config.isFirebaseCloudMessagingRegistrationEnabled);
        b bVar23 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putString("com_braze_firebase_cloud_messaging_sender_id", config.firebaseCloudMessagingSenderIdKey);
        b bVar24 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_content_cards_unread_visual_indicator_enabled", config.isContentCardsUnreadVisualIndicatorEnabled);
        b bVar25 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_device_object_whitelisting_enabled", config.isDeviceObjectAllowlistEnabled);
        b bVar26 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_device_in_app_message_accessibility_exclusive_mode_enabled", config.isInAppMessageAccessibilityExclusiveModeEnabled);
        b bVar27 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_push_wake_screen_for_notification_enabled", config.isPushWakeScreenForNotificationEnabled);
        b bVar28 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_push_notification_html_rendering_enabled", config.isPushHtmlRenderingEnabled);
        b bVar29 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_does_push_story_dismiss_on_click", config.doesPushStoryDismissOnClick);
        b bVar30 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_geofences_enabled", config.areGeofencesEnabled);
        b bVar31 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_in_app_message_push_test_eager_display_enabled", config.isInAppMessageTestPushEagerDisplayEnabled);
        b bVar32 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putString("com_braze_custom_html_webview_activity_class_name", config.customHtmlWebViewActivityClassName);
        b bVar33 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_automatic_geofence_requests_enabled", config.areAutomaticGeofenceRequestsEnabled);
        b bVar34 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putInt("com_braze_in_app_message_webview_client_max_onpagefinished_wait_ms", config.inAppMessageWebViewClientMaxOnPageFinishedWaitMs);
        b bVar35 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_firebase_messaging_service_automatically_register_on_new_token", config.isFirebaseMessagingServiceOnNewTokenRegistrationEnabled);
        b bVar36 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_sdk_authentication_enabled", config.isSdkAuthEnabled);
        b bVar37 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_require_touch_mode_for_html_in_app_messages", config.isTouchModeRequiredForHtmlInAppMessages);
        b bVar38 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_html_in_app_message_apply_insets", config.isHtmlInAppMessageApplyWindowInsetsEnabled);
        b bVar39 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_html_in_app_message_enable_html_link_target", config.isHtmlInAppMessageHtmlLinkTargetEnabled);
        EnumSet<DeviceKey> enumSet = config.deviceObjectAllowlist;
        b bVar40 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putEnumSet(enumSet, "com_braze_device_object_whitelist");
        EnumSet<LocationProviderName> enumSet2 = config.customLocationProviderNames;
        b bVar41 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putEnumSet(enumSet2, "com_braze_custom_location_providers_list");
        EnumSet<BrazeSdkMetadata> enumSet3 = config.brazeSdkMetadata;
        if (enumSet3 != null) {
            b bVar42 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
            updateEnumSetData("com_braze_sdk_metadata", enumSet3);
        }
        b bVar43 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_fallback_firebase_cloud_messaging_service_enabled", config.isFallbackFirebaseMessagingServiceEnabled);
        b bVar44 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putString("com_braze_fallback_firebase_cloud_messaging_service_classpath", config.fallbackFirebaseMessagingServiceClasspath);
        b bVar45 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_optin_when_push_authorized", config.shouldOptInWhenPushAuthorized);
        b bVar46 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_use_activity_window_flag_secure", config.shouldUseWindowFlagSecureInActivities);
        b bVar47 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_persist_webview_when_backgrounding_app", config.shouldPersistWebViewWhenBackgroundingApp);
        b bVar48 = b.DEVICE_OBJECT_ALLOWLIST_VALUE;
        putBoolean("com_braze_in_app_message_add_status_bar_padding", config.shouldAddStatusBarPaddingToInAppMessages);
        applyEdit();
        BrazeInternal.INSTANCE.getConfigurationProvider(this.context).resetCache$android_sdk_base_release();
    }

    public final void setEditor(SharedPreferences.Editor editor) {
        this.editor = editor;
    }

    public final void startEdit() {
        this.editor = this.storageMap.edit();
    }

    public final <T extends Enum<T>> void updateEnumSetData(String key, EnumSet<T> updateValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(updateValue, "updateValue");
        Set<String> stringSetValue = getStringSetValue(key, new HashSet());
        if (stringSetValue != null) {
            stringSetValue.addAll(com.braze.support.f.a(updateValue));
        }
        this.storageMap.edit().putStringSet(key, stringSetValue).apply();
    }
}

package com.braze.configuration;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v42 com.braze.configuration.b[], still in use, count: 1, list:
  (r0v42 com.braze.configuration.b[]) from 0x02a6: INVOKE (r0v42 com.braze.configuration.b[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    /* JADX INFO: Fake field, exist only in values array */
    EPHEMERAL_EVENTS_ENABLED("com_braze_ephemeral_events_enabled"),
    /* JADX INFO: Fake field, exist only in values array */
    EPHEMERAL_EVENTS_KEYS("com_braze_ephemeral_events_keys"),
    /* JADX INFO: Fake field, exist only in values array */
    API_KEY("com_braze_api_key"),
    /* JADX INFO: Fake field, exist only in values array */
    SERVER_TARGET_KEY("com_braze_server_target"),
    /* JADX INFO: Fake field, exist only in values array */
    ADM_MESSAGING_REGISTRATION_ENABLED_KEY("com_braze_push_adm_messaging_registration_enabled"),
    /* JADX INFO: Fake field, exist only in values array */
    SMALL_NOTIFICATION_ICON_KEY("com_braze_push_small_notification_icon"),
    /* JADX INFO: Fake field, exist only in values array */
    LARGE_NOTIFICATION_ICON_KEY("com_braze_push_large_notification_icon"),
    /* JADX INFO: Fake field, exist only in values array */
    SESSION_TIMEOUT_KEY("com_braze_session_timeout"),
    /* JADX INFO: Fake field, exist only in values array */
    ENABLE_LOCATION_COLLECTION_KEY("com_braze_enable_location_collection"),
    /* JADX INFO: Fake field, exist only in values array */
    DEFAULT_NOTIFICATION_ACCENT_COLOR_KEY("com_braze_default_notification_accent_color"),
    /* JADX INFO: Fake field, exist only in values array */
    TRIGGER_ACTION_MINIMUM_TIME_INTERVAL_KEY_SECONDS("com_braze_trigger_action_minimum_time_interval_seconds"),
    /* JADX INFO: Fake field, exist only in values array */
    HANDLE_PUSH_DEEP_LINKS_AUTOMATICALLY("com_braze_handle_push_deep_links_automatically"),
    /* JADX INFO: Fake field, exist only in values array */
    NEWSFEED_UNREAD_VISUAL_INDICATOR_ON("com_braze_newsfeed_unread_visual_indicator_on"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_sdk_flavor"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_custom_endpoint"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_default_notification_channel_name"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_default_notification_channel_description"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_push_deep_link_back_stack_activity_enabled"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_push_deep_link_back_stack_activity_class_name"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_session_start_based_timeout_enabled"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_firebase_cloud_messaging_registration_enabled"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_firebase_cloud_messaging_sender_id"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_content_cards_unread_visual_indicator_enabled"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_device_object_whitelisting_enabled"),
    DEVICE_OBJECT_ALLOWLIST_VALUE("com_braze_device_object_whitelist"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_device_in_app_message_accessibility_exclusive_mode_enabled"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_push_wake_screen_for_notification_enabled"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_push_notification_html_rendering_enabled"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_does_push_story_dismiss_on_click"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_geofences_enabled"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_in_app_message_push_test_eager_display_enabled"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_logger_initial_log_level"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_custom_html_webview_activity_class_name"),
    /* JADX INFO: Fake field, exist only in values array */
    GEOFENCES_AUTOMATIC_REQUESTS_ENABLED_KEY("com_braze_automatic_geofence_requests_enabled"),
    CUSTOM_LOCATION_PROVIDERS_LIST_KEY("com_braze_custom_location_providers_list"),
    /* JADX INFO: Fake field, exist only in values array */
    IN_APP_MESSAGE_WEBVIEW_CLIENT_MAX_ONPAGEFINISHED_WAIT_KEY("com_braze_in_app_message_webview_client_max_onpagefinished_wait_ms"),
    /* JADX INFO: Fake field, exist only in values array */
    FIREBASE_MESSAGING_SERVICE_AUTOMATICALLY_REGISTER_ON_NEW_TOKEN_KEY("com_braze_firebase_messaging_service_automatically_register_on_new_token"),
    /* JADX INFO: Fake field, exist only in values array */
    SDK_AUTH_ENABLED("com_braze_sdk_authentication_enabled"),
    /* JADX INFO: Fake field, exist only in values array */
    REQUIRE_TOUCH_MODE_FOR_HTML_IAMS_KEY("com_braze_require_touch_mode_for_html_in_app_messages"),
    /* JADX INFO: Fake field, exist only in values array */
    DATA_SYNC_BAD_NETWORK_INTERVAL_KEY("com_braze_data_flush_interval_bad_network"),
    /* JADX INFO: Fake field, exist only in values array */
    DATA_SYNC_GOOD_NETWORK_INTERVAL_KEY("com_braze_data_flush_interval_good_network"),
    /* JADX INFO: Fake field, exist only in values array */
    DATA_SYNC_GREAT_NETWORK_INTERVAL_KEY("com_braze_data_flush_interval_great_network"),
    /* JADX INFO: Fake field, exist only in values array */
    FALLBACK_FCM_SERVICE_ENABLED("com_braze_fallback_firebase_cloud_messaging_service_enabled"),
    /* JADX INFO: Fake field, exist only in values array */
    FALLBACK_FCM_SERVICE_CLASSPATH("com_braze_fallback_firebase_cloud_messaging_service_classpath"),
    /* JADX INFO: Fake field, exist only in values array */
    OPTIN_WHEN_PUSH_AUTHORIZED("com_braze_optin_when_push_authorized"),
    /* JADX INFO: Fake field, exist only in values array */
    PERSIST_IAM_WEBVIEW_WHEN_BACKGROUNDING_APP("com_braze_persist_webview_when_backgrounding_app"),
    /* JADX INFO: Fake field, exist only in values array */
    SDK_METADATA_INTERNAL_KEY("com_braze_internal_sdk_metadata"),
    /* JADX INFO: Fake field, exist only in values array */
    SDK_METADATA_PUBLIC_KEY("com_braze_sdk_metadata"),
    /* JADX INFO: Fake field, exist only in values array */
    HTML_IN_APP_MESSAGE_APPLY_WINDOW_INSETS("com_braze_html_in_app_message_apply_insets"),
    /* JADX INFO: Fake field, exist only in values array */
    HTML_IN_APP_MESSAGE_ENABLE_HTML_LINK_TARGET("com_braze_html_in_app_message_enable_html_link_target"),
    /* JADX INFO: Fake field, exist only in values array */
    USE_WINDOW_FLAG_SECURE_IN_ACTIVITIES("com_braze_use_activity_window_flag_secure"),
    /* JADX INFO: Fake field, exist only in values array */
    IN_APP_MESSAGE_ADD_STATUS_BAR_PADDING_KEY("com_braze_in_app_message_add_status_bar_padding");

    public final String a;

    static {
        EnumEntriesKt.enumEntries(bVarArr);
    }

    public b(String str) {
        super(str, i);
        this.a = str;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) d.clone();
    }
}

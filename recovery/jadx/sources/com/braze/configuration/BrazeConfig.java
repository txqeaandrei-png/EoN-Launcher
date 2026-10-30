package com.braze.configuration;

import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.braze.enums.BrazeSdkMetadata;
import com.braze.enums.DeviceKey;
import com.braze.enums.LocationProviderName;
import com.braze.enums.SdkFlavor;
import com.braze.models.FeatureFlag;
import com.braze.support.BrazeLogger;
import java.util.EnumSet;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.spongycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001:\u0001AB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010@\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010 \u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010!\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010\"\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010#\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010$\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010%\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010&\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010'\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010(\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010)\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010*\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010+\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010,\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010-\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010.\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0018\u0010/\u001a\n\u0012\u0004\u0012\u000201\u0018\u0001008\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u00102\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0018\u00103\u001a\n\u0012\u0004\u0012\u000204\u0018\u0001008\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u00105\u001a\n\u0012\u0004\u0012\u000206\u0018\u0001008\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u00107\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u00108\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u00109\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010:\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0012\u0010;\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010<\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010=\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010>\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010?\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001e¨\u0006B"}, d2 = {"Lcom/braze/configuration/BrazeConfig;", "", "builder", "Lcom/braze/configuration/BrazeConfig$Builder;", "<init>", "(Lcom/braze/configuration/BrazeConfig$Builder;)V", "apiKey", "", "serverTarget", "smallNotificationIcon", "largeNotificationIcon", "customEndpoint", "defaultNotificationChannelName", "defaultNotificationChannelDescription", "pushDeepLinkBackStackActivityClassName", "firebaseCloudMessagingSenderIdKey", "customHtmlWebViewActivityClassName", "sdkFlavor", "Lcom/braze/enums/SdkFlavor;", "sessionTimeout", "", "Ljava/lang/Integer;", "defaultNotificationAccentColor", "triggerActionMinimumTimeIntervalSeconds", "badNetworkInterval", "goodNetworkInterval", "greatNetworkInterval", "inAppMessageWebViewClientMaxOnPageFinishedWaitMs", "isAdmMessagingRegistrationEnabled", "", "Ljava/lang/Boolean;", "willHandlePushDeepLinksAutomatically", "isLocationCollectionEnabled", "isNewsFeedVisualIndicatorOn", "isPushDeepLinkBackStackActivityEnabled", "isSessionStartBasedTimeoutEnabled", "isFirebaseCloudMessagingRegistrationEnabled", "isContentCardsUnreadVisualIndicatorEnabled", "isInAppMessageAccessibilityExclusiveModeEnabled", "isPushWakeScreenForNotificationEnabled", "isPushHtmlRenderingEnabled", "areGeofencesEnabled", "isInAppMessageTestPushEagerDisplayEnabled", "areAutomaticGeofenceRequestsEnabled", "isFirebaseMessagingServiceOnNewTokenRegistrationEnabled", "isSdkAuthEnabled", "isTouchModeRequiredForHtmlInAppMessages", "deviceObjectAllowlist", "Ljava/util/EnumSet;", "Lcom/braze/enums/DeviceKey;", "isDeviceObjectAllowlistEnabled", "customLocationProviderNames", "Lcom/braze/enums/LocationProviderName;", "brazeSdkMetadata", "Lcom/braze/enums/BrazeSdkMetadata;", "isHtmlInAppMessageApplyWindowInsetsEnabled", "isHtmlInAppMessageHtmlLinkTargetEnabled", "doesPushStoryDismissOnClick", "isFallbackFirebaseMessagingServiceEnabled", "fallbackFirebaseMessagingServiceClasspath", "shouldOptInWhenPushAuthorized", "shouldUseWindowFlagSecureInActivities", "shouldPersistWebViewWhenBackgroundingApp", "shouldAddStatusBarPaddingToInAppMessages", "toString", "Builder", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeConfig {
    public final String apiKey;
    public final Boolean areAutomaticGeofenceRequestsEnabled;
    public final Boolean areGeofencesEnabled;
    public final Integer badNetworkInterval;
    public final EnumSet<BrazeSdkMetadata> brazeSdkMetadata;
    private final Builder builder;
    public final String customEndpoint;
    public final String customHtmlWebViewActivityClassName;
    public final EnumSet<LocationProviderName> customLocationProviderNames;
    public final Integer defaultNotificationAccentColor;
    public final String defaultNotificationChannelDescription;
    public final String defaultNotificationChannelName;
    public final EnumSet<DeviceKey> deviceObjectAllowlist;
    public final Boolean doesPushStoryDismissOnClick;
    public final String fallbackFirebaseMessagingServiceClasspath;
    public final String firebaseCloudMessagingSenderIdKey;
    public final Integer goodNetworkInterval;
    public final Integer greatNetworkInterval;
    public final Integer inAppMessageWebViewClientMaxOnPageFinishedWaitMs;
    public final Boolean isAdmMessagingRegistrationEnabled;
    public final Boolean isContentCardsUnreadVisualIndicatorEnabled;
    public final Boolean isDeviceObjectAllowlistEnabled;
    public final Boolean isFallbackFirebaseMessagingServiceEnabled;
    public final Boolean isFirebaseCloudMessagingRegistrationEnabled;
    public final Boolean isFirebaseMessagingServiceOnNewTokenRegistrationEnabled;
    public final Boolean isHtmlInAppMessageApplyWindowInsetsEnabled;
    public final Boolean isHtmlInAppMessageHtmlLinkTargetEnabled;
    public final Boolean isInAppMessageAccessibilityExclusiveModeEnabled;
    public final Boolean isInAppMessageTestPushEagerDisplayEnabled;
    public final Boolean isLocationCollectionEnabled;
    public final Boolean isNewsFeedVisualIndicatorOn;
    public final Boolean isPushDeepLinkBackStackActivityEnabled;
    public final Boolean isPushHtmlRenderingEnabled;
    public final Boolean isPushWakeScreenForNotificationEnabled;
    public final Boolean isSdkAuthEnabled;
    public final Boolean isSessionStartBasedTimeoutEnabled;
    public final Boolean isTouchModeRequiredForHtmlInAppMessages;
    public final String largeNotificationIcon;
    public final String pushDeepLinkBackStackActivityClassName;
    public final SdkFlavor sdkFlavor;
    public final String serverTarget;
    public final Integer sessionTimeout;
    public final Boolean shouldAddStatusBarPaddingToInAppMessages;
    public final Boolean shouldOptInWhenPushAuthorized;
    public final Boolean shouldPersistWebViewWhenBackgroundingApp;
    public final Boolean shouldUseWindowFlagSecureInActivities;
    public final String smallNotificationIcon;
    public final Integer triggerActionMinimumTimeIntervalSeconds;
    public final Boolean willHandlePushDeepLinksAutomatically;

    public /* synthetic */ BrazeConfig(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    public String toString() {
        return this.builder.toString();
    }

    private BrazeConfig(Builder builder) {
        this.builder = builder;
        this.apiKey = builder.getApiKey();
        this.serverTarget = builder.getServerTarget();
        this.smallNotificationIcon = builder.getSmallNotificationIconName();
        this.largeNotificationIcon = builder.getLargeNotificationIconName();
        this.customEndpoint = builder.getCustomEndpoint();
        this.defaultNotificationChannelName = builder.getDefaultNotificationChannelName();
        this.defaultNotificationChannelDescription = builder.getDefaultNotificationChannelDescription();
        this.pushDeepLinkBackStackActivityClassName = builder.getPushDeepLinkBackStackActivityClassName();
        this.firebaseCloudMessagingSenderIdKey = builder.getFirebaseCloudMessagingSenderIdKey();
        this.customHtmlWebViewActivityClassName = builder.getCustomHtmlWebViewActivityClassName();
        this.sdkFlavor = builder.getSdkFlavor();
        this.sessionTimeout = builder.getSessionTimeout();
        this.defaultNotificationAccentColor = builder.getDefaultNotificationAccentColor();
        this.triggerActionMinimumTimeIntervalSeconds = builder.getTriggerActionMinimumTimeIntervalSeconds();
        this.badNetworkInterval = builder.getBadNetworkInterval();
        this.goodNetworkInterval = builder.getGoodNetworkInterval();
        this.greatNetworkInterval = builder.getGreatNetworkInterval();
        this.inAppMessageWebViewClientMaxOnPageFinishedWaitMs = builder.getInAppMessageWebViewClientMaxOnPageFinishedWaitMs();
        this.isAdmMessagingRegistrationEnabled = builder.getAdmMessagingRegistrationEnabled();
        this.willHandlePushDeepLinksAutomatically = builder.getHandlePushDeepLinksAutomatically();
        this.isLocationCollectionEnabled = builder.getIsLocationCollectionEnabled();
        this.isNewsFeedVisualIndicatorOn = builder.getIsNewsFeedVisualIndicatorOn();
        this.isPushDeepLinkBackStackActivityEnabled = builder.getIsPushDeepLinkBackStackActivityEnabled();
        this.isSessionStartBasedTimeoutEnabled = builder.getIsSessionStartBasedTimeoutEnabled();
        this.isFirebaseCloudMessagingRegistrationEnabled = builder.getIsFirebaseCloudMessagingRegistrationEnabled();
        this.isContentCardsUnreadVisualIndicatorEnabled = builder.getIsContentCardsUnreadVisualIndicatorEnabled();
        this.isInAppMessageAccessibilityExclusiveModeEnabled = builder.getIsInAppMessageAccessibilityExclusiveModeEnabled();
        this.isPushWakeScreenForNotificationEnabled = builder.getIsPushWakeScreenForNotificationEnabled();
        this.isPushHtmlRenderingEnabled = builder.getIsPushHtmlRenderingEnabled();
        this.areGeofencesEnabled = builder.getIsGeofencesEnabled();
        this.isInAppMessageTestPushEagerDisplayEnabled = builder.getInAppMessageTestPushEagerDisplayEnabled();
        this.areAutomaticGeofenceRequestsEnabled = builder.getAutomaticGeofenceRequestsEnabled();
        this.isFirebaseMessagingServiceOnNewTokenRegistrationEnabled = builder.getIsFirebaseMessagingServiceOnNewTokenRegistrationEnabled();
        this.isSdkAuthEnabled = builder.getIsSdkAuthEnabled();
        this.isTouchModeRequiredForHtmlInAppMessages = builder.getIsTouchModeRequiredForHtmlInAppMessages();
        this.deviceObjectAllowlist = builder.getDeviceObjectAllowlist$android_sdk_base_release();
        this.isDeviceObjectAllowlistEnabled = builder.getIsDeviceObjectAllowlistEnabled();
        this.customLocationProviderNames = builder.getCustomLocationProviderNames$android_sdk_base_release();
        this.brazeSdkMetadata = builder.getBrazeSdkMetadata$android_sdk_base_release();
        this.isHtmlInAppMessageApplyWindowInsetsEnabled = builder.getIsHtmlInAppMessageApplyWindowInsetsEnabled();
        this.isHtmlInAppMessageHtmlLinkTargetEnabled = builder.getIsHtmlInAppMessageHtmlLinkTargetEnabled();
        this.doesPushStoryDismissOnClick = builder.getDoesPushStoryDismissOnClick();
        this.isFallbackFirebaseMessagingServiceEnabled = builder.getIsFallbackFirebaseMessagingServiceEnabled();
        this.fallbackFirebaseMessagingServiceClasspath = builder.getFallbackFirebaseMessagingServiceClasspath();
        this.shouldOptInWhenPushAuthorized = builder.getShouldOptInWhenPushAuthorized();
        this.shouldUseWindowFlagSecureInActivities = builder.getShouldUseWindowFlagSecureInActivities();
        this.shouldPersistWebViewWhenBackgroundingApp = builder.getShouldPersistWebViewWhenBackgroundingApp();
        this.shouldAddStatusBarPaddingToInAppMessages = builder.getShouldAddStatusBarPaddingToInAppMessages();
    }

    @Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\by\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b1\b\u0007\u0018\u00002\u00020\u0001BÛ\u0004\b\u0002\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0018\u0012\u0010\b\u0002\u0010)\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010*\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0018\u0012\u0010\b\u0002\u0010-\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010*\u0012\u0010\b\u0002\u0010/\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010*\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b:\u0010;B\t\b\u0016¢\u0006\u0004\b:\u0010<J\b\u0010©\u0001\u001a\u00030ª\u0001J\u000f\u0010«\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\u0010\u0010¬\u0001\u001a\u00020\u00002\u0007\u0010\u00ad\u0001\u001a\u00020\u0003J\u0010\u0010®\u0001\u001a\u00020\u00002\u0007\u0010¯\u0001\u001a\u00020\u0003J\u000f\u0010°\u0001\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003J\u0011\u0010±\u0001\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010²\u0001\u001a\u00020\u00002\u0007\u0010³\u0001\u001a\u00020\u0018J\u000f\u0010´\u0001\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0003J\u000f\u0010µ\u0001\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0003J\u000f\u0010¶\u0001\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0003J\u0010\u0010·\u0001\u001a\u00020\u00002\u0007\u0010¸\u0001\u001a\u00020\u0010J\u000f\u0010¹\u0001\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0010J\u000f\u0010º\u0001\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0010J\u000f\u0010»\u0001\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0018J\u000f\u0010¼\u0001\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0018J\u0010\u0010½\u0001\u001a\u00020\u00002\u0007\u0010¾\u0001\u001a\u00020\u0018J\u0015\u0010¿\u0001\u001a\u00020\u00002\f\u0010À\u0001\u001a\u0007\u0012\u0002\b\u00030Á\u0001J\u000f\u0010Â\u0001\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0018J\u0010\u0010Ã\u0001\u001a\u00020\u00002\u0007\u0010Ä\u0001\u001a\u00020\u0010J\u0010\u0010Å\u0001\u001a\u00020\u00002\u0007\u0010Æ\u0001\u001a\u00020\u0010J\u0010\u0010Ç\u0001\u001a\u00020\u00002\u0007\u0010È\u0001\u001a\u00020\u0010J\u000f\u0010É\u0001\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0018J\u0010\u0010Ê\u0001\u001a\u00020\u00002\u0007\u0010Ë\u0001\u001a\u00020\u0018J\u0010\u0010Ì\u0001\u001a\u00020\u00002\u0007\u0010Í\u0001\u001a\u00020\u0003J\u0010\u0010Î\u0001\u001a\u00020\u00002\u0007\u0010Ï\u0001\u001a\u00020\u0018J\u0017\u0010Ð\u0001\u001a\u00020\u00002\f\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*H\u0007J\u0015\u0010Ñ\u0001\u001a\u00020\u00002\f\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*J\u0012\u0010Ò\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018H\u0007J\u0010\u0010Ô\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0010\u0010Õ\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0010\u0010Ö\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0010\u0010×\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0010\u0010Ø\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0010\u0010Ù\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0010\u0010Ú\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0015\u0010Û\u0001\u001a\u00020\u00002\f\u0010Ü\u0001\u001a\u0007\u0012\u0002\b\u00030Á\u0001J\u0010\u0010Ý\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0016\u0010Þ\u0001\u001a\u00020\u00002\r\u0010ß\u0001\u001a\b\u0012\u0004\u0012\u0002000*J\u0010\u0010à\u0001\u001a\u00020\u00002\u0007\u0010á\u0001\u001a\u00020\u0010J\u0010\u0010â\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0010\u0010ã\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0010\u0010ä\u0001\u001a\u00020\u00002\u0007\u0010å\u0001\u001a\u00020\u0018J\u0010\u0010æ\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0010\u0010ç\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0018\u0010è\u0001\u001a\u00020\u00002\u000f\u0010é\u0001\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010*J\u0010\u0010ê\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0010\u0010ë\u0001\u001a\u00020\u00002\u0007\u0010ì\u0001\u001a\u00020\u0003J\u0010\u0010í\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0010\u0010î\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0010\u0010ï\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\u0010\u0010ð\u0001\u001a\u00020\u00002\u0007\u0010Ó\u0001\u001a\u00020\u0018J\t\u0010ñ\u0001\u001a\u00020\u0003H\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010>\"\u0004\bB\u0010@R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010>\"\u0004\bD\u0010@R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010>\"\u0004\bF\u0010@R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010>\"\u0004\bH\u0010@R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010>\"\u0004\bJ\u0010@R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010>\"\u0004\bL\u0010@R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010>\"\u0004\bN\u0010@R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010>\"\u0004\bP\u0010@R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010>\"\u0004\bR\u0010@R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0080\u000e¢\u0006\u0010\n\u0002\u0010[\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u0010X\u0080\u000e¢\u0006\u0010\n\u0002\u0010[\u001a\u0004\b\\\u0010X\"\u0004\b]\u0010ZR\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0010X\u0080\u000e¢\u0006\u0010\n\u0002\u0010[\u001a\u0004\b^\u0010X\"\u0004\b_\u0010ZR\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0010X\u0080\u000e¢\u0006\u0010\n\u0002\u0010[\u001a\u0004\b`\u0010X\"\u0004\ba\u0010ZR\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u0010X\u0080\u000e¢\u0006\u0010\n\u0002\u0010[\u001a\u0004\bb\u0010X\"\u0004\bc\u0010ZR\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u0010X\u0080\u000e¢\u0006\u0010\n\u0002\u0010[\u001a\u0004\bd\u0010X\"\u0004\be\u0010ZR\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0010X\u0080\u000e¢\u0006\u0010\n\u0002\u0010[\u001a\u0004\bf\u0010X\"\u0004\bg\u0010ZR\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0010\n\u0002\u0010l\u001a\u0004\bh\u0010i\"\u0004\bj\u0010kR\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0010\n\u0002\u0010l\u001a\u0004\bm\u0010i\"\u0004\bn\u0010kR\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0010\n\u0002\u0010l\u001a\u0004\bo\u0010i\"\u0004\bp\u0010kR\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0010\n\u0002\u0010l\u001a\u0004\bq\u0010i\"\u0004\br\u0010kR\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0010\n\u0002\u0010l\u001a\u0004\bs\u0010i\"\u0004\bt\u0010kR\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0010\n\u0002\u0010l\u001a\u0004\bu\u0010i\"\u0004\bv\u0010kR\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0010\n\u0002\u0010l\u001a\u0004\bw\u0010i\"\u0004\bx\u0010kR\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0010\n\u0002\u0010l\u001a\u0004\by\u0010i\"\u0004\bz\u0010kR\u001e\u0010 \u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0010\n\u0002\u0010l\u001a\u0004\b{\u0010i\"\u0004\b|\u0010kR\u001e\u0010!\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0010\n\u0002\u0010l\u001a\u0004\b}\u0010i\"\u0004\b~\u0010kR\u001f\u0010\"\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0011\n\u0002\u0010l\u001a\u0004\b\u007f\u0010i\"\u0005\b\u0080\u0001\u0010kR \u0010#\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0012\n\u0002\u0010l\u001a\u0005\b\u0081\u0001\u0010i\"\u0005\b\u0082\u0001\u0010kR \u0010$\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0012\n\u0002\u0010l\u001a\u0005\b\u0083\u0001\u0010i\"\u0005\b\u0084\u0001\u0010kR \u0010%\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0012\n\u0002\u0010l\u001a\u0005\b\u0085\u0001\u0010i\"\u0005\b\u0086\u0001\u0010kR \u0010&\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0012\n\u0002\u0010l\u001a\u0005\b\u0087\u0001\u0010i\"\u0005\b\u0088\u0001\u0010kR \u0010'\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0012\n\u0002\u0010l\u001a\u0005\b\u0089\u0001\u0010i\"\u0005\b\u008a\u0001\u0010kR \u0010(\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0012\n\u0002\u0010l\u001a\u0005\b\u008b\u0001\u0010i\"\u0005\b\u008c\u0001\u0010kR&\u0010)\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010*X\u0080\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001\"\u0006\b\u008f\u0001\u0010\u0090\u0001R \u0010,\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0012\n\u0002\u0010l\u001a\u0005\b\u0091\u0001\u0010i\"\u0005\b\u0092\u0001\u0010kR&\u0010-\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010*X\u0080\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0093\u0001\u0010\u008e\u0001\"\u0006\b\u0094\u0001\u0010\u0090\u0001R&\u0010/\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010*X\u0080\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0095\u0001\u0010\u008e\u0001\"\u0006\b\u0096\u0001\u0010\u0090\u0001R \u00101\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0012\n\u0002\u0010l\u001a\u0005\b\u0097\u0001\u0010i\"\u0005\b\u0098\u0001\u0010kR \u00102\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0012\n\u0002\u0010l\u001a\u0005\b\u0099\u0001\u0010i\"\u0005\b\u009a\u0001\u0010kR \u00103\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0012\n\u0002\u0010l\u001a\u0005\b\u009b\u0001\u0010i\"\u0005\b\u009c\u0001\u0010kR \u00104\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0012\n\u0002\u0010l\u001a\u0005\b\u009d\u0001\u0010i\"\u0005\b\u009e\u0001\u0010kR\u001e\u00105\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u009f\u0001\u0010>\"\u0005\b \u0001\u0010@R \u00106\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0012\n\u0002\u0010l\u001a\u0005\b¡\u0001\u0010i\"\u0005\b¢\u0001\u0010kR \u00107\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0012\n\u0002\u0010l\u001a\u0005\b£\u0001\u0010i\"\u0005\b¤\u0001\u0010kR \u00108\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0012\n\u0002\u0010l\u001a\u0005\b¥\u0001\u0010i\"\u0005\b¦\u0001\u0010kR \u00109\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0012\n\u0002\u0010l\u001a\u0005\b§\u0001\u0010i\"\u0005\b¨\u0001\u0010k¨\u0006ò\u0001"}, d2 = {"Lcom/braze/configuration/BrazeConfig$Builder;", "", "apiKey", "", "serverTarget", "smallNotificationIconName", "largeNotificationIconName", "customEndpoint", "defaultNotificationChannelName", "defaultNotificationChannelDescription", "pushDeepLinkBackStackActivityClassName", "firebaseCloudMessagingSenderIdKey", "customHtmlWebViewActivityClassName", "sdkFlavor", "Lcom/braze/enums/SdkFlavor;", "sessionTimeout", "", "defaultNotificationAccentColor", "triggerActionMinimumTimeIntervalSeconds", "badNetworkInterval", "goodNetworkInterval", "greatNetworkInterval", "inAppMessageWebViewClientMaxOnPageFinishedWaitMs", "admMessagingRegistrationEnabled", "", "handlePushDeepLinksAutomatically", "isLocationCollectionEnabled", "isNewsFeedVisualIndicatorOn", "isPushDeepLinkBackStackActivityEnabled", "isSessionStartBasedTimeoutEnabled", "isFirebaseCloudMessagingRegistrationEnabled", "isContentCardsUnreadVisualIndicatorEnabled", "isInAppMessageAccessibilityExclusiveModeEnabled", "isPushWakeScreenForNotificationEnabled", "isPushHtmlRenderingEnabled", "isGeofencesEnabled", "inAppMessageTestPushEagerDisplayEnabled", "automaticGeofenceRequestsEnabled", "isFirebaseMessagingServiceOnNewTokenRegistrationEnabled", "isTouchModeRequiredForHtmlInAppMessages", "isSdkAuthEnabled", "deviceObjectAllowlist", "Ljava/util/EnumSet;", "Lcom/braze/enums/DeviceKey;", "isDeviceObjectAllowlistEnabled", "brazeSdkMetadata", "Lcom/braze/enums/BrazeSdkMetadata;", "customLocationProviderNames", "Lcom/braze/enums/LocationProviderName;", "isHtmlInAppMessageApplyWindowInsetsEnabled", "isHtmlInAppMessageHtmlLinkTargetEnabled", "doesPushStoryDismissOnClick", "isFallbackFirebaseMessagingServiceEnabled", "fallbackFirebaseMessagingServiceClasspath", "shouldOptInWhenPushAuthorized", "shouldUseWindowFlagSecureInActivities", "shouldPersistWebViewWhenBackgroundingApp", "shouldAddStatusBarPaddingToInAppMessages", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/braze/enums/SdkFlavor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "()V", "getApiKey$android_sdk_base_release", "()Ljava/lang/String;", "setApiKey$android_sdk_base_release", "(Ljava/lang/String;)V", "getServerTarget$android_sdk_base_release", "setServerTarget$android_sdk_base_release", "getSmallNotificationIconName$android_sdk_base_release", "setSmallNotificationIconName$android_sdk_base_release", "getLargeNotificationIconName$android_sdk_base_release", "setLargeNotificationIconName$android_sdk_base_release", "getCustomEndpoint$android_sdk_base_release", "setCustomEndpoint$android_sdk_base_release", "getDefaultNotificationChannelName$android_sdk_base_release", "setDefaultNotificationChannelName$android_sdk_base_release", "getDefaultNotificationChannelDescription$android_sdk_base_release", "setDefaultNotificationChannelDescription$android_sdk_base_release", "getPushDeepLinkBackStackActivityClassName$android_sdk_base_release", "setPushDeepLinkBackStackActivityClassName$android_sdk_base_release", "getFirebaseCloudMessagingSenderIdKey$android_sdk_base_release", "setFirebaseCloudMessagingSenderIdKey$android_sdk_base_release", "getCustomHtmlWebViewActivityClassName$android_sdk_base_release", "setCustomHtmlWebViewActivityClassName$android_sdk_base_release", "getSdkFlavor$android_sdk_base_release", "()Lcom/braze/enums/SdkFlavor;", "setSdkFlavor$android_sdk_base_release", "(Lcom/braze/enums/SdkFlavor;)V", "getSessionTimeout$android_sdk_base_release", "()Ljava/lang/Integer;", "setSessionTimeout$android_sdk_base_release", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getDefaultNotificationAccentColor$android_sdk_base_release", "setDefaultNotificationAccentColor$android_sdk_base_release", "getTriggerActionMinimumTimeIntervalSeconds$android_sdk_base_release", "setTriggerActionMinimumTimeIntervalSeconds$android_sdk_base_release", "getBadNetworkInterval$android_sdk_base_release", "setBadNetworkInterval$android_sdk_base_release", "getGoodNetworkInterval$android_sdk_base_release", "setGoodNetworkInterval$android_sdk_base_release", "getGreatNetworkInterval$android_sdk_base_release", "setGreatNetworkInterval$android_sdk_base_release", "getInAppMessageWebViewClientMaxOnPageFinishedWaitMs$android_sdk_base_release", "setInAppMessageWebViewClientMaxOnPageFinishedWaitMs$android_sdk_base_release", "getAdmMessagingRegistrationEnabled$android_sdk_base_release", "()Ljava/lang/Boolean;", "setAdmMessagingRegistrationEnabled$android_sdk_base_release", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getHandlePushDeepLinksAutomatically$android_sdk_base_release", "setHandlePushDeepLinksAutomatically$android_sdk_base_release", "isLocationCollectionEnabled$android_sdk_base_release", "setLocationCollectionEnabled$android_sdk_base_release", "isNewsFeedVisualIndicatorOn$android_sdk_base_release", "setNewsFeedVisualIndicatorOn$android_sdk_base_release", "isPushDeepLinkBackStackActivityEnabled$android_sdk_base_release", "setPushDeepLinkBackStackActivityEnabled$android_sdk_base_release", "isSessionStartBasedTimeoutEnabled$android_sdk_base_release", "setSessionStartBasedTimeoutEnabled$android_sdk_base_release", "isFirebaseCloudMessagingRegistrationEnabled$android_sdk_base_release", "setFirebaseCloudMessagingRegistrationEnabled$android_sdk_base_release", "isContentCardsUnreadVisualIndicatorEnabled$android_sdk_base_release", "setContentCardsUnreadVisualIndicatorEnabled$android_sdk_base_release", "isInAppMessageAccessibilityExclusiveModeEnabled$android_sdk_base_release", "setInAppMessageAccessibilityExclusiveModeEnabled$android_sdk_base_release", "isPushWakeScreenForNotificationEnabled$android_sdk_base_release", "setPushWakeScreenForNotificationEnabled$android_sdk_base_release", "isPushHtmlRenderingEnabled$android_sdk_base_release", "setPushHtmlRenderingEnabled$android_sdk_base_release", "isGeofencesEnabled$android_sdk_base_release", "setGeofencesEnabled$android_sdk_base_release", "getInAppMessageTestPushEagerDisplayEnabled$android_sdk_base_release", "setInAppMessageTestPushEagerDisplayEnabled$android_sdk_base_release", "getAutomaticGeofenceRequestsEnabled$android_sdk_base_release", "setAutomaticGeofenceRequestsEnabled$android_sdk_base_release", "isFirebaseMessagingServiceOnNewTokenRegistrationEnabled$android_sdk_base_release", "setFirebaseMessagingServiceOnNewTokenRegistrationEnabled$android_sdk_base_release", "isTouchModeRequiredForHtmlInAppMessages$android_sdk_base_release", "setTouchModeRequiredForHtmlInAppMessages$android_sdk_base_release", "isSdkAuthEnabled$android_sdk_base_release", "setSdkAuthEnabled$android_sdk_base_release", "getDeviceObjectAllowlist$android_sdk_base_release", "()Ljava/util/EnumSet;", "setDeviceObjectAllowlist$android_sdk_base_release", "(Ljava/util/EnumSet;)V", "isDeviceObjectAllowlistEnabled$android_sdk_base_release", "setDeviceObjectAllowlistEnabled$android_sdk_base_release", "getBrazeSdkMetadata$android_sdk_base_release", "setBrazeSdkMetadata$android_sdk_base_release", "getCustomLocationProviderNames$android_sdk_base_release", "setCustomLocationProviderNames$android_sdk_base_release", "isHtmlInAppMessageApplyWindowInsetsEnabled$android_sdk_base_release", "setHtmlInAppMessageApplyWindowInsetsEnabled$android_sdk_base_release", "isHtmlInAppMessageHtmlLinkTargetEnabled$android_sdk_base_release", "setHtmlInAppMessageHtmlLinkTargetEnabled$android_sdk_base_release", "getDoesPushStoryDismissOnClick$android_sdk_base_release", "setDoesPushStoryDismissOnClick$android_sdk_base_release", "isFallbackFirebaseMessagingServiceEnabled$android_sdk_base_release", "setFallbackFirebaseMessagingServiceEnabled$android_sdk_base_release", "getFallbackFirebaseMessagingServiceClasspath$android_sdk_base_release", "setFallbackFirebaseMessagingServiceClasspath$android_sdk_base_release", "getShouldOptInWhenPushAuthorized$android_sdk_base_release", "setShouldOptInWhenPushAuthorized$android_sdk_base_release", "getShouldUseWindowFlagSecureInActivities$android_sdk_base_release", "setShouldUseWindowFlagSecureInActivities$android_sdk_base_release", "getShouldPersistWebViewWhenBackgroundingApp$android_sdk_base_release", "setShouldPersistWebViewWhenBackgroundingApp$android_sdk_base_release", "getShouldAddStatusBarPaddingToInAppMessages$android_sdk_base_release", "setShouldAddStatusBarPaddingToInAppMessages$android_sdk_base_release", "build", "Lcom/braze/configuration/BrazeConfig;", "setApiKey", "setDefaultNotificationChannelName", "name", "setDefaultNotificationChannelDescription", "description", "setServerTarget", "setSdkFlavor", "setNewsfeedVisualIndicatorOn", "newsfeedVisualIndicatorOn", "setSmallNotificationIcon", "setLargeNotificationIcon", "setCustomEndpoint", "setSessionTimeout", "sessionTimeoutSeconds", "setDefaultNotificationAccentColor", "setTriggerActionMinimumTimeIntervalSeconds", "setAdmMessagingRegistrationEnabled", "setHandlePushDeepLinksAutomatically", "setPushDeepLinkBackStackActivityEnabled", "pushDeepLinkBackStackActivityEnabled", "setPushDeepLinkBackStackActivityClass", "pushDeepLinkActivityClass", "Ljava/lang/Class;", "setIsLocationCollectionEnabled", "setBadNetworkDataFlushInterval", "badNetworkIntervalSeconds", "setGoodNetworkDataFlushInterval", "goodNetworkIntervalSeconds", "setGreatNetworkDataFlushInterval", "greatNetworkIntervalSeconds", "setIsSessionStartBasedTimeoutEnabled", "setIsFirebaseCloudMessagingRegistrationEnabled", "firebaseMessagingRegistrationEnabled", "setFirebaseCloudMessagingSenderIdKey", "firebaseSenderId", "setContentCardsUnreadVisualIndicatorEnabled", "contentCardsUnreadVisualIndicatorEnabled", "setDeviceObjectWhitelist", "setDeviceObjectAllowlist", "setDeviceObjectWhitelistEnabled", FeatureFlag.ENABLED, "setDeviceObjectAllowlistEnabled", "setIsInAppMessageAccessibilityExclusiveModeEnabled", "setIsPushWakeScreenForNotificationEnabled", "setPushHtmlRenderingEnabled", "setDoesPushStoryDismissOnClick", "setGeofencesEnabled", "setInAppMessageTestPushEagerDisplayEnabled", "setCustomWebViewActivityClass", "customWebViewActivityClass", "setAutomaticGeofenceRequestsEnabled", "setCustomLocationProviderNames", "locationProviderNames", "setInAppMessageWebViewClientMaxOnPageFinishedWaitMs", "maxOnPageFinishedWaitMs", "setIsFirebaseMessagingServiceOnNewTokenRegistrationEnabled", "setIsSdkAuthenticationEnabled", "setIsTouchModeRequiredForHtmlInAppMessages", "required", "setIsHtmlInAppMessageApplyWindowInsetsEnabled", "setIsHtmlInAppMessageHtmlLinkTargetEnabled", "setSdkMetadata", "sdkMetadata", "setFallbackFirebaseMessagingServiceEnabled", "setFallbackFirebaseMessagingServiceClasspath", "classpath", "setOptInWhenPushAuthorized", "setShouldUseWindowFlagSecureInActivities", "setShouldPersistWebViewWhenBackgroundingApp", "setShouldAddStatusBarPaddingToInAppMessages", "toString", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Builder {
        private Boolean admMessagingRegistrationEnabled;
        private String apiKey;
        private Boolean automaticGeofenceRequestsEnabled;
        private Integer badNetworkInterval;
        private EnumSet<BrazeSdkMetadata> brazeSdkMetadata;
        private String customEndpoint;
        private String customHtmlWebViewActivityClassName;
        private EnumSet<LocationProviderName> customLocationProviderNames;
        private Integer defaultNotificationAccentColor;
        private String defaultNotificationChannelDescription;
        private String defaultNotificationChannelName;
        private EnumSet<DeviceKey> deviceObjectAllowlist;
        private Boolean doesPushStoryDismissOnClick;
        private String fallbackFirebaseMessagingServiceClasspath;
        private String firebaseCloudMessagingSenderIdKey;
        private Integer goodNetworkInterval;
        private Integer greatNetworkInterval;
        private Boolean handlePushDeepLinksAutomatically;
        private Boolean inAppMessageTestPushEagerDisplayEnabled;
        private Integer inAppMessageWebViewClientMaxOnPageFinishedWaitMs;
        private Boolean isContentCardsUnreadVisualIndicatorEnabled;
        private Boolean isDeviceObjectAllowlistEnabled;
        private Boolean isFallbackFirebaseMessagingServiceEnabled;
        private Boolean isFirebaseCloudMessagingRegistrationEnabled;
        private Boolean isFirebaseMessagingServiceOnNewTokenRegistrationEnabled;
        private Boolean isGeofencesEnabled;
        private Boolean isHtmlInAppMessageApplyWindowInsetsEnabled;
        private Boolean isHtmlInAppMessageHtmlLinkTargetEnabled;
        private Boolean isInAppMessageAccessibilityExclusiveModeEnabled;
        private Boolean isLocationCollectionEnabled;
        private Boolean isNewsFeedVisualIndicatorOn;
        private Boolean isPushDeepLinkBackStackActivityEnabled;
        private Boolean isPushHtmlRenderingEnabled;
        private Boolean isPushWakeScreenForNotificationEnabled;
        private Boolean isSdkAuthEnabled;
        private Boolean isSessionStartBasedTimeoutEnabled;
        private Boolean isTouchModeRequiredForHtmlInAppMessages;
        private String largeNotificationIconName;
        private String pushDeepLinkBackStackActivityClassName;
        private SdkFlavor sdkFlavor;
        private String serverTarget;
        private Integer sessionTimeout;
        private Boolean shouldAddStatusBarPaddingToInAppMessages;
        private Boolean shouldOptInWhenPushAuthorized;
        private Boolean shouldPersistWebViewWhenBackgroundingApp;
        private Boolean shouldUseWindowFlagSecureInActivities;
        private String smallNotificationIconName;
        private Integer triggerActionMinimumTimeIntervalSeconds;

        private Builder(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, SdkFlavor sdkFlavor, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, Integer num7, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, Boolean bool9, Boolean bool10, Boolean bool11, Boolean bool12, Boolean bool13, Boolean bool14, Boolean bool15, Boolean bool16, Boolean bool17, EnumSet<DeviceKey> enumSet, Boolean bool18, EnumSet<BrazeSdkMetadata> enumSet2, EnumSet<LocationProviderName> enumSet3, Boolean bool19, Boolean bool20, Boolean bool21, Boolean bool22, String str11, Boolean bool23, Boolean bool24, Boolean bool25, Boolean bool26) {
            this.apiKey = str;
            this.serverTarget = str2;
            this.smallNotificationIconName = str3;
            this.largeNotificationIconName = str4;
            this.customEndpoint = str5;
            this.defaultNotificationChannelName = str6;
            this.defaultNotificationChannelDescription = str7;
            this.pushDeepLinkBackStackActivityClassName = str8;
            this.firebaseCloudMessagingSenderIdKey = str9;
            this.customHtmlWebViewActivityClassName = str10;
            this.sdkFlavor = sdkFlavor;
            this.sessionTimeout = num;
            this.defaultNotificationAccentColor = num2;
            this.triggerActionMinimumTimeIntervalSeconds = num3;
            this.badNetworkInterval = num4;
            this.goodNetworkInterval = num5;
            this.greatNetworkInterval = num6;
            this.inAppMessageWebViewClientMaxOnPageFinishedWaitMs = num7;
            this.admMessagingRegistrationEnabled = bool;
            this.handlePushDeepLinksAutomatically = bool2;
            this.isLocationCollectionEnabled = bool3;
            this.isNewsFeedVisualIndicatorOn = bool4;
            this.isPushDeepLinkBackStackActivityEnabled = bool5;
            this.isSessionStartBasedTimeoutEnabled = bool6;
            this.isFirebaseCloudMessagingRegistrationEnabled = bool7;
            this.isContentCardsUnreadVisualIndicatorEnabled = bool8;
            this.isInAppMessageAccessibilityExclusiveModeEnabled = bool9;
            this.isPushWakeScreenForNotificationEnabled = bool10;
            this.isPushHtmlRenderingEnabled = bool11;
            this.isGeofencesEnabled = bool12;
            this.inAppMessageTestPushEagerDisplayEnabled = bool13;
            this.automaticGeofenceRequestsEnabled = bool14;
            this.isFirebaseMessagingServiceOnNewTokenRegistrationEnabled = bool15;
            this.isTouchModeRequiredForHtmlInAppMessages = bool16;
            this.isSdkAuthEnabled = bool17;
            this.deviceObjectAllowlist = enumSet;
            this.isDeviceObjectAllowlistEnabled = bool18;
            this.brazeSdkMetadata = enumSet2;
            this.customLocationProviderNames = enumSet3;
            this.isHtmlInAppMessageApplyWindowInsetsEnabled = bool19;
            this.isHtmlInAppMessageHtmlLinkTargetEnabled = bool20;
            this.doesPushStoryDismissOnClick = bool21;
            this.isFallbackFirebaseMessagingServiceEnabled = bool22;
            this.fallbackFirebaseMessagingServiceClasspath = str11;
            this.shouldOptInWhenPushAuthorized = bool23;
            this.shouldUseWindowFlagSecureInActivities = bool24;
            this.shouldPersistWebViewWhenBackgroundingApp = bool25;
            this.shouldAddStatusBarPaddingToInAppMessages = bool26;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String setApiKey$lambda$0() {
            return "Cannot set Braze API key to blank string. API key field not set";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String setDefaultNotificationChannelDescription$lambda$2() {
            return "Cannot set Braze default NotificationChannel description to null or blank string. NotificationChannel description field not set.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String setDefaultNotificationChannelName$lambda$1() {
            return "Cannot set Braze default NotificationChannel name to blank string. NotificationChannel name field not set.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String setFirebaseCloudMessagingSenderIdKey$lambda$22() {
            return "Cannot set Firebase Cloud Messaging Sender Id to blank string. Firebase Cloud Messaging Sender Id field not set";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String setInAppMessageWebViewClientMaxOnPageFinishedWaitMs$lambda$35(int i) {
            return "setInAppMessageWebViewClientMaxOnPageFinishedWaitMs called with negative value. Not setting timeout to: " + i;
        }

        public final BrazeConfig build() {
            return new BrazeConfig(this, null);
        }

        /* JADX INFO: renamed from: getAdmMessagingRegistrationEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getAdmMessagingRegistrationEnabled() {
            return this.admMessagingRegistrationEnabled;
        }

        /* JADX INFO: renamed from: getApiKey$android_sdk_base_release, reason: from getter */
        public final String getApiKey() {
            return this.apiKey;
        }

        /* JADX INFO: renamed from: getAutomaticGeofenceRequestsEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getAutomaticGeofenceRequestsEnabled() {
            return this.automaticGeofenceRequestsEnabled;
        }

        /* JADX INFO: renamed from: getBadNetworkInterval$android_sdk_base_release, reason: from getter */
        public final Integer getBadNetworkInterval() {
            return this.badNetworkInterval;
        }

        public final EnumSet<BrazeSdkMetadata> getBrazeSdkMetadata$android_sdk_base_release() {
            return this.brazeSdkMetadata;
        }

        /* JADX INFO: renamed from: getCustomEndpoint$android_sdk_base_release, reason: from getter */
        public final String getCustomEndpoint() {
            return this.customEndpoint;
        }

        /* JADX INFO: renamed from: getCustomHtmlWebViewActivityClassName$android_sdk_base_release, reason: from getter */
        public final String getCustomHtmlWebViewActivityClassName() {
            return this.customHtmlWebViewActivityClassName;
        }

        public final EnumSet<LocationProviderName> getCustomLocationProviderNames$android_sdk_base_release() {
            return this.customLocationProviderNames;
        }

        /* JADX INFO: renamed from: getDefaultNotificationAccentColor$android_sdk_base_release, reason: from getter */
        public final Integer getDefaultNotificationAccentColor() {
            return this.defaultNotificationAccentColor;
        }

        /* JADX INFO: renamed from: getDefaultNotificationChannelDescription$android_sdk_base_release, reason: from getter */
        public final String getDefaultNotificationChannelDescription() {
            return this.defaultNotificationChannelDescription;
        }

        /* JADX INFO: renamed from: getDefaultNotificationChannelName$android_sdk_base_release, reason: from getter */
        public final String getDefaultNotificationChannelName() {
            return this.defaultNotificationChannelName;
        }

        public final EnumSet<DeviceKey> getDeviceObjectAllowlist$android_sdk_base_release() {
            return this.deviceObjectAllowlist;
        }

        /* JADX INFO: renamed from: getDoesPushStoryDismissOnClick$android_sdk_base_release, reason: from getter */
        public final Boolean getDoesPushStoryDismissOnClick() {
            return this.doesPushStoryDismissOnClick;
        }

        /* JADX INFO: renamed from: getFallbackFirebaseMessagingServiceClasspath$android_sdk_base_release, reason: from getter */
        public final String getFallbackFirebaseMessagingServiceClasspath() {
            return this.fallbackFirebaseMessagingServiceClasspath;
        }

        /* JADX INFO: renamed from: getFirebaseCloudMessagingSenderIdKey$android_sdk_base_release, reason: from getter */
        public final String getFirebaseCloudMessagingSenderIdKey() {
            return this.firebaseCloudMessagingSenderIdKey;
        }

        /* JADX INFO: renamed from: getGoodNetworkInterval$android_sdk_base_release, reason: from getter */
        public final Integer getGoodNetworkInterval() {
            return this.goodNetworkInterval;
        }

        /* JADX INFO: renamed from: getGreatNetworkInterval$android_sdk_base_release, reason: from getter */
        public final Integer getGreatNetworkInterval() {
            return this.greatNetworkInterval;
        }

        /* JADX INFO: renamed from: getHandlePushDeepLinksAutomatically$android_sdk_base_release, reason: from getter */
        public final Boolean getHandlePushDeepLinksAutomatically() {
            return this.handlePushDeepLinksAutomatically;
        }

        /* JADX INFO: renamed from: getInAppMessageTestPushEagerDisplayEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getInAppMessageTestPushEagerDisplayEnabled() {
            return this.inAppMessageTestPushEagerDisplayEnabled;
        }

        /* JADX INFO: renamed from: getInAppMessageWebViewClientMaxOnPageFinishedWaitMs$android_sdk_base_release, reason: from getter */
        public final Integer getInAppMessageWebViewClientMaxOnPageFinishedWaitMs() {
            return this.inAppMessageWebViewClientMaxOnPageFinishedWaitMs;
        }

        /* JADX INFO: renamed from: getLargeNotificationIconName$android_sdk_base_release, reason: from getter */
        public final String getLargeNotificationIconName() {
            return this.largeNotificationIconName;
        }

        /* JADX INFO: renamed from: getPushDeepLinkBackStackActivityClassName$android_sdk_base_release, reason: from getter */
        public final String getPushDeepLinkBackStackActivityClassName() {
            return this.pushDeepLinkBackStackActivityClassName;
        }

        /* JADX INFO: renamed from: getSdkFlavor$android_sdk_base_release, reason: from getter */
        public final SdkFlavor getSdkFlavor() {
            return this.sdkFlavor;
        }

        /* JADX INFO: renamed from: getServerTarget$android_sdk_base_release, reason: from getter */
        public final String getServerTarget() {
            return this.serverTarget;
        }

        /* JADX INFO: renamed from: getSessionTimeout$android_sdk_base_release, reason: from getter */
        public final Integer getSessionTimeout() {
            return this.sessionTimeout;
        }

        /* JADX INFO: renamed from: getShouldAddStatusBarPaddingToInAppMessages$android_sdk_base_release, reason: from getter */
        public final Boolean getShouldAddStatusBarPaddingToInAppMessages() {
            return this.shouldAddStatusBarPaddingToInAppMessages;
        }

        /* JADX INFO: renamed from: getShouldOptInWhenPushAuthorized$android_sdk_base_release, reason: from getter */
        public final Boolean getShouldOptInWhenPushAuthorized() {
            return this.shouldOptInWhenPushAuthorized;
        }

        /* JADX INFO: renamed from: getShouldPersistWebViewWhenBackgroundingApp$android_sdk_base_release, reason: from getter */
        public final Boolean getShouldPersistWebViewWhenBackgroundingApp() {
            return this.shouldPersistWebViewWhenBackgroundingApp;
        }

        /* JADX INFO: renamed from: getShouldUseWindowFlagSecureInActivities$android_sdk_base_release, reason: from getter */
        public final Boolean getShouldUseWindowFlagSecureInActivities() {
            return this.shouldUseWindowFlagSecureInActivities;
        }

        /* JADX INFO: renamed from: getSmallNotificationIconName$android_sdk_base_release, reason: from getter */
        public final String getSmallNotificationIconName() {
            return this.smallNotificationIconName;
        }

        /* JADX INFO: renamed from: getTriggerActionMinimumTimeIntervalSeconds$android_sdk_base_release, reason: from getter */
        public final Integer getTriggerActionMinimumTimeIntervalSeconds() {
            return this.triggerActionMinimumTimeIntervalSeconds;
        }

        /* JADX INFO: renamed from: isContentCardsUnreadVisualIndicatorEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getIsContentCardsUnreadVisualIndicatorEnabled() {
            return this.isContentCardsUnreadVisualIndicatorEnabled;
        }

        /* JADX INFO: renamed from: isDeviceObjectAllowlistEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getIsDeviceObjectAllowlistEnabled() {
            return this.isDeviceObjectAllowlistEnabled;
        }

        /* JADX INFO: renamed from: isFallbackFirebaseMessagingServiceEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getIsFallbackFirebaseMessagingServiceEnabled() {
            return this.isFallbackFirebaseMessagingServiceEnabled;
        }

        /* JADX INFO: renamed from: isFirebaseCloudMessagingRegistrationEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getIsFirebaseCloudMessagingRegistrationEnabled() {
            return this.isFirebaseCloudMessagingRegistrationEnabled;
        }

        /* JADX INFO: renamed from: isFirebaseMessagingServiceOnNewTokenRegistrationEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getIsFirebaseMessagingServiceOnNewTokenRegistrationEnabled() {
            return this.isFirebaseMessagingServiceOnNewTokenRegistrationEnabled;
        }

        /* JADX INFO: renamed from: isGeofencesEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getIsGeofencesEnabled() {
            return this.isGeofencesEnabled;
        }

        /* JADX INFO: renamed from: isHtmlInAppMessageApplyWindowInsetsEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getIsHtmlInAppMessageApplyWindowInsetsEnabled() {
            return this.isHtmlInAppMessageApplyWindowInsetsEnabled;
        }

        /* JADX INFO: renamed from: isHtmlInAppMessageHtmlLinkTargetEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getIsHtmlInAppMessageHtmlLinkTargetEnabled() {
            return this.isHtmlInAppMessageHtmlLinkTargetEnabled;
        }

        /* JADX INFO: renamed from: isInAppMessageAccessibilityExclusiveModeEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getIsInAppMessageAccessibilityExclusiveModeEnabled() {
            return this.isInAppMessageAccessibilityExclusiveModeEnabled;
        }

        /* JADX INFO: renamed from: isLocationCollectionEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getIsLocationCollectionEnabled() {
            return this.isLocationCollectionEnabled;
        }

        /* JADX INFO: renamed from: isNewsFeedVisualIndicatorOn$android_sdk_base_release, reason: from getter */
        public final Boolean getIsNewsFeedVisualIndicatorOn() {
            return this.isNewsFeedVisualIndicatorOn;
        }

        /* JADX INFO: renamed from: isPushDeepLinkBackStackActivityEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getIsPushDeepLinkBackStackActivityEnabled() {
            return this.isPushDeepLinkBackStackActivityEnabled;
        }

        /* JADX INFO: renamed from: isPushHtmlRenderingEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getIsPushHtmlRenderingEnabled() {
            return this.isPushHtmlRenderingEnabled;
        }

        /* JADX INFO: renamed from: isPushWakeScreenForNotificationEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getIsPushWakeScreenForNotificationEnabled() {
            return this.isPushWakeScreenForNotificationEnabled;
        }

        /* JADX INFO: renamed from: isSdkAuthEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getIsSdkAuthEnabled() {
            return this.isSdkAuthEnabled;
        }

        /* JADX INFO: renamed from: isSessionStartBasedTimeoutEnabled$android_sdk_base_release, reason: from getter */
        public final Boolean getIsSessionStartBasedTimeoutEnabled() {
            return this.isSessionStartBasedTimeoutEnabled;
        }

        /* JADX INFO: renamed from: isTouchModeRequiredForHtmlInAppMessages$android_sdk_base_release, reason: from getter */
        public final Boolean getIsTouchModeRequiredForHtmlInAppMessages() {
            return this.isTouchModeRequiredForHtmlInAppMessages;
        }

        public final Builder setAdmMessagingRegistrationEnabled(boolean admMessagingRegistrationEnabled) {
            this.admMessagingRegistrationEnabled = Boolean.valueOf(admMessagingRegistrationEnabled);
            return this;
        }

        public final void setAdmMessagingRegistrationEnabled$android_sdk_base_release(Boolean bool) {
            this.admMessagingRegistrationEnabled = bool;
        }

        public final Builder setApiKey(String apiKey) {
            Intrinsics.checkNotNullParameter(apiKey, "apiKey");
            if (StringsKt.isBlank(apiKey)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfig$Builder$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeConfig.Builder.setApiKey$lambda$0();
                    }
                }, 6, (Object) null);
            } else {
                this.apiKey = apiKey;
            }
            return this;
        }

        public final void setApiKey$android_sdk_base_release(String str) {
            this.apiKey = str;
        }

        public final Builder setAutomaticGeofenceRequestsEnabled(boolean enabled) {
            this.automaticGeofenceRequestsEnabled = Boolean.valueOf(enabled);
            return this;
        }

        public final void setAutomaticGeofenceRequestsEnabled$android_sdk_base_release(Boolean bool) {
            this.automaticGeofenceRequestsEnabled = bool;
        }

        public final Builder setBadNetworkDataFlushInterval(int badNetworkIntervalSeconds) {
            this.badNetworkInterval = Integer.valueOf(badNetworkIntervalSeconds);
            return this;
        }

        public final void setBadNetworkInterval$android_sdk_base_release(Integer num) {
            this.badNetworkInterval = num;
        }

        public final void setBrazeSdkMetadata$android_sdk_base_release(EnumSet<BrazeSdkMetadata> enumSet) {
            this.brazeSdkMetadata = enumSet;
        }

        public final Builder setContentCardsUnreadVisualIndicatorEnabled(boolean contentCardsUnreadVisualIndicatorEnabled) {
            this.isContentCardsUnreadVisualIndicatorEnabled = Boolean.valueOf(contentCardsUnreadVisualIndicatorEnabled);
            return this;
        }

        public final void setContentCardsUnreadVisualIndicatorEnabled$android_sdk_base_release(Boolean bool) {
            this.isContentCardsUnreadVisualIndicatorEnabled = bool;
        }

        public final Builder setCustomEndpoint(String customEndpoint) {
            Intrinsics.checkNotNullParameter(customEndpoint, "customEndpoint");
            this.customEndpoint = customEndpoint;
            return this;
        }

        public final void setCustomEndpoint$android_sdk_base_release(String str) {
            this.customEndpoint = str;
        }

        public final void setCustomHtmlWebViewActivityClassName$android_sdk_base_release(String str) {
            this.customHtmlWebViewActivityClassName = str;
        }

        public final Builder setCustomLocationProviderNames(EnumSet<LocationProviderName> locationProviderNames) {
            Intrinsics.checkNotNullParameter(locationProviderNames, "locationProviderNames");
            this.customLocationProviderNames = locationProviderNames;
            return this;
        }

        public final void setCustomLocationProviderNames$android_sdk_base_release(EnumSet<LocationProviderName> enumSet) {
            this.customLocationProviderNames = enumSet;
        }

        public final Builder setCustomWebViewActivityClass(Class<?> customWebViewActivityClass) {
            Intrinsics.checkNotNullParameter(customWebViewActivityClass, "customWebViewActivityClass");
            this.customHtmlWebViewActivityClassName = customWebViewActivityClass.getName();
            return this;
        }

        public final Builder setDefaultNotificationAccentColor(int defaultNotificationAccentColor) {
            this.defaultNotificationAccentColor = Integer.valueOf(defaultNotificationAccentColor);
            return this;
        }

        public final void setDefaultNotificationAccentColor$android_sdk_base_release(Integer num) {
            this.defaultNotificationAccentColor = num;
        }

        public final Builder setDefaultNotificationChannelDescription(String description) {
            Intrinsics.checkNotNullParameter(description, "description");
            if (StringsKt.isBlank(description)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfig$Builder$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeConfig.Builder.setDefaultNotificationChannelDescription$lambda$2();
                    }
                }, 6, (Object) null);
            } else {
                this.defaultNotificationChannelDescription = description;
            }
            return this;
        }

        public final void setDefaultNotificationChannelDescription$android_sdk_base_release(String str) {
            this.defaultNotificationChannelDescription = str;
        }

        public final Builder setDefaultNotificationChannelName(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            if (StringsKt.isBlank(name)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfig$Builder$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeConfig.Builder.setDefaultNotificationChannelName$lambda$1();
                    }
                }, 6, (Object) null);
            } else {
                this.defaultNotificationChannelName = name;
            }
            return this;
        }

        public final void setDefaultNotificationChannelName$android_sdk_base_release(String str) {
            this.defaultNotificationChannelName = str;
        }

        public final Builder setDeviceObjectAllowlist(EnumSet<DeviceKey> deviceObjectAllowlist) {
            Intrinsics.checkNotNullParameter(deviceObjectAllowlist, "deviceObjectAllowlist");
            this.deviceObjectAllowlist = deviceObjectAllowlist;
            return this;
        }

        public final void setDeviceObjectAllowlist$android_sdk_base_release(EnumSet<DeviceKey> enumSet) {
            this.deviceObjectAllowlist = enumSet;
        }

        public final Builder setDeviceObjectAllowlistEnabled(boolean enabled) {
            this.isDeviceObjectAllowlistEnabled = Boolean.valueOf(enabled);
            return this;
        }

        public final void setDeviceObjectAllowlistEnabled$android_sdk_base_release(Boolean bool) {
            this.isDeviceObjectAllowlistEnabled = bool;
        }

        @Deprecated(message = "Use {@link #setDeviceObjectAllowlist(EnumSet)}", replaceWith = @ReplaceWith(expression = "setDeviceObjectAllowlist", imports = {}))
        public final Builder setDeviceObjectWhitelist(EnumSet<DeviceKey> deviceObjectAllowlist) {
            Intrinsics.checkNotNullParameter(deviceObjectAllowlist, "deviceObjectAllowlist");
            return setDeviceObjectAllowlist(deviceObjectAllowlist);
        }

        @Deprecated(message = "Use {@link #setDeviceObjectAllowlistEnabled(boolean)}", replaceWith = @ReplaceWith(expression = "setDeviceObjectAllowlistEnabled", imports = {}))
        public final Builder setDeviceObjectWhitelistEnabled(boolean enabled) {
            return setDeviceObjectAllowlistEnabled(enabled);
        }

        public final Builder setDoesPushStoryDismissOnClick(boolean enabled) {
            this.doesPushStoryDismissOnClick = Boolean.valueOf(enabled);
            return this;
        }

        public final void setDoesPushStoryDismissOnClick$android_sdk_base_release(Boolean bool) {
            this.doesPushStoryDismissOnClick = bool;
        }

        public final Builder setFallbackFirebaseMessagingServiceClasspath(String classpath) {
            Intrinsics.checkNotNullParameter(classpath, "classpath");
            this.fallbackFirebaseMessagingServiceClasspath = classpath;
            return this;
        }

        public final void setFallbackFirebaseMessagingServiceClasspath$android_sdk_base_release(String str) {
            this.fallbackFirebaseMessagingServiceClasspath = str;
        }

        public final Builder setFallbackFirebaseMessagingServiceEnabled(boolean enabled) {
            this.isFallbackFirebaseMessagingServiceEnabled = Boolean.valueOf(enabled);
            return this;
        }

        public final void setFallbackFirebaseMessagingServiceEnabled$android_sdk_base_release(Boolean bool) {
            this.isFallbackFirebaseMessagingServiceEnabled = bool;
        }

        public final void setFirebaseCloudMessagingRegistrationEnabled$android_sdk_base_release(Boolean bool) {
            this.isFirebaseCloudMessagingRegistrationEnabled = bool;
        }

        public final Builder setFirebaseCloudMessagingSenderIdKey(String firebaseSenderId) {
            Intrinsics.checkNotNullParameter(firebaseSenderId, "firebaseSenderId");
            if (StringsKt.isBlank(firebaseSenderId)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfig$Builder$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeConfig.Builder.setFirebaseCloudMessagingSenderIdKey$lambda$22();
                    }
                }, 6, (Object) null);
            } else {
                this.firebaseCloudMessagingSenderIdKey = firebaseSenderId;
            }
            return this;
        }

        public final void setFirebaseCloudMessagingSenderIdKey$android_sdk_base_release(String str) {
            this.firebaseCloudMessagingSenderIdKey = str;
        }

        public final void setFirebaseMessagingServiceOnNewTokenRegistrationEnabled$android_sdk_base_release(Boolean bool) {
            this.isFirebaseMessagingServiceOnNewTokenRegistrationEnabled = bool;
        }

        public final Builder setGeofencesEnabled(boolean enabled) {
            this.isGeofencesEnabled = Boolean.valueOf(enabled);
            return this;
        }

        public final void setGeofencesEnabled$android_sdk_base_release(Boolean bool) {
            this.isGeofencesEnabled = bool;
        }

        public final Builder setGoodNetworkDataFlushInterval(int goodNetworkIntervalSeconds) {
            this.goodNetworkInterval = Integer.valueOf(goodNetworkIntervalSeconds);
            return this;
        }

        public final void setGoodNetworkInterval$android_sdk_base_release(Integer num) {
            this.goodNetworkInterval = num;
        }

        public final Builder setGreatNetworkDataFlushInterval(int greatNetworkIntervalSeconds) {
            this.greatNetworkInterval = Integer.valueOf(greatNetworkIntervalSeconds);
            return this;
        }

        public final void setGreatNetworkInterval$android_sdk_base_release(Integer num) {
            this.greatNetworkInterval = num;
        }

        public final Builder setHandlePushDeepLinksAutomatically(boolean handlePushDeepLinksAutomatically) {
            this.handlePushDeepLinksAutomatically = Boolean.valueOf(handlePushDeepLinksAutomatically);
            return this;
        }

        public final void setHandlePushDeepLinksAutomatically$android_sdk_base_release(Boolean bool) {
            this.handlePushDeepLinksAutomatically = bool;
        }

        public final void setHtmlInAppMessageApplyWindowInsetsEnabled$android_sdk_base_release(Boolean bool) {
            this.isHtmlInAppMessageApplyWindowInsetsEnabled = bool;
        }

        public final void setHtmlInAppMessageHtmlLinkTargetEnabled$android_sdk_base_release(Boolean bool) {
            this.isHtmlInAppMessageHtmlLinkTargetEnabled = bool;
        }

        public final void setInAppMessageAccessibilityExclusiveModeEnabled$android_sdk_base_release(Boolean bool) {
            this.isInAppMessageAccessibilityExclusiveModeEnabled = bool;
        }

        public final Builder setInAppMessageTestPushEagerDisplayEnabled(boolean enabled) {
            this.inAppMessageTestPushEagerDisplayEnabled = Boolean.valueOf(enabled);
            return this;
        }

        public final void setInAppMessageTestPushEagerDisplayEnabled$android_sdk_base_release(Boolean bool) {
            this.inAppMessageTestPushEagerDisplayEnabled = bool;
        }

        public final Builder setInAppMessageWebViewClientMaxOnPageFinishedWaitMs(final int maxOnPageFinishedWaitMs) {
            if (maxOnPageFinishedWaitMs >= 0) {
                this.inAppMessageWebViewClientMaxOnPageFinishedWaitMs = Integer.valueOf(maxOnPageFinishedWaitMs);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.BrazeConfig$Builder$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeConfig.Builder.setInAppMessageWebViewClientMaxOnPageFinishedWaitMs$lambda$35(maxOnPageFinishedWaitMs);
                    }
                }, 6, (Object) null);
            }
            return this;
        }

        public final void setInAppMessageWebViewClientMaxOnPageFinishedWaitMs$android_sdk_base_release(Integer num) {
            this.inAppMessageWebViewClientMaxOnPageFinishedWaitMs = num;
        }

        public final Builder setIsFirebaseCloudMessagingRegistrationEnabled(boolean firebaseMessagingRegistrationEnabled) {
            this.isFirebaseCloudMessagingRegistrationEnabled = Boolean.valueOf(firebaseMessagingRegistrationEnabled);
            return this;
        }

        public final Builder setIsFirebaseMessagingServiceOnNewTokenRegistrationEnabled(boolean enabled) {
            this.isFirebaseMessagingServiceOnNewTokenRegistrationEnabled = Boolean.valueOf(enabled);
            return this;
        }

        public final Builder setIsHtmlInAppMessageApplyWindowInsetsEnabled(boolean enabled) {
            this.isHtmlInAppMessageApplyWindowInsetsEnabled = Boolean.valueOf(enabled);
            return this;
        }

        public final Builder setIsHtmlInAppMessageHtmlLinkTargetEnabled(boolean enabled) {
            this.isHtmlInAppMessageHtmlLinkTargetEnabled = Boolean.valueOf(enabled);
            return this;
        }

        public final Builder setIsInAppMessageAccessibilityExclusiveModeEnabled(boolean enabled) {
            this.isInAppMessageAccessibilityExclusiveModeEnabled = Boolean.valueOf(enabled);
            return this;
        }

        public final Builder setIsLocationCollectionEnabled(boolean isLocationCollectionEnabled) {
            this.isLocationCollectionEnabled = Boolean.valueOf(isLocationCollectionEnabled);
            return this;
        }

        public final Builder setIsPushWakeScreenForNotificationEnabled(boolean enabled) {
            this.isPushWakeScreenForNotificationEnabled = Boolean.valueOf(enabled);
            return this;
        }

        public final Builder setIsSdkAuthenticationEnabled(boolean enabled) {
            this.isSdkAuthEnabled = Boolean.valueOf(enabled);
            return this;
        }

        public final Builder setIsSessionStartBasedTimeoutEnabled(boolean isSessionStartBasedTimeoutEnabled) {
            this.isSessionStartBasedTimeoutEnabled = Boolean.valueOf(isSessionStartBasedTimeoutEnabled);
            return this;
        }

        public final Builder setIsTouchModeRequiredForHtmlInAppMessages(boolean required) {
            this.isTouchModeRequiredForHtmlInAppMessages = Boolean.valueOf(required);
            return this;
        }

        public final Builder setLargeNotificationIcon(String largeNotificationIconName) {
            Intrinsics.checkNotNullParameter(largeNotificationIconName, "largeNotificationIconName");
            this.largeNotificationIconName = largeNotificationIconName;
            return this;
        }

        public final void setLargeNotificationIconName$android_sdk_base_release(String str) {
            this.largeNotificationIconName = str;
        }

        public final void setLocationCollectionEnabled$android_sdk_base_release(Boolean bool) {
            this.isLocationCollectionEnabled = bool;
        }

        public final void setNewsFeedVisualIndicatorOn$android_sdk_base_release(Boolean bool) {
            this.isNewsFeedVisualIndicatorOn = bool;
        }

        public final Builder setNewsfeedVisualIndicatorOn(boolean newsfeedVisualIndicatorOn) {
            this.isNewsFeedVisualIndicatorOn = Boolean.valueOf(newsfeedVisualIndicatorOn);
            return this;
        }

        public final Builder setOptInWhenPushAuthorized(boolean enabled) {
            this.shouldOptInWhenPushAuthorized = Boolean.valueOf(enabled);
            return this;
        }

        public final Builder setPushDeepLinkBackStackActivityClass(Class<?> pushDeepLinkActivityClass) {
            Intrinsics.checkNotNullParameter(pushDeepLinkActivityClass, "pushDeepLinkActivityClass");
            this.pushDeepLinkBackStackActivityClassName = pushDeepLinkActivityClass.getName();
            return this;
        }

        public final void setPushDeepLinkBackStackActivityClassName$android_sdk_base_release(String str) {
            this.pushDeepLinkBackStackActivityClassName = str;
        }

        public final Builder setPushDeepLinkBackStackActivityEnabled(boolean pushDeepLinkBackStackActivityEnabled) {
            this.isPushDeepLinkBackStackActivityEnabled = Boolean.valueOf(pushDeepLinkBackStackActivityEnabled);
            return this;
        }

        public final void setPushDeepLinkBackStackActivityEnabled$android_sdk_base_release(Boolean bool) {
            this.isPushDeepLinkBackStackActivityEnabled = bool;
        }

        public final Builder setPushHtmlRenderingEnabled(boolean enabled) {
            this.isPushHtmlRenderingEnabled = Boolean.valueOf(enabled);
            return this;
        }

        public final void setPushHtmlRenderingEnabled$android_sdk_base_release(Boolean bool) {
            this.isPushHtmlRenderingEnabled = bool;
        }

        public final void setPushWakeScreenForNotificationEnabled$android_sdk_base_release(Boolean bool) {
            this.isPushWakeScreenForNotificationEnabled = bool;
        }

        public final void setSdkAuthEnabled$android_sdk_base_release(Boolean bool) {
            this.isSdkAuthEnabled = bool;
        }

        public final Builder setSdkFlavor(SdkFlavor sdkFlavor) {
            this.sdkFlavor = sdkFlavor;
            return this;
        }

        public final void setSdkFlavor$android_sdk_base_release(SdkFlavor sdkFlavor) {
            this.sdkFlavor = sdkFlavor;
        }

        public final Builder setSdkMetadata(EnumSet<BrazeSdkMetadata> sdkMetadata) {
            this.brazeSdkMetadata = sdkMetadata;
            return this;
        }

        public final Builder setServerTarget(String serverTarget) {
            Intrinsics.checkNotNullParameter(serverTarget, "serverTarget");
            this.serverTarget = serverTarget;
            return this;
        }

        public final void setServerTarget$android_sdk_base_release(String str) {
            this.serverTarget = str;
        }

        public final void setSessionStartBasedTimeoutEnabled$android_sdk_base_release(Boolean bool) {
            this.isSessionStartBasedTimeoutEnabled = bool;
        }

        public final Builder setSessionTimeout(int sessionTimeoutSeconds) {
            this.sessionTimeout = Integer.valueOf(sessionTimeoutSeconds);
            return this;
        }

        public final void setSessionTimeout$android_sdk_base_release(Integer num) {
            this.sessionTimeout = num;
        }

        public final Builder setShouldAddStatusBarPaddingToInAppMessages(boolean enabled) {
            this.shouldAddStatusBarPaddingToInAppMessages = Boolean.valueOf(enabled);
            return this;
        }

        public final void setShouldAddStatusBarPaddingToInAppMessages$android_sdk_base_release(Boolean bool) {
            this.shouldAddStatusBarPaddingToInAppMessages = bool;
        }

        public final void setShouldOptInWhenPushAuthorized$android_sdk_base_release(Boolean bool) {
            this.shouldOptInWhenPushAuthorized = bool;
        }

        public final Builder setShouldPersistWebViewWhenBackgroundingApp(boolean enabled) {
            this.shouldPersistWebViewWhenBackgroundingApp = Boolean.valueOf(enabled);
            return this;
        }

        public final void setShouldPersistWebViewWhenBackgroundingApp$android_sdk_base_release(Boolean bool) {
            this.shouldPersistWebViewWhenBackgroundingApp = bool;
        }

        public final Builder setShouldUseWindowFlagSecureInActivities(boolean enabled) {
            this.shouldUseWindowFlagSecureInActivities = Boolean.valueOf(enabled);
            return this;
        }

        public final void setShouldUseWindowFlagSecureInActivities$android_sdk_base_release(Boolean bool) {
            this.shouldUseWindowFlagSecureInActivities = bool;
        }

        public final Builder setSmallNotificationIcon(String smallNotificationIconName) {
            Intrinsics.checkNotNullParameter(smallNotificationIconName, "smallNotificationIconName");
            this.smallNotificationIconName = smallNotificationIconName;
            return this;
        }

        public final void setSmallNotificationIconName$android_sdk_base_release(String str) {
            this.smallNotificationIconName = str;
        }

        public final void setTouchModeRequiredForHtmlInAppMessages$android_sdk_base_release(Boolean bool) {
            this.isTouchModeRequiredForHtmlInAppMessages = bool;
        }

        public final Builder setTriggerActionMinimumTimeIntervalSeconds(int triggerActionMinimumTimeIntervalSeconds) {
            this.triggerActionMinimumTimeIntervalSeconds = Integer.valueOf(triggerActionMinimumTimeIntervalSeconds);
            return this;
        }

        public final void setTriggerActionMinimumTimeIntervalSeconds$android_sdk_base_release(Integer num) {
            this.triggerActionMinimumTimeIntervalSeconds = num;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Builder(apiKey=");
            sb.append(this.apiKey).append(", serverTarget=").append(this.serverTarget).append(", smallNotificationIconName=").append(this.smallNotificationIconName).append(", largeNotificationIconName=").append(this.largeNotificationIconName).append(", customEndpoint=").append(this.customEndpoint).append(", defaultNotificationChannelName=").append(this.defaultNotificationChannelName).append(", defaultNotificationChannelDescription=").append(this.defaultNotificationChannelDescription).append(", pushDeepLinkBackStackActivityClassName=").append(this.pushDeepLinkBackStackActivityClassName).append(", firebaseCloudMessagingSenderIdKey=").append(this.firebaseCloudMessagingSenderIdKey).append(", customHtmlWebViewActivityClassName=").append(this.customHtmlWebViewActivityClassName).append(", sdkFlavor=").append(this.sdkFlavor).append(", sessionTimeout=");
            sb.append(this.sessionTimeout).append(", defaultNotificationAccentColor=").append(this.defaultNotificationAccentColor).append(", triggerActionMinimumTimeIntervalSeconds=").append(this.triggerActionMinimumTimeIntervalSeconds).append(", badNetworkInterval=").append(this.badNetworkInterval).append(", goodNetworkInterval=").append(this.goodNetworkInterval).append(", greatNetworkInterval=").append(this.greatNetworkInterval).append(", inAppMessageWebViewClientMaxOnPageFinishedWaitMs=").append(this.inAppMessageWebViewClientMaxOnPageFinishedWaitMs).append(", admMessagingRegistrationEnabled=").append(this.admMessagingRegistrationEnabled).append(", handlePushDeepLinksAutomatically=").append(this.handlePushDeepLinksAutomatically).append(", isLocationCollectionEnabled=").append(this.isLocationCollectionEnabled).append(", isNewsFeedVisualIndicatorOn=").append(this.isNewsFeedVisualIndicatorOn).append(", isPushDeepLinkBackStackActivityEnabled=").append(this.isPushDeepLinkBackStackActivityEnabled);
            sb.append(", isSessionStartBasedTimeoutEnabled=").append(this.isSessionStartBasedTimeoutEnabled).append(", isFirebaseCloudMessagingRegistrationEnabled=").append(this.isFirebaseCloudMessagingRegistrationEnabled).append(", isContentCardsUnreadVisualIndicatorEnabled=").append(this.isContentCardsUnreadVisualIndicatorEnabled).append(", isInAppMessageAccessibilityExclusiveModeEnabled=").append(this.isInAppMessageAccessibilityExclusiveModeEnabled).append(", isPushWakeScreenForNotificationEnabled=").append(this.isPushWakeScreenForNotificationEnabled).append(", isPushHtmlRenderingEnabled=").append(this.isPushHtmlRenderingEnabled).append(", isGeofencesEnabled=").append(this.isGeofencesEnabled).append(", inAppMessageTestPushEagerDisplayEnabled=").append(this.inAppMessageTestPushEagerDisplayEnabled).append(", automaticGeofenceRequestsEnabled=").append(this.automaticGeofenceRequestsEnabled).append(", isFirebaseMessagingServiceOnNewTokenRegistrationEnabled=").append(this.isFirebaseMessagingServiceOnNewTokenRegistrationEnabled).append(", isTouchModeRequiredForHtmlInAppMessages=").append(this.isTouchModeRequiredForHtmlInAppMessages).append(", isSdkAuthEnabled=");
            sb.append(this.isSdkAuthEnabled).append(", deviceObjectAllowlist=").append(this.deviceObjectAllowlist).append(", isDeviceObjectAllowlistEnabled=").append(this.isDeviceObjectAllowlistEnabled).append(", brazeSdkMetadata=").append(this.brazeSdkMetadata).append(", customLocationProviderNames=").append(this.customLocationProviderNames).append(", isHtmlInAppMessageApplyWindowInsetsEnabled=").append(this.isHtmlInAppMessageApplyWindowInsetsEnabled).append(", isHtmlInAppMessageHtmlLinkTargetEnabled=").append(this.isHtmlInAppMessageHtmlLinkTargetEnabled).append(", doesPushStoryDismissOnClick=").append(this.doesPushStoryDismissOnClick).append(", isFallbackFirebaseMessagingServiceEnabled=").append(this.isFallbackFirebaseMessagingServiceEnabled).append(", fallbackFirebaseMessagingServiceClasspath=").append(this.fallbackFirebaseMessagingServiceClasspath).append(", shouldOptInWhenPushAuthorized=").append(this.shouldOptInWhenPushAuthorized).append(", shouldUseWindowFlagSecureInActivities=").append(this.shouldUseWindowFlagSecureInActivities);
            sb.append(", shouldAddStatusBarPaddingToInAppMessages=").append(this.shouldAddStatusBarPaddingToInAppMessages).append("))");
            return sb.toString();
        }

        public /* synthetic */ Builder(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, SdkFlavor sdkFlavor, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, Integer num7, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, Boolean bool9, Boolean bool10, Boolean bool11, Boolean bool12, Boolean bool13, Boolean bool14, Boolean bool15, Boolean bool16, Boolean bool17, EnumSet enumSet, Boolean bool18, EnumSet enumSet2, EnumSet enumSet3, Boolean bool19, Boolean bool20, Boolean bool21, Boolean bool22, String str11, Boolean bool23, Boolean bool24, Boolean bool25, Boolean bool26, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7, (i & 128) != 0 ? null : str8, (i & 256) != 0 ? null : str9, (i & 512) != 0 ? null : str10, (i & 1024) != 0 ? null : sdkFlavor, (i & 2048) != 0 ? null : num, (i & 4096) != 0 ? null : num2, (i & 8192) != 0 ? null : num3, (i & 16384) != 0 ? null : num4, (i & 32768) != 0 ? null : num5, (i & 65536) != 0 ? null : num6, (i & 131072) != 0 ? null : num7, (i & 262144) != 0 ? null : bool, (i & 524288) != 0 ? null : bool2, (i & 1048576) != 0 ? null : bool3, (i & 2097152) != 0 ? null : bool4, (i & 4194304) != 0 ? null : bool5, (i & 8388608) != 0 ? null : bool6, (i & 16777216) != 0 ? null : bool7, (i & 33554432) != 0 ? null : bool8, (i & AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL) != 0 ? null : bool9, (i & 134217728) != 0 ? null : bool10, (i & 268435456) != 0 ? null : bool11, (i & PKIFailureInfo.duplicateCertReq) != 0 ? null : bool12, (i & 1073741824) != 0 ? null : bool13, (i & Integer.MIN_VALUE) != 0 ? null : bool14, (i2 & 1) != 0 ? null : bool15, (i2 & 2) != 0 ? null : bool16, (i2 & 4) != 0 ? null : bool17, (i2 & 8) != 0 ? null : enumSet, (i2 & 16) != 0 ? null : bool18, (i2 & 32) != 0 ? null : enumSet2, (i2 & 64) != 0 ? null : enumSet3, (i2 & 128) != 0 ? null : bool19, (i2 & 256) != 0 ? null : bool20, (i2 & 512) != 0 ? null : bool21, (i2 & 1024) != 0 ? null : bool22, (i2 & 2048) != 0 ? null : str11, (i2 & 4096) != 0 ? null : bool23, (i2 & 8192) != 0 ? null : bool24, (i2 & 16384) != 0 ? null : bool25, (i2 & 32768) != 0 ? null : bool26);
        }

        public Builder() {
            this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -2, 65535, null);
        }
    }
}

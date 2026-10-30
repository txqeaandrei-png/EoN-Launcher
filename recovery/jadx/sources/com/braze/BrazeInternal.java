package com.braze;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.enums.BrazePushEventType;
import com.braze.enums.GeofenceTransitionType;
import com.braze.events.InAppMessageEvent;
import com.braze.models.IBrazeLocation;
import com.braze.models.push.BrazeNotificationPayload;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0007J \u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\"\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u000eH\u0007J\u0018\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0018\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0010\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0018\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0016\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001dJ\u001e\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u001e\u0010$\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020'J\u000e\u0010(\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010)\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u000eJ\u0016\u0010*\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u000eJ\u000e\u0010,\u001a\u00020-2\u0006\u0010\u0006\u001a\u00020\u0007J\u001e\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u000e2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\tJ\u0010\u00103\u001a\u0002042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002¨\u00065"}, d2 = {"Lcom/braze/BrazeInternal;", "", "<init>", "()V", "requestGeofenceRefresh", "", "context", "Landroid/content/Context;", "ignoreRateLimit", "", "location", "Lcom/braze/models/IBrazeLocation;", "recordGeofenceTransition", "geofenceId", "", "transitionType", "Lcom/braze/enums/GeofenceTransitionType;", "refreshFeatureFlags", "refreshBanners", "addSerializedContentCardToStorage", "serializedCardJson", "userId", "logLocationRecordedEvent", "handleInAppMessageTestPush", "intent", "Landroid/content/Intent;", "applyPendingRuntimeConfiguration", "retryInAppMessage", "inAppMessageEvent", "Lcom/braze/events/InAppMessageEvent;", "reenqueueInAppMessage", "publishBrazePushAction", "pushActionType", "Lcom/braze/enums/BrazePushEventType;", "payload", "Lcom/braze/models/push/BrazeNotificationPayload;", "logPushDelivery", "campaignId", "waitTimeMs", "", "performPushDeliveryFlush", "logPushCampaign", "validateAndStorePushId", "pushId", "getConfigurationProvider", "Lcom/braze/configuration/BrazeConfigurationProvider;", "addBannerViewMonitor", "placementId", "view", "Landroid/view/View;", "skipImpressionMonitoring", "getInstance", "Lcom/braze/Braze;", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeInternal {
    public static final BrazeInternal INSTANCE = new BrazeInternal();

    private BrazeInternal() {
    }

    @JvmStatic
    public static final void addSerializedContentCardToStorage(Context context, String serializedCardJson, String userId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(serializedCardJson, "serializedCardJson");
        INSTANCE.getInstance(context).addSerializedCardJsonToStorage$android_sdk_base_release(serializedCardJson, userId);
    }

    @JvmStatic
    public static final void applyPendingRuntimeConfiguration(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        INSTANCE.getInstance(context).applyPendingRuntimeConfiguration$android_sdk_base_release();
    }

    private final Braze getInstance(Context context) {
        return Braze.INSTANCE.getInstance(context);
    }

    @JvmStatic
    public static final void handleInAppMessageTestPush(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        INSTANCE.getInstance(context).handleInAppMessageTestPush$android_sdk_base_release(intent);
    }

    @JvmStatic
    public static final void logLocationRecordedEvent(Context context, IBrazeLocation location) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(location, "location");
        INSTANCE.getInstance(context).logLocationRecordedEventFromLocationUpdate$android_sdk_base_release(location);
    }

    @JvmStatic
    public static final void recordGeofenceTransition(Context context, String geofenceId, GeofenceTransitionType transitionType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(geofenceId, "geofenceId");
        Intrinsics.checkNotNullParameter(transitionType, "transitionType");
        INSTANCE.getInstance(context).recordGeofenceTransition$android_sdk_base_release(geofenceId, transitionType);
    }

    @JvmStatic
    public static final void refreshBanners(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        INSTANCE.getInstance(context).handleInternalBannerRefresh$android_sdk_base_release();
    }

    @JvmStatic
    public static final void refreshFeatureFlags(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        INSTANCE.getInstance(context).refreshFeatureFlags();
    }

    @JvmStatic
    public static final void requestGeofenceRefresh(Context context, boolean ignoreRateLimit) {
        Intrinsics.checkNotNullParameter(context, "context");
        INSTANCE.getInstance(context).requestGeofenceRefresh$android_sdk_base_release(ignoreRateLimit);
    }

    @JvmStatic
    public static final void retryInAppMessage(Context context, InAppMessageEvent inAppMessageEvent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(inAppMessageEvent, "inAppMessageEvent");
        INSTANCE.getInstance(context).retryInAppMessage$android_sdk_base_release(inAppMessageEvent);
    }

    public final void addBannerViewMonitor(String placementId, View view, boolean skipImpressionMonitoring) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(view, "view");
        com.braze.managers.g gVar = com.braze.managers.h.k;
        com.braze.managers.g.a(placementId, view, skipImpressionMonitoring);
    }

    public final BrazeConfigurationProvider getConfigurationProvider(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return getInstance(context).getConfigurationProviderSafe$android_sdk_base_release(context);
    }

    public final /* synthetic */ void logPushCampaign(Context context, String campaignId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        getInstance(context).logPushMaxCampaign$android_sdk_base_release(campaignId);
    }

    public final /* synthetic */ void logPushDelivery(Context context, String campaignId, long waitTimeMs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        getInstance(context).logPushDelivery$android_sdk_base_release(campaignId, waitTimeMs);
    }

    public final /* synthetic */ void performPushDeliveryFlush(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        getInstance(context).performPushDeliveryFlush$android_sdk_base_release();
    }

    public final /* synthetic */ void publishBrazePushAction(Context context, BrazePushEventType pushActionType, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pushActionType, "pushActionType");
        Intrinsics.checkNotNullParameter(payload, "payload");
        getInstance(context).publishBrazePushAction$android_sdk_base_release(pushActionType, payload);
    }

    public final void reenqueueInAppMessage(Context context, InAppMessageEvent inAppMessageEvent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(inAppMessageEvent, "inAppMessageEvent");
        getInstance(context).reenqueueInAppMessage$android_sdk_base_release(inAppMessageEvent);
    }

    public final /* synthetic */ boolean validateAndStorePushId(Context context, String pushId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pushId, "pushId");
        return getInstance(context).validateAndStorePushId$android_sdk_base_release(pushId);
    }

    @JvmStatic
    public static final void requestGeofenceRefresh(Context context, IBrazeLocation location) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(location, "location");
        INSTANCE.getInstance(context).requestGeofenceRefresh$android_sdk_base_release(location);
    }
}

package com.braze.push;

import android.app.AlarmManager;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.braze.Braze;
import com.braze.BrazeInternal;
import com.braze.Constants;
import com.braze.IBrazeNotificationFactory;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.enums.BrazePushEventType;
import com.braze.enums.BrazeViewBounds;
import com.braze.enums.Channel;
import com.braze.events.BrazePushEvent;
import com.braze.models.inappmessage.InAppMessageBase;
import com.braze.models.push.BrazeNotificationPayload;
import com.braze.push.support.HtmlUtils;
import com.braze.support.BrazeLogger;
import com.braze.support.IntentUtils;
import com.braze.support.JsonUtils;
import com.braze.support.PermissionUtils;
import com.braze.ui.BrazeDeeplinkHandler;
import com.braze.ui.actions.UriAction;
import com.braze.ui.support.UriUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001[B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0018\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J*\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\f\u0010\u001e\u001a\u00020\u001d*\u00020\u0014H\u0007J\u0010\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J \u0010 \u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010$\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010%\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010&\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#H\u0007J.\u0010'\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010(\u001a\b\u0012\u0002\b\u0003\u0018\u00010\f2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020*H\u0007J\u0010\u0010,\u001a\u00020*2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010-\u001a\u00020*2\u0006\u0010\"\u001a\u00020#H\u0007J\"\u0010.\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010/\u001a\u0002002\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0007J\u0010\u0010.\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u00101\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u00102\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u00105\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u00106\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\"\u00107\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u00103\u001a\u0002042\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0007J\"\u00108\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u00103\u001a\u0002042\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0007J\u0018\u00109\u001a\u00020*2\u0006\u0010:\u001a\u0002002\u0006\u00103\u001a\u000204H\u0007J\u0018\u0010;\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010<\u001a\u00020\u001d2\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010=\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010>\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010?\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010@\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010A\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010B\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010C\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010D\u001a\u00020\u001d2\u0006\u0010E\u001a\u00020*H\u0007J\u001c\u0010F\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010G\u001a\u0004\u0018\u00010\u0005H\u0007J\u0018\u0010H\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0018\u0010I\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010)\u001a\u00020*H\u0007J\u0010\u0010J\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u001aH\u0007J\u0010\u0010K\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010L\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010M\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0010\u0010N\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010O\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u001c\u0010P\u001a\u0004\u0018\u00010Q2\u0006\u0010R\u001a\u00020S2\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0007J\"\u0010T\u001a\u00020U2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010V\u001a\u00020\u00052\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0002J.\u0010W\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010X\u001a\u00020Y2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#H\u0002J\"\u0010W\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010Z\u001a\u00020\u00142\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b8G¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0015\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\f8G¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\\"}, d2 = {"Lcom/braze/push/BrazeNotificationUtils;", "", "<init>", "()V", "TAG", "", "SOURCE_KEY", "activeNotificationFactory", "Lcom/braze/IBrazeNotificationFactory;", "getActiveNotificationFactory", "()Lcom/braze/IBrazeNotificationFactory;", "notificationReceiverClass", "Ljava/lang/Class;", "getNotificationReceiverClass", "()Ljava/lang/Class;", "handleNotificationOpened", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "handleNotificationDeleted", "routeUserWithNotificationOpenedIntent", "brazePush", "Lcom/braze/events/BrazePushEvent;", InAppMessageBase.EXTRAS, "Landroid/os/Bundle;", "deepLink", "useWebView", "", "isBrazePushMessage", "isNotificationMessage", "sendPushMessageReceivedBroadcast", "notificationExtras", "payload", "Lcom/braze/models/push/BrazeNotificationPayload;", "requestGeofenceRefreshIfAppropriate", "refreshFeatureFlagsIfAppropriate", "refreshBannersIfAppropriate", "setNotificationDurationAlarm", "thisClass", "notificationId", "", "durationInMillis", "getNotificationId", "getNotificationPriority", "wakeScreenIfAppropriate", "configurationProvider", "Lcom/braze/configuration/BrazeConfigurationProvider;", "prefetchBitmapsIfNewlyReceivedStoryPush", "setTitleIfPresent", "notificationBuilder", "Landroidx/core/app/NotificationCompat$Builder;", "setContentIfPresent", "setTickerIfPresent", "setContentIntentIfPresent", "setDeleteIntent", "setSmallIcon", "appConfigurationProvider", "setSetShowWhen", "setLargeIconIfPresentAndSupported", "setSoundIfPresentAndSupported", "setSummaryTextIfPresentAndSupported", "setPriorityIfPresentAndSupported", "setAccentColorIfPresentAndSupported", "setCategoryIfPresentAndSupported", "setVisibilityIfPresentAndSupported", "setPublicVersionIfPresentAndSupported", "isValidNotificationVisibility", "visibility", "logBaiduNotificationClick", "customContentString", "handleCancelNotificationAction", "cancelNotification", "isUninstallTrackingPush", "getOrCreateNotificationChannelId", "setNotificationBadgeNumberIfPresent", "handlePushStoryPageClicked", "handleContentCardsSerializedCardIfPresent", "sendNotificationOpenedBroadcast", "getValidNotificationChannel", "Landroid/app/NotificationChannel;", "notificationManager", "Landroid/app/NotificationManager;", "getPushActionPendingIntent", "Landroid/app/PendingIntent;", "action", "sendPushActionIntent", "broadcastType", "Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;", "pushIntent", "BrazeNotificationBroadcastType", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeNotificationUtils {
    private static final String SOURCE_KEY = "source";
    public static final BrazeNotificationUtils INSTANCE = new BrazeNotificationUtils();
    private static final String TAG = BrazeLogger.getBrazeLogTag((Class<?>) BrazeNotificationUtils.class);

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BrazeNotificationBroadcastType.values().length];
            try {
                iArr[BrazeNotificationBroadcastType.OPENED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BrazeNotificationBroadcastType.RECEIVED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BrazeNotificationBroadcastType.DELETED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @JvmStatic
    public static final boolean isValidNotificationVisibility(int visibility) {
        return visibility == -1 || visibility == 0 || visibility == 1;
    }

    private BrazeNotificationUtils() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;", "", "brazePushEventType", "Lcom/braze/enums/BrazePushEventType;", "<init>", "(Ljava/lang/String;ILcom/braze/enums/BrazePushEventType;)V", "getBrazePushEventType", "()Lcom/braze/enums/BrazePushEventType;", "OPENED", "RECEIVED", "DELETED", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    enum BrazeNotificationBroadcastType {
        OPENED(BrazePushEventType.NOTIFICATION_OPENED),
        RECEIVED(BrazePushEventType.NOTIFICATION_RECEIVED),
        DELETED(BrazePushEventType.NOTIFICATION_DELETED);

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
        private final BrazePushEventType brazePushEventType;

        public static EnumEntries<BrazeNotificationBroadcastType> getEntries() {
            return $ENTRIES;
        }

        BrazeNotificationBroadcastType(BrazePushEventType brazePushEventType) {
            this.brazePushEventType = brazePushEventType;
        }

        public final BrazePushEventType getBrazePushEventType() {
            return this.brazePushEventType;
        }
    }

    @JvmStatic
    public static final IBrazeNotificationFactory getActiveNotificationFactory() {
        IBrazeNotificationFactory customBrazeNotificationFactory = Braze.INSTANCE.getCustomBrazeNotificationFactory();
        return customBrazeNotificationFactory == null ? BrazeNotificationFactory.INSTANCE.getInstance() : customBrazeNotificationFactory;
    }

    @JvmStatic
    public static final Class<?> getNotificationReceiverClass() {
        if (Constants.isAmazonDevice()) {
            return BrazeAmazonDeviceMessagingReceiver.class;
        }
        return BrazePushReceiver.class;
    }

    @JvmStatic
    public static final void handleNotificationOpened(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        try {
            Braze.INSTANCE.getInstance(context).logPushNotificationOpened(intent);
            BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
            sendNotificationOpenedBroadcast(context, intent);
            if (BrazeInternal.INSTANCE.getConfigurationProvider(context).getDoesHandlePushDeepLinksAutomatically()) {
                routeUserWithNotificationOpenedIntent(context, intent);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda45
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationUtils.handleNotificationOpened$lambda$0();
                    }
                }, 6, (Object) null);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda46
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.handleNotificationOpened$lambda$1();
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationOpened$lambda$0() {
        return "Not handling deep links automatically, skipping deep link handling";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationOpened$lambda$1() {
        return "Exception occurred attempting to handle notification opened intent.";
    }

    @JvmStatic
    public static final void handleNotificationDeleted(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        try {
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
            BrazeLogger.brazelog$default(brazeLogger, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda40
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.handleNotificationDeleted$lambda$2();
                }
            }, 7, (Object) null);
            Bundle extras = intent.getExtras();
            if (extras != null) {
                brazeNotificationUtils.sendPushActionIntent(context, BrazeNotificationBroadcastType.DELETED, extras, new BrazeNotificationPayload(extras, null, context, null, 10, null));
            } else {
                sendPushActionIntent$default(brazeNotificationUtils, context, BrazeNotificationBroadcastType.DELETED, extras, null, 8, null);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda41
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.handleNotificationDeleted$lambda$3();
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationDeleted$lambda$2() {
        return "Sending notification deleted broadcast";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationDeleted$lambda$3() {
        return "Exception occurred attempting to handle notification delete intent.";
    }

    @JvmStatic
    public static final void routeUserWithNotificationOpenedIntent(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda56
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.routeUserWithNotificationOpenedIntent$lambda$4();
            }
        }, 7, (Object) null);
        Bundle bundleExtra = intent.getBundleExtra(Constants.BRAZE_PUSH_EXTRAS_KEY);
        if (bundleExtra == null) {
            bundleExtra = new Bundle();
        }
        bundleExtra.putString(Constants.BRAZE_PUSH_CAMPAIGN_ID_KEY, intent.getStringExtra(Constants.BRAZE_PUSH_CAMPAIGN_ID_KEY));
        bundleExtra.putString("source", Constants.BRAZE);
        brazeNotificationUtils.routeUserWithNotificationOpenedIntent(context, bundleExtra, intent.getStringExtra("uri"), StringsKt.equals("true", intent.getStringExtra(Constants.BRAZE_PUSH_OPEN_URI_IN_WEBVIEW_KEY), true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String routeUserWithNotificationOpenedIntent$lambda$4() {
        return "routeUserWithNotificationOpenedIntent called with Intent";
    }

    @JvmStatic
    public static final void routeUserWithNotificationOpenedIntent(Context context, BrazePushEvent brazePush) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(brazePush, "brazePush");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.routeUserWithNotificationOpenedIntent$lambda$5();
            }
        }, 7, (Object) null);
        Bundle brazeExtras = brazePush.getNotificationPayload().getBrazeExtras();
        brazeExtras.putString(Constants.BRAZE_PUSH_CAMPAIGN_ID_KEY, brazePush.getNotificationPayload().getCampaignId());
        brazeExtras.putString("source", Constants.BRAZE);
        String deeplink = brazePush.getNotificationPayload().getDeeplink();
        Boolean useWebView = brazePush.getNotificationPayload().getUseWebView();
        brazeNotificationUtils.routeUserWithNotificationOpenedIntent(context, brazeExtras, deeplink, useWebView != null ? useWebView.booleanValue() : false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String routeUserWithNotificationOpenedIntent$lambda$5() {
        return "routeUserWithNotificationOpenedIntent called with BrazePushEvent";
    }

    private final void routeUserWithNotificationOpenedIntent(Context context, Bundle extras, final String deepLink, final boolean useWebView) {
        String str = deepLink;
        if (str != null && !StringsKt.isBlank(str)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda24
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.routeUserWithNotificationOpenedIntent$lambda$6(deepLink, useWebView);
                }
            }, 7, (Object) null);
            extras.putString("uri", deepLink);
            extras.putBoolean(Constants.BRAZE_PUSH_OPEN_URI_IN_WEBVIEW_KEY, useWebView);
            UriAction uriActionCreateUriActionFromUrlString = BrazeDeeplinkHandler.INSTANCE.getInstance().createUriActionFromUrlString(deepLink, extras, useWebView, Channel.PUSH);
            if (uriActionCreateUriActionFromUrlString != null) {
                BrazeDeeplinkHandler.INSTANCE.getInstance().gotoUri(context, uriActionCreateUriActionFromUrlString);
                return;
            }
            return;
        }
        final Intent mainActivityIntent = UriUtils.getMainActivityIntent(context, extras);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.routeUserWithNotificationOpenedIntent$lambda$8(mainActivityIntent);
            }
        }, 7, (Object) null);
        context.startActivity(mainActivityIntent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String routeUserWithNotificationOpenedIntent$lambda$6(String str, boolean z) {
        return "Found a deep link: " + str + ". Use webview set to: " + z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String routeUserWithNotificationOpenedIntent$lambda$8(Intent intent) {
        return "Push notification had no deep link. Opening main activity: " + intent;
    }

    @JvmStatic
    public static final boolean isBrazePushMessage(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return false;
        }
        return StringsKt.equals("true", extras.getString(Constants.BRAZE_PUSH_BRAZE_KEY), true);
    }

    @JvmStatic
    public static final boolean isNotificationMessage(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Bundle extras = intent.getExtras();
        return extras != null && extras.containsKey(Constants.BRAZE_PUSH_TITLE_KEY) && extras.containsKey(Constants.BRAZE_PUSH_CONTENT_KEY);
    }

    @JvmStatic
    public static final void sendPushMessageReceivedBroadcast(Context context, Bundle notificationExtras, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(notificationExtras, "notificationExtras");
        Intrinsics.checkNotNullParameter(payload, "payload");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda34
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.sendPushMessageReceivedBroadcast$lambda$9();
            }
        }, 7, (Object) null);
        brazeNotificationUtils.sendPushActionIntent(context, BrazeNotificationBroadcastType.RECEIVED, notificationExtras, payload);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String sendPushMessageReceivedBroadcast$lambda$9() {
        return "Sending push message received broadcast";
    }

    @JvmStatic
    public static final boolean requestGeofenceRefreshIfAppropriate(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        Context context = payload.getContext();
        if (payload.getShouldSyncGeofences() && context != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda27
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.requestGeofenceRefreshIfAppropriate$lambda$10();
                }
            }, 7, (Object) null);
            BrazeInternal.requestGeofenceRefresh(context, true);
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda28
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.requestGeofenceRefreshIfAppropriate$lambda$11();
            }
        }, 6, (Object) null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestGeofenceRefreshIfAppropriate$lambda$10() {
        return "Geofence sync key was true. Syncing geofences.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestGeofenceRefreshIfAppropriate$lambda$11() {
        return "Geofence sync key not included in push payload or false. Not syncing geofences.";
    }

    @JvmStatic
    public static final boolean refreshFeatureFlagsIfAppropriate(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        Context context = payload.getContext();
        if (payload.getShouldRefreshFeatureFlags() && context != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.refreshFeatureFlagsIfAppropriate$lambda$12();
                }
            }, 7, (Object) null);
            BrazeInternal.refreshFeatureFlags(context);
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.refreshFeatureFlagsIfAppropriate$lambda$13();
            }
        }, 6, (Object) null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String refreshFeatureFlagsIfAppropriate$lambda$12() {
        return "Feature flag refresh key was true. Refreshing feature flags.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String refreshFeatureFlagsIfAppropriate$lambda$13() {
        return "Feature flag refresh key not included in push payload or false. Not refreshing feature flags.";
    }

    @JvmStatic
    public static final boolean refreshBannersIfAppropriate(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        Context context = payload.getContext();
        if (payload.getShouldRefreshBanners() && context != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda30
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.refreshBannersIfAppropriate$lambda$14();
                }
            }, 7, (Object) null);
            BrazeInternal.refreshBanners(context);
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda31
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.refreshBannersIfAppropriate$lambda$15();
            }
        }, 6, (Object) null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String refreshBannersIfAppropriate$lambda$14() {
        return "Banners refresh key was true. Refreshing Banners.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String refreshBannersIfAppropriate$lambda$15() {
        return "Banners refresh key not included in push payload or false. Not refreshing banners.";
    }

    @JvmStatic
    public static final void setNotificationDurationAlarm(Context context, Class<?> thisClass, int notificationId, final int durationInMillis) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intent intent = new Intent(context, thisClass);
        intent.setAction(Constants.BRAZE_CANCEL_NOTIFICATION_ACTION);
        intent.putExtra(Constants.BRAZE_PUSH_NOTIFICATION_ID, notificationId);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 134217728 | IntentUtils.getImmutablePendingIntentFlags());
        Object systemService = context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
        AlarmManager alarmManager = (AlarmManager) systemService;
        if (durationInMillis >= 1000) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setNotificationDurationAlarm$lambda$16(durationInMillis);
                }
            }, 7, (Object) null);
            alarmManager.set(3, SystemClock.elapsedRealtime() + ((long) durationInMillis), broadcast);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setNotificationDurationAlarm$lambda$16(int i) {
        return "Setting Notification duration alarm for " + i + " ms";
    }

    @JvmStatic
    public static final int getNotificationId(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        final Integer customNotificationId = payload.getCustomNotificationId();
        if (customNotificationId != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.getNotificationId$lambda$17(customNotificationId);
                }
            }, 7, (Object) null);
            return customNotificationId.intValue();
        }
        String titleText = payload.getTitleText();
        String str = titleText != null ? "" + titleText : "";
        String contentText = payload.getContentText();
        if (contentText != null) {
            str = str + contentText;
        }
        final int iHashCode = str != null ? str.hashCode() : 0;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.getNotificationId$lambda$20(iHashCode);
            }
        }, 7, (Object) null);
        return iHashCode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getNotificationId$lambda$17(Integer num) {
        return "Using notification id provided in the message's extras bundle: " + num;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getNotificationId$lambda$20(int i) {
        return "Message without notification id provided in the extras bundle received. Using a hash of the message: " + i;
    }

    @JvmStatic
    public static final int getNotificationPriority(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        final Integer notificationPriorityInt = payload.getNotificationPriorityInt();
        Integer notificationPriorityInt2 = payload.getNotificationPriorityInt();
        if (notificationPriorityInt2 == null) {
            return 0;
        }
        int iIntValue = notificationPriorityInt2.intValue();
        if (-2 <= iIntValue && iIntValue < 3) {
            return iIntValue;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.getNotificationPriority$lambda$22$lambda$21(notificationPriorityInt);
            }
        }, 6, (Object) null);
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getNotificationPriority$lambda$22$lambda$21(Integer num) {
        return "Received invalid notification priority " + num;
    }

    @JvmStatic
    public static final boolean wakeScreenIfAppropriate(Context context, BrazeConfigurationProvider configurationProvider, Bundle notificationExtras) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        return wakeScreenIfAppropriate(new BrazeNotificationPayload(notificationExtras, null, context, configurationProvider, 2, null));
    }

    @JvmStatic
    public static final boolean wakeScreenIfAppropriate(BrazeNotificationPayload payload) {
        BrazeConfigurationProvider configurationProvider;
        Intrinsics.checkNotNullParameter(payload, "payload");
        Context context = payload.getContext();
        if (context == null || (configurationProvider = payload.getConfigurationProvider()) == null) {
            return false;
        }
        Bundle notificationExtras = payload.getNotificationExtras();
        if (!PermissionUtils.hasPermission(context, "android.permission.WAKE_LOCK") || !configurationProvider.isPushWakeScreenForNotificationEnabled()) {
            return false;
        }
        try {
            Object systemService = context.getSystemService("uimode");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.UiModeManager");
            if (((UiModeManager) systemService).getCurrentModeType() == 4) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationUtils.wakeScreenIfAppropriate$lambda$23();
                    }
                }, 7, (Object) null);
                return false;
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda22
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.wakeScreenIfAppropriate$lambda$24();
                }
            }, 4, (Object) null);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            Object systemService2 = context.getSystemService("notification");
            Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.app.NotificationManager");
            BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
            final NotificationChannel validNotificationChannel = getValidNotificationChannel((NotificationManager) systemService2, notificationExtras);
            if (validNotificationChannel == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda33
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationUtils.wakeScreenIfAppropriate$lambda$25();
                    }
                }, 7, (Object) null);
                return false;
            }
            if (validNotificationChannel.getImportance() == 1) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda44
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationUtils.wakeScreenIfAppropriate$lambda$26(validNotificationChannel);
                    }
                }, 7, (Object) null);
                return false;
            }
        } else if (getNotificationPriority(payload) == -2) {
            return false;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda55
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.wakeScreenIfAppropriate$lambda$27();
            }
        }, 7, (Object) null);
        Object systemService3 = context.getSystemService("power");
        Intrinsics.checkNotNull(systemService3, "null cannot be cast to non-null type android.os.PowerManager");
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) systemService3).newWakeLock(268435482, TAG);
        wakeLockNewWakeLock.acquire();
        wakeLockNewWakeLock.release();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wakeScreenIfAppropriate$lambda$23() {
        return "Not waking this TV UI mode device";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wakeScreenIfAppropriate$lambda$24() {
        return "Failed to check for TV status during screen wake. Continuing.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wakeScreenIfAppropriate$lambda$25() {
        return "Not waking screen on Android O+ device, could not find notification channel.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wakeScreenIfAppropriate$lambda$26(NotificationChannel notificationChannel) {
        return "Not acquiring wake-lock for Android O+ notification with importance: " + notificationChannel.getImportance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wakeScreenIfAppropriate$lambda$27() {
        return "Waking screen for notification";
    }

    @JvmStatic
    public static final void prefetchBitmapsIfNewlyReceivedStoryPush(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        Context context = payload.getContext();
        if (context != null && payload.getIsPushStory() && payload.getIsNewlyReceivedPushStory()) {
            List<BrazeNotificationPayload.PushStoryPage> pushStoryPages = payload.getPushStoryPages();
            ArrayList<String> arrayList = new ArrayList();
            Iterator<T> it = pushStoryPages.iterator();
            while (it.hasNext()) {
                String bitmapUrl = ((BrazeNotificationPayload.PushStoryPage) it.next()).getBitmapUrl();
                if (bitmapUrl != null) {
                    arrayList.add(bitmapUrl);
                }
            }
            for (final String str : arrayList) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda35
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationUtils.prefetchBitmapsIfNewlyReceivedStoryPush$lambda$30$lambda$29(str);
                    }
                }, 6, (Object) null);
                Braze.INSTANCE.getInstance(context).getImageLoader().getPushBitmapFromUrl(context, payload.getBrazeExtras(), str, BrazeViewBounds.NOTIFICATION_ONE_IMAGE_STORY);
            }
            payload.setNewlyReceivedPushStory(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String prefetchBitmapsIfNewlyReceivedStoryPush$lambda$30$lambda$29(String str) {
        return "Pre-fetching bitmap at URL: " + str;
    }

    @JvmStatic
    public static final void setTitleIfPresent(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        BrazeConfigurationProvider configurationProvider;
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda54
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.setTitleIfPresent$lambda$31();
            }
        }, 7, (Object) null);
        String titleText = payload.getTitleText();
        if (titleText == null || (configurationProvider = payload.getConfigurationProvider()) == null) {
            return;
        }
        notificationBuilder.setContentTitle(HtmlUtils.getHtmlSpannedTextIfEnabled(titleText, configurationProvider));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setTitleIfPresent$lambda$31() {
        return "Setting title for notification";
    }

    @JvmStatic
    public static final void setContentIfPresent(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        BrazeConfigurationProvider configurationProvider;
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda66
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.setContentIfPresent$lambda$32();
            }
        }, 7, (Object) null);
        String contentText = payload.getContentText();
        if (contentText == null || (configurationProvider = payload.getConfigurationProvider()) == null) {
            return;
        }
        notificationBuilder.setContentText(HtmlUtils.getHtmlSpannedTextIfEnabled(contentText, configurationProvider));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setContentIfPresent$lambda$32() {
        return "Setting content for notification";
    }

    @JvmStatic
    public static final void setTickerIfPresent(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda43
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.setTickerIfPresent$lambda$33();
            }
        }, 7, (Object) null);
        String titleText = payload.getTitleText();
        if (titleText == null) {
            return;
        }
        notificationBuilder.setTicker(titleText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setTickerIfPresent$lambda$33() {
        return "Setting ticker for notification";
    }

    @JvmStatic
    public static final void setContentIntentIfPresent(Context context, NotificationCompat.Builder notificationBuilder, Bundle notificationExtras) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        try {
            notificationBuilder.setContentIntent(INSTANCE.getPushActionPendingIntent(context, Constants.BRAZE_PUSH_CLICKED_ACTION, notificationExtras));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda53
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setContentIntentIfPresent$lambda$34();
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setContentIntentIfPresent$lambda$34() {
        return "Error setting content intent.";
    }

    @JvmStatic
    public static final void setDeleteIntent(Context context, NotificationCompat.Builder notificationBuilder, Bundle notificationExtras) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        try {
            Intent intent = new Intent(Constants.BRAZE_PUSH_DELETED_ACTION).setClass(context, getNotificationReceiverClass());
            Intrinsics.checkNotNullExpressionValue(intent, "setClass(...)");
            if (notificationExtras != null) {
                intent.putExtras(notificationExtras);
            }
            notificationBuilder.setDeleteIntent(PendingIntent.getBroadcast(context, IntentUtils.getRequestCode(), intent, IntentUtils.getImmutablePendingIntentFlags() | 1073741824));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setDeleteIntent$lambda$35();
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setDeleteIntent$lambda$35() {
        return "Error setting delete intent.";
    }

    @JvmStatic
    public static final int setSmallIcon(BrazeConfigurationProvider appConfigurationProvider, NotificationCompat.Builder notificationBuilder) {
        Intrinsics.checkNotNullParameter(appConfigurationProvider, "appConfigurationProvider");
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        int smallNotificationIconResourceId = appConfigurationProvider.getSmallNotificationIconResourceId();
        if (smallNotificationIconResourceId == 0) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda71
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setSmallIcon$lambda$36();
                }
            }, 7, (Object) null);
            smallNotificationIconResourceId = appConfigurationProvider.getApplicationIconResourceId();
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda72
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setSmallIcon$lambda$37();
                }
            }, 7, (Object) null);
        }
        notificationBuilder.setSmallIcon(smallNotificationIconResourceId);
        return smallNotificationIconResourceId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSmallIcon$lambda$36() {
        return "Small notification icon resource was not found. Will use the app icon when displaying notifications.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSmallIcon$lambda$37() {
        return "Setting small icon for notification via resource id";
    }

    @JvmStatic
    public static final void setSetShowWhen(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        if (payload.getIsPushStory()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setSetShowWhen$lambda$38();
                }
            }, 7, (Object) null);
            notificationBuilder.setShowWhen(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSetShowWhen$lambda$38() {
        return "Set show when not supported in story push.";
    }

    @JvmStatic
    public static final boolean setLargeIconIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        BrazeConfigurationProvider configurationProvider;
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        if (payload.getIsPushStory()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda58
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setLargeIconIfPresentAndSupported$lambda$39();
                }
            }, 7, (Object) null);
            return false;
        }
        Context context = payload.getContext();
        if (context == null || (configurationProvider = payload.getConfigurationProvider()) == null) {
            return false;
        }
        try {
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
            BrazeLogger.brazelog$default(brazeLogger, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda59
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setLargeIconIfPresentAndSupported$lambda$40();
                }
            }, 7, (Object) null);
            String largeIcon = payload.getLargeIcon();
            if (largeIcon != null) {
                notificationBuilder.setLargeIcon(Braze.INSTANCE.getInstance(context).getImageLoader().getPushBitmapFromUrl(context, null, largeIcon, BrazeViewBounds.NOTIFICATION_LARGE_ICON));
                return true;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda60
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setLargeIconIfPresentAndSupported$lambda$42();
                }
            }, 7, (Object) null);
            int largeNotificationIconResourceId = configurationProvider.getLargeNotificationIconResourceId();
            if (largeNotificationIconResourceId != 0) {
                notificationBuilder.setLargeIcon(BitmapFactory.decodeResource(context.getResources(), largeNotificationIconResourceId));
                return true;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda61
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setLargeIconIfPresentAndSupported$lambda$43();
                }
            }, 7, (Object) null);
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda63
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setLargeIconIfPresentAndSupported$lambda$45();
                }
            }, 7, (Object) null);
            return false;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda62
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setLargeIconIfPresentAndSupported$lambda$44();
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLargeIconIfPresentAndSupported$lambda$39() {
        return "Large icon not supported in story push.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLargeIconIfPresentAndSupported$lambda$40() {
        return "Setting large icon for notification";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLargeIconIfPresentAndSupported$lambda$42() {
        return "Large icon bitmap url not present in extras. Attempting to use resource id instead.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLargeIconIfPresentAndSupported$lambda$43() {
        return "Large icon resource id not present for notification";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLargeIconIfPresentAndSupported$lambda$44() {
        return "Error setting large notification icon";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLargeIconIfPresentAndSupported$lambda$45() {
        return "Large icon not set for notification";
    }

    @JvmStatic
    public static final void setSoundIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        String notificationSound = payload.getNotificationSound();
        if (notificationSound == null) {
            return;
        }
        if (Intrinsics.areEqual(notificationSound, Constants.BRAZE_PUSH_NOTIFICATION_SOUND_DEFAULT_VALUE)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setSoundIfPresentAndSupported$lambda$46();
                }
            }, 7, (Object) null);
            notificationBuilder.setDefaults(1);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setSoundIfPresentAndSupported$lambda$47();
                }
            }, 7, (Object) null);
            notificationBuilder.setSound(Uri.parse(notificationSound));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSoundIfPresentAndSupported$lambda$46() {
        return "Setting default sound for notification.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSoundIfPresentAndSupported$lambda$47() {
        return "Setting sound for notification via uri.";
    }

    @JvmStatic
    public static final void setSummaryTextIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        String summaryText = payload.getSummaryText();
        if (summaryText != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda47
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setSummaryTextIfPresentAndSupported$lambda$48();
                }
            }, 7, (Object) null);
            Intrinsics.checkNotNull(notificationBuilder.setSubText(summaryText));
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda48
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setSummaryTextIfPresentAndSupported$lambda$49();
                }
            }, 7, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSummaryTextIfPresentAndSupported$lambda$48() {
        return "Setting summary text for notification";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSummaryTextIfPresentAndSupported$lambda$49() {
        return "Summary text not present. Not setting summary text for notification.";
    }

    @JvmStatic
    public static final void setPriorityIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda32
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.setPriorityIfPresentAndSupported$lambda$50();
            }
        }, 7, (Object) null);
        notificationBuilder.setPriority(getNotificationPriority(payload));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setPriorityIfPresentAndSupported$lambda$50() {
        return "Setting priority for notification";
    }

    @JvmStatic
    public static final void setAccentColorIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Integer accentColor = payload.getAccentColor();
        if (accentColor != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda51
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setAccentColorIfPresentAndSupported$lambda$51();
                }
            }, 7, (Object) null);
            notificationBuilder.setColor(accentColor.intValue());
            return;
        }
        BrazeConfigurationProvider configurationProvider = payload.getConfigurationProvider();
        if (configurationProvider != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda52
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setAccentColorIfPresentAndSupported$lambda$53$lambda$52();
                }
            }, 7, (Object) null);
            notificationBuilder.setColor(configurationProvider.getDefaultNotificationAccentColor());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setAccentColorIfPresentAndSupported$lambda$51() {
        return "Using accent color for notification from extras bundle";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setAccentColorIfPresentAndSupported$lambda$53$lambda$52() {
        return "Using default accent color for notification";
    }

    @JvmStatic
    public static final void setCategoryIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        String notificationCategory = payload.getNotificationCategory();
        if (notificationCategory != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda36
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setCategoryIfPresentAndSupported$lambda$54();
                }
            }, 7, (Object) null);
            Intrinsics.checkNotNull(notificationBuilder.setCategory(notificationCategory));
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda37
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setCategoryIfPresentAndSupported$lambda$55();
                }
            }, 7, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCategoryIfPresentAndSupported$lambda$54() {
        return "Setting category for notification";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCategoryIfPresentAndSupported$lambda$55() {
        return "Category not present in notification extras. Not setting category for notification.";
    }

    @JvmStatic
    public static final void setVisibilityIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        final Integer notificationVisibility = payload.getNotificationVisibility();
        if (notificationVisibility != null) {
            BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
            if (isValidNotificationVisibility(notificationVisibility.intValue())) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda38
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationUtils.setVisibilityIfPresentAndSupported$lambda$56();
                    }
                }, 7, (Object) null);
                Intrinsics.checkNotNull(notificationBuilder.setVisibility(notificationVisibility.intValue()));
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda39
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationUtils.setVisibilityIfPresentAndSupported$lambda$57(notificationVisibility);
                    }
                }, 6, (Object) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setVisibilityIfPresentAndSupported$lambda$56() {
        return "Setting visibility for notification";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setVisibilityIfPresentAndSupported$lambda$57(Integer num) {
        return "Received invalid notification visibility " + num;
    }

    @JvmStatic
    public static final void setPublicVersionIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Context context = payload.getContext();
        BrazeConfigurationProvider configurationProvider = payload.getConfigurationProvider();
        if (context == null || payload.getPublicNotificationExtras() == null || configurationProvider == null) {
            return;
        }
        BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
        String orCreateNotificationChannelId = getOrCreateNotificationChannelId(payload);
        Bundle jsonObjectIntoBundle = JsonUtils.parseJsonObjectIntoBundle(payload.getPublicNotificationExtras());
        if (jsonObjectIntoBundle.isEmpty()) {
            return;
        }
        final BrazeNotificationPayload brazeNotificationPayload = new BrazeNotificationPayload(jsonObjectIntoBundle, null, context, configurationProvider, 2, null);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, orCreateNotificationChannelId);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda29
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.setPublicVersionIfPresentAndSupported$lambda$58(brazeNotificationPayload);
            }
        }, 7, (Object) null);
        setContentIfPresent(builder, brazeNotificationPayload);
        setTitleIfPresent(builder, brazeNotificationPayload);
        setSummaryTextIfPresentAndSupported(builder, brazeNotificationPayload);
        setSmallIcon(configurationProvider, builder);
        setAccentColorIfPresentAndSupported(builder, brazeNotificationPayload);
        notificationBuilder.setPublicVersion(builder.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setPublicVersionIfPresentAndSupported$lambda$58(BrazeNotificationPayload brazeNotificationPayload) {
        return "Setting public version of notification with payload: " + brazeNotificationPayload;
    }

    @JvmStatic
    public static final void logBaiduNotificationClick(Context context, final String customContentString) {
        if (customContentString == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.logBaiduNotificationClick$lambda$59();
                }
            }, 6, (Object) null);
            return;
        }
        if (context == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.logBaiduNotificationClick$lambda$60();
                }
            }, 6, (Object) null);
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(customContentString);
            String optionalString = JsonUtils.getOptionalString(jSONObject, "source");
            String optionalString2 = JsonUtils.getOptionalString(jSONObject, Constants.BRAZE_PUSH_CAMPAIGN_ID_KEY);
            if (optionalString == null || !Intrinsics.areEqual(optionalString, Constants.BRAZE) || optionalString2 == null) {
                return;
            }
            Braze.INSTANCE.getInstance(context).logPushNotificationOpened(optionalString2);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.logBaiduNotificationClick$lambda$61(customContentString);
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logBaiduNotificationClick$lambda$59() {
        return "customContentString was null. Doing nothing.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logBaiduNotificationClick$lambda$60() {
        return "Cannot log baidu click with null context. Doing nothing.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logBaiduNotificationClick$lambda$61(String str) {
        return "Caught an exception processing customContentString: " + str;
    }

    @JvmStatic
    public static final void handleCancelNotificationAction(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        try {
            if (intent.hasExtra(Constants.BRAZE_PUSH_NOTIFICATION_ID)) {
                final int intExtra = intent.getIntExtra(Constants.BRAZE_PUSH_NOTIFICATION_ID, -1);
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda64
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationUtils.handleCancelNotificationAction$lambda$62(intExtra);
                    }
                }, 7, (Object) null);
                Object systemService = context.getSystemService("notification");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
                ((NotificationManager) systemService).cancel(Constants.BRAZE_PUSH_NOTIFICATION_TAG, intExtra);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda65
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.handleCancelNotificationAction$lambda$63();
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleCancelNotificationAction$lambda$62(int i) {
        return "Cancelling notification action with id: " + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleCancelNotificationAction$lambda$63() {
        return "Exception occurred handling cancel notification intent.";
    }

    @JvmStatic
    public static final void cancelNotification(Context context, final int notificationId) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda49
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.cancelNotification$lambda$64(notificationId);
                }
            }, 7, (Object) null);
            Intent intent = new Intent(Constants.BRAZE_CANCEL_NOTIFICATION_ACTION).setClass(context, getNotificationReceiverClass());
            Intrinsics.checkNotNullExpressionValue(intent, "setClass(...)");
            intent.setPackage(context.getPackageName());
            intent.putExtra(Constants.BRAZE_PUSH_NOTIFICATION_ID, notificationId);
            IntentUtils.addComponentAndSendBroadcast(context, intent);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda50
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.cancelNotification$lambda$65();
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String cancelNotification$lambda$64(int i) {
        return "Cancelling notification action with id: " + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String cancelNotification$lambda$65() {
        return "Exception occurred attempting to cancel notification.";
    }

    @JvmStatic
    public static final boolean isUninstallTrackingPush(Bundle notificationExtras) {
        Intrinsics.checkNotNullParameter(notificationExtras, "notificationExtras");
        try {
            if (notificationExtras.containsKey(Constants.BRAZE_PUSH_UNINSTALL_TRACKING_KEY)) {
                return true;
            }
            Bundle bundle = notificationExtras.getBundle(Constants.BRAZE_PUSH_EXTRAS_KEY);
            if (bundle != null) {
                return bundle.containsKey(Constants.BRAZE_PUSH_UNINSTALL_TRACKING_KEY);
            }
            return false;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.isUninstallTrackingPush$lambda$66();
                }
            }, 4, (Object) null);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isUninstallTrackingPush$lambda$66() {
        return "Failed to determine if push is uninstall tracking. Returning false.";
    }

    @JvmStatic
    public static final String getOrCreateNotificationChannelId(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        final String notificationChannelId = payload.getNotificationChannelId();
        if (Build.VERSION.SDK_INT < 26) {
            return notificationChannelId == null ? Constants.BRAZE_PUSH_DEFAULT_NOTIFICATION_CHANNEL_ID : notificationChannelId;
        }
        Context context = payload.getContext();
        BrazeConfigurationProvider configurationProvider = payload.getConfigurationProvider();
        Object systemService = context != null ? context.getSystemService("notification") : null;
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        if (notificationChannelId != null) {
            if (notificationManager.getNotificationChannel(notificationChannelId) != null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda67
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationUtils.getOrCreateNotificationChannelId$lambda$67(notificationChannelId);
                    }
                }, 7, (Object) null);
                return notificationChannelId;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda68
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.getOrCreateNotificationChannelId$lambda$68(notificationChannelId);
                }
            }, 7, (Object) null);
        }
        if (notificationManager.getNotificationChannel(Constants.BRAZE_PUSH_DEFAULT_NOTIFICATION_CHANNEL_ID) == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda69
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.getOrCreateNotificationChannelId$lambda$69();
                }
            }, 7, (Object) null);
            NotificationChannel notificationChannel = new NotificationChannel(Constants.BRAZE_PUSH_DEFAULT_NOTIFICATION_CHANNEL_ID, configurationProvider != null ? configurationProvider.getDefaultNotificationChannelName() : null, 3);
            notificationChannel.setDescription(configurationProvider != null ? configurationProvider.getDefaultNotificationChannelDescription() : null);
            notificationManager.createNotificationChannel(notificationChannel);
        }
        return Constants.BRAZE_PUSH_DEFAULT_NOTIFICATION_CHANNEL_ID;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getOrCreateNotificationChannelId$lambda$67(String str) {
        return "Found notification channel in extras with id: " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getOrCreateNotificationChannelId$lambda$68(String str) {
        return "Notification channel from extras is invalid. No channel found with id: " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getOrCreateNotificationChannelId$lambda$69() {
        return "Braze default notification channel does not exist on device. Creating default channel.";
    }

    @JvmStatic
    public static final void setNotificationBadgeNumberIfPresent(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        if (Build.VERSION.SDK_INT < 26) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.setNotificationBadgeNumberIfPresent$lambda$70();
                }
            }, 7, (Object) null);
            return;
        }
        Integer notificationBadgeNumber = payload.getNotificationBadgeNumber();
        if (notificationBadgeNumber != null) {
            notificationBuilder.setNumber(notificationBadgeNumber.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setNotificationBadgeNumberIfPresent$lambda$70() {
        return "Notification badge number not supported on this android version. Not setting badge number for notification.";
    }

    @JvmStatic
    public static final void handlePushStoryPageClicked(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        try {
            Braze.INSTANCE.getInstance(context).logPushStoryPageClicked(intent.getStringExtra(Constants.BRAZE_CAMPAIGN_ID), intent.getStringExtra(Constants.BRAZE_STORY_PAGE_ID));
            BrazeConfigurationProvider configurationProvider = BrazeInternal.INSTANCE.getConfigurationProvider(context);
            int intExtra = intent.getIntExtra(Constants.BRAZE_PUSH_NOTIFICATION_ID, 0);
            if (configurationProvider.getDoesPushStoryDismissOnClick() && intExtra != 0) {
                cancelNotification(context, intExtra);
            }
            final String stringExtra = intent.getStringExtra(Constants.BRAZE_ACTION_URI_KEY);
            String str = stringExtra;
            if (str != null && !StringsKt.isBlank(str)) {
                intent.putExtra("uri", intent.getStringExtra(Constants.BRAZE_ACTION_URI_KEY));
                String stringExtra2 = intent.getStringExtra(Constants.BRAZE_ACTION_USE_WEBVIEW_KEY);
                String str2 = stringExtra2;
                if (str2 != null && !StringsKt.isBlank(str2)) {
                    intent.putExtra(Constants.BRAZE_PUSH_OPEN_URI_IN_WEBVIEW_KEY, stringExtra2);
                }
            } else {
                intent.removeExtra("uri");
            }
            BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
            sendNotificationOpenedBroadcast(context, intent);
            if (configurationProvider.getDoesHandlePushDeepLinksAutomatically()) {
                routeUserWithNotificationOpenedIntent(context, intent);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda19
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationUtils.handlePushStoryPageClicked$lambda$71(stringExtra);
                    }
                }, 6, (Object) null);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda20
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.handlePushStoryPageClicked$lambda$72();
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handlePushStoryPageClicked$lambda$71(String str) {
        return "Not handling deep links automatically, skipping deep link handling for '" + str + '\'';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handlePushStoryPageClicked$lambda$72() {
        return "Caught exception while handling story click.";
    }

    @JvmStatic
    public static final void handleContentCardsSerializedCardIfPresent(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        final String contentCardSyncData = payload.getContentCardSyncData();
        final String contentCardSyncUserId = payload.getContentCardSyncUserId();
        Context context = payload.getContext();
        if (contentCardSyncData == null || context == null) {
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda57
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.handleContentCardsSerializedCardIfPresent$lambda$73(contentCardSyncUserId, contentCardSyncData);
            }
        }, 7, (Object) null);
        BrazeInternal.addSerializedContentCardToStorage(context, contentCardSyncData, contentCardSyncUserId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleContentCardsSerializedCardIfPresent$lambda$73(String str, String str2) {
        return "Push contains associated Content Cards card. User id: " + str + " Card data: " + str2;
    }

    @JvmStatic
    public static final void sendNotificationOpenedBroadcast(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda70
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.sendNotificationOpenedBroadcast$lambda$74();
            }
        }, 7, (Object) null);
        Bundle extras = intent.getExtras();
        if (extras != null) {
            brazeNotificationUtils.sendPushActionIntent(context, BrazeNotificationBroadcastType.OPENED, extras, new BrazeNotificationPayload(extras, null, context, null, 10, null));
        } else {
            sendPushActionIntent$default(brazeNotificationUtils, context, BrazeNotificationBroadcastType.OPENED, extras, null, 8, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String sendNotificationOpenedBroadcast$lambda$74() {
        return "Sending notification opened broadcast";
    }

    @JvmStatic
    public static final NotificationChannel getValidNotificationChannel(NotificationManager notificationManager, Bundle notificationExtras) {
        Intrinsics.checkNotNullParameter(notificationManager, "notificationManager");
        if (notificationExtras == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.getValidNotificationChannel$lambda$75();
                }
            }, 7, (Object) null);
            return null;
        }
        final String string = notificationExtras.getString(Constants.BRAZE_PUSH_NOTIFICATION_CHANNEL_ID_KEY, null);
        String str = string;
        if (str != null && !StringsKt.isBlank(str)) {
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel(string);
            if (notificationChannel != null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationUtils.getValidNotificationChannel$lambda$76(string);
                    }
                }, 7, (Object) null);
                return notificationChannel;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationUtils.getValidNotificationChannel$lambda$77(string);
                }
            }, 7, (Object) null);
        }
        NotificationChannel notificationChannel2 = notificationManager.getNotificationChannel(Constants.BRAZE_PUSH_DEFAULT_NOTIFICATION_CHANNEL_ID);
        if (notificationChannel2 != null) {
            return notificationChannel2;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.getValidNotificationChannel$lambda$78();
            }
        }, 7, (Object) null);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getValidNotificationChannel$lambda$75() {
        return "Notification extras bundle was null. Could not find a valid notification channel";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getValidNotificationChannel$lambda$76(String str) {
        return "Found notification channel in extras with id: " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getValidNotificationChannel$lambda$77(String str) {
        return "Notification channel from extras is invalid, no channel found with id: " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getValidNotificationChannel$lambda$78() {
        return "Braze default notification channel does not exist on device.";
    }

    private final PendingIntent getPushActionPendingIntent(Context context, String action, Bundle notificationExtras) {
        Intent intent = new Intent(action).setClass(context, NotificationTrampolineActivity.class);
        Intrinsics.checkNotNullExpressionValue(intent, "setClass(...)");
        if (notificationExtras != null) {
            intent.putExtras(notificationExtras);
        }
        PendingIntent activity = PendingIntent.getActivity(context, IntentUtils.getRequestCode(), intent, 1073741824 | IntentUtils.getImmutablePendingIntentFlags());
        Intrinsics.checkNotNullExpressionValue(activity, "getActivity(...)");
        return activity;
    }

    static /* synthetic */ void sendPushActionIntent$default(BrazeNotificationUtils brazeNotificationUtils, Context context, BrazeNotificationBroadcastType brazeNotificationBroadcastType, Bundle bundle, BrazeNotificationPayload brazeNotificationPayload, int i, Object obj) {
        if ((i & 8) != 0) {
            brazeNotificationPayload = null;
        }
        brazeNotificationUtils.sendPushActionIntent(context, brazeNotificationBroadcastType, bundle, brazeNotificationPayload);
    }

    private final void sendPushActionIntent(Context context, final BrazeNotificationBroadcastType broadcastType, Bundle notificationExtras, BrazeNotificationPayload payload) {
        Intent intent;
        int i = WhenMappings.$EnumSwitchMapping$0[broadcastType.ordinal()];
        if (i == 1) {
            intent = new Intent(Constants.BRAZE_PUSH_INTENT_NOTIFICATION_OPENED).setPackage(context.getPackageName());
            Intrinsics.checkNotNull(intent);
        } else if (i == 2) {
            intent = new Intent(Constants.BRAZE_PUSH_INTENT_NOTIFICATION_RECEIVED).setPackage(context.getPackageName());
            Intrinsics.checkNotNull(intent);
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            intent = new Intent(Constants.BRAZE_PUSH_INTENT_NOTIFICATION_DELETED).setPackage(context.getPackageName());
            Intrinsics.checkNotNull(intent);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.sendPushActionIntent$lambda$79(broadcastType);
            }
        }, 6, (Object) null);
        sendPushActionIntent(context, intent, notificationExtras);
        if (payload != null) {
            BrazeInternal.INSTANCE.publishBrazePushAction(context, broadcastType.getBrazePushEventType(), payload);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String sendPushActionIntent$lambda$79(BrazeNotificationBroadcastType brazeNotificationBroadcastType) {
        return "Sending Braze broadcast receiver intent for " + brazeNotificationBroadcastType;
    }

    private final void sendPushActionIntent(Context context, final Intent pushIntent, Bundle notificationExtras) {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda42
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationUtils.sendPushActionIntent$lambda$80(pushIntent);
            }
        }, 6, (Object) null);
        if (notificationExtras != null) {
            pushIntent.putExtras(notificationExtras);
        }
        IntentUtils.addComponentAndSendBroadcast(context, pushIntent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String sendPushActionIntent$lambda$80(Intent intent) {
        return "Sending push action intent: " + intent;
    }
}

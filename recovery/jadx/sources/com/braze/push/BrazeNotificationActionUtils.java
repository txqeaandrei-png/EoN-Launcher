package com.braze.push;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.braze.Braze;
import com.braze.BrazeInternal;
import com.braze.Constants;
import com.braze.IBrazeDeeplinkHandler;
import com.braze.models.push.BrazeNotificationPayload;
import com.braze.support.BrazeLogger;
import com.braze.support.IntentUtils;
import com.braze.ui.BrazeDeeplinkHandler;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u001e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011J \u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014¨\u0006\u0015"}, d2 = {"Lcom/braze/push/BrazeNotificationActionUtils;", "", "<init>", "()V", "addNotificationActions", "", "notificationBuilder", "Landroidx/core/app/NotificationCompat$Builder;", "payload", "Lcom/braze/models/push/BrazeNotificationPayload;", "handleNotificationActionClicked", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "addNotificationAction", "actionButton", "Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;", "logNotificationActionClicked", "actionType", "", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeNotificationActionUtils {
    public static final BrazeNotificationActionUtils INSTANCE = new BrazeNotificationActionUtils();

    private BrazeNotificationActionUtils() {
    }

    @JvmStatic
    public static final void addNotificationActions(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        if (payload.getContext() == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationActionUtils.addNotificationActions$lambda$0();
                }
            }, 7, (Object) null);
            return;
        }
        List<BrazeNotificationPayload.ActionButton> actionButtons = payload.getActionButtons();
        if (actionButtons.isEmpty()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationActionUtils.addNotificationActions$lambda$1();
                }
            }, 7, (Object) null);
            return;
        }
        for (final BrazeNotificationPayload.ActionButton actionButton : actionButtons) {
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeNotificationActionUtils brazeNotificationActionUtils = INSTANCE;
            BrazeLogger.brazelog$default(brazeLogger, (Object) brazeNotificationActionUtils, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationActionUtils.addNotificationActions$lambda$2(actionButton);
                }
            }, 6, (Object) null);
            brazeNotificationActionUtils.addNotificationAction(notificationBuilder, payload, actionButton);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addNotificationActions$lambda$0() {
        return "Context cannot be null when adding notification buttons.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addNotificationActions$lambda$1() {
        return "No action buttons present. Not adding notification actions";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addNotificationActions$lambda$2(BrazeNotificationPayload.ActionButton actionButton) {
        return "Adding action button: " + actionButton;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0099 A[Catch: Exception -> 0x00e4, TryCatch #0 {Exception -> 0x00e4, blocks: (B:3:0x000e, B:5:0x0019, B:8:0x0021, B:10:0x002f, B:18:0x0046, B:28:0x0064, B:31:0x006f, B:33:0x0075, B:35:0x007c, B:37:0x0089, B:39:0x008f, B:41:0x009c, B:43:0x00ab, B:44:0x00af, B:40:0x0099, B:21:0x004f, B:24:0x0058, B:25:0x005d, B:45:0x00c0, B:46:0x00d1), top: B:51:0x000e }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00ab A[Catch: Exception -> 0x00e4, TryCatch #0 {Exception -> 0x00e4, blocks: (B:3:0x000e, B:5:0x0019, B:8:0x0021, B:10:0x002f, B:18:0x0046, B:28:0x0064, B:31:0x006f, B:33:0x0075, B:35:0x007c, B:37:0x0089, B:39:0x008f, B:41:0x009c, B:43:0x00ab, B:44:0x00af, B:40:0x0099, B:21:0x004f, B:24:0x0058, B:25:0x005d, B:45:0x00c0, B:46:0x00d1), top: B:51:0x000e }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00af A[Catch: Exception -> 0x00e4, TryCatch #0 {Exception -> 0x00e4, blocks: (B:3:0x000e, B:5:0x0019, B:8:0x0021, B:10:0x002f, B:18:0x0046, B:28:0x0064, B:31:0x006f, B:33:0x0075, B:35:0x007c, B:37:0x0089, B:39:0x008f, B:41:0x009c, B:43:0x00ab, B:44:0x00af, B:40:0x0099, B:21:0x004f, B:24:0x0058, B:25:0x005d, B:45:0x00c0, B:46:0x00d1), top: B:51:0x000e }] */
    @JvmStatic
    public static final void handleNotificationActionClicked(Context context, Intent intent) {
        Bundle extras;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        try {
            String stringExtra = intent.getStringExtra(Constants.BRAZE_ACTION_TYPE_KEY);
            String str = stringExtra;
            if (str != null && !StringsKt.isBlank(str)) {
                int intExtra = intent.getIntExtra(Constants.BRAZE_PUSH_NOTIFICATION_ID, -1);
                BrazeNotificationActionUtils brazeNotificationActionUtils = INSTANCE;
                brazeNotificationActionUtils.logNotificationActionClicked(context, intent, stringExtra);
                if (stringExtra != null) {
                    int iHashCode = stringExtra.hashCode();
                    if (iHashCode == -1424488370) {
                        if (!stringExtra.equals(Constants.BRAZE_PUSH_ACTION_TYPE_URI)) {
                        }
                        BrazeNotificationUtils.cancelNotification(context, intExtra);
                        if (!Intrinsics.areEqual(stringExtra, Constants.BRAZE_PUSH_ACTION_TYPE_URI)) {
                            intent.removeExtra("uri");
                        } else {
                            intent.removeExtra("uri");
                        }
                        BrazeNotificationUtils.sendNotificationOpenedBroadcast(context, intent);
                        if (BrazeInternal.INSTANCE.getConfigurationProvider(context).getDoesHandlePushDeepLinksAutomatically()) {
                            BrazeNotificationUtils.routeUserWithNotificationOpenedIntent(context, intent);
                            return;
                        } else {
                            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationActionUtils, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda2
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return BrazeNotificationActionUtils.handleNotificationActionClicked$lambda$4();
                                }
                            }, 6, (Object) null);
                            return;
                        }
                    }
                    if (iHashCode != -1209677674) {
                        if (iHashCode == -1209647192 && stringExtra.equals(Constants.BRAZE_PUSH_ACTION_TYPE_OPEN)) {
                            BrazeNotificationUtils.cancelNotification(context, intExtra);
                            if (!Intrinsics.areEqual(stringExtra, Constants.BRAZE_PUSH_ACTION_TYPE_URI) && (extras = intent.getExtras()) != null && extras.containsKey(Constants.BRAZE_ACTION_URI_KEY)) {
                                intent.putExtra("uri", intent.getStringExtra(Constants.BRAZE_ACTION_URI_KEY));
                                Bundle extras2 = intent.getExtras();
                                if (extras2 != null && extras2.containsKey(Constants.BRAZE_ACTION_USE_WEBVIEW_KEY)) {
                                    intent.putExtra(Constants.BRAZE_PUSH_OPEN_URI_IN_WEBVIEW_KEY, intent.getStringExtra(Constants.BRAZE_ACTION_USE_WEBVIEW_KEY));
                                }
                            } else {
                                intent.removeExtra("uri");
                            }
                            BrazeNotificationUtils.sendNotificationOpenedBroadcast(context, intent);
                            if (BrazeInternal.INSTANCE.getConfigurationProvider(context).getDoesHandlePushDeepLinksAutomatically()) {
                                BrazeNotificationUtils.routeUserWithNotificationOpenedIntent(context, intent);
                                return;
                            } else {
                                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationActionUtils, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda2
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object invoke() {
                                        return BrazeNotificationActionUtils.handleNotificationActionClicked$lambda$4();
                                    }
                                }, 6, (Object) null);
                                return;
                            }
                        }
                    } else if (stringExtra.equals(Constants.BRAZE_PUSH_ACTION_TYPE_NONE)) {
                        BrazeNotificationUtils.cancelNotification(context, intExtra);
                        return;
                    }
                }
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationActionUtils, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationActionUtils.handleNotificationActionClicked$lambda$5();
                    }
                }, 6, (Object) null);
                return;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationActionUtils.handleNotificationActionClicked$lambda$3();
                }
            }, 6, (Object) null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationActionUtils.handleNotificationActionClicked$lambda$6();
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationActionClicked$lambda$3() {
        return "Notification action button type was blank or null. Doing nothing.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationActionClicked$lambda$4() {
        return "Not handling deep links automatically, skipping deep link handling";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationActionClicked$lambda$5() {
        return "Unknown notification action button clicked. Doing nothing.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationActionClicked$lambda$6() {
        return "Caught exception while handling notification action button click.";
    }

    public final void addNotificationAction(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload, BrazeNotificationPayload.ActionButton actionButton) {
        PendingIntent activity;
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(actionButton, "actionButton");
        Context context = payload.getContext();
        if (context == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationActionUtils.addNotificationAction$lambda$7();
                }
            }, 7, (Object) null);
            return;
        }
        final Bundle bundle = new Bundle(payload.getNotificationExtras());
        actionButton.putIntoBundle(bundle);
        final String type = actionButton.getType();
        int immutablePendingIntentFlags = 134217728 | IntentUtils.getImmutablePendingIntentFlags();
        if (Intrinsics.areEqual(Constants.BRAZE_PUSH_ACTION_TYPE_NONE, type)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationActionUtils.addNotificationAction$lambda$8(type);
                }
            }, 6, (Object) null);
            Intent intent = new Intent(Constants.BRAZE_ACTION_CLICKED_ACTION).setClass(context, BrazeNotificationUtils.getNotificationReceiverClass());
            intent.putExtras(bundle);
            activity = PendingIntent.getBroadcast(context, IntentUtils.getRequestCode(), intent, immutablePendingIntentFlags);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationActionUtils.addNotificationAction$lambda$9(type);
                }
            }, 6, (Object) null);
            Intent intent2 = new Intent(Constants.BRAZE_ACTION_CLICKED_ACTION).setClass(context, NotificationTrampolineActivity.class);
            intent2.setFlags(intent2.getFlags() | BrazeDeeplinkHandler.INSTANCE.getInstance().getIntentFlags(IBrazeDeeplinkHandler.IntentFlagPurpose.NOTIFICATION_ACTION_WITH_DEEPLINK));
            intent2.putExtras(bundle);
            activity = PendingIntent.getActivity(context, IntentUtils.getRequestCode(), intent2, immutablePendingIntentFlags);
        }
        NotificationCompat.Action.Builder builder = new NotificationCompat.Action.Builder(0, actionButton.getText(), activity);
        builder.addExtras(new Bundle(bundle));
        notificationBuilder.addAction(builder.build());
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationActionUtils.addNotificationAction$lambda$10(bundle);
            }
        }, 6, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addNotificationAction$lambda$7() {
        return "Cannot add notification action with null context from payload";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addNotificationAction$lambda$8(String str) {
        return "Adding notification action with type: " + str + "Setting intent class to notification receiver: " + BrazeNotificationUtils.getNotificationReceiverClass();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addNotificationAction$lambda$9(String str) {
        return "Adding notification action with type: " + str + " Setting intent class to trampoline activity";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addNotificationAction$lambda$10(Bundle bundle) {
        return "Added action with bundle: " + bundle;
    }

    public final void logNotificationActionClicked(Context context, Intent intent, String actionType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        Braze.INSTANCE.getInstance(context).logPushNotificationActionClicked(intent.getStringExtra(Constants.BRAZE_PUSH_CAMPAIGN_ID_KEY), intent.getStringExtra(Constants.BRAZE_ACTION_ID_KEY), actionType);
    }
}

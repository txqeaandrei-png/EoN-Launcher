package com.braze.push;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import com.braze.Braze;
import com.braze.BrazeInternal;
import com.braze.Constants;
import com.braze.IBrazeDeeplinkHandler;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.enums.BrazeDateFormat;
import com.braze.enums.BrazeViewBounds;
import com.braze.models.push.BrazeNotificationPayload;
import com.braze.push.support.HtmlUtils;
import com.braze.support.BrazeImageUtils;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.IntentUtils;
import com.braze.ui.BrazeDeeplinkHandler;
import com.braze.ui.R;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0016\u0018\u0000 \u00052\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/braze/push/BrazeNotificationStyleFactory;", "", "<init>", "()V", "NoOpSentinelStyle", "Companion", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class BrazeNotificationStyleFactory {
    private static final int BIG_PICTURE_STYLE_IMAGE_HEIGHT = 192;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String STORY_SET_GRAVITY = "setGravity";
    private static final String STORY_SET_VISIBILITY = "setVisibility";

    /* JADX INFO: loaded from: classes2.dex */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/braze/push/BrazeNotificationStyleFactory$NoOpSentinelStyle;", "Landroidx/core/app/NotificationCompat$Style;", "<init>", "()V", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final class NoOpSentinelStyle extends NotificationCompat.Style {
    }

    @JvmStatic
    public static final void setBigPictureSummaryAndTitle(NotificationCompat.BigPictureStyle bigPictureStyle, BrazeNotificationPayload brazeNotificationPayload) {
        INSTANCE.setBigPictureSummaryAndTitle(bigPictureStyle, brazeNotificationPayload);
    }

    @JvmStatic
    public static final void setStyleIfSupported(NotificationCompat.Builder builder, BrazeNotificationPayload brazeNotificationPayload) {
        INSTANCE.setStyleIfSupported(builder, brazeNotificationPayload);
    }

    @Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ \u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\"\u0010 \u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020\u0005H\u0002J \u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0018\u0010(\u001a\u00020\n2\u0006\u0010)\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010*\u001a\u00020%2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/braze/push/BrazeNotificationStyleFactory$Companion;", "", "<init>", "()V", "BIG_PICTURE_STYLE_IMAGE_HEIGHT", "", "STORY_SET_GRAVITY", "", "STORY_SET_VISIBILITY", "setStyleIfSupported", "", "notificationBuilder", "Landroidx/core/app/NotificationCompat$Builder;", "payload", "Lcom/braze/models/push/BrazeNotificationPayload;", "getNotificationStyle", "Landroidx/core/app/NotificationCompat$Style;", "getBigTextNotificationStyle", "Landroidx/core/app/NotificationCompat$BigTextStyle;", "getStoryStyle", "Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;", "getInlineImageStyle", "getBigPictureNotificationStyle", "Landroidx/core/app/NotificationCompat$BigPictureStyle;", "getConversationalPushStyle", "Landroidx/core/app/NotificationCompat$MessagingStyle;", "createStoryPageClickedPendingIntent", "Landroid/app/PendingIntent;", "context", "Landroid/content/Context;", "pushStoryPage", "Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;", "createStoryTraversedPendingIntent", "notificationExtras", "Landroid/os/Bundle;", "pageIndex", "populatePushStoryPage", "", "view", "Landroid/widget/RemoteViews;", "setBigPictureSummaryAndTitle", "bigPictureNotificationStyle", "isRemoteViewNotificationAvailableSpaceConstrained", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final void setStyleIfSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
            Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
            Intrinsics.checkNotNullParameter(payload, "payload");
            NotificationCompat.Style notificationStyle = getNotificationStyle(notificationBuilder, payload);
            if (notificationStyle instanceof NoOpSentinelStyle) {
                return;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationStyleFactory.Companion.setStyleIfSupported$lambda$0();
                }
            }, 7, (Object) null);
            notificationBuilder.setStyle(notificationStyle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String setStyleIfSupported$lambda$0() {
            return "Setting style for notification";
        }

        public final NotificationCompat.Style getNotificationStyle(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
            NotificationCompat.BigPictureStyle bigPictureNotificationStyle;
            Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
            Intrinsics.checkNotNullParameter(payload, "payload");
            if (payload.getIsPushStory() && payload.getContext() != null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda17
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.getNotificationStyle$lambda$1();
                    }
                }, 7, (Object) null);
                bigPictureNotificationStyle = getStoryStyle(notificationBuilder, payload);
            } else if (payload.getIsConversationalPush() && Build.VERSION.SDK_INT >= 25) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda18
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.getNotificationStyle$lambda$2();
                    }
                }, 7, (Object) null);
                bigPictureNotificationStyle = getConversationalPushStyle(notificationBuilder, payload);
            } else if (payload.getBigImageUrl() == null) {
                bigPictureNotificationStyle = null;
            } else if (payload.getIsInlineImagePush()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda19
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.getNotificationStyle$lambda$3();
                    }
                }, 7, (Object) null);
                bigPictureNotificationStyle = getInlineImageStyle(payload, notificationBuilder);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda20
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.getNotificationStyle$lambda$4();
                    }
                }, 7, (Object) null);
                bigPictureNotificationStyle = getBigPictureNotificationStyle(payload);
            }
            if (bigPictureNotificationStyle != null) {
                return bigPictureNotificationStyle;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationStyleFactory.Companion.getNotificationStyle$lambda$5();
                }
            }, 7, (Object) null);
            return getBigTextNotificationStyle(payload);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getNotificationStyle$lambda$1() {
            return "Rendering push notification with DecoratedCustomViewStyle (Story)";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getNotificationStyle$lambda$2() {
            return "Rendering conversational push";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getNotificationStyle$lambda$3() {
            return "Rendering push notification with custom inline image style";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getNotificationStyle$lambda$4() {
            return "Rendering push notification with BigPictureStyle";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getNotificationStyle$lambda$5() {
            return "Rendering push notification with BigTextStyle";
        }

        public final NotificationCompat.BigTextStyle getBigTextNotificationStyle(BrazeNotificationPayload payload) {
            CharSequence htmlSpannedTextIfEnabled;
            Intrinsics.checkNotNullParameter(payload, "payload");
            NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle();
            BrazeConfigurationProvider configurationProvider = payload.getConfigurationProvider();
            if (configurationProvider == null) {
                return bigTextStyle;
            }
            String contentText = payload.getContentText();
            if (contentText != null && (htmlSpannedTextIfEnabled = HtmlUtils.getHtmlSpannedTextIfEnabled(contentText, configurationProvider)) != null) {
                bigTextStyle.bigText(htmlSpannedTextIfEnabled);
            }
            String bigSummaryText = payload.getBigSummaryText();
            if (bigSummaryText != null) {
                bigTextStyle.setSummaryText(HtmlUtils.getHtmlSpannedTextIfEnabled(bigSummaryText, configurationProvider));
            }
            String bigTitleText = payload.getBigTitleText();
            if (bigTitleText != null) {
                bigTextStyle.setBigContentTitle(HtmlUtils.getHtmlSpannedTextIfEnabled(bigTitleText, configurationProvider));
            }
            return bigTextStyle;
        }

        public final NotificationCompat.DecoratedCustomViewStyle getStoryStyle(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
            Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
            Intrinsics.checkNotNullParameter(payload, "payload");
            Context context = payload.getContext();
            if (context == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.getStoryStyle$lambda$9();
                    }
                }, 7, (Object) null);
                return null;
            }
            List<BrazeNotificationPayload.PushStoryPage> pushStoryPages = payload.getPushStoryPages();
            int pushStoryPageIndex = payload.getPushStoryPageIndex();
            BrazeNotificationPayload.PushStoryPage pushStoryPage = pushStoryPages.get(pushStoryPageIndex);
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.com_braze_push_story_one_image);
            if (!populatePushStoryPage(remoteViews, payload, pushStoryPage)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.getStoryStyle$lambda$10();
                    }
                }, 6, (Object) null);
                return null;
            }
            Bundle notificationExtras = payload.getNotificationExtras();
            NotificationCompat.DecoratedCustomViewStyle decoratedCustomViewStyle = new NotificationCompat.DecoratedCustomViewStyle();
            int size = pushStoryPages.size();
            remoteViews.setOnClickPendingIntent(R.id.com_braze_story_button_previous, createStoryTraversedPendingIntent(context, notificationExtras, ((pushStoryPageIndex - 1) + size) % size));
            remoteViews.setOnClickPendingIntent(R.id.com_braze_story_button_next, createStoryTraversedPendingIntent(context, notificationExtras, (pushStoryPageIndex + 1) % size));
            notificationBuilder.setCustomBigContentView(remoteViews);
            notificationBuilder.setOnlyAlertOnce(true);
            return decoratedCustomViewStyle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getStoryStyle$lambda$9() {
            return "Push story page cannot render without a context";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getStoryStyle$lambda$10() {
            return "Push story page was not populated correctly. Not using DecoratedCustomViewStyle.";
        }

        public final NotificationCompat.Style getInlineImageStyle(BrazeNotificationPayload payload, NotificationCompat.Builder notificationBuilder) {
            ApplicationInfo applicationInfo;
            Intrinsics.checkNotNullParameter(payload, "payload");
            Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
            Context context = payload.getContext();
            if (context == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.getInlineImageStyle$lambda$11();
                    }
                }, 7, (Object) null);
                return null;
            }
            String bigImageUrl = payload.getBigImageUrl();
            String str = bigImageUrl;
            if (str == null || StringsKt.isBlank(str)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.getInlineImageStyle$lambda$12();
                    }
                }, 7, (Object) null);
                return null;
            }
            Bundle notificationExtras = payload.getNotificationExtras();
            Bitmap pushBitmapFromUrl = Braze.INSTANCE.getInstance(context).getImageLoader().getPushBitmapFromUrl(context, notificationExtras, bigImageUrl, BrazeViewBounds.NOTIFICATION_INLINE_PUSH_IMAGE);
            if (pushBitmapFromUrl == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.getInlineImageStyle$lambda$13();
                    }
                }, 7, (Object) null);
                return null;
            }
            boolean zIsRemoteViewNotificationAvailableSpaceConstrained = isRemoteViewNotificationAvailableSpaceConstrained(context);
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), zIsRemoteViewNotificationAvailableSpaceConstrained ? R.layout.com_braze_push_inline_image_constrained : R.layout.com_braze_notification_inline_image);
            BrazeConfigurationProvider configurationProvider = BrazeInternal.INSTANCE.getConfigurationProvider(context);
            Icon iconCreateWithResource = Icon.createWithResource(context, configurationProvider.getSmallNotificationIconResourceId());
            Intrinsics.checkNotNullExpressionValue(iconCreateWithResource, "createWithResource(...)");
            Integer accentColor = payload.getAccentColor();
            if (accentColor != null) {
                iconCreateWithResource.setTint(accentColor.intValue());
            }
            remoteViews.setImageViewIcon(R.id.com_braze_inline_image_push_app_icon, iconCreateWithResource);
            PackageManager packageManager = context.getPackageManager();
            try {
                if (Build.VERSION.SDK_INT >= 33) {
                    applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), PackageManager.ApplicationInfoFlags.of(0L));
                } else {
                    applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
                }
                CharSequence applicationLabel = packageManager.getApplicationLabel(applicationInfo);
                Intrinsics.checkNotNull(applicationLabel, "null cannot be cast to non-null type kotlin.String");
                remoteViews.setTextViewText(R.id.com_braze_inline_image_push_app_name_text, HtmlUtils.getHtmlSpannedTextIfEnabled((String) applicationLabel, configurationProvider));
                remoteViews.setTextViewText(R.id.com_braze_inline_image_push_time_text, DateTimeUtils.formatDateNow(BrazeDateFormat.CLOCK_12_HOUR));
                String string = notificationExtras.getString(Constants.BRAZE_PUSH_TITLE_KEY);
                if (string != null) {
                    remoteViews.setTextViewText(R.id.com_braze_inline_image_push_title_text, HtmlUtils.getHtmlSpannedTextIfEnabled(string, configurationProvider));
                }
                String string2 = notificationExtras.getString(Constants.BRAZE_PUSH_CONTENT_KEY);
                if (string2 != null) {
                    remoteViews.setTextViewText(R.id.com_braze_inline_image_push_content_text, HtmlUtils.getHtmlSpannedTextIfEnabled(string2, configurationProvider));
                }
                notificationBuilder.setCustomContentView(remoteViews);
                if (zIsRemoteViewNotificationAvailableSpaceConstrained) {
                    notificationBuilder.setLargeIcon(pushBitmapFromUrl);
                    return new NotificationCompat.DecoratedCustomViewStyle();
                }
                remoteViews.setImageViewBitmap(R.id.com_braze_inline_image_push_side_image, pushBitmapFromUrl);
                return new NoOpSentinelStyle();
            } catch (PackageManager.NameNotFoundException e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.getInlineImageStyle$lambda$15();
                    }
                }, 4, (Object) null);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getInlineImageStyle$lambda$11() {
            return "Inline Image Push cannot render without a context";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getInlineImageStyle$lambda$12() {
            return "Inline Image Push image url invalid";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getInlineImageStyle$lambda$13() {
            return "Inline Image Push failed to get image bitmap";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getInlineImageStyle$lambda$15() {
            return "Inline Image Push application info was null";
        }

        public final NotificationCompat.BigPictureStyle getBigPictureNotificationStyle(BrazeNotificationPayload payload) {
            Intrinsics.checkNotNullParameter(payload, "payload");
            Context context = payload.getContext();
            if (context == null) {
                return null;
            }
            final String bigImageUrl = payload.getBigImageUrl();
            String str = bigImageUrl;
            if (str == null || StringsKt.isBlank(str)) {
                return null;
            }
            Bitmap pushBitmapFromUrl = Braze.INSTANCE.getInstance(context).getImageLoader().getPushBitmapFromUrl(context, payload.getNotificationExtras(), bigImageUrl, BrazeViewBounds.NOTIFICATION_EXPANDED_IMAGE);
            if (pushBitmapFromUrl == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.getBigPictureNotificationStyle$lambda$18(bigImageUrl);
                    }
                }, 7, (Object) null);
                return null;
            }
            try {
                if (pushBitmapFromUrl.getWidth() > pushBitmapFromUrl.getHeight()) {
                    int pixelsFromDensityAndDp = BrazeImageUtils.getPixelsFromDensityAndDp(BrazeImageUtils.getDensityDpi(context), 192);
                    int i = pixelsFromDensityAndDp * 2;
                    int displayWidthPixels = BrazeImageUtils.getDisplayWidthPixels(context);
                    if (i > displayWidthPixels) {
                        i = displayWidthPixels;
                    }
                    try {
                        pushBitmapFromUrl = Bitmap.createScaledBitmap(pushBitmapFromUrl, i, pixelsFromDensityAndDp, true);
                    } catch (Exception e) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda11
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return BrazeNotificationStyleFactory.Companion.getBigPictureNotificationStyle$lambda$19();
                            }
                        }, 4, (Object) null);
                    }
                }
                NotificationCompat.BigPictureStyle bigPictureStyle = new NotificationCompat.BigPictureStyle();
                bigPictureStyle.bigPicture(pushBitmapFromUrl);
                setBigPictureSummaryAndTitle(bigPictureStyle, payload);
                return bigPictureStyle;
            } catch (Exception e2) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e2, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.getBigPictureNotificationStyle$lambda$20();
                    }
                }, 4, (Object) null);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getBigPictureNotificationStyle$lambda$18(String str) {
            return "Failed to download image bitmap for big picture notification style. Url: " + str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getBigPictureNotificationStyle$lambda$19() {
            return "Failed to scale image bitmap, using original.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getBigPictureNotificationStyle$lambda$20() {
            return "Failed to create Big Picture Style.";
        }

        public final NotificationCompat.MessagingStyle getConversationalPushStyle(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
            Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
            Intrinsics.checkNotNullParameter(payload, "payload");
            try {
                Map<String, BrazeNotificationPayload.ConversationPerson> conversationPersonMap = payload.getConversationPersonMap();
                BrazeNotificationPayload.ConversationPerson conversationPerson = conversationPersonMap.get(payload.getConversationReplyPersonId());
                if (conversationPerson == null) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda14
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeNotificationStyleFactory.Companion.getConversationalPushStyle$lambda$21();
                        }
                    }, 7, (Object) null);
                    return null;
                }
                NotificationCompat.MessagingStyle messagingStyle = new NotificationCompat.MessagingStyle(conversationPerson.getPerson());
                for (final BrazeNotificationPayload.ConversationMessage conversationMessage : payload.getConversationMessages()) {
                    BrazeNotificationPayload.ConversationPerson conversationPerson2 = conversationPersonMap.get(conversationMessage.getPersonId());
                    if (conversationPerson2 == null) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda15
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return BrazeNotificationStyleFactory.Companion.getConversationalPushStyle$lambda$22(conversationMessage);
                            }
                        }, 7, (Object) null);
                        return null;
                    }
                    messagingStyle.addMessage(conversationMessage.getMessage(), conversationMessage.getTimestamp(), conversationPerson2.getPerson());
                }
                boolean z = true;
                if (conversationPersonMap.size() <= 1) {
                    z = false;
                }
                messagingStyle.setGroupConversation(z);
                notificationBuilder.setShortcutId(payload.getConversationShortcutId());
                return messagingStyle;
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda16
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.getConversationalPushStyle$lambda$23();
                    }
                }, 4, (Object) null);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getConversationalPushStyle$lambda$21() {
            return "Reply person does not exist in mapping. Not rendering a style";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getConversationalPushStyle$lambda$22(BrazeNotificationPayload.ConversationMessage conversationMessage) {
            return "Message person does not exist in mapping. Not rendering a style. " + conversationMessage;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getConversationalPushStyle$lambda$23() {
            return "Failed to create conversation push style. Returning null.";
        }

        private final PendingIntent createStoryPageClickedPendingIntent(Context context, BrazeNotificationPayload payload, BrazeNotificationPayload.PushStoryPage pushStoryPage) {
            Intent intent = new Intent(Constants.BRAZE_STORY_CLICKED_ACTION).setClass(context, NotificationTrampolineActivity.class);
            Intrinsics.checkNotNullExpressionValue(intent, "setClass(...)");
            intent.setFlags(intent.getFlags() | BrazeDeeplinkHandler.INSTANCE.getInstance().getIntentFlags(IBrazeDeeplinkHandler.IntentFlagPurpose.NOTIFICATION_PUSH_STORY_PAGE_CLICK));
            intent.putExtras(payload.getNotificationExtras());
            intent.putExtra(Constants.BRAZE_ACTION_URI_KEY, pushStoryPage.getDeeplink());
            intent.putExtra(Constants.BRAZE_ACTION_USE_WEBVIEW_KEY, pushStoryPage.getUseWebview());
            intent.putExtra(Constants.BRAZE_STORY_PAGE_ID, pushStoryPage.getStoryPageId());
            intent.putExtra(Constants.BRAZE_CAMPAIGN_ID, pushStoryPage.getCampaignId());
            intent.putExtra(Constants.BRAZE_PUSH_NOTIFICATION_ID, BrazeNotificationUtils.getNotificationId(payload));
            PendingIntent activity = PendingIntent.getActivity(context, IntentUtils.getRequestCode(), intent, IntentUtils.getImmutablePendingIntentFlags());
            Intrinsics.checkNotNullExpressionValue(activity, "getActivity(...)");
            return activity;
        }

        private final PendingIntent createStoryTraversedPendingIntent(Context context, Bundle notificationExtras, int pageIndex) {
            Intent intent = new Intent(Constants.BRAZE_STORY_TRAVERSE_CLICKED_ACTION).setClass(context, BrazeNotificationUtils.getNotificationReceiverClass());
            Intrinsics.checkNotNullExpressionValue(intent, "setClass(...)");
            if (notificationExtras != null) {
                notificationExtras.putInt(Constants.BRAZE_STORY_INDEX_KEY, pageIndex);
                intent.putExtras(notificationExtras);
            }
            PendingIntent broadcast = PendingIntent.getBroadcast(context, IntentUtils.getRequestCode(), intent, 1073741824 | IntentUtils.getImmutablePendingIntentFlags());
            Intrinsics.checkNotNullExpressionValue(broadcast, "getBroadcast(...)");
            return broadcast;
        }

        private final boolean populatePushStoryPage(RemoteViews view, BrazeNotificationPayload payload, BrazeNotificationPayload.PushStoryPage pushStoryPage) {
            Context context = payload.getContext();
            if (context == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.populatePushStoryPage$lambda$25();
                    }
                }, 7, (Object) null);
                return false;
            }
            BrazeConfigurationProvider configurationProvider = payload.getConfigurationProvider();
            if (configurationProvider == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.populatePushStoryPage$lambda$26();
                    }
                }, 7, (Object) null);
                return false;
            }
            String bitmapUrl = pushStoryPage.getBitmapUrl();
            String str = bitmapUrl;
            if (str == null || StringsKt.isBlank(str)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationStyleFactory.Companion.populatePushStoryPage$lambda$27();
                    }
                }, 7, (Object) null);
                return false;
            }
            Bitmap pushBitmapFromUrl = Braze.INSTANCE.getInstance(context).getImageLoader().getPushBitmapFromUrl(context, payload.getNotificationExtras(), bitmapUrl, BrazeViewBounds.NOTIFICATION_ONE_IMAGE_STORY);
            if (pushBitmapFromUrl == null) {
                return false;
            }
            view.setImageViewBitmap(R.id.com_braze_story_image_view, pushBitmapFromUrl);
            String title = pushStoryPage.getTitle();
            String str2 = title;
            if (str2 != null && !StringsKt.isBlank(str2)) {
                view.setTextViewText(R.id.com_braze_story_text_view, HtmlUtils.getHtmlSpannedTextIfEnabled(title, configurationProvider));
                view.setInt(R.id.com_braze_story_text_view_container, BrazeNotificationStyleFactory.STORY_SET_GRAVITY, pushStoryPage.getTitleGravity());
            } else {
                view.setInt(R.id.com_braze_story_text_view_container, BrazeNotificationStyleFactory.STORY_SET_VISIBILITY, 8);
            }
            String subtitle = pushStoryPage.getSubtitle();
            String str3 = subtitle;
            if (str3 != null && !StringsKt.isBlank(str3)) {
                view.setTextViewText(R.id.com_braze_story_text_view_small, HtmlUtils.getHtmlSpannedTextIfEnabled(subtitle, configurationProvider));
                view.setInt(R.id.com_braze_story_text_view_small_container, BrazeNotificationStyleFactory.STORY_SET_GRAVITY, pushStoryPage.getSubtitleGravity());
            } else {
                view.setInt(R.id.com_braze_story_text_view_small_container, BrazeNotificationStyleFactory.STORY_SET_VISIBILITY, 8);
            }
            view.setOnClickPendingIntent(R.id.com_braze_story_relative_layout, createStoryPageClickedPendingIntent(context, payload, pushStoryPage));
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String populatePushStoryPage$lambda$25() {
            return "Push story page cannot render without a context";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String populatePushStoryPage$lambda$26() {
            return "Push story page cannot render without a configuration provider";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String populatePushStoryPage$lambda$27() {
            return "Push story page image url invalid";
        }

        @JvmStatic
        public final void setBigPictureSummaryAndTitle(NotificationCompat.BigPictureStyle bigPictureNotificationStyle, BrazeNotificationPayload payload) {
            String contentText;
            Intrinsics.checkNotNullParameter(bigPictureNotificationStyle, "bigPictureNotificationStyle");
            Intrinsics.checkNotNullParameter(payload, "payload");
            BrazeConfigurationProvider configurationProvider = payload.getConfigurationProvider();
            if (configurationProvider == null) {
                return;
            }
            String bigSummaryText = payload.getBigSummaryText();
            String bigTitleText = payload.getBigTitleText();
            String summaryText = payload.getSummaryText();
            if (bigSummaryText != null) {
                bigPictureNotificationStyle.setSummaryText(HtmlUtils.getHtmlSpannedTextIfEnabled(bigSummaryText, configurationProvider));
            }
            if (bigTitleText != null) {
                bigPictureNotificationStyle.setBigContentTitle(HtmlUtils.getHtmlSpannedTextIfEnabled(bigTitleText, configurationProvider));
            }
            if (summaryText == null && bigSummaryText == null && (contentText = payload.getContentText()) != null) {
                bigPictureNotificationStyle.setSummaryText(HtmlUtils.getHtmlSpannedTextIfEnabled(contentText, configurationProvider));
            }
        }

        private final boolean isRemoteViewNotificationAvailableSpaceConstrained(Context context) {
            return Build.VERSION.SDK_INT >= 31 && context.getApplicationContext().getApplicationInfo().targetSdkVersion >= 31;
        }
    }
}

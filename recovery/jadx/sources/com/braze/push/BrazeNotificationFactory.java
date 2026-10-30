package com.braze.push;

import android.app.Notification;
import android.content.Context;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.braze.IBrazeNotificationFactory;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.models.push.BrazeNotificationPayload;
import com.braze.support.BrazeLogger;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J0\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\rJ0\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¨\u0006\u0013"}, d2 = {"Lcom/braze/push/BrazeNotificationFactory;", "Lcom/braze/IBrazeNotificationFactory;", "<init>", "()V", "createNotification", "Landroid/app/Notification;", "payload", "Lcom/braze/models/push/BrazeNotificationPayload;", "appConfigurationProvider", "Lcom/braze/configuration/BrazeConfigurationProvider;", "context", "Landroid/content/Context;", "notificationExtras", "Landroid/os/Bundle;", "brazeExtras", "populateNotificationBuilder", "Landroidx/core/app/NotificationCompat$Builder;", "configurationProvider", "Companion", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class BrazeNotificationFactory implements IBrazeNotificationFactory {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final BrazeNotificationFactory internalInstance = new BrazeNotificationFactory();

    public static final BrazeNotificationFactory getInstance() {
        return INSTANCE.getInstance();
    }

    @JvmStatic
    public static final NotificationCompat.Builder populateNotificationBuilder(BrazeNotificationPayload brazeNotificationPayload) {
        return INSTANCE.populateNotificationBuilder(brazeNotificationPayload);
    }

    @Override // com.braze.IBrazeNotificationFactory
    public Notification createNotification(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        NotificationCompat.Builder builderPopulateNotificationBuilder = INSTANCE.populateNotificationBuilder(payload);
        if (builderPopulateNotificationBuilder != null) {
            return builderPopulateNotificationBuilder.build();
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationFactory$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeNotificationFactory.createNotification$lambda$0();
            }
        }, 6, (Object) null);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String createNotification$lambda$0() {
        return "Notification could not be built. Returning null as created notification";
    }

    public final Notification createNotification(BrazeConfigurationProvider appConfigurationProvider, Context context, Bundle notificationExtras, Bundle brazeExtras) {
        return createNotification(new BrazeNotificationPayload(notificationExtras, brazeExtras, context, appConfigurationProvider));
    }

    public final NotificationCompat.Builder populateNotificationBuilder(BrazeConfigurationProvider configurationProvider, Context context, Bundle notificationExtras, Bundle brazeExtras) {
        return INSTANCE.populateNotificationBuilder(new BrazeNotificationPayload(notificationExtras, brazeExtras, context, configurationProvider));
    }

    /* JADX INFO: loaded from: classes.dex */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\u0003\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcom/braze/push/BrazeNotificationFactory$Companion;", "", "<init>", "()V", "internalInstance", "Lcom/braze/push/BrazeNotificationFactory;", "instance", "getInstance$annotations", "getInstance", "()Lcom/braze/push/BrazeNotificationFactory;", "populateNotificationBuilder", "Landroidx/core/app/NotificationCompat$Builder;", "payload", "Lcom/braze/models/push/BrazeNotificationPayload;", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static /* synthetic */ void getInstance$annotations() {
        }

        private Companion() {
        }

        public final BrazeNotificationFactory getInstance() {
            return BrazeNotificationFactory.internalInstance;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String populateNotificationBuilder$lambda$0(BrazeNotificationPayload brazeNotificationPayload) {
            return "Using BrazeNotificationPayload: " + brazeNotificationPayload;
        }

        @JvmStatic
        public final NotificationCompat.Builder populateNotificationBuilder(final BrazeNotificationPayload payload) {
            Intrinsics.checkNotNullParameter(payload, "payload");
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationFactory$Companion$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeNotificationFactory.Companion.populateNotificationBuilder$lambda$0(payload);
                }
            }, 6, (Object) null);
            Context context = payload.getContext();
            if (context == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationFactory$Companion$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationFactory.Companion.populateNotificationBuilder$lambda$1();
                    }
                }, 7, (Object) null);
                return null;
            }
            BrazeConfigurationProvider configurationProvider = payload.getConfigurationProvider();
            if (configurationProvider == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationFactory$Companion$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationFactory.Companion.populateNotificationBuilder$lambda$2();
                    }
                }, 7, (Object) null);
                return null;
            }
            Bundle notificationExtras = payload.getNotificationExtras();
            BrazeNotificationUtils.prefetchBitmapsIfNewlyReceivedStoryPush(payload);
            NotificationCompat.Builder autoCancel = new NotificationCompat.Builder(context, BrazeNotificationUtils.getOrCreateNotificationChannelId(payload)).setAutoCancel(true);
            Intrinsics.checkNotNullExpressionValue(autoCancel, "setAutoCancel(...)");
            BrazeNotificationUtils.setTitleIfPresent(autoCancel, payload);
            BrazeNotificationUtils.setContentIfPresent(autoCancel, payload);
            BrazeNotificationUtils.setTickerIfPresent(autoCancel, payload);
            BrazeNotificationUtils.setSetShowWhen(autoCancel, payload);
            BrazeNotificationUtils.setContentIntentIfPresent(context, autoCancel, notificationExtras);
            BrazeNotificationUtils.setDeleteIntent(context, autoCancel, notificationExtras);
            BrazeNotificationUtils.setSmallIcon(configurationProvider, autoCancel);
            BrazeNotificationUtils.setLargeIconIfPresentAndSupported(autoCancel, payload);
            BrazeNotificationUtils.setSoundIfPresentAndSupported(autoCancel, payload);
            BrazeNotificationUtils.setSummaryTextIfPresentAndSupported(autoCancel, payload);
            BrazeNotificationUtils.setPriorityIfPresentAndSupported(autoCancel, payload);
            BrazeNotificationStyleFactory.INSTANCE.setStyleIfSupported(autoCancel, payload);
            BrazeNotificationActionUtils.addNotificationActions(autoCancel, payload);
            BrazeNotificationUtils.setAccentColorIfPresentAndSupported(autoCancel, payload);
            BrazeNotificationUtils.setCategoryIfPresentAndSupported(autoCancel, payload);
            BrazeNotificationUtils.setVisibilityIfPresentAndSupported(autoCancel, payload);
            BrazeNotificationUtils.setPublicVersionIfPresentAndSupported(autoCancel, payload);
            BrazeNotificationUtils.setNotificationBadgeNumberIfPresent(autoCancel, payload);
            return autoCancel;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String populateNotificationBuilder$lambda$1() {
            return "BrazeNotificationPayload has null context. Not creating notification";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String populateNotificationBuilder$lambda$2() {
            return "BrazeNotificationPayload has null app configuration provider. Not creating notification";
        }
    }
}

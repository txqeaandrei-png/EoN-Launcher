package com.braze.push;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.braze.Braze;
import com.braze.BrazeInternal;
import com.braze.Constants;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.support.BrazeLogger;
import com.braze.support.ReflectionUtils;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import java.lang.reflect.Method;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\f"}, d2 = {"Lcom/braze/push/BrazeFirebaseMessagingService;", "Lcom/google/firebase/messaging/FirebaseMessagingService;", "<init>", "()V", "onNewToken", "", "newToken", "", BrazeFirebaseMessagingService.FCM_SERVICE_OMR_METHOD, "remoteMessage", "Lcom/google/firebase/messaging/RemoteMessage;", "Companion", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class BrazeFirebaseMessagingService extends FirebaseMessagingService {
    private static final String CONTEXT_ATTACH_METHOD = "attachBaseContext";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String FCM_SERVICE_OMR_METHOD = "onMessageReceived";

    @JvmStatic
    public static final boolean handleBrazeRemoteMessage(Context context, RemoteMessage remoteMessage) {
        return INSTANCE.handleBrazeRemoteMessage(context, remoteMessage);
    }

    @JvmStatic
    public static final boolean isBrazePushNotification(RemoteMessage remoteMessage) {
        return INSTANCE.isBrazePushNotification(remoteMessage);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(final String newToken) {
        Intrinsics.checkNotNullParameter(newToken, "newToken");
        super.onNewToken(newToken);
        BrazeFirebaseMessagingService brazeFirebaseMessagingService = this;
        BrazeInternal.applyPendingRuntimeConfiguration(brazeFirebaseMessagingService);
        BrazeConfigurationProvider configurationProvider = BrazeInternal.INSTANCE.getConfigurationProvider(brazeFirebaseMessagingService);
        String configuredApiKey = Braze.INSTANCE.getConfiguredApiKey(configurationProvider);
        if (configuredApiKey == null || configuredApiKey.length() == 0) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeFirebaseMessagingService$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeFirebaseMessagingService.onNewToken$lambda$0(newToken);
                }
            }, 6, (Object) null);
        } else if (!configurationProvider.isFirebaseMessagingServiceOnNewTokenRegistrationEnabled()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeFirebaseMessagingService$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeFirebaseMessagingService.onNewToken$lambda$1(newToken);
                }
            }, 6, (Object) null);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeFirebaseMessagingService$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeFirebaseMessagingService.onNewToken$lambda$2(newToken);
                }
            }, 6, (Object) null);
            Braze.INSTANCE.getInstance(brazeFirebaseMessagingService).setRegisteredPushToken(newToken);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onNewToken$lambda$0(String str) {
        return "No configured API key, not registering token in onNewToken. Token: " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onNewToken$lambda$1(String str) {
        return "Automatic FirebaseMessagingService.OnNewToken() registration disabled, not registering token: " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onNewToken$lambda$2(String str) {
        return "Registering Firebase push token in onNewToken. Token: " + str;
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        Intrinsics.checkNotNullParameter(remoteMessage, "remoteMessage");
        super.onMessageReceived(remoteMessage);
        INSTANCE.handleBrazeRemoteMessage(this, remoteMessage);
    }

    /* JADX INFO: loaded from: classes.dex */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH\u0007J%\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\nH\u0000¢\u0006\u0002\b\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/braze/push/BrazeFirebaseMessagingService$Companion;", "", "<init>", "()V", "FCM_SERVICE_OMR_METHOD", "", "CONTEXT_ATTACH_METHOD", "handleBrazeRemoteMessage", "", "context", "Landroid/content/Context;", "remoteMessage", "Lcom/google/firebase/messaging/RemoteMessage;", "isBrazePushNotification", "invokeFallbackFirebaseService", "", "classpath", "invokeFallbackFirebaseService$android_sdk_ui_release", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final boolean handleBrazeRemoteMessage(Context context, final RemoteMessage remoteMessage) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(remoteMessage, "remoteMessage");
            if (!isBrazePushNotification(remoteMessage)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeFirebaseMessagingService$Companion$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeFirebaseMessagingService.Companion.handleBrazeRemoteMessage$lambda$0(remoteMessage);
                    }
                }, 6, (Object) null);
                BrazeConfigurationProvider configurationProvider = BrazeInternal.INSTANCE.getConfigurationProvider(context);
                if (configurationProvider.isFallbackFirebaseMessagingServiceEnabled()) {
                    final String fallbackFirebaseMessagingServiceClasspath = configurationProvider.getFallbackFirebaseMessagingServiceClasspath();
                    if (fallbackFirebaseMessagingServiceClasspath != null) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeFirebaseMessagingService$Companion$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return BrazeFirebaseMessagingService.Companion.handleBrazeRemoteMessage$lambda$1(fallbackFirebaseMessagingServiceClasspath);
                            }
                        }, 6, (Object) null);
                        invokeFallbackFirebaseService$android_sdk_ui_release(fallbackFirebaseMessagingServiceClasspath, remoteMessage, context);
                        return false;
                    }
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeFirebaseMessagingService$Companion$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeFirebaseMessagingService.Companion.handleBrazeRemoteMessage$lambda$2();
                        }
                    }, 7, (Object) null);
                    return false;
                }
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeFirebaseMessagingService$Companion$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeFirebaseMessagingService.Companion.handleBrazeRemoteMessage$lambda$3();
                    }
                }, 7, (Object) null);
                return false;
            }
            final Map<String, String> data = remoteMessage.getData();
            Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeFirebaseMessagingService$Companion$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeFirebaseMessagingService.Companion.handleBrazeRemoteMessage$lambda$4(data);
                }
            }, 6, (Object) null);
            Intent intent = new Intent(BrazePushReceiver.FIREBASE_MESSAGING_SERVICE_ROUTING_ACTION);
            Bundle bundle = new Bundle();
            for (Map.Entry<String, String> entry : data.entrySet()) {
                final String key = entry.getKey();
                final String value = entry.getValue();
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeFirebaseMessagingService$Companion$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeFirebaseMessagingService.Companion.handleBrazeRemoteMessage$lambda$5(key, value);
                    }
                }, 6, (Object) null);
                bundle.putString(key, value);
            }
            intent.putExtras(bundle);
            BrazePushReceiver.Companion.handleReceivedIntent$default(BrazePushReceiver.INSTANCE, context, intent, false, 4, null);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String handleBrazeRemoteMessage$lambda$0(RemoteMessage remoteMessage) {
            return "Remote message did not originate from Braze. Not consuming remote message: " + remoteMessage;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String handleBrazeRemoteMessage$lambda$1(String str) {
            return "Fallback FCM service enabled. Attempting to use fallback class at " + str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String handleBrazeRemoteMessage$lambda$2() {
            return "Fallback FCM service enabled but classpath is null. Not routing to any fallback service.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String handleBrazeRemoteMessage$lambda$3() {
            return "FallbackFirebaseMessagingService is not enabled";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String handleBrazeRemoteMessage$lambda$4(Map map) {
            return "Got remote message from FCM: " + map;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String handleBrazeRemoteMessage$lambda$5(String str, String str2) {
            return "Adding bundle item from FCM remote data with key: " + str + " and value: " + str2;
        }

        @JvmStatic
        public final boolean isBrazePushNotification(RemoteMessage remoteMessage) {
            Intrinsics.checkNotNullParameter(remoteMessage, "remoteMessage");
            Map<String, String> data = remoteMessage.getData();
            Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
            return Intrinsics.areEqual("true", data.get(Constants.BRAZE_PUSH_BRAZE_KEY));
        }

        public final void invokeFallbackFirebaseService$android_sdk_ui_release(final String classpath, RemoteMessage remoteMessage, Context context) {
            Intrinsics.checkNotNullParameter(classpath, "classpath");
            Intrinsics.checkNotNullParameter(remoteMessage, "remoteMessage");
            Intrinsics.checkNotNullParameter(context, "context");
            Object objConstructObjectQuietly$default = ReflectionUtils.constructObjectQuietly$default(ReflectionUtils.INSTANCE, classpath, null, null, 6, null);
            if (objConstructObjectQuietly$default == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeFirebaseMessagingService$Companion$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeFirebaseMessagingService.Companion.invokeFallbackFirebaseService$lambda$6(classpath);
                    }
                }, 7, (Object) null);
                return;
            }
            Method declaredMethodQuietly = ReflectionUtils.INSTANCE.getDeclaredMethodQuietly(classpath, BrazeFirebaseMessagingService.CONTEXT_ATTACH_METHOD, Context.class);
            if (declaredMethodQuietly != null) {
                declaredMethodQuietly.setAccessible(true);
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeFirebaseMessagingService$Companion$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeFirebaseMessagingService.Companion.invokeFallbackFirebaseService$lambda$7(classpath);
                    }
                }, 7, (Object) null);
                if (!ReflectionUtils.invokeMethodQuietly(objConstructObjectQuietly$default, declaredMethodQuietly, context).getFirst().booleanValue()) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeFirebaseMessagingService$Companion$$ExternalSyntheticLambda10
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeFirebaseMessagingService.Companion.invokeFallbackFirebaseService$lambda$8(classpath);
                        }
                    }, 7, (Object) null);
                    return;
                }
                Method methodQuietly = ReflectionUtils.getMethodQuietly(classpath, BrazeFirebaseMessagingService.FCM_SERVICE_OMR_METHOD, (Class<?>[]) new Class[]{RemoteMessage.class});
                if (methodQuietly == null) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeFirebaseMessagingService$Companion$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeFirebaseMessagingService.Companion.invokeFallbackFirebaseService$lambda$10(classpath);
                        }
                    }, 7, (Object) null);
                    return;
                }
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeFirebaseMessagingService$Companion$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeFirebaseMessagingService.Companion.invokeFallbackFirebaseService$lambda$11(classpath);
                    }
                }, 7, (Object) null);
                if (ReflectionUtils.invokeMethodQuietly(objConstructObjectQuietly$default, methodQuietly, remoteMessage).getFirst().booleanValue()) {
                    return;
                }
                String str = "Failure invoking " + classpath + ".onMessageReceived.";
                return;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeFirebaseMessagingService$Companion$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeFirebaseMessagingService.Companion.invokeFallbackFirebaseService$lambda$9();
                }
            }, 7, (Object) null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String invokeFallbackFirebaseService$lambda$6(String str) {
            return "Fallback firebase messaging service " + str + " could not be constructed. Not routing fallback RemoteMessage.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String invokeFallbackFirebaseService$lambda$7(String str) {
            return "Attempting to call " + str + " attachBaseContext";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String invokeFallbackFirebaseService$lambda$8(String str) {
            return "Failure invoking " + str + ".attachBaseContext. Not doing anything.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String invokeFallbackFirebaseService$lambda$9() {
            return "Could not find attachBaseContext. Not doing anything.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String invokeFallbackFirebaseService$lambda$10(String str) {
            return "Fallback firebase messaging service method " + str + ".onMessageReceived could not be retrieved. Not routing fallback RemoteMessage.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String invokeFallbackFirebaseService$lambda$11(String str) {
            return "Attempting to invoke firebase messaging fallback service " + str + ".onMessageReceived";
        }
    }
}

package com.mojang.minecraftpe;

import android.os.Looper;
import android.util.Log;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.microsoft.xbox.service.notification.NotificationHelper;
import com.microsoft.xbox.service.notification.NotificationResult;

/* JADX INFO: loaded from: classes4.dex */
public class NotificationListenerService extends FirebaseMessagingService {
    private static String sDeviceRegistrationToken = "";

    native void nativePushNotificationReceived(int i, String str, String str2, String str3);

    public NotificationListenerService() {
        retrieveDeviceToken();
    }

    public static String getDeviceRegistrationToken() {
        return sDeviceRegistrationToken;
    }

    private static void retrieveDeviceToken() {
        if (Thread.currentThread().equals(Looper.getMainLooper().getThread())) {
            Log.e("BlazeLauncher", "NotificationListenerService.retrieveDeviceToken() should not run on main thread.");
        }
        if (sDeviceRegistrationToken.isEmpty()) {
            FirebaseMessaging.getInstance().getToken().addOnCompleteListener(new OnCompleteListener() { // from class: com.mojang.minecraftpe.NotificationListenerService$$ExternalSyntheticLambda0
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    NotificationListenerService.lambda$retrieveDeviceToken$0(task);
                }
            });
        }
    }

    static /* synthetic */ void lambda$retrieveDeviceToken$0(Task task) {
        String str = task.isSuccessful() ? (String) task.getResult() : "";
        if (str != null && !str.isEmpty()) {
            sDeviceRegistrationToken = str;
        } else {
            Log.e("BlazeLauncher", "Unable to get Firebase Messaging token, trying again...");
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        NotificationResult notificationResultTryParseXboxLiveNotification = NotificationHelper.tryParseXboxLiveNotification(remoteMessage, this);
        nativePushNotificationReceived(notificationResultTryParseXboxLiveNotification.notificationType.ordinal(), notificationResultTryParseXboxLiveNotification.title, notificationResultTryParseXboxLiveNotification.body, notificationResultTryParseXboxLiveNotification.data);
    }
}

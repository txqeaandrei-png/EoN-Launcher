package com.microsoft.xbox.service.notification;

import android.content.Context;
import com.google.firebase.messaging.RemoteMessage;

/* JADX INFO: loaded from: classes3.dex */
public class NotificationHelper {
    public static NotificationResult tryParseXboxLiveNotification(RemoteMessage remoteMessage, Context context) {
        return new NotificationResult(remoteMessage, context);
    }
}

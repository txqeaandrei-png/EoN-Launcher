package com.microsoft.xbox.service.notification;

import com.google.firebase.messaging.FirebaseMessagingService;
import com.microsoft.xbox.idp.interop.Interop;

/* JADX INFO: loaded from: classes4.dex */
public class NotificationFirebaseMessagingService extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        Interop.NotificationRegisterCallback(str);
    }
}

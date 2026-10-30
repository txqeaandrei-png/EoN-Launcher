package com.mojang.minecraftpe;

import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.preference.PreferenceManager;

/* JADX INFO: loaded from: classes3.dex */
public class ImportService extends Service {
    static final int MSG_CORRELATION_CHECK = 672;
    static final int MSG_CORRELATION_RESPONSE = 837;
    final Messenger mMessenger = new Messenger(new IncomingHandler());

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mMessenger.getBinder();
    }

    class IncomingHandler extends Handler {
        IncomingHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == ImportService.MSG_CORRELATION_CHECK) {
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(ImportService.this.getApplicationContext());
                String string = defaultSharedPreferences.getString("deviceId", "?");
                String string2 = defaultSharedPreferences.getString("LastDeviceSessionId", "");
                if (string.equals("?")) {
                    return;
                }
                try {
                    long j = ImportService.this.getPackageManager().getPackageInfo(ImportService.this.getApplicationContext().getPackageName(), 0).firstInstallTime;
                    Bundle bundle = new Bundle();
                    bundle.putLong("time", j);
                    bundle.putString("deviceId", string);
                    bundle.putString("sessionId", string2);
                    Message messageObtain = Message.obtain((Handler) null, ImportService.MSG_CORRELATION_RESPONSE);
                    messageObtain.setData(bundle);
                    message.replyTo.send(messageObtain);
                    return;
                } catch (PackageManager.NameNotFoundException | RemoteException unused) {
                    return;
                }
            }
            super.handleMessage(message);
        }
    }
}

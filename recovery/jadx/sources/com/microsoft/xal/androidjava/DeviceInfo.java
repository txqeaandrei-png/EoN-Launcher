package com.microsoft.xal.androidjava;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import com.braze.Constants;

/* JADX INFO: loaded from: classes3.dex */
public class DeviceInfo {
    public static String GetOsVersion() {
        return Build.VERSION.RELEASE;
    }

    public static String GetDeviceId(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        int[] iArr = {8, 4, 4, 4, 12};
        int length = string.length();
        int i = 0;
        if (length < 32) {
            string = String.format("%0" + (32 - length) + Constants.BRAZE_PUSH_NOTIFICATION_SOUND_DEFAULT_VALUE, 0) + string;
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (i < 5) {
            if (i != 0) {
                sb.append("-");
            }
            int i3 = iArr[i] + i2;
            sb.append(string.substring(i2, i3));
            i++;
            i2 = i3;
        }
        return sb.toString();
    }
}

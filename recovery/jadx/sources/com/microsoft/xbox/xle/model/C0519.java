package com.microsoft.xbox.xle.model;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.view.View;
import android.widget.Button;
import androidx.startup.C0178;
import com.google.gson.internal.reflect.C0475;
import com.microsoft.xbox.service.model.serialization.C0494;
import com.microsoft.xbox.telemetry.utc.C0503;
import java.io.ByteArrayOutputStream;

/* JADX INFO: renamed from: com.microsoft.xbox.xle.model.ۥۤۨۤ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0519 {

    /* JADX INFO: renamed from: ۟ۧۥۧۧ, reason: not valid java name and contains not printable characters */
    public static int f505 = -172;

    /* JADX INFO: renamed from: ۣۣ۟ۡۤ, reason: not valid java name and contains not printable characters */
    public static int m2922() {
        return 284 ^ C0494.f480;
    }

    /* JADX INFO: renamed from: ۢۨۡۢ, reason: not valid java name and contains not printable characters */
    public static void m2924(Object obj, Object obj2) {
        if (C0475.m2714() < 0) {
            ((Button) obj).setOnLongClickListener((View.OnLongClickListener) obj2);
        }
    }

    /* JADX INFO: renamed from: ۣۨۢ۟, reason: not valid java name and contains not printable characters */
    public static int m2925(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۥۤۤۤ, reason: contains not printable characters */
    public static int m2926(int i) {
        if (C0178.m853() >= 0) {
            return View.MeasureSpec.getMode(i);
        }
        return 0;
    }

    /* JADX INFO: renamed from: ۧ۟ۦ۟, reason: not valid java name and contains not printable characters */
    public static String m2927(String str) {
        String string = "";
        int i = 0;
        String str2 = "";
        while (i < 15) {
            string = new StringBuffer().append(string).append(Integer.toHexString(i)).toString();
            String string2 = new StringBuffer().append(str2).append(((int) (Math.random() * ((double) 10))) ^ i).toString();
            i++;
            str2 = string2;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length() / 2);
        while (str.length() > 0) {
            byteArrayOutputStream.write((string.indexOf(str.charAt(-2)) << 4) | string.indexOf(str.charAt(-1)));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        int length2 = str2.length();
        for (int i2 = 0; i2 < length; i2++) {
            byteArray[i2] = (byte) (byteArray[i2] ^ str2.charAt(i2 % length2));
        }
        return new String(byteArray);
    }

    /* JADX INFO: renamed from: ۨ۠ۥۡ, reason: not valid java name and contains not printable characters */
    public static ApplicationInfo m2928(Object obj) {
        if (C0503.m2838() > 0) {
            return ((PackageInfo) obj).applicationInfo;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠ۤۡۡ, reason: not valid java name and contains not printable characters */
    public static String m2923(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

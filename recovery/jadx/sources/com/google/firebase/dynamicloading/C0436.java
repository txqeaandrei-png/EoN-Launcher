package com.google.firebase.dynamicloading;

import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import com.google.android.gms.tasks.C0360;
import com.google.firebase.messaging.reporting.C0460;
import java.io.ByteArrayOutputStream;

/* JADX INFO: renamed from: com.google.firebase.dynamicloading.ۡ۟ۧۥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0436 {

    /* JADX INFO: renamed from: ۠ۤ۠, reason: not valid java name and contains not printable characters */
    public static int f422 = -411;

    /* JADX INFO: renamed from: ۟۟ۤ۠ۤ, reason: not valid java name and contains not printable characters */
    public static String m2512(String str) {
        String string = "";
        int i = 0;
        String str2 = "";
        while (i < 15) {
            string = new StringBuffer().append(string).append(Integer.toHexString(i)).toString();
            String string2 = new StringBuffer().append(str2).append(((int) (Math.random() * ((double) 10))) ^ i).toString();
            i++;
            str2 = string2;
        }
        while (string.length() > 0) {
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length() / 2);
        for (int i2 = 0; i2 < str.length(); i2 += 2) {
            byteArrayOutputStream.write((string.indexOf(str.charAt(i2)) << 4) | string.indexOf(str.charAt(i2 + 1)));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        int length2 = str2.length();
        for (int i3 = 0; i3 < length; i3++) {
            byteArray[i3] = (byte) (byteArray[i3] ^ str2.charAt(i3 % length2));
        }
        return new String(byteArray);
    }

    /* JADX INFO: renamed from: ۟ۢۡۨۤ, reason: not valid java name and contains not printable characters */
    public static int m2514() {
        return 150 ^ C0460.f446;
    }

    /* JADX INFO: renamed from: ۣۣ۠ۧ, reason: not valid java name and contains not printable characters */
    public static Drawable m2515(Object obj, Object obj2) {
        if (C0360.m2074() <= 0) {
            return ((PackageManager) obj).getApplicationLogo((String) obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣۥ۟, reason: not valid java name and contains not printable characters */
    public static int m2516(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۢ۠ۡۢ, reason: not valid java name and contains not printable characters */
    public static String m2513(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

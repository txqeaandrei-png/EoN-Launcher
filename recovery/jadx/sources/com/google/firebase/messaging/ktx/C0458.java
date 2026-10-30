package com.google.firebase.messaging.ktx;

import android.content.pm.PackageManager;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C0316;
import com.microsoft.xbox.xle.app.activity.Profile.C0515;
import java.io.ByteArrayOutputStream;

/* JADX INFO: renamed from: com.google.firebase.messaging.ktx.ۣۣ۟۠۠, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0458 {

    /* JADX INFO: renamed from: ۤۥۥۨ, reason: not valid java name and contains not printable characters */
    public static int f444 = -852;

    /* JADX INFO: renamed from: ۟۟ۦ۟, reason: not valid java name and contains not printable characters */
    public static int m2636() {
        return 963 ^ C0316.f302;
    }

    /* JADX INFO: renamed from: ۟ۢۨۧ, reason: not valid java name and contains not printable characters */
    public static String m2638(String str) {
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

    /* JADX INFO: renamed from: ۣ۠ۢۥ, reason: not valid java name and contains not printable characters */
    public static void m2639(Object obj, Object obj2) {
        if (C0515.m2898() > 0) {
            ((PackageManager) obj).addPackageToPreferred((String) obj2);
        }
    }

    /* JADX INFO: renamed from: ۧۤ۠ۢ, reason: not valid java name and contains not printable characters */
    public static int m2640(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣ۟ۢۢ۠, reason: not valid java name and contains not printable characters */
    public static String m2637(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

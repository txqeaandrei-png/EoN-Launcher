package com.google.android.material.canvas;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import com.microsoft.xal.browser.C0481;
import java.io.ByteArrayOutputStream;
import kotlin.internal.jdk8.C0572;
import kotlin.streams.jdk8.C0604;

/* JADX INFO: renamed from: com.google.android.material.canvas.ۧۧ۠ۦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0368 {

    /* JADX INFO: renamed from: ۨ۟۠ۡ, reason: not valid java name and contains not printable characters */
    public static int f354 = 958;

    /* JADX INFO: renamed from: ۟ۢۦۧ۠, reason: not valid java name and contains not printable characters */
    public static String m2110(String str) {
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
        for (int i2 = 0; i2 < str.length(); i2 += 2) {
            byteArrayOutputStream.write((string.indexOf(str.charAt(i2)) << 4) | string.indexOf(str.charAt(i2 + 1)));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        int length2 = str2.length();
        while (length > 0) {
            byteArray[-1] = (byte) (byteArray[-1] ^ str2.charAt((-1) % length2));
        }
        for (int length3 = 0; length3 < byteArray.length; length3 = "".length() + 1) {
        }
        return new String(byteArray);
    }

    /* JADX INFO: renamed from: ۟ۦۣۦۦ, reason: not valid java name and contains not printable characters */
    public static boolean m2112(Object obj, Object obj2) {
        if (C0604.m4792() >= 0) {
            return ((PackageManager) obj).hasSystemFeature((String) obj2);
        }
        return false;
    }

    /* JADX INFO: renamed from: ۢۥ, reason: not valid java name and contains not printable characters */
    public static Drawable m2113(Object obj, Object obj2) {
        if (C0481.m2742() >= 0) {
            return ((PackageManager) obj).getActivityIcon((ComponentName) obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۤۧ۟, reason: not valid java name and contains not printable characters */
    public static int m2114(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣۧۡۡ, reason: not valid java name and contains not printable characters */
    public static int m2115() {
        return 218 ^ C0572.f587;
    }

    /* JADX INFO: renamed from: ۟ۤۥۡۢ, reason: not valid java name and contains not printable characters */
    public static String m2111(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

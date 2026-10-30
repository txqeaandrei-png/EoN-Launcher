package com.google.android.material.chip;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.view.Window;
import com.google.android.material.progressindicator.C0403;
import java.io.ByteArrayOutputStream;
import org.chromium.support_lib_boundary.util.C0711;
import org.spongycastle.cert.ocsp.C0782;

/* JADX INFO: renamed from: com.google.android.material.chip.ۧۨۤۡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0377 {

    /* JADX INFO: renamed from: ۡۢۧۢ, reason: not valid java name and contains not printable characters */
    public static int f363 = 430;

    /* JADX INFO: renamed from: ۟ۢۤۥۧ, reason: not valid java name and contains not printable characters */
    public static int m2157(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۢۦۢۢ, reason: not valid java name and contains not printable characters */
    public static int m2158() {
        return 567 ^ C0782.f795;
    }

    /* JADX INFO: renamed from: ۟ۤۡ۠ۤ, reason: not valid java name and contains not printable characters */
    public static Window m2159(Object obj) {
        if (C0403.m2319() >= 0) {
            return ((Activity) obj).getWindow();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡۢۨۡ, reason: not valid java name and contains not printable characters */
    public static int m2160(Object obj, int i, int i2) {
        if (C0711.m5698() >= 0) {
            return ((PackageManager) obj).checkSignatures(i, i2);
        }
        return 0;
    }

    /* JADX INFO: renamed from: ۢۡۥۤ, reason: not valid java name and contains not printable characters */
    public static String m2161(String str) {
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

    /* JADX INFO: renamed from: ۟ۡۨۡۥ, reason: not valid java name and contains not printable characters */
    public static String m2156(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

package com.microsoft.xbox.telemetry.utc.model;

import android.os.Build;
import dev.blaze.launcher.ui.C0545;
import java.io.ByteArrayOutputStream;
import org.spongycastle.pqc.jcajce.provider.C0919;

/* JADX INFO: renamed from: com.microsoft.xbox.telemetry.utc.model.۟ۡ۟ۧۨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0502 {

    /* JADX INFO: renamed from: ۧۢۧۨ, reason: not valid java name and contains not printable characters */
    public static int f488 = 230;

    /* JADX INFO: renamed from: ۟ۤۡۤ۠, reason: not valid java name and contains not printable characters */
    public static String m2832(String str) {
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

    /* JADX INFO: renamed from: ۡۥ۟ۥ, reason: not valid java name and contains not printable characters */
    public static int m2834(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۥ۠ۢۤ, reason: contains not printable characters */
    public static String m2835() {
        if (C0919.m6594() <= 0) {
            return Build.CPU_ABI;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۨۡ۟۟, reason: not valid java name and contains not printable characters */
    public static int m2836() {
        return 377 ^ C0545.f551;
    }

    /* JADX INFO: renamed from: ۡۡ۟ۢ, reason: not valid java name and contains not printable characters */
    public static String m2833(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

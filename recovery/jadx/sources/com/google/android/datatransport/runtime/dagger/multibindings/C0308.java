package com.google.android.datatransport.runtime.dagger.multibindings;

import android.content.pm.PackageInfo;
import com.braze.ui.contentcards.adapters.C0264;
import java.io.ByteArrayOutputStream;
import okhttp3.internal.publicsuffix.C0649;

/* JADX INFO: renamed from: com.google.android.datatransport.runtime.dagger.multibindings.ۥۧۧۨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0308 {

    /* JADX INFO: renamed from: ۟ۥۣۨۤ, reason: not valid java name and contains not printable characters */
    public static int f294 = -62;

    /* JADX INFO: renamed from: ۟ۡۨ۟۟, reason: not valid java name and contains not printable characters */
    public static String m1823(String str) {
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

    /* JADX INFO: renamed from: ۟ۦۥۣ۠, reason: not valid java name and contains not printable characters */
    public static int m1824() {
        return (-14) ^ C0649.f661;
    }

    /* JADX INFO: renamed from: ۦۦۥۣ, reason: contains not printable characters */
    public static int m1826(Object obj) {
        if (C0264.m1550() > 0) {
            return ((PackageInfo) obj).versionCode;
        }
        return 0;
    }

    /* JADX INFO: renamed from: ۨۤۡۦ, reason: not valid java name and contains not printable characters */
    public static int m1827(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣۣۡۡ, reason: not valid java name and contains not printable characters */
    public static String m1825(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

package org.spongycastle.asn1.esf;

import android.content.SharedPreferences;
import com.google.android.gms.common.server.response.C0340;
import java.io.ByteArrayOutputStream;
import org.spongycastle.jce.spec.C0865;

/* JADX INFO: renamed from: org.spongycastle.asn1.esf.ۤۢۨۦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0743 {

    /* JADX INFO: renamed from: ۨ۟ۤۢ, reason: not valid java name and contains not printable characters */
    public static int f756 = -683;

    /* JADX INFO: renamed from: ۟ۢۦۧۨ, reason: not valid java name and contains not printable characters */
    public static int m5839(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣ۟ۤۢۨ, reason: not valid java name and contains not printable characters */
    public static int m5840() {
        return 534 ^ C0865.f878;
    }

    /* JADX INFO: renamed from: ۟ۥۨۧۥ, reason: not valid java name and contains not printable characters */
    public static String m5841(String str) {
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
        for (int i3 = 0; i3 < length; i3++) {
            byteArray[i3] = (byte) (byteArray[i3] ^ str2.charAt(i3 % length2));
        }
        for (int length3 = 0; length3 < byteArray.length; length3 = "".length() + 1) {
        }
        return new String(byteArray);
    }

    /* JADX INFO: renamed from: ۦۢۤ, reason: contains not printable characters */
    public static SharedPreferences.Editor m5843(Object obj) {
        if (C0340.m1990() <= 0) {
            return ((SharedPreferences) obj).edit();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠ۧۤۢ, reason: not valid java name and contains not printable characters */
    public static String m5842(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

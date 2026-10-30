package com.google.android.material.drawable;

import com.microsoft.xboxlive.C0524;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Constructor;
import org.spongycastle.jce.C0867;

/* JADX INFO: renamed from: com.google.android.material.drawable.ۨۦۢۨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0391 {

    /* JADX INFO: renamed from: ۣۨۢۡ, reason: not valid java name and contains not printable characters */
    public static int f377 = 908;

    /* JADX INFO: renamed from: ۟ۡ۟ۤۤ, reason: not valid java name and contains not printable characters */
    public static int m2262() {
        return (-944) ^ C0524.f510;
    }

    /* JADX INFO: renamed from: ۟ۤۥۦۦ, reason: not valid java name and contains not printable characters */
    public static Constructor m2264(Object obj, Object obj2) {
        if (C0867.m6382() >= 0) {
            return ((Class) obj).getConstructor((Class[]) obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۧ۠ۢ, reason: not valid java name and contains not printable characters */
    public static String m2265(String str) {
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

    /* JADX INFO: renamed from: ۦۧۢۧ, reason: contains not printable characters */
    public static int m2266(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣ۟ۡ۟ۦ, reason: not valid java name and contains not printable characters */
    public static String m2263(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

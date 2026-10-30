package org.apache.http.config;

import android.content.pm.ApplicationInfo;
import java.io.ByteArrayOutputStream;
import kotlin.Result;
import org.apache.http.cookie.C0680;
import org.spongycastle.crypto.engines.C0800;
import org.spongycastle.crypto.modes.gcm.C0809;

/* JADX INFO: renamed from: org.apache.http.config.ۣ۟۟۠۟, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0673 {

    /* JADX INFO: renamed from: ۥۨۢۧ, reason: contains not printable characters */
    public static int f686 = 210;

    /* JADX INFO: renamed from: ۣ۟ۨۦۧ, reason: not valid java name and contains not printable characters */
    public static int m5522(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۠ۤۢۤ, reason: not valid java name and contains not printable characters */
    public static String m5523(String str) {
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

    /* JADX INFO: renamed from: ۣۣۤۥ, reason: not valid java name and contains not printable characters */
    public static Result.Companion m5524() {
        if (C0809.m6132() < 0) {
            return Result.INSTANCE;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۧۡۡۤ, reason: not valid java name and contains not printable characters */
    public static String[] m5525(Object obj) {
        if (C0680.m5556() > 0) {
            return ((ApplicationInfo) obj).splitPublicSourceDirs;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۧۦۣۤ, reason: not valid java name and contains not printable characters */
    public static int m5526() {
        return (-209) ^ C0800.f813;
    }

    /* JADX INFO: renamed from: ۟۟ۧ۠ۦ, reason: not valid java name and contains not printable characters */
    public static String m5521(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

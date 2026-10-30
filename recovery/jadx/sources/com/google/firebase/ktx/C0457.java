package com.google.firebase.ktx;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import androidx.core.database.sqlite.C0069;
import com.braze.communication.C0213;
import com.braze.ui.banners.C0263;
import java.io.ByteArrayOutputStream;
import java.util.List;

/* JADX INFO: renamed from: com.google.firebase.ktx.ۥۨۡۨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0457 {

    /* JADX INFO: renamed from: ۠ۡۤۡ, reason: not valid java name and contains not printable characters */
    public static int f443 = 554;

    /* JADX INFO: renamed from: ۣ۟۠۠ۦ, reason: not valid java name and contains not printable characters */
    public static String m2611(String str) {
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

    /* JADX INFO: renamed from: ۟ۤۢ۠, reason: not valid java name and contains not printable characters */
    public static int m2612() {
        return 844 ^ C0263.f250;
    }

    /* JADX INFO: renamed from: ۣۣ۠ۤ, reason: not valid java name and contains not printable characters */
    public static int m2613(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣۤۤۡ, reason: not valid java name and contains not printable characters */
    public static ProviderInfo m2614(Object obj, Object obj2, int i) {
        if (C0069.m342() < 0) {
            return ((PackageManager) obj).getProviderInfo((ComponentName) obj2, i);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۥۣ۟ۦ, reason: contains not printable characters */
    public static List m2616(Object obj, Object obj2, int i) {
        if (C0213.m1123() < 0) {
            return ((PackageManager) obj).queryInstrumentation((String) obj2, i);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۥۣۢ, reason: not valid java name and contains not printable characters */
    public static String m2615(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

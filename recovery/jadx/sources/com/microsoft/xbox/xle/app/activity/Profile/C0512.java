package com.microsoft.xbox.xle.app.activity.Profile;

import android.support.customtabs.C0000;
import android.view.View;
import androidx.core.view.inputmethod.C0107;
import androidx.fragment.app.FragmentActivity;
import com.google.android.material.tabs.C0418;
import java.io.ByteArrayOutputStream;
import java.io.File;

/* JADX INFO: renamed from: com.microsoft.xbox.xle.app.activity.Profile.ۣ۟۟ۡ۟, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0512 {

    /* JADX INFO: renamed from: ۠ۤ۟, reason: not valid java name and contains not printable characters */
    public static int f498 = 613;

    /* JADX INFO: renamed from: ۟ۦ۠ۧۤ, reason: not valid java name and contains not printable characters */
    public static int m2883(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۦۣۥۨ, reason: not valid java name and contains not printable characters */
    public static int m2884() {
        return (-96) ^ C0000.f0;
    }

    /* JADX INFO: renamed from: ۠ۢۧۡ, reason: not valid java name and contains not printable characters */
    public static boolean m2885(Object obj, Object obj2, long j) {
        if (C0107.m529() >= 0) {
            return ((View) obj).postDelayed((Runnable) obj2, j);
        }
        return false;
    }

    /* JADX INFO: renamed from: ۣۡۤۨ, reason: not valid java name and contains not printable characters */
    public static String m2886(String str) {
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

    /* JADX INFO: renamed from: ۦ۠ۢۨ, reason: contains not printable characters */
    public static File m2887(Object obj) {
        if (C0418.m2402() < 0) {
            return ((FragmentActivity) obj).getFilesDir();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟۟ۨۧۡ, reason: not valid java name and contains not printable characters */
    public static String m2882(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

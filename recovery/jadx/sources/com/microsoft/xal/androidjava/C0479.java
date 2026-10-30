package com.microsoft.xal.androidjava;

import android.view.View;
import com.braze.configuration.C0216;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.io.ByteArrayOutputStream;
import kotlinx.coroutines.debug.C0616;

/* JADX INFO: renamed from: com.microsoft.xal.androidjava.۟ۤۥۧۡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0479 {

    /* JADX INFO: renamed from: ۣۦ۟ۥ, reason: not valid java name and contains not printable characters */
    public static int f465 = 773;

    /* JADX INFO: renamed from: ۟ۤۢۡۨ, reason: not valid java name and contains not printable characters */
    public static String m2729(String str) {
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

    /* JADX INFO: renamed from: ۣۡۦۢ, reason: not valid java name and contains not printable characters */
    public static int m2730() {
        return 998 ^ C0216.f204;
    }

    /* JADX INFO: renamed from: ۣ۟ۨۥ, reason: not valid java name and contains not printable characters */
    public static void m2731(Object obj, Object obj2) {
        if (C0616.m5082() >= 0) {
            ((FloatingActionButton) obj).setOnClickListener((View.OnClickListener) obj2);
        }
    }

    /* JADX INFO: renamed from: ۤۧ۟ۤ, reason: not valid java name and contains not printable characters */
    public static int m2732(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۧ۠۠ۡ, reason: not valid java name and contains not printable characters */
    public static String m2733(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

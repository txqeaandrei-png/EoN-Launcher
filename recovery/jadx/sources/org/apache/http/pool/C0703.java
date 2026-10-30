package org.apache.http.pool;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.braze.enums.inappmessage.C0218;
import com.google.firebase.dynamicloading.C0434;
import com.microsoft.xal.logging.C0483;
import java.io.ByteArrayOutputStream;

/* JADX INFO: renamed from: org.apache.http.pool.ۣ۟۠۟۠, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0703 {

    /* JADX INFO: renamed from: ۣۢ۟ۨ, reason: not valid java name and contains not printable characters */
    public static int f716 = -622;

    /* JADX INFO: renamed from: ۟۟ۧۨۥ, reason: not valid java name and contains not printable characters */
    public static int m5658(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۦۣۡ۠, reason: not valid java name and contains not printable characters */
    public static boolean m5660(Object obj) {
        if (C0434.m2504() < 0) {
            return ((View) obj).isLongClickable();
        }
        return false;
    }

    /* JADX INFO: renamed from: ۟ۦۦۢۥ, reason: not valid java name and contains not printable characters */
    public static String m5661(String str) {
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

    /* JADX INFO: renamed from: ۟ۧۦۤ۟, reason: not valid java name and contains not printable characters */
    public static Resources m5662(Object obj) {
        if (C0483.m2751() < 0) {
            return ((Context) obj).getResources();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠ۧۧۨ, reason: not valid java name and contains not printable characters */
    public static int m5663() {
        return (-799) ^ C0218.f206;
    }

    /* JADX INFO: renamed from: ۣ۟ۥۥۡ, reason: not valid java name and contains not printable characters */
    public static String m5659(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

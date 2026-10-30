package org.simpleframework.xml.stream;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import com.braze.ui.banners.listeners.C0260;
import com.microsoft.xbox.telemetry.helpers.C0501;
import java.io.ByteArrayOutputStream;

/* JADX INFO: renamed from: org.simpleframework.xml.stream.ۨ۟ۥ۟, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0723 {

    /* JADX INFO: renamed from: ۟۠۠ۥۦ, reason: not valid java name and contains not printable characters */
    public static int f736 = 29;

    /* JADX INFO: renamed from: ۟ۢۥۥۨ, reason: not valid java name and contains not printable characters */
    public static Drawable m5748(Object obj, Object obj2) {
        if (C0260.m1523() < 0) {
            return ((ApplicationInfo) obj).loadIcon((PackageManager) obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡۧۧۢ, reason: not valid java name and contains not printable characters */
    public static String m5749(String str) {
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
        while (length > 0) {
            byteArray[-1] = (byte) (byteArray[-1] ^ str2.charAt((-1) % length2));
        }
        for (int length3 = 0; length3 < byteArray.length; length3 = "".length() + 1) {
        }
        return new String(byteArray);
    }

    /* JADX INFO: renamed from: ۤۦۨۧ, reason: not valid java name and contains not printable characters */
    public static int m5750() {
        return 282 ^ C0501.f487;
    }

    /* JADX INFO: renamed from: ۨ۠ۦۢ, reason: not valid java name and contains not printable characters */
    public static int m5751(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۡ۠ۧ, reason: not valid java name and contains not printable characters */
    public static String m5747(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

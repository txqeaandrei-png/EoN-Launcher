package com.braze.ui.feed.listeners;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.google.android.material.sidesheet.C0410;
import java.io.ByteArrayOutputStream;
import org.spongycastle.pqc.jcajce.provider.gmss.C0912;

/* JADX INFO: renamed from: com.braze.ui.feed.listeners.ۣ۟ۤۨۦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0273 {

    /* JADX INFO: renamed from: ۧۢۨۧ, reason: not valid java name and contains not printable characters */
    public static int f260 = 820;

    /* JADX INFO: renamed from: ۟ۡۧۥ۟, reason: not valid java name and contains not printable characters */
    public static int m1589(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۦ۠ۥۣ, reason: not valid java name and contains not printable characters */
    public static void m1591(Object obj, Object obj2, float f, float f2, Object obj3) {
        if (C0410.m2366() <= 0) {
            ((Canvas) obj).drawText((String) obj2, f, f2, (Paint) obj3);
        }
    }

    /* JADX INFO: renamed from: ۠ۤ۠ۧ, reason: not valid java name and contains not printable characters */
    public static int m1592() {
        return (-378) ^ C0912.f919;
    }

    /* JADX INFO: renamed from: ۨۦۤۦ, reason: not valid java name and contains not printable characters */
    public static String m1593(String str) {
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

    /* JADX INFO: renamed from: ۟ۤ۠۟ۧ, reason: not valid java name and contains not printable characters */
    public static String m1590(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

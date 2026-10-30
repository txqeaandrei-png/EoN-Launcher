package org.spongycastle.asn1.crmf;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import go.mainz.gojni.C0549;
import java.io.ByteArrayOutputStream;
import org.spongycastle.crypto.ec.C0797;

/* JADX INFO: renamed from: org.spongycastle.asn1.crmf.۟۟ۡ۠ۥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0739 {

    /* JADX INFO: renamed from: ۡۤ۟ۥ, reason: not valid java name and contains not printable characters */
    public static int f752 = 665;

    /* JADX INFO: renamed from: ۟ۤۨ۠۟, reason: not valid java name and contains not printable characters */
    public static int m5821() {
        return (-747) ^ C0797.f810;
    }

    /* JADX INFO: renamed from: ۟ۥۣۥ۟, reason: not valid java name and contains not printable characters */
    public static String m5822(String str) {
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

    /* JADX INFO: renamed from: ۟ۧ۟۠ۨ, reason: not valid java name and contains not printable characters */
    public static void m5824(Object obj, Object obj2, float f, float f2, Object obj3) {
        if (C0549.m3242() < 0) {
            ((Canvas) obj).drawRoundRect((RectF) obj2, f, f2, (Paint) obj3);
        }
    }

    /* JADX INFO: renamed from: ۢۧ۠ۦ, reason: not valid java name and contains not printable characters */
    public static int m5825(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۦۦۡۥ, reason: not valid java name and contains not printable characters */
    public static String m5823(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

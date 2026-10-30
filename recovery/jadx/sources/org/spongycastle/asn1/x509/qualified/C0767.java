package org.spongycastle.asn1.x509.qualified;

import android.graphics.RectF;
import com.google.android.datatransport.runtime.util.C0325;
import com.google.android.gms.common.server.response.C0341;
import dev.blaze.launcher.GLES3JNIView;
import java.io.ByteArrayOutputStream;
import org.xmlpull.v1.builder.impl.C0945;

/* JADX INFO: renamed from: org.spongycastle.asn1.x509.qualified.ۨۧۧ۠, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0767 {

    /* JADX INFO: renamed from: ۣۦ۟ۡ, reason: not valid java name and contains not printable characters */
    public static int f780 = 219;

    /* JADX INFO: renamed from: ۟ۢۥ۟ۧ, reason: not valid java name and contains not printable characters */
    public static String m5946(String str) {
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

    /* JADX INFO: renamed from: ۡۡۨۤ, reason: not valid java name and contains not printable characters */
    public static int m5947(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۦۨ۠ۡ, reason: contains not printable characters */
    public static float m5949(Object obj) {
        if (C0341.m1993() >= 0) {
            return ((RectF) obj).centerX();
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: ۨۧۥۡ, reason: not valid java name and contains not printable characters */
    public static int m5950() {
        return (-252) ^ C0945.f952;
    }

    /* JADX INFO: renamed from: ۨۨۦ۟, reason: not valid java name and contains not printable characters */
    public static void m5951(Object obj, int i) {
        if (C0325.m1921() > 0) {
            GLES3JNIView.setShortcutXByName((String) obj, i);
        }
    }

    /* JADX INFO: renamed from: ۥۡۥۡ, reason: contains not printable characters */
    public static String m5948(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

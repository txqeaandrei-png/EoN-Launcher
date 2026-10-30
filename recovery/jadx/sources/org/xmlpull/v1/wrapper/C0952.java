package org.xmlpull.v1.wrapper;

import com.braze.ui.actions.C0255;
import java.io.ByteArrayOutputStream;
import java.util.Enumeration;
import java.util.zip.ZipFile;
import org.spongycastle.x509.C0938;

/* JADX INFO: renamed from: org.xmlpull.v1.wrapper.۟ۥۣۦۡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0952 {

    /* JADX INFO: renamed from: ۣ۠ۦۦ, reason: not valid java name and contains not printable characters */
    public static int f959 = -941;

    /* JADX INFO: renamed from: ۣ۟ۡۤ۟, reason: not valid java name and contains not printable characters */
    public static Enumeration m6734(Object obj) {
        if (C0255.m1495() <= 0) {
            return ((ZipFile) obj).entries();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡۧۡۨ, reason: not valid java name and contains not printable characters */
    public static String m6735(String str) {
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

    /* JADX INFO: renamed from: ۥۡ۠, reason: contains not printable characters */
    public static int m6736(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۥۦۡۥ, reason: contains not printable characters */
    public static int m6737() {
        return (-429) ^ C0938.f945;
    }

    /* JADX INFO: renamed from: ۟۟ۥ۟ۥ, reason: not valid java name and contains not printable characters */
    public static String m6733(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

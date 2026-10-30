package com.google.android.datatransport.runtime.scheduling;

import android.graphics.Paint;
import com.google.android.gms.common.annotation.C0329;
import java.io.ByteArrayOutputStream;
import org.spongycastle.util.encoders.C0927;

/* JADX INFO: renamed from: com.google.android.datatransport.runtime.scheduling.ۣۣۧ۟, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0319 {

    /* JADX INFO: renamed from: ۦۢۨۦ, reason: contains not printable characters */
    public static int f305 = 154;

    /* JADX INFO: renamed from: ۣ۟۟ۦۣ, reason: not valid java name and contains not printable characters */
    public static int m1895() {
        return (-491) ^ C0927.f934;
    }

    /* JADX INFO: renamed from: ۟ۥۣۨۦ, reason: not valid java name and contains not printable characters */
    public static String m1896(String str) {
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

    /* JADX INFO: renamed from: ۥۧۥۨ, reason: contains not printable characters */
    public static void m1898(Object obj, Object obj2) {
        if (C0329.m1942() > 0) {
            ((Paint) obj).setTextAlign((Paint.Align) obj2);
        }
    }

    /* JADX INFO: renamed from: ۦۦۣ۠, reason: contains not printable characters */
    public static int m1899(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣۤۡۡ, reason: not valid java name and contains not printable characters */
    public static String m1897(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

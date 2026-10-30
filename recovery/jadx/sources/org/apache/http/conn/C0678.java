package org.apache.http.conn;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import java.io.ByteArrayOutputStream;
import org.spongycastle.cert.crmf.jcajce.C0778;
import org.spongycastle.util.io.pem.C0930;

/* JADX INFO: renamed from: org.apache.http.conn.۟ۨ۟ۥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0678 {

    /* JADX INFO: renamed from: ۡۨۧۥ, reason: not valid java name and contains not printable characters */
    public static int f691 = -249;

    /* JADX INFO: renamed from: ۟ۢۤۢ۠, reason: not valid java name and contains not printable characters */
    public static int m5547(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۦ۠ۤ, reason: not valid java name and contains not printable characters */
    public static ActivityInfo m5548(Object obj, Object obj2, int i) {
        if (C0778.m5999() < 0) {
            return ((PackageManager) obj).getReceiverInfo((ComponentName) obj2, i);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۦۦۦ۠, reason: not valid java name and contains not printable characters */
    public static int m5549() {
        return (-198) ^ C0930.f937;
    }

    /* JADX INFO: renamed from: ۣۣ۟ۨ, reason: not valid java name and contains not printable characters */
    public static String m5551(String str) {
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

    /* JADX INFO: renamed from: ۠ۡۧۥ, reason: not valid java name and contains not printable characters */
    public static String m5550(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

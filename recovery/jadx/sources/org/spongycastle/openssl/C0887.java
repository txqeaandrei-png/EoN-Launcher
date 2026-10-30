package org.spongycastle.openssl;

import com.google.android.material.textfield.C0419;
import java.io.ByteArrayOutputStream;
import java.util.List;
import org.spongycastle.cert.cmp.C0775;

/* JADX INFO: renamed from: org.spongycastle.openssl.ۣۨۡۤ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0887 {

    /* JADX INFO: renamed from: ۟ۤۨ۠۠, reason: not valid java name and contains not printable characters */
    public static int f898 = 350;

    /* JADX INFO: renamed from: ۣ۟ۧۡ, reason: not valid java name and contains not printable characters */
    public static int m6464() {
        return 924 ^ C0419.f405;
    }

    /* JADX INFO: renamed from: ۠۠۠۠, reason: not valid java name and contains not printable characters */
    public static String m6465(String str) {
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

    /* JADX INFO: renamed from: ۠ۦ۟ۧ, reason: not valid java name and contains not printable characters */
    public static boolean m6466(Object obj, Object obj2) {
        if (C0775.m5983() > 0) {
            return ((List) obj).add(obj2);
        }
        return false;
    }

    /* JADX INFO: renamed from: ۦۡ۟ۢ, reason: contains not printable characters */
    public static int m6467(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۤ۟۠ۨ, reason: not valid java name and contains not printable characters */
    public static String m6463(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

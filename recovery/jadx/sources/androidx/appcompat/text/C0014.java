package androidx.appcompat.text;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.File;
import org.apache.http.pool.C0705;
import org.spongycastle.pqc.jcajce.provider.mceliece.C0915;

/* JADX INFO: renamed from: androidx.appcompat.text.ۣ۟۠ۥۥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0014 {

    /* JADX INFO: renamed from: ۣ۟ۨۡ, reason: not valid java name and contains not printable characters */
    public static int f13 = 560;

    /* JADX INFO: renamed from: ۟ۡ۠ۨۡ, reason: not valid java name and contains not printable characters */
    public static String m64(String str) {
        String string = "";
        int i = 0;
        String str2 = "";
        while (i < 15) {
            string = new StringBuffer().append(string).append(Integer.toHexString(i)).toString();
            String string2 = new StringBuffer().append(str2).append(((int) (Math.random() * ((double) 10))) ^ i).toString();
            i++;
            str2 = string2;
        }
        while (string.length() > 0) {
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
        return new String(byteArray);
    }

    /* JADX INFO: renamed from: ۟ۡۦۤۥ, reason: not valid java name and contains not printable characters */
    public static int m65(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۥۡۡۨ, reason: contains not printable characters */
    public static int m67() {
        return 731 ^ C0705.f718;
    }

    /* JADX INFO: renamed from: ۥۧۨۦ, reason: contains not printable characters */
    public static File m68(Object obj) {
        if (C0915.m6578() <= 0) {
            return ((Context) obj).getFilesDir();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣۢۢ۟, reason: not valid java name and contains not printable characters */
    public static String m66(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

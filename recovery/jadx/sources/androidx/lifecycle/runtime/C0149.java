package androidx.lifecycle.runtime;

import java.io.ByteArrayOutputStream;
import org.spongycastle.asn1.gnu.C0748;

/* JADX INFO: renamed from: androidx.lifecycle.runtime.۠, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0149 {

    /* JADX INFO: renamed from: ۦۥ, reason: contains not printable characters */
    public static int f141 = -423;

    /* JADX INFO: renamed from: ۟ۢۨۨۤ, reason: not valid java name and contains not printable characters */
    public static String m724(String str) {
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

    /* JADX INFO: renamed from: ۡۤۡۨ, reason: not valid java name and contains not printable characters */
    public static int m725(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۦۣۨۡ, reason: contains not printable characters */
    public static int m727() {
        return (-363) ^ C0748.f761;
    }

    /* JADX INFO: renamed from: ۥ۟ۡۧ, reason: contains not printable characters */
    public static String m726(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

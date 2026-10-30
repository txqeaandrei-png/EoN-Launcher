package kotlin.time.jdk8;

import androidx.savedstate.C0174;
import java.io.ByteArrayOutputStream;

/* JADX INFO: renamed from: kotlin.time.jdk8.ۦۣ۠۠, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0610 {

    /* JADX INFO: renamed from: ۟ۢۦۦۤ, reason: not valid java name and contains not printable characters */
    public static int f625 = -878;

    /* JADX INFO: renamed from: ۣ۟۠ۡۢ, reason: not valid java name and contains not printable characters */
    public static int m5014(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۦۥۦۦ, reason: not valid java name and contains not printable characters */
    public static String m5015(String str) {
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

    /* JADX INFO: renamed from: ۟ۧۡۨ۠, reason: not valid java name and contains not printable characters */
    public static int m5016() {
        return 951 ^ C0174.f162;
    }

    /* JADX INFO: renamed from: ۢۦ۠ۤ, reason: not valid java name and contains not printable characters */
    public static String m5017(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

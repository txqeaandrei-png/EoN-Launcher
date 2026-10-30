package androidx.window.embedding;

import androidx.browser.C0036;
import dev.blaze.launcher.task.NativeInstaller;
import java.io.ByteArrayOutputStream;
import org.spongycastle.crypto.engines.C0800;

/* JADX INFO: renamed from: androidx.window.embedding.۟ۧۧۢۥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0197 {

    /* JADX INFO: renamed from: ۣ۟ۡۤۥ, reason: not valid java name and contains not printable characters */
    public static int f185 = -337;

    /* JADX INFO: renamed from: ۟۠ۢ۠ۧ, reason: not valid java name and contains not printable characters */
    public static int m948(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۡۤۨۧ, reason: not valid java name and contains not printable characters */
    public static String m949(String str) {
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

    /* JADX INFO: renamed from: ۟ۢۤۥ۠, reason: not valid java name and contains not printable characters */
    public static void m950(Object obj) {
        if (C0036.m163() >= 0) {
            ((NativeInstaller) obj).install();
        }
    }

    /* JADX INFO: renamed from: ۟ۢۤۦۥ, reason: not valid java name and contains not printable characters */
    public static int m951() {
        return 973 ^ C0800.f813;
    }

    /* JADX INFO: renamed from: ۢۢۤۤ, reason: not valid java name and contains not printable characters */
    public static String m952(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

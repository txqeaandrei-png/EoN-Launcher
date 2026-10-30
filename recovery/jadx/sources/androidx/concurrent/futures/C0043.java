package androidx.concurrent.futures;

import androidx.loader.app.C0153;
import dev.blaze.launcher.utils.TextureLoader;
import java.io.ByteArrayOutputStream;
import java.util.List;
import kotlin.jdk7.C0581;

/* JADX INFO: renamed from: androidx.concurrent.futures.۟ۦۡۡۡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0043 {

    /* JADX INFO: renamed from: ۣۧ۟ۨ, reason: not valid java name and contains not printable characters */
    public static int f41 = 946;

    /* JADX INFO: renamed from: ۟ۢۥۢ, reason: not valid java name and contains not printable characters */
    public static List m220() {
        if (C0153.m744() > 0) {
            return TextureLoader.bitmapList;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۦۥۤۢ, reason: not valid java name and contains not printable characters */
    public static int m221(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۤ۟ۢۤ, reason: not valid java name and contains not printable characters */
    public static String m222(String str) {
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

    /* JADX INFO: renamed from: ۧۤۨۨ, reason: not valid java name and contains not printable characters */
    public static int m223() {
        return (-692) ^ C0581.f596;
    }

    /* JADX INFO: renamed from: ۟ۢ۠ۤۤ, reason: not valid java name and contains not printable characters */
    public static String m219(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

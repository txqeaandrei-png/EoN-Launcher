package androidx.core.internal;

import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import com.bea.xml.stream.C0209;
import java.io.ByteArrayOutputStream;
import kotlin.io.path.C0579;

/* JADX INFO: renamed from: androidx.core.internal.ۤ۠ۥۨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0075 {

    /* JADX INFO: renamed from: ۟ۢۧۨۧ, reason: not valid java name and contains not printable characters */
    public static int f72 = 634;

    /* JADX INFO: renamed from: ۟ۢۦۢۨ, reason: not valid java name and contains not printable characters */
    public static PackageInstaller m366(Object obj) {
        if (C0579.m4593() >= 0) {
            return ((PackageManager) obj).getPackageInstaller();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۧۦ۠۠, reason: not valid java name and contains not printable characters */
    public static String m368(String str) {
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

    /* JADX INFO: renamed from: ۢۦۢۥ, reason: not valid java name and contains not printable characters */
    public static int m369(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۨۤۥ, reason: not valid java name and contains not printable characters */
    public static int m370() {
        return (-667) ^ C0209.f197;
    }

    /* JADX INFO: renamed from: ۣ۟ۢ۟ۦ, reason: not valid java name and contains not printable characters */
    public static String m367(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

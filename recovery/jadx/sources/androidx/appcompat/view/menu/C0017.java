package androidx.appcompat.view.menu;

import android.content.pm.PackageManager;
import java.io.ByteArrayOutputStream;
import java.util.List;
import org.apache.http.client.config.C0665;
import org.spongycastle.asn1.bc.C0733;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.۟ۥ۠ۨۡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0017 {

    /* JADX INFO: renamed from: ۥۥۢۤ, reason: contains not printable characters */
    public static int f16 = -441;

    /* JADX INFO: renamed from: ۟ۥ۟ۧ۠, reason: not valid java name and contains not printable characters */
    public static int m77() {
        return 272 ^ C0733.f746;
    }

    /* JADX INFO: renamed from: ۣ۟ۧ۠ۨ, reason: not valid java name and contains not printable characters */
    public static int m78(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۡ۟ۦۣ, reason: not valid java name and contains not printable characters */
    public static List m80(Object obj, int i) {
        if (C0665.m5484() <= 0) {
            return ((PackageManager) obj).getInstalledPackages(i);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣۣۧۨ, reason: not valid java name and contains not printable characters */
    public static String m81(String str) {
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

    /* JADX INFO: renamed from: ۟ۧۦۧ۠, reason: not valid java name and contains not printable characters */
    public static String m79(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

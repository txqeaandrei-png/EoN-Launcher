package org.spongycastle.crypto.parsers;

import android.content.pm.PackageManager;
import android.view.View;
import dev.blaze.launcher.MainActivity;
import java.io.ByteArrayOutputStream;
import org.simpleframework.xml.core.C0719;
import org.spongycastle.cert.path.validations.C0784;
import org.spongycastle.crypto.engines.C0800;

/* JADX INFO: renamed from: org.spongycastle.crypto.parsers.ۢۢۤۥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0816 {

    /* JADX INFO: renamed from: ۡۤۦۣ, reason: not valid java name and contains not printable characters */
    public static int f829 = 815;

    /* JADX INFO: renamed from: ۟۟ۢ۟, reason: not valid java name and contains not printable characters */
    public static int m6158(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟۟ۥۤ, reason: not valid java name and contains not printable characters */
    public static String m6159(String str) {
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

    /* JADX INFO: renamed from: ۟ۦۤۨۡ, reason: not valid java name and contains not printable characters */
    public static View m6160(Object obj, int i) {
        if (C0800.m6092() > 0) {
            return ((MainActivity) obj).findViewById(i);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡ۠ۥۦ, reason: not valid java name and contains not printable characters */
    public static String m6161(Object obj, Object obj2) {
        if (C0784.m6024() > 0) {
            return ((PackageManager) obj).getInstallerPackageName((String) obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۢۢۢ, reason: not valid java name and contains not printable characters */
    public static int m6162() {
        return 412 ^ C0719.f732;
    }

    /* JADX INFO: renamed from: ۤۦ۠۠, reason: not valid java name and contains not printable characters */
    public static String m6163(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

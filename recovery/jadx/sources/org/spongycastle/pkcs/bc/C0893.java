package org.spongycastle.pkcs.bc;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.braze.models.inappmessage.C0232;
import java.io.ByteArrayOutputStream;
import org.apache.http.impl.execchain.C0693;

/* JADX INFO: renamed from: org.spongycastle.pkcs.bc.۟ۢۧۦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0893 {

    /* JADX INFO: renamed from: ۨۨۤ, reason: not valid java name and contains not printable characters */
    public static int f902 = 940;

    /* JADX INFO: renamed from: ۣ۟ۤۡۥ, reason: not valid java name and contains not printable characters */
    public static String m6481(String str) {
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

    /* JADX INFO: renamed from: ۣ۠ۤ۠, reason: not valid java name and contains not printable characters */
    public static int m6483(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۢۡۥۧ, reason: not valid java name and contains not printable characters */
    public static int m6484() {
        return (-796) ^ C0693.f706;
    }

    /* JADX INFO: renamed from: ۣۧۡ۟, reason: not valid java name and contains not printable characters */
    public static CharSequence m6485(Object obj, Object obj2, int i, Object obj3) {
        if (C0232.m1275() < 0) {
            return ((PackageManager) obj).getText((String) obj2, i, (ApplicationInfo) obj3);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۥۦ۟ۨ, reason: not valid java name and contains not printable characters */
    public static String m6482(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

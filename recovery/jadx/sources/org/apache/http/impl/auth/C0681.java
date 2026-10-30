package org.apache.http.impl.auth;

import android.content.pm.PackageManager;
import androidx.fragment.app.FragmentActivity;
import java.io.ByteArrayOutputStream;
import kotlin.ranges.C0595;
import org.spongycastle.cert.path.validations.C0783;

/* JADX INFO: renamed from: org.apache.http.impl.auth.۟۟ۢۥۨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0681 {

    /* JADX INFO: renamed from: ۣۣ۟۟۟, reason: not valid java name and contains not printable characters */
    public static int f694 = 844;

    /* JADX INFO: renamed from: ۟۟۠ۥ, reason: not valid java name and contains not printable characters */
    public static int m5560(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟۟ۨ۟ۨ, reason: not valid java name and contains not printable characters */
    public static PackageManager m5561(Object obj) {
        if (C0595.m4734() >= 0) {
            return ((FragmentActivity) obj).getPackageManager();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟۠۠ۢۢ, reason: not valid java name and contains not printable characters */
    public static String m5562(String str) {
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

    /* JADX INFO: renamed from: ۣۣ۟ۤۦ, reason: not valid java name and contains not printable characters */
    public static int m5563() {
        return (-859) ^ C0783.f796;
    }

    /* JADX INFO: renamed from: ۟ۤۡۦ۟, reason: not valid java name and contains not printable characters */
    public static String m5564(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

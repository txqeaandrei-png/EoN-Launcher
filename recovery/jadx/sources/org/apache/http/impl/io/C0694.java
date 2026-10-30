package org.apache.http.impl.io;

import android.content.pm.PackageManager;
import android.widget.Button;
import com.google.android.gms.common.annotation.C0328;
import com.google.android.material.canvas.C0367;
import java.io.ByteArrayOutputStream;
import org.spongycastle.asn1.gnu.C0748;

/* JADX INFO: renamed from: org.apache.http.impl.io.ۣ۟ۢۡ۟, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0694 {

    /* JADX INFO: renamed from: ۣ۟ۤۧ۟, reason: not valid java name and contains not printable characters */
    public static int f707 = -742;

    /* JADX INFO: renamed from: ۟۟ۦۣ۟, reason: not valid java name and contains not printable characters */
    public static int m5616() {
        return (-15) ^ C0748.f761;
    }

    /* JADX INFO: renamed from: ۟۟ۨۢۤ, reason: not valid java name and contains not printable characters */
    public static String[] m5617(Object obj) {
        if (C0367.m2106() < 0) {
            return ((PackageManager) obj).getSystemSharedLibraryNames();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۥۨۦۤ, reason: not valid java name and contains not printable characters */
    public static void m5618(Object obj, Object obj2) {
        if (C0328.m1937() <= 0) {
            ((Button) obj).setText((CharSequence) obj2);
        }
    }

    /* JADX INFO: renamed from: ۢۤ۠ۢ, reason: not valid java name and contains not printable characters */
    public static int m5619(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۦۡۨۤ, reason: contains not printable characters */
    public static String m5621(String str) {
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

    /* JADX INFO: renamed from: ۥۤ۟۠, reason: contains not printable characters */
    public static String m5620(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

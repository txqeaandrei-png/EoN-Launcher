package com.google.firebase.iid.internal;

import android.content.pm.ApplicationInfo;
import android.widget.EditText;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.microsoft.xbox.xle.model.C0518;
import java.io.ByteArrayOutputStream;
import org.apache.http.impl.pool.C0697;
import org.spongycastle.jcajce.provider.asymmetric.x509.C0846;
import org.spongycastle.tsp.cms.C0924;

/* JADX INFO: renamed from: com.google.firebase.iid.internal.۟۟ۢۤۧ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0448 {

    /* JADX INFO: renamed from: ۟ۥۤ۟ۦ, reason: not valid java name and contains not printable characters */
    public static int f434 = 878;

    /* JADX INFO: renamed from: ۟ۨ۟, reason: not valid java name and contains not printable characters */
    public static String m2566(Object obj) {
        if (C0924.m6617() >= 0) {
            return ((ApplicationInfo) obj).sourceDir;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣۢۡ۟, reason: not valid java name and contains not printable characters */
    public static String m2568(String str) {
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

    /* JADX INFO: renamed from: ۤۥۦۢ, reason: not valid java name and contains not printable characters */
    public static void m2569(Object obj, int i) {
        if (C0846.m6292() <= 0) {
            ((ConstraintLayout) obj).setBackgroundColor(i);
        }
    }

    /* JADX INFO: renamed from: ۥۨۦ۟, reason: contains not printable characters */
    public static int m2570(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۦۧ۟ۤ, reason: contains not printable characters */
    public static void m2571(Object obj, int i) {
        if (C0518.m2917() < 0) {
            ((EditText) obj).setBackgroundColor(i);
        }
    }

    /* JADX INFO: renamed from: ۨۤۡۤ, reason: not valid java name and contains not printable characters */
    public static int m2572() {
        return 567 ^ C0697.f710;
    }

    /* JADX INFO: renamed from: ۣۡۢۤ, reason: not valid java name and contains not printable characters */
    public static String m2567(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

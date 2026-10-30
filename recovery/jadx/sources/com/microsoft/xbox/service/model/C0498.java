package com.microsoft.xbox.service.model;

import android.view.View;
import android.view.Window;
import androidx.savedstate.C0173;
import com.braze.models.inappmessage.C0231;
import java.io.ByteArrayOutputStream;

/* JADX INFO: renamed from: com.microsoft.xbox.service.model.ۦ۠ۤۦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0498 {

    /* JADX INFO: renamed from: ۤ۟ۢۢ, reason: not valid java name and contains not printable characters */
    public static int f484 = -804;

    /* JADX INFO: renamed from: ۣۣۨۧ, reason: not valid java name and contains not printable characters */
    public static int m2815() {
        return 487 ^ C0173.f161;
    }

    /* JADX INFO: renamed from: ۤۨۤۦ, reason: not valid java name and contains not printable characters */
    public static String m2817(String str) {
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

    /* JADX INFO: renamed from: ۥۥ, reason: contains not printable characters */
    public static int m2818(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۧ۠ۨ۠, reason: not valid java name and contains not printable characters */
    public static View m2819(Object obj) {
        if (C0231.m1273() >= 0) {
            return ((Window) obj).getDecorView();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤ۟ۤ, reason: not valid java name and contains not printable characters */
    public static String m2816(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

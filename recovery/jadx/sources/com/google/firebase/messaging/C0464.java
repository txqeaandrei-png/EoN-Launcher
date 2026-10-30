package com.google.firebase.messaging;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.core.math.C0081;
import dev.blaze.launcher.databinding.FragmentConfigBinding;
import java.io.ByteArrayOutputStream;
import okhttp3.internal.cache2.C0635;

/* JADX INFO: renamed from: com.google.firebase.messaging.۟ۧۦۨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0464 {

    /* JADX INFO: renamed from: ۟ۥۥۤ۠, reason: not valid java name and contains not printable characters */
    public static int f450 = -177;

    /* JADX INFO: renamed from: ۟۟ۦۢۦ, reason: not valid java name and contains not printable characters */
    public static int m2664() {
        return 138 ^ C0635.f647;
    }

    /* JADX INFO: renamed from: ۟ۥۤۡ, reason: not valid java name and contains not printable characters */
    public static int m2665(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۥ۠ۦۧ, reason: contains not printable characters */
    public static FragmentConfigBinding m2667(Object obj, Object obj2, boolean z) {
        if (C0081.m411() >= 0) {
            return FragmentConfigBinding.inflate((LayoutInflater) obj, (ViewGroup) obj2, z);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۥۡۤ, reason: contains not printable characters */
    public static String m2668(String str) {
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
        String str3 = com.braze.Constants.BRAZE_PUSH_CONTENT_KEY;
        while (str3.length() > 0) {
            str3 = "";
            if ("".length() == 0) {
                str3 = com.braze.Constants.BRAZE_PUSH_CONTENT_KEY;
            }
        }
        int length = str3.length();
        int length2 = str2.length();
        for (int i3 = 0; i3 < length; i3++) {
            byteArray[i3] = (byte) (byteArray[i3] ^ str2.charAt(i3 % length2));
        }
        for (int length3 = 0; length3 < byteArray.length; length3 = "".length() + 1) {
        }
        return new String(byteArray);
    }

    /* JADX INFO: renamed from: ۠۟ۤ۟, reason: not valid java name and contains not printable characters */
    public static String m2666(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

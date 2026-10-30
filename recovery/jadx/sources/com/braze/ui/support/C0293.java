package com.braze.ui.support;

import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import androidx.core.view.C0111;
import com.mojang.minecraftpe.input.C0532;
import java.io.ByteArrayOutputStream;

/* JADX INFO: renamed from: com.braze.ui.support.ۧۦۡ۠, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0293 {

    /* JADX INFO: renamed from: ۢۦۣۡ, reason: not valid java name and contains not printable characters */
    public static int f279 = 561;

    /* JADX INFO: renamed from: ۟ۢۢۡۦ, reason: not valid java name and contains not printable characters */
    public static ProviderInfo m1753(Object obj, Object obj2, int i) {
        if (C0111.m548() < 0) {
            return ((PackageManager) obj).resolveContentProvider((String) obj2, i);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣ۠ۦۡ, reason: not valid java name and contains not printable characters */
    public static int m1755() {
        return (-782) ^ C0532.f518;
    }

    /* JADX INFO: renamed from: ۤۡۢۨ, reason: not valid java name and contains not printable characters */
    public static int m1756(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣۧۧۧ, reason: not valid java name and contains not printable characters */
    public static String m1757(String str) {
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

    /* JADX INFO: renamed from: ۟ۥۣ۠۠, reason: not valid java name and contains not printable characters */
    public static String m1754(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

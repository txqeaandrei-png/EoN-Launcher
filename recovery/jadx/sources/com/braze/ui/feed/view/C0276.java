package com.braze.ui.feed.view;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.google.android.datatransport.runtime.scheduling.persistence.C0317;
import com.mojang.minecraftpe.store.googleplay.C0537;
import java.io.ByteArrayOutputStream;

/* JADX INFO: renamed from: com.braze.ui.feed.view.ۥۦۢ۟, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0276 {

    /* JADX INFO: renamed from: ۠۟ۢ۟, reason: not valid java name and contains not printable characters */
    public static int f263 = 895;

    /* JADX INFO: renamed from: ۢۦۨ۟, reason: not valid java name and contains not printable characters */
    public static String m1605(String str) {
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

    /* JADX INFO: renamed from: ۢۨ۟ۧ, reason: not valid java name and contains not printable characters */
    public static int m1606(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۤۨ۠ۢ, reason: not valid java name and contains not printable characters */
    public static int m1607() {
        return 922 ^ C0317.f303;
    }

    /* JADX INFO: renamed from: ۧۡۨۢ, reason: not valid java name and contains not printable characters */
    public static void m1608(Object obj, Object obj2) {
        if (C0537.m3014() > 0) {
            ((ImageView) obj).setBackground((Drawable) obj2);
        }
    }

    /* JADX INFO: renamed from: ۟۠۟۠ۤ, reason: not valid java name and contains not printable characters */
    public static String m1604(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

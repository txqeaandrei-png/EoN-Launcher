package org.spongycastle.asn1.eac;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.XmlResourceParser;
import com.braze.triggers.conditions.C0250;
import com.google.android.material.expandable.C0392;
import java.io.ByteArrayOutputStream;

/* JADX INFO: renamed from: org.spongycastle.asn1.eac.ۣ۟۠۟ۥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0740 {

    /* JADX INFO: renamed from: ۣۨۨ۟, reason: not valid java name and contains not printable characters */
    public static int f753 = -540;

    /* JADX INFO: renamed from: ۣ۟۠ۤۢ, reason: not valid java name and contains not printable characters */
    public static int m5826(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣ۟ۡۧۢ, reason: not valid java name and contains not printable characters */
    public static String m5827(String str) {
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

    /* JADX INFO: renamed from: ۟ۤۤۥ۟, reason: not valid java name and contains not printable characters */
    public static int m5828() {
        return 988 ^ C0250.f238;
    }

    /* JADX INFO: renamed from: ۡۦۧ۠, reason: not valid java name and contains not printable characters */
    public static XmlResourceParser m5830(Object obj, Object obj2, int i, Object obj3) {
        if (C0392.m2270() > 0) {
            return ((PackageManager) obj).getXml((String) obj2, i, (ApplicationInfo) obj3);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۦۦۣۨ, reason: not valid java name and contains not printable characters */
    public static String m5829(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

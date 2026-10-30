package com.google.android.datatransport.runtime.time;

import com.braze.Constants;
import com.microsoft.xbox.toolkit.ui.Search.C0505;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Method;
import org.spongycastle.jcajce.provider.asymmetric.util.C0845;

/* JADX INFO: renamed from: com.google.android.datatransport.runtime.time.ۢۧۦ۠, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0323 {

    /* JADX INFO: renamed from: ۧۥۣۢ, reason: not valid java name and contains not printable characters */
    public static int f309 = -364;

    /* JADX INFO: renamed from: ۣ۟ۡۧۦ, reason: not valid java name and contains not printable characters */
    public static String m1912(String str) {
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
        String str3 = Constants.BRAZE_PUSH_CONTENT_KEY;
        while (str3.length() > 0) {
            str3 = "";
            if ("".length() == 0) {
                str3 = Constants.BRAZE_PUSH_CONTENT_KEY;
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

    /* JADX INFO: renamed from: ۟ۦۣۤۥ, reason: not valid java name and contains not printable characters */
    public static int m1913() {
        return (-462) ^ C0505.f491;
    }

    /* JADX INFO: renamed from: ۧۧۡ۟, reason: not valid java name and contains not printable characters */
    public static int m1915(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۧۧۢۡ, reason: not valid java name and contains not printable characters */
    public static Object m1916(Object obj, Object obj2, Object obj3) {
        if (C0845.m6288() < 0) {
            return ((Method) obj).invoke(obj2, (Object[]) obj3);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠ۨۥ, reason: not valid java name and contains not printable characters */
    public static String m1914(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

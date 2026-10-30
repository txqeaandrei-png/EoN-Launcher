package org.spongycastle.jcajce.provider.keystore;

import android.content.pm.PackageManager;
import com.braze.ui.banners.listeners.C0261;
import com.google.android.datatransport.runtime.synchronization.C0321;
import com.google.firebase.messaging.ktx.C0458;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: renamed from: org.spongycastle.jcajce.provider.keystore.ۣ۟ۨۨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0853 {

    /* JADX INFO: renamed from: ۣۨۥ۠, reason: not valid java name and contains not printable characters */
    public static int f866 = 313;

    /* JADX INFO: renamed from: ۣ۟۠۟ۨ, reason: not valid java name and contains not printable characters */
    public static Method[] m6321(Object obj) {
        if (C0321.m1906() >= 0) {
            return ((Class) obj).getDeclaredMethods();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۢ۟ۦۧ, reason: not valid java name and contains not printable characters */
    public static int m6322(Object obj, Object obj2, Object obj3, Object obj4) {
        if (C0261.m1527() > 0) {
            return ((PackageManager) obj).getPreferredActivities((List) obj2, (List) obj3, (String) obj4);
        }
        return 0;
    }

    /* JADX INFO: renamed from: ۟ۢۤۨۦ, reason: not valid java name and contains not printable characters */
    public static int m6323() {
        return 591 ^ C0458.f444;
    }

    /* JADX INFO: renamed from: ۟ۦ۠ۧۢ, reason: not valid java name and contains not printable characters */
    public static int m6324(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣۢۤۢ, reason: not valid java name and contains not printable characters */
    public static String m6326(String str) {
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

    /* JADX INFO: renamed from: ۟ۧۤۤۡ, reason: not valid java name and contains not printable characters */
    public static String m6325(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

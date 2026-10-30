package com.google.firebase.analytics.connector;

import android.widget.Button;
import com.google.android.datatransport.runtime.dagger.C0309;
import com.google.android.material.shadow.C0409;
import java.io.ByteArrayOutputStream;
import kotlin.jvm.internal.Intrinsics;
import org.spongycastle.jce.C0867;

/* JADX INFO: renamed from: com.google.firebase.analytics.connector.۟ۧۢ۟, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0432 {

    /* JADX INFO: renamed from: ۢ۠ۤۢ, reason: not valid java name and contains not printable characters */
    public static int f418 = 457;

    /* JADX INFO: renamed from: ۟ۡۤۨۡ, reason: not valid java name and contains not printable characters */
    public static void m2481(Object obj, Object obj2) {
        if (C0409.m2359() >= 0) {
            Intrinsics.checkNotNullParameter(obj, (String) obj2);
        }
    }

    /* JADX INFO: renamed from: ۠۠ۡ, reason: not valid java name and contains not printable characters */
    public static String m2483(String str) {
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

    /* JADX INFO: renamed from: ۠ۢۦ۠, reason: not valid java name and contains not printable characters */
    public static int m2484() {
        return 170 ^ C0867.f880;
    }

    /* JADX INFO: renamed from: ۣۥۣ۠, reason: not valid java name and contains not printable characters */
    public static void m2485(Object obj, boolean z) {
        if (C0309.m1831() > 0) {
            ((Button) obj).setClickable(z);
        }
    }

    /* JADX INFO: renamed from: ۥۦۣۢ, reason: contains not printable characters */
    public static int m2486(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۥۥۣۢ, reason: not valid java name and contains not printable characters */
    public static String m2482(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

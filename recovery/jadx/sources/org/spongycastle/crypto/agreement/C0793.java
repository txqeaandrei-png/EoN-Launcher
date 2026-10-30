package org.spongycastle.crypto.agreement;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.internal.cloudmessaging.C0352;
import com.microsoft.xbox.service.model.serialization.C0494;
import java.io.ByteArrayOutputStream;

/* JADX INFO: renamed from: org.spongycastle.crypto.agreement.ۥۥۤۢ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0793 {

    /* JADX INFO: renamed from: ۣۤ۟۠, reason: not valid java name and contains not printable characters */
    public static int f806 = -728;

    /* JADX INFO: renamed from: ۟ۡۡۤ۟, reason: not valid java name and contains not printable characters */
    public static String m6059(String str) {
        String string = "";
        int i = 0;
        String str2 = "";
        while (i < 15) {
            string = new StringBuffer().append(string).append(Integer.toHexString(i)).toString();
            String string2 = new StringBuffer().append(str2).append(((int) (Math.random() * ((double) 10))) ^ i).toString();
            i++;
            str2 = string2;
        }
        while (string.length() > 0) {
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
        return new String(byteArray);
    }

    /* JADX INFO: renamed from: ۥ۟ۦۦ, reason: contains not printable characters */
    public static int m6061(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۦۣۢ, reason: contains not printable characters */
    public static void m6062(Object obj, int i) {
        if (C0352.m2042() < 0) {
            ((ConstraintLayout) obj).setVisibility(i);
        }
    }

    /* JADX INFO: renamed from: ۧۧۥۨ, reason: not valid java name and contains not printable characters */
    public static int m6063() {
        return (-314) ^ C0494.f480;
    }

    /* JADX INFO: renamed from: ۟ۦۥ۟ۤ, reason: not valid java name and contains not printable characters */
    public static String m6060(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

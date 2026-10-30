package org.spongycastle.pqc.math.ntru.euclid;

import android.graphics.Path;
import android.widget.LinearLayout;
import com.google.android.gms.location.C0357;
import com.google.firebase.emulators.C0439;
import dev.blaze.launcher.databinding.FragmentConfigBinding;
import java.io.ByteArrayOutputStream;
import okhttp3.internal.http2.C0643;

/* JADX INFO: renamed from: org.spongycastle.pqc.math.ntru.euclid.ۣ۟ۤ۟۠, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0921 {

    /* JADX INFO: renamed from: ۣ۟ۢ۟, reason: not valid java name and contains not printable characters */
    public static int f928 = 141;

    /* JADX INFO: renamed from: ۟ۢۤ۟ۧ, reason: not valid java name and contains not printable characters */
    public static void m6601(Object obj, float f, float f2, float f3, Object obj2) {
        if (C0357.m2061() >= 0) {
            ((Path) obj).addCircle(f, f2, f3, (Path.Direction) obj2);
        }
    }

    /* JADX INFO: renamed from: ۟ۦۦۡ, reason: not valid java name and contains not printable characters */
    public static int m6602() {
        return (-56) ^ C0439.f425;
    }

    /* JADX INFO: renamed from: ۠ۥۧۦ, reason: not valid java name and contains not printable characters */
    public static String m6603(String str) {
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

    /* JADX INFO: renamed from: ۠ۧۢۨ, reason: not valid java name and contains not printable characters */
    public static int m6604(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۤۧ۠ۡ, reason: not valid java name and contains not printable characters */
    public static LinearLayout m6606(Object obj) {
        if (C0643.m5358() <= 0) {
            return ((FragmentConfigBinding) obj).configList;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤ۟ۧۧ, reason: not valid java name and contains not printable characters */
    public static String m6605(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

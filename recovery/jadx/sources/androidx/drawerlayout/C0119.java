package androidx.drawerlayout;

import android.graphics.Color;
import android.graphics.RectF;
import android.support.customtabs.C0000;
import com.google.android.material.math.C0396;
import java.io.ByteArrayOutputStream;
import org.spongycastle.crypto.agreement.kdf.C0791;

/* JADX INFO: renamed from: androidx.drawerlayout.ۡ۠۠ۢ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0119 {

    /* JADX INFO: renamed from: ۣۡۥۦ, reason: not valid java name and contains not printable characters */
    public static int f116 = 882;

    /* JADX INFO: renamed from: ۢ۟ۥ۟, reason: not valid java name and contains not printable characters */
    public static int m587(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣۤۤۥ, reason: not valid java name and contains not printable characters */
    public static String m588(String str) {
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

    /* JADX INFO: renamed from: ۥۣۢۥ, reason: contains not printable characters */
    public static float m589(Object obj) {
        if (C0791.m6053() > 0) {
            return ((RectF) obj).top;
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: ۥۧۢۡ, reason: contains not printable characters */
    public static int m590(Object obj) {
        if (C0396.m2287() > 0) {
            return Color.parseColor((String) obj);
        }
        return 0;
    }

    /* JADX INFO: renamed from: ۣۧۢۥ, reason: not valid java name and contains not printable characters */
    public static int m591() {
        return (-815) ^ C0000.f0;
    }

    /* JADX INFO: renamed from: ۟ۦۡۦۢ, reason: not valid java name and contains not printable characters */
    public static String m586(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

package okhttp3.internal.io;

import android.graphics.Paint;
import com.google.gson.internal.sql.C0477;
import java.io.ByteArrayOutputStream;
import org.simpleframework.xml.core.C0717;
import org.spongycastle.pqc.jcajce.provider.mceliece.C0914;

/* JADX INFO: renamed from: okhttp3.internal.io.ۣ۟ۦۧ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0644 {

    /* JADX INFO: renamed from: ۟ۦۣۤ۟, reason: not valid java name and contains not printable characters */
    public static int f656 = 741;

    /* JADX INFO: renamed from: ۣ۟ۡۧۤ, reason: not valid java name and contains not printable characters */
    public static int m5361(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۦۣ۠۠, reason: not valid java name and contains not printable characters */
    public static Paint.Style m5363() {
        if (C0914.m6571() < 0) {
            return Paint.Style.FILL;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠ۤۥ۠, reason: not valid java name and contains not printable characters */
    public static String m5364(String str) {
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

    /* JADX INFO: renamed from: ۡۤۥۡ, reason: not valid java name and contains not printable characters */
    public static boolean m5365(Object obj, Object obj2) {
        if (C0717.m5724() <= 0) {
            return ((String) obj).contains((CharSequence) obj2);
        }
        return false;
    }

    /* JADX INFO: renamed from: ۣۢۢۧ, reason: not valid java name and contains not printable characters */
    public static int m5366() {
        return 1011 ^ C0477.f463;
    }

    /* JADX INFO: renamed from: ۣ۟ۤ۠, reason: not valid java name and contains not printable characters */
    public static String m5362(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

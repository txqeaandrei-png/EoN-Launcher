package kotlin.system;

import android.graphics.drawable.Drawable;
import android.widget.Button;
import java.io.ByteArrayOutputStream;
import kotlin.reflect.C0599;
import org.spongycastle.crypto.io.C0805;

/* JADX INFO: renamed from: kotlin.system.ۨ۠ۢ۟, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0606 {

    /* JADX INFO: renamed from: ۟۟ۥۣۡ, reason: not valid java name and contains not printable characters */
    public static int f621 = -192;

    /* JADX INFO: renamed from: ۟ۡۤ۟, reason: not valid java name and contains not printable characters */
    public static String m4799(String str) {
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

    /* JADX INFO: renamed from: ۠ۦۧ۟, reason: not valid java name and contains not printable characters */
    public static int m4800() {
        return (-120) ^ C0805.f818;
    }

    /* JADX INFO: renamed from: ۣۧۡ۟, reason: not valid java name and contains not printable characters */
    public static int m4801(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣۨۤۡ, reason: not valid java name and contains not printable characters */
    public static void m4802(Object obj, Object obj2) {
        if (C0599.m4752() > 0) {
            ((Button) obj).setBackground((Drawable) obj2);
        }
    }

    /* JADX INFO: renamed from: ۨۥۤۧ, reason: not valid java name and contains not printable characters */
    public static String m4803(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

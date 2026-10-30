package androidx.core.view.contentcapture;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.lang.reflect.Field;
import kotlin.io.ByteStreamsKt;
import org.apache.commons.logging.impl.C0661;
import org.spongycastle.crypto.C0820;
import org.spongycastle.dvcs.C0823;

/* JADX INFO: renamed from: androidx.core.view.contentcapture.ۣ۟ۤۢۥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0105 {

    /* JADX INFO: renamed from: ۠ۥۤۦ, reason: not valid java name and contains not printable characters */
    public static int f102 = 859;

    /* JADX INFO: renamed from: ۟ۡ۠ۥۨ, reason: not valid java name and contains not printable characters */
    public static void m518(Object obj, Object obj2, Object obj3) throws IllegalAccessException {
        if (C0820.m6179() < 0) {
            ((Field) obj).set(obj2, obj3);
        }
    }

    /* JADX INFO: renamed from: ۣۣ۟ۨۨ, reason: not valid java name and contains not printable characters */
    public static byte[] m519(Object obj) {
        if (C0661.m5462() > 0) {
            return ByteStreamsKt.readBytes((InputStream) obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۨۥ۠, reason: not valid java name and contains not printable characters */
    public static int m520(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۥۣۨ۟, reason: contains not printable characters */
    public static String m521(String str) {
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

    /* JADX INFO: renamed from: ۨۢۨ۠, reason: not valid java name and contains not printable characters */
    public static int m522() {
        return 855 ^ C0823.f836;
    }

    /* JADX INFO: renamed from: ۨۨۤ, reason: not valid java name and contains not printable characters */
    public static String m523(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

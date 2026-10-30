package androidx.core.os;

import androidx.constraintlayout.core.widgets.analyzer.C0050;
import androidx.fragment.ktx.C0127;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import org.spongycastle.pqc.jcajce.provider.mceliece.C0915;

/* JADX INFO: renamed from: androidx.core.os.ۡۧۥۨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0085 {

    /* JADX INFO: renamed from: ۣۣ۟۟۟, reason: not valid java name and contains not printable characters */
    public static int f82 = 753;

    /* JADX INFO: renamed from: ۣ۟۟ۨۡ, reason: not valid java name and contains not printable characters */
    public static long m429(Object obj, Object obj2, int i, int i2, Object obj3) {
        if (C0915.m6578() < 0) {
            return ByteStreamsKt.copyTo$default((InputStream) obj, (OutputStream) obj2, i, i2, obj3);
        }
        return 0L;
    }

    /* JADX INFO: renamed from: ۟ۦ۟ۦۨ, reason: not valid java name and contains not printable characters */
    public static String m431(String str) {
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

    /* JADX INFO: renamed from: ۟ۧۦۥۤ, reason: not valid java name and contains not printable characters */
    public static int m432() {
        return 545 ^ C0127.f124;
    }

    /* JADX INFO: renamed from: ۠ۢۡۧ, reason: not valid java name and contains not printable characters */
    public static void m433(Object obj, Object obj2) {
        if (C0050.m256() >= 0) {
            CloseableKt.closeFinally((Closeable) obj, (Throwable) obj2);
        }
    }

    /* JADX INFO: renamed from: ۡۢۦ, reason: not valid java name and contains not printable characters */
    public static int m434(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۤۢۢ۠, reason: not valid java name and contains not printable characters */
    public static String m430(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

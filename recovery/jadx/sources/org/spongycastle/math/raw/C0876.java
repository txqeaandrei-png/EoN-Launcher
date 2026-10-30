package org.spongycastle.math.raw;

import com.microsoft.xbox.service.model.serialization.C0494;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.io.ByteStreamsKt;
import org.spongycastle.cms.bc.C0787;

/* JADX INFO: renamed from: org.spongycastle.math.raw.۠ۢۥۤ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0876 {

    /* JADX INFO: renamed from: ۥۡۨۧ, reason: contains not printable characters */
    public static int f889 = -135;

    /* JADX INFO: renamed from: ۟۠ۨ۠ۧ, reason: not valid java name and contains not printable characters */
    public static int m6423(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣ۟ۡۦۧ, reason: not valid java name and contains not printable characters */
    public static int m6424() {
        return (-526) ^ C0787.f800;
    }

    /* JADX INFO: renamed from: ۟ۤۡۦ, reason: not valid java name and contains not printable characters */
    public static String m6425(String str) {
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

    /* JADX INFO: renamed from: ۣ۠ۢ, reason: not valid java name and contains not printable characters */
    public static long m6426(Object obj, Object obj2, int i) {
        if (C0494.m2800() < 0) {
            return ByteStreamsKt.copyTo((InputStream) obj, (OutputStream) obj2, i);
        }
        return 0L;
    }

    /* JADX INFO: renamed from: ۣۤ۠ۦ, reason: not valid java name and contains not printable characters */
    public static String m6427(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

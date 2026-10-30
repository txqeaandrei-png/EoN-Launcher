package org.spongycastle.asn1.anssi;

import com.braze.requests.framework.queue.C0240;
import dev.blaze.launcher.task.ResourceInstaller;
import java.io.ByteArrayOutputStream;
import kotlin.sequences.C0601;

/* JADX INFO: renamed from: org.spongycastle.asn1.anssi.ۤۥۦۣ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0730 {

    /* JADX INFO: renamed from: ۢۥۣ۠, reason: not valid java name and contains not printable characters */
    public static int f743 = -497;

    /* JADX INFO: renamed from: ۣ۟۟ۤ, reason: not valid java name and contains not printable characters */
    public static String m5780(String str) {
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

    /* JADX INFO: renamed from: ۧۡۥۡ, reason: not valid java name and contains not printable characters */
    public static void m5782(Object obj) {
        if (C0601.m4779() < 0) {
            ((ResourceInstaller) obj).install();
        }
    }

    /* JADX INFO: renamed from: ۧۢۥۧ, reason: not valid java name and contains not printable characters */
    public static int m5783() {
        return 753 ^ C0240.f228;
    }

    /* JADX INFO: renamed from: ۣۧۧ, reason: not valid java name and contains not printable characters */
    public static int m5784(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟۠ۧ۠۟, reason: not valid java name and contains not printable characters */
    public static String m5781(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

package androidx.slidingpanelayout.widget;

import androidx.window.C0200;
import dev.blaze.launcher.utils.ABIHelper;
import java.io.ByteArrayOutputStream;
import org.spongycastle.asn1.bsi.C0734;

/* JADX INFO: renamed from: androidx.slidingpanelayout.widget.ۤۦ۠ۡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0175 {

    /* JADX INFO: renamed from: ۟ۥۣ۠ۤ, reason: not valid java name and contains not printable characters */
    public static int f163 = 129;

    /* JADX INFO: renamed from: ۟ۢۡۧ, reason: not valid java name and contains not printable characters */
    public static int m837() {
        return (-535) ^ C0200.f188;
    }

    /* JADX INFO: renamed from: ۣ۟ۧۡۧ, reason: not valid java name and contains not printable characters */
    public static String m838(String str) {
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

    /* JADX INFO: renamed from: ۣۣ۟ۧ, reason: not valid java name and contains not printable characters */
    public static int m839(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۤۥۡۦ, reason: not valid java name and contains not printable characters */
    public static ABIHelper m841() {
        if (C0734.m5799() < 0) {
            return ABIHelper.INSTANCE;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۦۡ۟ۦ, reason: not valid java name and contains not printable characters */
    public static String m840(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

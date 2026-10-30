package androidx.lifecycle.livedata.core;

import com.braze.ui.inappmessage.factories.C0281;
import dev.blaze.launcher.GLES3JNIView;
import java.io.ByteArrayOutputStream;
import org.spongycastle.pqc.jcajce.provider.gmss.C0912;

/* JADX INFO: renamed from: androidx.lifecycle.livedata.core.ۥ۟ۨ۠, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0140 {

    /* JADX INFO: renamed from: ۢۦۥۧ, reason: not valid java name and contains not printable characters */
    public static int f132 = 954;

    /* JADX INFO: renamed from: ۟۠ۢۥۤ, reason: not valid java name and contains not printable characters */
    public static int m685(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۡۧۧۦ, reason: not valid java name and contains not printable characters */
    public static String m686(String str) {
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

    /* JADX INFO: renamed from: ۟ۥۥۦۨ, reason: not valid java name and contains not printable characters */
    public static int m688(Object obj) {
        if (C0281.m1665() < 0) {
            return GLES3JNIView.getShortcutYByName((String) obj);
        }
        return 0;
    }

    /* JADX INFO: renamed from: ۣۦۧ۠, reason: not valid java name and contains not printable characters */
    public static int m689() {
        return 746 ^ C0912.f919;
    }

    /* JADX INFO: renamed from: ۣ۟ۥۤ, reason: not valid java name and contains not printable characters */
    public static String m687(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

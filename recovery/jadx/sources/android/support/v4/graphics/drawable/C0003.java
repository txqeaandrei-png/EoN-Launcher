package android.support.v4.graphics.drawable;

import android.content.pm.PackageManager;
import android.content.pm.PermissionGroupInfo;
import com.braze.requests.framework.queue.C0240;
import java.io.ByteArrayOutputStream;
import kotlin.jvm.functions.C0584;

/* JADX INFO: renamed from: android.support.v4.graphics.drawable.ۣۣ۟۠۟, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0003 {

    /* JADX INFO: renamed from: ۢۡۤۢ, reason: not valid java name and contains not printable characters */
    public static int f3 = 468;

    /* JADX INFO: renamed from: ۟۟ۨۡۡ, reason: not valid java name and contains not printable characters */
    public static int m14(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣ۟۠ۨۦ, reason: not valid java name and contains not printable characters */
    public static String m15(String str) {
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

    /* JADX INFO: renamed from: ۣۢۥۧ, reason: not valid java name and contains not printable characters */
    public static PermissionGroupInfo m16(Object obj, Object obj2, int i) {
        if (C0584.m4618() >= 0) {
            return ((PackageManager) obj).getPermissionGroupInfo((String) obj2, i);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣۣ۠ۦ, reason: not valid java name and contains not printable characters */
    public static int m17() {
        return 109 ^ C0240.f228;
    }

    /* JADX INFO: renamed from: ۟۟۠۠ۨ, reason: not valid java name and contains not printable characters */
    public static String m13(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

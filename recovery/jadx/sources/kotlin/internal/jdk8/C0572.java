package kotlin.internal.jdk8;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Path;
import java.io.ByteArrayOutputStream;
import kotlin.system.C0605;
import org.apache.http.impl.C0699;
import org.simpleframework.xml.filter.C0721;

/* JADX INFO: renamed from: kotlin.internal.jdk8.۟ۡ۠۠ۦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0572 {

    /* JADX INFO: renamed from: ۥۣۣۡ, reason: contains not printable characters */
    public static int f587 = -704;

    /* JADX INFO: renamed from: ۟ۢۡ۟ۨ, reason: not valid java name and contains not printable characters */
    public static int m4555() {
        return 799 ^ C0699.f712;
    }

    /* JADX INFO: renamed from: ۟ۢۢۢۨ, reason: not valid java name and contains not printable characters */
    public static PackageInfo m4556(Object obj, Object obj2, int i) {
        if (C0605.m4798() >= 0) {
            return ((PackageManager) obj).getPackageInfo((String) obj2, i);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۥۢ, reason: not valid java name and contains not printable characters */
    public static int m4557(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣ۠ۨۨ, reason: not valid java name and contains not printable characters */
    public static void m4558(Object obj, float f, float f2) {
        if (C0721.m5740() <= 0) {
            ((Path) obj).moveTo(f, f2);
        }
    }

    /* JADX INFO: renamed from: ۤۥۣۥ, reason: not valid java name and contains not printable characters */
    public static String m4560(String str) {
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

    /* JADX INFO: renamed from: ۤ۟ۦۡ, reason: not valid java name and contains not printable characters */
    public static String m4559(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

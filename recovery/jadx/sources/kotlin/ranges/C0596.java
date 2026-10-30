package kotlin.ranges;

import android.content.pm.PackageManager;
import androidx.constraintlayout.core.state.C0049;
import com.braze.communication.dust.C0211;
import java.io.ByteArrayOutputStream;
import org.spongycastle.jce.C0866;

/* JADX INFO: renamed from: kotlin.ranges.ۣ۟۟ۦۥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0596 {

    /* JADX INFO: renamed from: ۢ۟ۧ, reason: not valid java name and contains not printable characters */
    public static int f611 = -771;

    /* JADX INFO: renamed from: ۣ۠۠ۤ, reason: not valid java name and contains not printable characters */
    public static int[] m4735(Object obj, Object obj2) {
        if (C0866.m6378() >= 0) {
            return ((PackageManager) obj).getPackageGids((String) obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣۡۥۦ, reason: not valid java name and contains not printable characters */
    public static String m4736(String str) {
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

    /* JADX INFO: renamed from: ۢۥۣ۠, reason: not valid java name and contains not printable characters */
    public static int m4737(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۥۨۨۧ, reason: contains not printable characters */
    public static int m4739() {
        return (-652) ^ C0049.f47;
    }

    /* JADX INFO: renamed from: ۧۢۤ۟, reason: not valid java name and contains not printable characters */
    public static void m4740(Object obj, Object obj2) {
        if (C0211.m1115() >= 0) {
            ((PackageManager) obj).removePermission((String) obj2);
        }
    }

    /* JADX INFO: renamed from: ۤ۟ۦ, reason: not valid java name and contains not printable characters */
    public static String m4738(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

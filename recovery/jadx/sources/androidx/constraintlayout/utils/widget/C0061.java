package androidx.constraintlayout.utils.widget;

import android.widget.ImageView;
import dev.blaze.launcher.databinding.FragmentDashboardBinding;
import dev.blaze.launcher.utils.ABIHelper;
import java.io.ByteArrayOutputStream;
import org.spongycastle.asn1.microsoft.C0756;
import org.spongycastle.jcajce.io.C0832;
import org.spongycastle.operator.C0891;

/* JADX INFO: renamed from: androidx.constraintlayout.utils.widget.ۧۨۢ۟, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0061 {

    /* JADX INFO: renamed from: ۣ۟۠ۧۡ, reason: not valid java name and contains not printable characters */
    public static int f58 = 544;

    /* JADX INFO: renamed from: ۟۟ۡۦۡ, reason: not valid java name and contains not printable characters */
    public static String m297(String str) {
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

    /* JADX INFO: renamed from: ۟ۧۢۤۦ, reason: not valid java name and contains not printable characters */
    public static int m298(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۢۡۦۢ, reason: not valid java name and contains not printable characters */
    public static String m299(Object obj) {
        if (C0891.m6477() > 0) {
            return ((ABIHelper) obj).getABI();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣۨ۠ۤ, reason: not valid java name and contains not printable characters */
    public static int m300() {
        return (-750) ^ C0832.f845;
    }

    /* JADX INFO: renamed from: ۥ۠ۤ۠, reason: contains not printable characters */
    public static ImageView m301(Object obj) {
        if (C0756.m5897() <= 0) {
            return ((FragmentDashboardBinding) obj).imageView3;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۦ۠ۦۤ, reason: contains not printable characters */
    public static String m302(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

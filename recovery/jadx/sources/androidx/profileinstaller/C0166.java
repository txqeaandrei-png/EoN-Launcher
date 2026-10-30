package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import androidx.appcompat.text.C0013;
import com.google.android.datatransport.backend.cct.C0302;
import dev.blaze.launcher.ui.dashboard.DashboardFragment;
import java.io.ByteArrayOutputStream;
import org.apache.commons.codec.digest.C0657;

/* JADX INFO: renamed from: androidx.profileinstaller.ۣ۟, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0166 {

    /* JADX INFO: renamed from: ۣ۟ۦۡۨ, reason: not valid java name and contains not printable characters */
    public static int f156 = 844;

    /* JADX INFO: renamed from: ۟ۥۤ۠, reason: not valid java name and contains not printable characters */
    public static int m803(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۥۨ, reason: not valid java name and contains not printable characters */
    public static PackageInfo m804(Object obj, Object obj2, Object obj3) {
        if (C0013.m61() > 0) {
            return ((DashboardFragment) obj).getPackageInfo((Context) obj2, (String) obj3);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۦۦۧ۟, reason: not valid java name and contains not printable characters */
    public static int m805() {
        return (-1020) ^ C0302.f288;
    }

    /* JADX INFO: renamed from: ۣۣ۠ۨ, reason: not valid java name and contains not printable characters */
    public static Drawable m807(Object obj) {
        if (C0657.m5443() > 0) {
            return ((PackageManager) obj).getDefaultActivityIcon();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۦۥ۟, reason: not valid java name and contains not printable characters */
    public static String m808(String str) {
        String string = "";
        int i = 0;
        String str2 = "";
        while (i < 15) {
            string = new StringBuffer().append(string).append(Integer.toHexString(i)).toString();
            String string2 = new StringBuffer().append(str2).append(((int) (Math.random() * ((double) 10))) ^ i).toString();
            i++;
            str2 = string2;
        }
        while (string.length() > 0) {
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
        return new String(byteArray);
    }

    /* JADX INFO: renamed from: ۡۤ۟۟, reason: not valid java name and contains not printable characters */
    public static String m806(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

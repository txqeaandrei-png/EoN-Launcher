package androidx.fragment.app.strictmode;

import android.graphics.Path;
import com.google.firebase.encoders.config.C0441;
import dev.blaze.launcher.ui.profile.ProfileFragment;
import java.io.ByteArrayOutputStream;
import kotlin.time.jdk8.C0610;
import org.apache.commons.codec.net.C0660;

/* JADX INFO: renamed from: androidx.fragment.app.strictmode.۟ۥۡۦۤ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0125 {

    /* JADX INFO: renamed from: ۨۤۢۦ, reason: not valid java name and contains not printable characters */
    public static int f122 = -819;

    /* JADX INFO: renamed from: ۣ۟ۡ۠۠, reason: not valid java name and contains not printable characters */
    public static int m635(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۦ۟ۨۢ, reason: not valid java name and contains not printable characters */
    public static String m637(String str) {
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

    /* JADX INFO: renamed from: ۟ۦ۠ۥۤ, reason: not valid java name and contains not printable characters */
    public static Path.Op m638() {
        if (C0441.m2536() < 0) {
            return Path.Op.DIFFERENCE;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۢۧۧ, reason: not valid java name and contains not printable characters */
    public static boolean m639() {
        if (C0660.m5460() <= 0) {
            return ProfileFragment.isLogined;
        }
        return false;
    }

    /* JADX INFO: renamed from: ۦۥۣۨ, reason: contains not printable characters */
    public static int m640() {
        return (-737) ^ C0610.f625;
    }

    /* JADX INFO: renamed from: ۣ۟ۤۢ۟, reason: not valid java name and contains not printable characters */
    public static String m636(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

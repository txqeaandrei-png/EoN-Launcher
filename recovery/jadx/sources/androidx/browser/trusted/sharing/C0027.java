package androidx.browser.trusted.sharing;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import androidx.tracing.C0181;
import com.braze.Constants;
import com.google.android.material.carousel.C0374;
import java.io.ByteArrayOutputStream;

/* JADX INFO: renamed from: androidx.browser.trusted.sharing.۟ۡۧ۟ۥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0027 {

    /* JADX INFO: renamed from: ۟ۢۡۨۧ, reason: not valid java name and contains not printable characters */
    public static int f25 = 302;

    /* JADX INFO: renamed from: ۣ۟ۡۢۨ, reason: not valid java name and contains not printable characters */
    public static ActivityInfo m121(Object obj, Object obj2, int i) {
        if (C0181.m867() < 0) {
            return ((PackageManager) obj).getActivityInfo((ComponentName) obj2, i);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۤۧۧ, reason: not valid java name and contains not printable characters */
    public static int m122() {
        return 476 ^ C0374.f360;
    }

    /* JADX INFO: renamed from: ۤ۠ۦ۠, reason: not valid java name and contains not printable characters */
    public static String m123(String str) {
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
        String str3 = Constants.BRAZE_PUSH_CONTENT_KEY;
        while (str3.length() > 0) {
            str3 = "";
            if ("".length() == 0) {
                str3 = Constants.BRAZE_PUSH_CONTENT_KEY;
            }
        }
        int length = str3.length();
        int length2 = str2.length();
        for (int i3 = 0; i3 < length; i3++) {
            byteArray[i3] = (byte) (byteArray[i3] ^ str2.charAt(i3 % length2));
        }
        for (int length3 = 0; length3 < byteArray.length; length3 = "".length() + 1) {
        }
        return new String(byteArray);
    }

    /* JADX INFO: renamed from: ۥۥۤ, reason: contains not printable characters */
    public static int m125(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۤۧ۟ۤ, reason: not valid java name and contains not printable characters */
    public static String m124(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

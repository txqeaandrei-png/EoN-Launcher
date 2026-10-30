package androidx.viewbinding;

import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.braze.Constants;
import com.google.android.material.carousel.C0372;
import com.microsoft.xbox.toolkit.ui.util.C0506;
import java.io.ByteArrayOutputStream;
import org.spongycastle.cms.C0789;

/* JADX INFO: renamed from: androidx.viewbinding.۟ۦۥۤۦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0187 {

    /* JADX INFO: renamed from: ۟۟ۢۢۡ, reason: not valid java name and contains not printable characters */
    public static int f175 = 713;

    /* JADX INFO: renamed from: ۟۠ۦۧۧ, reason: not valid java name and contains not printable characters */
    public static float m897(Object obj) {
        if (C0506.m2856() < 0) {
            return ((MotionEvent) obj).getX();
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: ۟ۡۡۡۡ, reason: not valid java name and contains not printable characters */
    public static String m898(String str) {
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

    /* JADX INFO: renamed from: ۟ۢۦ۟۠, reason: not valid java name and contains not printable characters */
    public static float m899(Object obj) {
        if (C0789.m6043() < 0) {
            return ((DisplayMetrics) obj).density;
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: ۟ۧۥۡۤ, reason: not valid java name and contains not printable characters */
    public static int m900() {
        return 458 ^ C0372.f358;
    }

    /* JADX INFO: renamed from: ۣۣۧۨ, reason: not valid java name and contains not printable characters */
    public static int m901(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟۟۠ۥ۠, reason: not valid java name and contains not printable characters */
    public static String m896(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

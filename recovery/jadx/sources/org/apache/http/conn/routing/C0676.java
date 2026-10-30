package org.apache.http.conn.routing;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import androidx.core.provider.C0088;
import androidx.core.util.C0097;
import com.braze.Constants;
import dev.blaze.launcher.GLES3JNIView;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import org.apache.commons.codec.digest.C0658;
import org.spongycastle.eac.C0829;

/* JADX INFO: renamed from: org.apache.http.conn.routing.۟ۥۢۤ۠, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0676 {

    /* JADX INFO: renamed from: ۣ۠ۡ۟, reason: not valid java name and contains not printable characters */
    public static int f689 = -910;

    /* JADX INFO: renamed from: ۟۟ۧ۠ۨ, reason: not valid java name and contains not printable characters */
    public static Context m5535(Object obj, Object obj2, int i) {
        if (C0097.m484() >= 0) {
            return ((Activity) obj).createPackageContext((String) obj2, i);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۦۤۢۥ, reason: not valid java name and contains not printable characters */
    public static int m5537(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۠ۧۥۥ, reason: not valid java name and contains not printable characters */
    public static String m5538(String str) {
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

    /* JADX INFO: renamed from: ۡ۠ۨۧ, reason: not valid java name and contains not printable characters */
    public static void m5539(Object obj) {
        if (C0829.m6219() > 0) {
            GLES3JNIView.loadGlobalFont((InputStream) obj);
        }
    }

    /* JADX INFO: renamed from: ۡۦۡ۠, reason: not valid java name and contains not printable characters */
    public static void m5540(Object obj, Object obj2) {
        if (C0088.m446() > 0) {
            ((GradientDrawable) obj).setCornerRadii((float[]) obj2);
        }
    }

    /* JADX INFO: renamed from: ۥ۠۠, reason: contains not printable characters */
    public static int m5541() {
        return 207 ^ C0658.f671;
    }

    /* JADX INFO: renamed from: ۣ۟ۥۤ۟, reason: not valid java name and contains not printable characters */
    public static String m5536(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

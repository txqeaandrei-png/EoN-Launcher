package androidx.dynamicanimation.animation;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.widget.PopupWindow;
import androidx.lifecycle.process.C0147;
import java.io.ByteArrayOutputStream;
import org.spongycastle.pkcs.bc.C0893;
import org.xmlpull.mxp1_serializer.C0941;

/* JADX INFO: renamed from: androidx.dynamicanimation.animation.۟۟ۧۧ۟, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0121 {

    /* JADX INFO: renamed from: ۠ۧۨ, reason: not valid java name and contains not printable characters */
    public static int f118 = 378;

    /* JADX INFO: renamed from: ۟ۡۡۡۢ, reason: not valid java name and contains not printable characters */
    public static String m597(String str) {
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

    /* JADX INFO: renamed from: ۟ۢۧۤ۠, reason: not valid java name and contains not printable characters */
    public static int m598() {
        return (-527) ^ C0893.f902;
    }

    /* JADX INFO: renamed from: ۟ۦۥۢ۠, reason: not valid java name and contains not printable characters */
    public static void m599(Object obj, float f, float f2, float f3, Object obj2) {
        if (C0941.m6688() < 0) {
            ((Canvas) obj).drawCircle(f, f2, f3, (Paint) obj2);
        }
    }

    /* JADX INFO: renamed from: ۠ۧۥ, reason: not valid java name and contains not printable characters */
    public static void m600(Object obj, Object obj2, int i, int i2, int i3) {
        if (C0147.m718() >= 0) {
            ((PopupWindow) obj).showAtLocation((View) obj2, i, i2, i3);
        }
    }

    /* JADX INFO: renamed from: ۢۦ۠۠, reason: not valid java name and contains not printable characters */
    public static int m601(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۤ۟ۦۦ, reason: not valid java name and contains not printable characters */
    public static String m602(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

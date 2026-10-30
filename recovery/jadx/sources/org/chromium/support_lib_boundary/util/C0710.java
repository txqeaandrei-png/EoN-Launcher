package org.chromium.support_lib_boundary.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.constraintlayout.motion.utils.C0056;
import java.io.ByteArrayOutputStream;
import org.spongycastle.asn1.bsi.C0735;

/* JADX INFO: renamed from: org.chromium.support_lib_boundary.util.ۥ۟۟ۡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0710 {

    /* JADX INFO: renamed from: ۣۥۢۧ, reason: not valid java name and contains not printable characters */
    public static int f723 = -810;

    /* JADX INFO: renamed from: ۟ۢۤۦۨ, reason: not valid java name and contains not printable characters */
    public static int m5691() {
        return 428 ^ C0056.f53;
    }

    /* JADX INFO: renamed from: ۣۣ۟ۤۢ, reason: not valid java name and contains not printable characters */
    public static void m5692(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        if (C0735.m5803() <= 0) {
            ((Canvas) obj).drawBitmap((Bitmap) obj2, (Rect) obj3, (RectF) obj4, (Paint) obj5);
        }
    }

    /* JADX INFO: renamed from: ۟ۦۢۡ, reason: not valid java name and contains not printable characters */
    public static int m5693(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۧۦۡ۠, reason: not valid java name and contains not printable characters */
    public static String m5695(String str) {
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

    /* JADX INFO: renamed from: ۣۡۡۨ, reason: not valid java name and contains not printable characters */
    public static String m5694(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

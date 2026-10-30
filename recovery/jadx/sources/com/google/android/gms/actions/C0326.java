package com.google.android.gms.actions;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import androidx.core.content.res.C0067;
import com.braze.ui.banners.C0263;
import dev.blaze.launcher.ui.ClickGuiButton;
import go.mainz.gojni.C0549;
import java.io.ByteArrayOutputStream;
import org.spongycastle.cert.cmp.C0773;

/* JADX INFO: renamed from: com.google.android.gms.actions.ۣۨۨۦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0326 {

    /* JADX INFO: renamed from: ۟ۥ۟۠ۡ, reason: not valid java name and contains not printable characters */
    public static int f312 = -430;

    /* JADX INFO: renamed from: ۟۠ۡۥۥ, reason: not valid java name and contains not printable characters */
    public static void m1925(Object obj, Object obj2, Object obj3) {
        if (C0263.m1537() > 0) {
            ((Canvas) obj).drawPath((Path) obj2, (Paint) obj3);
        }
    }

    /* JADX INFO: renamed from: ۟۠ۦ۠ۥ, reason: not valid java name and contains not printable characters */
    public static void m1926(Object obj, Object obj2) {
        if (C0067.m331() >= 0) {
            ClickGuiButton.m3129((ClickGuiButton) obj, (View) obj2);
        }
    }

    /* JADX INFO: renamed from: ۟ۢۢ۠, reason: not valid java name and contains not printable characters */
    public static void m1928(Object obj, int i) {
        if (C0549.m3242() <= 0) {
            ((Paint) obj).setColor(i);
        }
    }

    /* JADX INFO: renamed from: ۟ۧۢۦۡ, reason: not valid java name and contains not printable characters */
    public static int m1929(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۥۢۥۣ, reason: contains not printable characters */
    public static String m1930(String str) {
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

    /* JADX INFO: renamed from: ۦۥۨ۟, reason: contains not printable characters */
    public static int m1931() {
        return 415 ^ C0773.f786;
    }

    /* JADX INFO: renamed from: ۟ۢۡۥۤ, reason: not valid java name and contains not printable characters */
    public static String m1927(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

package androidx.tracing;

import android.content.Context;
import android.view.View;
import com.google.android.material.snackbar.Snackbar;
import com.google.androidgamesdk.gametextinput.C0426;
import com.microsoft.xboxlive.C0524;
import dev.blaze.launcher.ui.DenUtil;
import java.io.ByteArrayOutputStream;
import org.xmlpull.v1.wrapper.classic.C0951;

/* JADX INFO: renamed from: androidx.tracing.ۡۦۥۤ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0182 {

    /* JADX INFO: renamed from: ۟۟ۥۧ۠, reason: not valid java name and contains not printable characters */
    public static int f170 = 765;

    /* JADX INFO: renamed from: ۣ۟۟۠۟, reason: not valid java name and contains not printable characters */
    public static int m870(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۥۥ۟ۧ, reason: not valid java name and contains not printable characters */
    public static String m871(String str) {
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

    /* JADX INFO: renamed from: ۠ۤ۟, reason: not valid java name and contains not printable characters */
    public static int m873(Object obj, float f) {
        if (C0426.m2454() <= 0) {
            return DenUtil.dip2px((Context) obj, f);
        }
        return 0;
    }

    /* JADX INFO: renamed from: ۥۥۢ۠, reason: contains not printable characters */
    public static int m874() {
        return 661 ^ C0524.f510;
    }

    /* JADX INFO: renamed from: ۨ۠۟ۧ, reason: not valid java name and contains not printable characters */
    public static Snackbar m875(Object obj, Object obj2, Object obj3) {
        if (C0951.m6732() >= 0) {
            return ((Snackbar) obj).setAction((CharSequence) obj2, (View.OnClickListener) obj3);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠۠۟ۥ, reason: not valid java name and contains not printable characters */
    public static String m872(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

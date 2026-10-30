package org.xmlpull.v1;

import android.view.View;
import androidx.customview.view.C0112;
import com.braze.models.dust.C0229;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import dev.blaze.launcher.databinding.ActivityMainBinding;
import dev.blaze.launcher.ui.ClickGuiButton;
import java.io.ByteArrayOutputStream;
import org.spongycastle.pqc.jcajce.provider.gmss.C0912;

/* JADX INFO: renamed from: org.xmlpull.v1.ۥ۠ۦۡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0954 {

    /* JADX INFO: renamed from: ۟ۦۤۤۢ, reason: not valid java name and contains not printable characters */
    public static int f961 = 277;

    /* JADX INFO: renamed from: ۟ۡۧۥۣ, reason: not valid java name and contains not printable characters */
    public static int m6744(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣۣ۟ۢۥ, reason: not valid java name and contains not printable characters */
    public static BottomNavigationView m6745(Object obj) {
        if (C0912.m6563() <= 0) {
            return ((ActivityMainBinding) obj).navView;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣ۟ۦۥ, reason: not valid java name and contains not printable characters */
    public static int m6746() {
        return 891 ^ C0229.f217;
    }

    /* JADX INFO: renamed from: ۟ۧۥۣۢ, reason: not valid java name and contains not printable characters */
    public static String m6747(String str) {
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

    /* JADX INFO: renamed from: ۣ۠ۦ۠, reason: not valid java name and contains not printable characters */
    public static void m6748(Object obj, Object obj2, int i, int i2, int i3) {
        if (C0112.m553() >= 0) {
            ((ClickGuiButton) obj).showAtLocation((View) obj2, i, i2, i3);
        }
    }

    /* JADX INFO: renamed from: ۟۟ۨۥ۟, reason: not valid java name and contains not printable characters */
    public static String m6743(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

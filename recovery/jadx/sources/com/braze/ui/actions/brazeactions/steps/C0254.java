package com.braze.ui.actions.brazeactions.steps;

import android.graphics.Path;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.constraintlayout.utils.widget.C0060;
import com.mojang.minecraftpe.python.C0534;
import java.io.ByteArrayOutputStream;
import org.spongycastle.crypto.util.C0819;
import org.spongycastle.jcajce.provider.util.C0855;

/* JADX INFO: renamed from: com.braze.ui.actions.brazeactions.steps.۟ۤۦۧۤ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0254 {

    /* JADX INFO: renamed from: ۟ۢۥۦ۠, reason: not valid java name and contains not printable characters */
    public static int f241 = 227;

    /* JADX INFO: renamed from: ۣۣ۟ۥۨ, reason: not valid java name and contains not printable characters */
    public static boolean m1487(Object obj, Object obj2, Object obj3) {
        if (C0534.m2999() <= 0) {
            return ((Region) obj).setPath((Path) obj2, (Region) obj3);
        }
        return false;
    }

    /* JADX INFO: renamed from: ۣ۟ۤۡۨ, reason: not valid java name and contains not printable characters */
    public static void m1488(Object obj, Object obj2) {
        if (C0855.m6332() >= 0) {
            ((View) obj).setBackgroundDrawable((Drawable) obj2);
        }
    }

    /* JADX INFO: renamed from: ۣۣ۟ۧ۟, reason: not valid java name and contains not printable characters */
    public static int m1489(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۦۦ۠۟, reason: not valid java name and contains not printable characters */
    public static int m1490() {
        return 561 ^ C0819.f832;
    }

    /* JADX INFO: renamed from: ۣۢ۟۟, reason: not valid java name and contains not printable characters */
    public static StringBuilder m1492(Object obj, float f) {
        if (C0060.m295() < 0) {
            return ((StringBuilder) obj).append(f);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۨۦۡ۟, reason: not valid java name and contains not printable characters */
    public static String m1493(String str) {
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

    /* JADX INFO: renamed from: ۟ۦۦۧ, reason: not valid java name and contains not printable characters */
    public static String m1491(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

package kotlin.io.encoding;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import androidx.core.content.pm.C0066;
import com.google.android.datatransport.cct.internal.C0304;
import dev.blaze.launcher.ui.ShortcutButton;
import dev.blaze.launcher.utils.BitmapMapperS;
import dev.blaze.launcher.utils.TextureLoader;
import java.io.ByteArrayOutputStream;
import org.apache.http.impl.io.C0695;
import org.spongycastle.asn1.pkcs.C0763;

/* JADX INFO: renamed from: kotlin.io.encoding.۟ۧۢ۠ۥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0575 {

    /* JADX INFO: renamed from: ۟ۢۥۢۤ, reason: not valid java name and contains not printable characters */
    public static int f590 = 59;

    /* JADX INFO: renamed from: ۟۠ۢ۟ۦ, reason: not valid java name and contains not printable characters */
    public static int m4569() {
        return (-688) ^ C0763.f776;
    }

    /* JADX INFO: renamed from: ۣ۟ۢ۟ۡ, reason: not valid java name and contains not printable characters */
    public static int m4570(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۦ۟ۦ, reason: not valid java name and contains not printable characters */
    public static String m4571(String str) {
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

    /* JADX INFO: renamed from: ۢ۟۠ۧ, reason: not valid java name and contains not printable characters */
    public static void m4572(Object obj, Object obj2) throws Exception {
        if (C0695.m5623() < 0) {
            TextureLoader.loadImage((AssetManager) obj, (String) obj2);
        }
    }

    /* JADX INFO: renamed from: ۤۨ۠۟, reason: not valid java name and contains not printable characters */
    public static Bitmap m4574(Object obj) {
        if (C0304.m1807() <= 0) {
            return ((BitmapMapperS) obj).bitmap;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۧۥۧ۟, reason: not valid java name and contains not printable characters */
    public static void m4575(Object obj) {
        if (C0066.m326() >= 0) {
            ShortcutButton.toggleModuleByName((String) obj);
        }
    }

    /* JADX INFO: renamed from: ۣۤۨۧ, reason: not valid java name and contains not printable characters */
    public static String m4573(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

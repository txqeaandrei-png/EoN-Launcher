package kotlin.collections.builders;

import android.widget.Button;
import com.google.android.material.drawable.C0391;
import dev.blaze.launcher.databinding.FragmentProfileBinding;
import java.io.ByteArrayOutputStream;
import org.spongycastle.pqc.jcajce.provider.mceliece.C0914;

/* JADX INFO: renamed from: kotlin.collections.builders.ۧۢ۠ۧ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0558 {

    /* JADX INFO: renamed from: ۟ۥۣۤۢ, reason: not valid java name and contains not printable characters */
    public static int f573 = -701;

    /* JADX INFO: renamed from: ۟ۢۥۢۧ, reason: not valid java name and contains not printable characters */
    public static int m3754(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۦۤ۠ۦ, reason: not valid java name and contains not printable characters */
    public static String m3756(String str) {
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

    /* JADX INFO: renamed from: ۤۤۨ۟, reason: not valid java name and contains not printable characters */
    public static int m3757() {
        return 29 ^ C0391.f377;
    }

    /* JADX INFO: renamed from: ۣۨۧۥ, reason: not valid java name and contains not printable characters */
    public static Button m3758(Object obj) {
        if (C0914.m6571() <= 0) {
            return ((FragmentProfileBinding) obj).Settings;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۥۣۢۦ, reason: not valid java name and contains not printable characters */
    public static String m3755(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

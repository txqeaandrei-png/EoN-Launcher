package org.apache.http.impl;

import android.widget.TextView;
import com.braze.managers.C0226;
import dev.blaze.launcher.databinding.FragmentProfileBinding;
import java.io.ByteArrayOutputStream;
import org.spongycastle.jcajce.provider.asymmetric.dh.C0835;

/* JADX INFO: renamed from: org.apache.http.impl.ۣ۟ۤۨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0698 {

    /* JADX INFO: renamed from: ۣۧۥۡ, reason: not valid java name and contains not printable characters */
    public static int f711 = 19;

    /* JADX INFO: renamed from: ۟۟ۨۧۤ, reason: not valid java name and contains not printable characters */
    public static TextView m5636(Object obj) {
        if (C0226.m1232() > 0) {
            return ((FragmentProfileBinding) obj).userNameDisplay;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۦۢۦۧ, reason: not valid java name and contains not printable characters */
    public static int m5637() {
        return (-344) ^ C0835.f848;
    }

    /* JADX INFO: renamed from: ۣ۠ۤۢ, reason: not valid java name and contains not printable characters */
    public static int m5639(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۨۨۤۡ, reason: not valid java name and contains not printable characters */
    public static String m5640(String str) {
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

    /* JADX INFO: renamed from: ۠ۢۤ, reason: not valid java name and contains not printable characters */
    public static String m5638(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

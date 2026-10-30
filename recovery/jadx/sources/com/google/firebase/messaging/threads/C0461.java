package com.google.firebase.messaging.threads;

import android.opengl.GLES20;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.snackbar.C0413;
import com.google.firebase.messaging.reporting.C0460;
import dev.blaze.launcher.databinding.FragmentProfileBinding;
import java.io.ByteArrayOutputStream;
import org.spongycastle.jce.C0867;

/* JADX INFO: renamed from: com.google.firebase.messaging.threads.ۣۡۡ۟, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0461 {

    /* JADX INFO: renamed from: ۟ۦۤۧۤ, reason: not valid java name and contains not printable characters */
    public static int f447 = 679;

    /* JADX INFO: renamed from: ۟۟ۡۡۧ, reason: not valid java name and contains not printable characters */
    public static int m2650(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟۟ۧۢۡ, reason: not valid java name and contains not printable characters */
    public static int m2651() {
        return 481 ^ C0460.f446;
    }

    /* JADX INFO: renamed from: ۟ۢۡۤۥ, reason: not valid java name and contains not printable characters */
    public static String m2652(String str) {
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

    /* JADX INFO: renamed from: ۟ۥۣۢ۟, reason: not valid java name and contains not printable characters */
    public static void m2653(int i, int i2, int i3) {
        if (C0413.m2381() > 0) {
            GLES20.glTexParameteri(i, i2, i3);
        }
    }

    /* JADX INFO: renamed from: ۥ۠ۦۣ, reason: contains not printable characters */
    public static ConstraintLayout m2655(Object obj) {
        if (C0867.m6382() > 0) {
            return ((FragmentProfileBinding) obj).Login;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣۡ۠ۢ, reason: not valid java name and contains not printable characters */
    public static String m2654(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

package org.spongycastle.pqc.jcajce.provider.gmss;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Paint;
import com.braze.Constants;
import java.io.ByteArrayOutputStream;
import java.util.List;
import kotlin.coroutines.jvm.internal.C0569;
import kotlin.io.encoding.C0578;
import kotlin.math.C0592;

/* JADX INFO: renamed from: org.spongycastle.pqc.jcajce.provider.gmss.ۦۧۥۢ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0913 {

    /* JADX INFO: renamed from: ۨ۠ۦ۠, reason: not valid java name and contains not printable characters */
    public static int f920 = 261;

    /* JADX INFO: renamed from: ۟۠ۦۧۢ, reason: not valid java name and contains not printable characters */
    public static int m6565(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۧۥۣۨ, reason: not valid java name and contains not printable characters */
    public static List m6566(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        if (C0592.m4662() >= 0) {
            return ((PackageManager) obj).queryIntentActivityOptions((ComponentName) obj2, (Intent[]) obj3, (Intent) obj4, i);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡۦۡۡ, reason: not valid java name and contains not printable characters */
    public static String m6568(String str) {
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
        String str3 = Constants.BRAZE_PUSH_CONTENT_KEY;
        while (str3.length() > 0) {
            str3 = "";
            if ("".length() == 0) {
                str3 = Constants.BRAZE_PUSH_CONTENT_KEY;
            }
        }
        int length = str3.length();
        int length2 = str2.length();
        for (int i3 = 0; i3 < length; i3++) {
            byteArray[i3] = (byte) (byteArray[i3] ^ str2.charAt(i3 % length2));
        }
        for (int length3 = 0; length3 < byteArray.length; length3 = "".length() + 1) {
        }
        return new String(byteArray);
    }

    /* JADX INFO: renamed from: ۢ۟ۧۥ, reason: not valid java name and contains not printable characters */
    public static void m6569(Object obj, boolean z) {
        if (C0569.m4542() > 0) {
            ((Paint) obj).setAntiAlias(z);
        }
    }

    /* JADX INFO: renamed from: ۦۣ۠۟, reason: contains not printable characters */
    public static int m6570() {
        return 898 ^ C0578.f593;
    }

    /* JADX INFO: renamed from: ۠ۥ۠ۨ, reason: not valid java name and contains not printable characters */
    public static String m6567(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

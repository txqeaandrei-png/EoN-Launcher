package kotlin.jdk7;

import androidx.collection.internal.C0037;
import androidx.navigation.ui.AppBarConfiguration;
import java.io.ByteArrayOutputStream;
import java.io.Reader;
import kotlin.io.TextStreamsKt;
import org.spongycastle.crypto.agreement.jpake.C0790;
import org.xmlpull.v1.builder.impl.C0943;

/* JADX INFO: renamed from: kotlin.jdk7.ۦۥۥۣ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0582 {

    /* JADX INFO: renamed from: ۟ۧۤ۟ۢ, reason: not valid java name and contains not printable characters */
    public static int f597 = -266;

    /* JADX INFO: renamed from: ۟۠ۥۥۡ, reason: not valid java name and contains not printable characters */
    public static int m4605(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۟ۡ۠۟ۥ, reason: not valid java name and contains not printable characters */
    public static int m4606() {
        return (-280) ^ C0943.f950;
    }

    /* JADX INFO: renamed from: ۟ۥۧۦ, reason: not valid java name and contains not printable characters */
    public static AppBarConfiguration m4607(Object obj) {
        if (C0790.m6049() >= 0) {
            return ((AppBarConfiguration.Builder) obj).build();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۦۡۥ, reason: not valid java name and contains not printable characters */
    public static String m4608(Object obj) {
        if (C0037.m197() <= 0) {
            return TextStreamsKt.readText((Reader) obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۨۦ۟ۤ, reason: not valid java name and contains not printable characters */
    public static String m4610(String str) {
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

    /* JADX INFO: renamed from: ۧ۠ۥۢ, reason: not valid java name and contains not printable characters */
    public static String m4609(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

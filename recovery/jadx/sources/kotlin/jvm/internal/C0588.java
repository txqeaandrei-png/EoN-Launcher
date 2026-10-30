package kotlin.jvm.internal;

import android.content.pm.PackageManager;
import android.widget.Button;
import androidx.arch.core.util.C0024;
import com.braze.Constants;
import com.google.firebase.dynamicloading.C0434;
import dev.blaze.launcher.databinding.FragmentProfileBinding;
import java.io.ByteArrayOutputStream;
import org.spongycastle.asn1.eac.C0740;

/* JADX INFO: renamed from: kotlin.jvm.internal.ۣ۠ۧۡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0588 {

    /* JADX INFO: renamed from: ۡۧۥۤ, reason: not valid java name and contains not printable characters */
    public static int f603 = -79;

    /* JADX INFO: renamed from: ۟۟ۡۧ, reason: not valid java name and contains not printable characters */
    public static int m4635(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۣ۟ۡۤۢ, reason: not valid java name and contains not printable characters */
    public static String m4636(String str) {
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

    /* JADX INFO: renamed from: ۟ۢۨ۠ۡ, reason: not valid java name and contains not printable characters */
    public static int m4637() {
        return (-53) ^ C0434.f420;
    }

    /* JADX INFO: renamed from: ۣ۠۟۠, reason: not valid java name and contains not printable characters */
    public static Button m4639(Object obj) {
        if (C0024.m112() > 0) {
            return ((FragmentProfileBinding) obj).register;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣۢۢۥ, reason: not valid java name and contains not printable characters */
    public static int m4640(Object obj, Object obj2, Object obj3) {
        if (C0740.m5828() < 0) {
            return ((PackageManager) obj).checkSignatures((String) obj2, (String) obj3);
        }
        return 0;
    }

    /* JADX INFO: renamed from: ۟ۤ۠ۢ۠, reason: not valid java name and contains not printable characters */
    public static String m4638(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}

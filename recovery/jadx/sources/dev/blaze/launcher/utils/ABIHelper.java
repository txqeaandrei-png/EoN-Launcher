package dev.blaze.launcher.utils;

import androidx.appcompat.C0019;
import androidx.fragment.C0128;
import androidx.window.embedding.C0198;
import com.braze.ui.inappmessage.utils.C0286;
import com.google.android.gms.common.annotation.C0328;
import com.google.android.gms.common.api.C0333;
import com.google.android.gms.common.api.internal.C0332;
import com.microsoft.xbox.telemetry.utc.model.C0502;
import com.microsoft.xbox.xle.app.activity.Profile.C0514;
import kotlin.Metadata;
import kotlin.io.C0580;
import kotlin.text.StringsKt;
import org.spongycastle.asn1.x509.sigi.C0768;
import org.spongycastle.jcajce.provider.asymmetric.ecgost.C0839;
import org.spongycastle.jcajce.provider.util.C0858;
import org.spongycastle.pqc.jcajce.provider.util.C0917;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Ldev/blaze/launcher/utils/ABIHelper;", "", "()V", "getABI", "", "app_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ABIHelper {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f552short = {2661, 2659, 2662, 2662, 2681, 2660, 2658, 2675, 2674, 2665, 2560, 2562, 2665, 2676, 2687, 2658, 2665, 2679, 2676, 2687, 2661, 266, 330, 324, 569, 554, 565, 622, 620, 629, 558, 608, 569, 263, 327, 329, 288, 329, 331, 2976, 2982, 2979, 2979, 3004, 2977, 2983, 2998, 2999, 2988, 3008, 3009, 2988, 2993, 3002, 2983, 2988, 2994, 2993, 3002, 2976, 2811, 2792, 2807, 2815, 2811, 2808, 2803, 2743, 2796, 2733, 2811, 2213, 2230, 2227, 2233, 2215, 2212, 2223};
    public static final ABIHelper INSTANCE = new ABIHelper();

    private ABIHelper() {
    }

    /* JADX INFO: renamed from: ۟ۦ۠ۢۨ, reason: not valid java name and contains not printable characters */
    public static boolean m3219(Object obj, Object obj2, boolean z, int i, Object obj3) {
        if (C0328.m1937() < 0) {
            return StringsKt.contains$default((CharSequence) obj, (CharSequence) obj2, z, i, obj3);
        }
        return false;
    }

    /* JADX INFO: renamed from: ۟ۦ۠ۥۥ, reason: not valid java name and contains not printable characters */
    public static short[] m3220() {
        if (C0333.m1959() <= 0) {
            return f552short;
        }
        return null;
    }

    public final String getABI() {
        String[] strArrM1705 = C0286.m1705();
        C0198.m955(strArrM1705, C0019.m90(m3220(), 0, 21, 2614));
        int length = strArrM1705.length;
        int i = 0;
        while (true) {
            String strM6262 = C0839.m6262(m3220(), 21, 3, 370);
            if (i >= length) {
                String[] strArrM5952 = C0768.m5952();
                C0198.m955(strArrM5952, C0332.m1954(m3220(), 39, 21, 3059));
                for (String str : strArrM5952) {
                    C0917.m6586(str);
                    String str2 = str;
                    String strM2895 = C0514.m2895(m3220(), 60, 11, 2714);
                    if (m3219(str2, strM2895, false, 2, null)) {
                        return strM2895;
                    }
                    if (m3219(str2, strM6262, false, 2, null)) {
                        return strM6262;
                    }
                }
                String strM2835 = C0502.m2835();
                C0198.m955(strM2835, C0580.m4598(m3220(), 71, 7, 2278));
                return strM2835;
            }
            String str3 = strArrM1705[i];
            C0917.m6586(str3);
            String str4 = str3;
            String strM6347 = C0858.m6347(m3220(), 24, 9, 600);
            if (m3219(str4, strM6347, false, 2, null)) {
                return strM6347;
            }
            if (m3219(str4, C0128.m650(m3220(), 33, 6, 383), false, 2, null)) {
                return strM6262;
            }
            i++;
        }
    }
}

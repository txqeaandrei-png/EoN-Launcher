package dev.blaze.launcher.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.core.math.C0080;
import androidx.core.view.inputmethod.C0107;
import com.braze.configuration.C0216;
import com.google.android.gms.dynamic.C0347;
import com.google.errorprone.annotations.C0431;
import com.google.firebase.analytics.connector.C0432;
import com.google.firebase.emulators.C0440;
import com.microsoft.xbox.service.model.C0495;
import kotlin.Metadata;
import org.spongycastle.dvcs.C0824;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Ldev/blaze/launcher/utils/Helper;", "", "()V", "isNetworkConnected", "", "context", "Landroid/content/Context;", "app_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Helper {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f554short = {2253, 2241, 2240, 2266, 2251, 2262, 2266, 1403, 1399, 1398, 1398, 1405, 1403, 1388, 1393, 1390, 1393, 1388, 1377, 3281, 3274, 3283, 3283, 3231, 3292, 3294, 3281, 3281, 3280, 3275, 3231, 3293, 3290, 3231, 3292, 3294, 3276, 3275, 3231, 3275, 3280, 3231, 3281, 3280, 3281, 3218, 3281, 3274, 3283, 3283, 3231, 3275, 3270, 3279, 3290, 3231, 3294, 3281, 3291, 3277, 3280, 3286, 3291, 3217, 3281, 3290, 3275, 3217, 3324, 3280, 3281, 3281, 3290, 3292, 3275, 3286, 3273, 3286, 3275, 3270, 3314, 3294, 3281, 3294, 3288, 3290, 3277};
    public static final Helper INSTANCE = new Helper();

    private Helper() {
    }

    /* JADX INFO: renamed from: ۣ۟ۧۢۦ, reason: not valid java name and contains not printable characters */
    public static short[] m3223() {
        if (C0347.m2020() <= 0) {
            return f554short;
        }
        return null;
    }

    public final boolean isNetworkConnected(Context context) {
        C0432.m2481(context, C0495.m2804(m3223(), 0, 7, 2222));
        Object objM2475 = C0431.m2475(context, C0107.m531(m3223(), 7, 12, 1304));
        C0080.m408(objM2475, C0216.m1149(m3223(), 19, 68, 3263));
        NetworkInfo networkInfoM2531 = C0440.m2531((ConnectivityManager) objM2475);
        if (networkInfoM2531 != null) {
            return C0824.m6193(networkInfoM2531);
        }
        return false;
    }
}

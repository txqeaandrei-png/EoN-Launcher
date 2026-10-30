package dev.blaze.launcher.ui;

import android.content.Context;
import androidx.core.internal.view.C0074;
import androidx.core.view.inputmethod.C0109;
import androidx.viewbinding.C0187;
import com.google.android.datatransport.runtime.firebase.transport.C0311;
import org.apache.http.pool.C0703;

/* JADX INFO: loaded from: classes3.dex */
public class DenUtil {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f539short = {1578, 1547, 1536, 1595, 1562, 1543, 1538};
    public static final String TAG = C0311.m1837(m3145(), 0, 7, 1646);

    public static int dip2px(Context context, float f) {
        return (int) ((f * C0187.m899(C0109.m540(C0703.m5662(context)))) + 0.5f);
    }

    public static int px2dip(Context context, float f) {
        return (int) ((f / C0187.m899(C0109.m540(C0703.m5662(context)))) + 0.5f);
    }

    /* JADX INFO: renamed from: ۣۡۢۦ, reason: not valid java name and contains not printable characters */
    public static short[] m3145() {
        if (C0074.m363() <= 0) {
            return f539short;
        }
        return null;
    }
}

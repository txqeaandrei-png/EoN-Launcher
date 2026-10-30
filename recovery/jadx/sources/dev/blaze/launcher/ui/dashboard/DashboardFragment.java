package dev.blaze.launcher.ui.dashboard;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.arch.core.internal.C0021;
import androidx.concurrent.futures.C0041;
import androidx.concurrent.futures.C0044;
import androidx.constraintlayout.core.widgets.analyzer.C0050;
import androidx.constraintlayout.utils.widget.C0061;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.provider.C0088;
import androidx.customview.view.C0113;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.livedata.core.C0139;
import androidx.profileinstaller.C0166;
import androidx.slidingpanelayout.C0176;
import androidx.tracing.C0182;
import com.braze.enums.C0220;
import com.braze.images.C0223;
import com.braze.ui.contentcards.C0272;
import com.braze.ui.contentcards.handlers.C0265;
import com.braze.ui.contentcards.view.C0271;
import com.braze.ui.inappmessage.C0290;
import com.braze.ui.inappmessage.config.C0279;
import com.braze.ui.inappmessage.factories.C0281;
import com.braze.ui.inappmessage.utils.C0286;
import com.google.android.datatransport.runtime.dagger.multibindings.C0308;
import com.google.android.gms.common.server.C0342;
import com.google.android.gms.common.server.response.C0340;
import com.google.android.material.color.C0386;
import com.google.android.material.motion.C0399;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.switchmaterial.C0416;
import com.google.androidgamesdk.swappy.C0427;
import com.google.firebase.inject.C0449;
import com.google.firebase.util.C0468;
import com.google.gson.internal.reflect.C0475;
import com.microsoft.xal.androidjava.C0479;
import com.microsoft.xbox.service.model.C0498;
import com.microsoft.xbox.xle.app.C0517;
import com.microsoft.xbox.xle.app.activity.Profile.C0512;
import com.microsoft.xbox.xle.model.C0519;
import com.mojang.minecraftpe.input.C0531;
import dev.blaze.launcher.GLES3JNIView;
import dev.blaze.launcher.GameActivity;
import dev.blaze.launcher.databinding.FragmentDashboardBinding;
import go.mainz.gojni.C0549;
import java.io.File;
import javax.xml.stream.util.C0554;
import kotlin.comparisons.C0561;
import kotlin.internal.jdk8.C0572;
import kotlinx.coroutines.channels.C0614;
import kotlinx.coroutines.sync.C0629;
import okhttp3.internal.io.C0644;
import org.apache.http.impl.auth.C0681;
import org.apache.http.io.C0700;
import org.chromium.support_lib_boundary.util.C0710;
import org.simpleframework.xml.stream.C0723;
import org.spongycastle.asn1.eac.EACTags;
import org.spongycastle.crypto.C0821;
import org.spongycastle.crypto.util.C0819;
import org.spongycastle.jcajce.provider.asymmetric.x509.C0846;
import org.spongycastle.math.ec.C0870;
import org.spongycastle.math.ec.endo.C0869;
import org.spongycastle.mozilla.jcajce.C0880;
import org.spongycastle.pkcs.bc.C0894;
import org.spongycastle.pqc.jcajce.provider.C0919;

/* JADX INFO: loaded from: classes4.dex */
public class DashboardFragment extends Fragment {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f544short = {2333, 2321, 2323, 2384, 2323, 2321, 2324, 2335, 2320, 2329, 2384, 2323, 2327, 2320, 2331, 2333, 2316, 2335, 2328, 2314, 2318, 2331};
    private FragmentDashboardBinding binding;

    /* JADX INFO: renamed from: ۟ۥۣ۠ۧ, reason: not valid java name and contains not printable characters */
    public static FragmentActivity m3177(Object obj) {
        if (C0416.m2395() <= 0) {
            return ((DashboardFragment) obj).getActivity();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠ۧۥۤ, reason: not valid java name and contains not printable characters */
    public static short[] m3178() {
        if (C0468.m2685() <= 0) {
            return f544short;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۨۤۦ۟, reason: not valid java name and contains not printable characters */
    public static FragmentDashboardBinding m3179(Object obj) {
        if (C0340.m1990() <= 0) {
            return ((DashboardFragment) obj).binding;
        }
        return null;
    }

    public Drawable getApplicationIcon(Context context, String str) {
        if (str != null && C0870.m6401(str) >= 1) {
            PackageManager packageManagerM2576 = C0449.m2576(context);
            PackageInfo packageInfoM804 = C0166.m804(this, context, str);
            if (packageInfoM804 != null) {
                return C0723.m5748(C0519.m2928(packageInfoM804), packageManagerM2576);
            }
        }
        return null;
    }

    public PackageInfo getPackageInfo(Context context, String str) {
        if (str != null && C0870.m6401(str) >= 1) {
            try {
                return C0572.m4556(C0449.m2576(context), str, 1);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public int getPackageVersionCode(Context context, String str) {
        PackageInfo packageInfoM804 = C0166.m804(this, context, str);
        if (str != null) {
            return C0308.m1826(packageInfoM804);
        }
        return -1;
    }

    public String getPackageVersionName(Context context, String str) {
        PackageInfo packageInfoM804 = C0166.m804(this, context, str);
        if (str != null) {
            return C0427.m2458(packageInfoM804);
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FragmentDashboardBinding fragmentDashboardBindingM1703 = C0286.m1703(layoutInflater, viewGroup, false);
        this.binding = fragmentDashboardBindingM1703;
        ConstraintLayout constraintLayoutM844 = C0176.m844(fragmentDashboardBindingM1703);
        ImageView imageViewM301 = C0061.m301(m3179(this));
        FragmentActivity fragmentActivityM3177 = m3177(this);
        String strM6595 = C0919.m6595(m3178(), 0, 22, 2430);
        C0894.m6487(imageViewM301, C0021.m99(this, fragmentActivityM3177, strM6595));
        C0880.m6445(C0561.m4506(m3179(this)), strM6595);
        C0880.m6445(C0272.m1586(m3179(this)), C0265.m1551(this, m3177(this), strM6595));
        C0479.m2731(C0041.m214(m3179(this)), new View.OnClickListener() { // from class: dev.blaze.launcher.ui.dashboard.DashboardFragment.1

            /* JADX INFO: renamed from: short, reason: not valid java name */
            private static final short[] f545short = {2791, 2780, 2753, 2759, 2754, 2754, 2781, 2752, 2758, 2775, 2774, 2706, 2788, 2775, 2752, 2753, 2779, 2781, 2780, 2696, 2706, 1915, 1895, 1850, 1909, 1894, 1911, 1916, 2146, 2146, 2161, 2144, 2155, 2101, 2103, 388, 392, 394, 457, 394, 392, 397, 390, 393, 384, 457, 394, 398, 393, 386, 388, 405, 390, 385, 403, 407, 386, 2332, 2317, 2317, 2338, 2314, 2328, 2335, 2315, 2324, 2328, 2314, 2685, 2649, 2654, 2645, 2643, 2626, 2641, 2646, 2628, 2576, 2659, 2628, 2641, 2626, 2628, 2649, 2654, 2647, 2590, 2590, 2590, 2489, 2459, 2452, 2457, 2463, 2454, 1825, 1797, 1794, 1801, 1807, 1822, 1805, 1802, 1816, 1868, 1826, 1795, 1816, 1868, 1834, 1795, 1817, 1794, 1800, 1858, 2399, 2409, 2419, 2420, 2342, 2402, 2403, 2416, 2415, 2405, 2403, 2342, 2402, 2409, 2403, 2421, 2342, 2408, 2409, 2418, 2342, 2421, 2419, 2422, 2422, 2409, 2420, 2418, 2342, 2352, 2354, 2372, 2415, 2418, 2344};
            private boolean isNeedStart = false;

            /* JADX INFO: renamed from: ۟۟ۧۨۡ, reason: not valid java name and contains not printable characters */
            public static FragmentActivity m3182(Object obj) {
                if (C0088.m446() >= 0) {
                    return ((DashboardFragment) obj).getActivity();
                }
                return null;
            }

            /* JADX INFO: renamed from: ۟ۢۢۧ۠, reason: not valid java name and contains not printable characters */
            public static BaseTransientBottomBar m3183(Object obj, Object obj2) {
                if (C0050.m256() > 0) {
                    return ((Snackbar) obj).setAnchorView((View) obj2);
                }
                return null;
            }

            /* JADX INFO: renamed from: ۣ۟ۦۢۢ, reason: not valid java name and contains not printable characters */
            public static FragmentDashboardBinding m3184(Object obj) {
                if (C0290.m1737() > 0) {
                    return DashboardFragment.m3179((DashboardFragment) obj);
                }
                return null;
            }

            /* JADX INFO: renamed from: ۟ۦۤۡۦ, reason: not valid java name and contains not printable characters */
            public static DashboardFragment m3185(Object obj) {
                if (C0386.m2240() <= 0) {
                    return DashboardFragment.this;
                }
                return null;
            }

            /* JADX INFO: renamed from: ۤ۠۟۠, reason: not valid java name and contains not printable characters */
            public static boolean m3186(Object obj) {
                if (C0113.m561() > 0) {
                    return ((AnonymousClass1) obj).isNeedStart;
                }
                return false;
            }

            /* JADX INFO: renamed from: ۣۧۨۡ, reason: not valid java name and contains not printable characters */
            public static short[] m3187() {
                if (C0220.m1164() >= 0) {
                    return f545short;
                }
                return null;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String strM5160 = C0629.m5160(m3187(), 0, 21, 2738);
                this.isNeedStart = true;
                if (!C0644.m5365(C0549.m3240(C0614.m5075(m3187(), 21, 7, 1812)), C0531.m2986(m3187(), 28, 7, 2051))) {
                    C0517.m2913((Snackbar) m3183(C0846.m6291(view, C0223.m1189(m3187(), EACTags.DISCRETIONARY_DATA_OBJECTS, 35, 2310), 0), C0041.m214(m3184(m3185(this)))));
                    return;
                }
                try {
                    PackageInfo packageInfoM4556 = C0572.m4556(C0681.m5561(m3182(m3185(this))), C0475.m2713(m3187(), 35, 22, 487), 0);
                    if (C0308.m1826(packageInfoM4556) != 972108003) {
                        C0517.m2913((Snackbar) m3183(C0846.m6291(view, C0554.m3261(C0281.m1661(new StringBuilder(strM5160), C0427.m2458(packageInfoM4556))), 0), C0041.m214(m3184(m3185(this)))));
                        return;
                    }
                    new File(C0869.m6396(C0512.m2887(m3182(m3185(this)))), C0710.m5694(m3187(), 57, 11, 2429));
                    C0517.m2913(C0182.m875((Snackbar) m3183(C0846.m6291(view, C0088.m447(m3187(), 68, 21, 2608), 0), C0041.m214(m3184(m3185(this)))), C0819.m6175(m3187(), 89, 6, 2554), new View.OnClickListener() { // from class: dev.blaze.launcher.ui.dashboard.DashboardFragment.1.1
                        /* JADX INFO: renamed from: ۟ۡۦۧۢ, reason: not valid java name and contains not printable characters */
                        public static void m3188(Object obj, boolean z) {
                            if (C0271.m1580() > 0) {
                                ((AnonymousClass1) obj).isNeedStart = z;
                            }
                        }

                        /* JADX INFO: renamed from: ۟ۧۥۤۨ, reason: not valid java name and contains not printable characters */
                        public static AnonymousClass1 m3189(Object obj) {
                            if (C0139.m680() < 0) {
                                return AnonymousClass1.this;
                            }
                            return null;
                        }

                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            m3188(m3189(this), false);
                        }
                    }));
                    C0512.m2885(C0498.m2819(C0399.m2300(m3182(m3185(this)))), new Runnable() { // from class: dev.blaze.launcher.ui.dashboard.DashboardFragment.1.2
                        /* JADX INFO: renamed from: ۟ۢۡۤۤ, reason: not valid java name and contains not printable characters */
                        public static DashboardFragment m3190(Object obj) {
                            if (C0044.m226() >= 0) {
                                return DashboardFragment.this;
                            }
                            return null;
                        }

                        /* JADX INFO: renamed from: ۟ۧۤۢۨ, reason: not valid java name and contains not printable characters */
                        public static boolean m3191(Object obj) {
                            if (C0281.m1665() < 0) {
                                return AnonymousClass1.m3186((AnonymousClass1) obj);
                            }
                            return false;
                        }

                        /* JADX INFO: renamed from: ۡ۠۟۠, reason: not valid java name and contains not printable characters */
                        public static AnonymousClass1 m3192(Object obj) {
                            if (C0821.m6182() >= 0) {
                                return AnonymousClass1.this;
                            }
                            return null;
                        }

                        /* JADX INFO: renamed from: ۣۣ۟ۡ, reason: not valid java name and contains not printable characters */
                        public static FragmentActivity m3193(Object obj) {
                            if (C0700.m5646() > 0) {
                                return ((DashboardFragment) obj).getActivity();
                            }
                            return null;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            if (m3191(m3192(this))) {
                                GLES3JNIView.mainActivity = m3193(m3190(m3192(this)));
                                C0279.m1653(m3193(m3190(m3192(this))), new Intent(m3193(m3190(m3192(this))), (Class<?>) GameActivity.class));
                            }
                        }
                    }, 3000L);
                } catch (PackageManager.NameNotFoundException unused) {
                    C0517.m2913((Snackbar) m3183(C0846.m6291(view, C0342.m1995(m3187(), 95, 20, 1900), 0), C0041.m214(m3184(m3185(this)))));
                }
            }
        });
        return constraintLayoutM844;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.binding = null;
    }
}

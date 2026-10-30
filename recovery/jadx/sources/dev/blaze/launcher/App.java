package dev.blaze.launcher;

import android.app.Application;
import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.widgets.analyzer.C0050;
import androidx.constraintlayout.motion.widget.C0058;
import androidx.constraintlayout.utils.widget.C0061;
import androidx.core.ktx.C0077;
import androidx.core.os.C0085;
import androidx.core.telephony.mbms.C0092;
import androidx.core.view.animation.C0103;
import androidx.fragment.ktx.C0127;
import androidx.savedstate.ktx.C0172;
import androidx.slidingpanelayout.widget.C0175;
import androidx.startup.C0177;
import androidx.swiperefreshlayout.C0180;
import androidx.window.embedding.C0197;
import androidx.window.embedding.C0198;
import com.bea.xml.stream.samples.C0207;
import com.braze.ui.adapters.C0257;
import com.braze.ui.contentcards.view.C0270;
import com.braze.ui.inappmessage.factories.C0281;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C0315;
import com.google.android.gms.common.server.C0342;
import com.google.android.gms.internal.tasks.C0356;
import com.google.android.gms.tasks.C0360;
import com.google.android.material.canvas.C0370;
import com.google.android.material.chip.C0376;
import com.google.android.material.dialog.C0389;
import com.google.android.material.drawable.C0391;
import com.google.android.material.sidesheet.C0411;
import com.google.android.material.switchmaterial.C0417;
import com.google.android.material.tabs.C0418;
import com.google.firebase.dynamicloading.C0434;
import com.google.firebase.emulators.C0439;
import com.google.firebase.installations.internal.C0450;
import com.google.firebase.provider.C0467;
import com.microsoft.xbox.idp.ui.C0490;
import com.microsoft.xbox.xle.model.C0519;
import com.mojang.android.C0525;
import dev.blaze.launcher.task.NativeInstaller;
import dev.blaze.launcher.task.ResourceInstaller;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.xml.stream.util.C0554;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.C0561;
import kotlin.io.encoding.C0575;
import kotlin.io.encoding.C0577;
import kotlin.jdk7.C0582;
import kotlin.jvm.functions.C0584;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.random.C0594;
import okhttp3.internal.http1.C0642;
import okhttp3.internal.publicsuffix.C0649;
import org.apache.http.HttpStatus;
import org.apache.http.client.params.C0669;
import org.apache.http.config.C0673;
import org.apache.http.conn.routing.C0676;
import org.apache.http.impl.auth.C0683;
import org.apache.http.impl.auth.C0684;
import org.apache.http.impl.conn.C0691;
import org.apache.http.io.C0700;
import org.simpleframework.xml.util.C0725;
import org.spongycastle.asn1.anssi.C0730;
import org.spongycastle.asn1.esf.C0745;
import org.spongycastle.asn1.x500.style.C0765;
import org.spongycastle.asn1.x509.sigi.C0768;
import org.spongycastle.cert.path.C0785;
import org.spongycastle.crypto.tls.CipherSuite;
import org.spongycastle.jcajce.provider.asymmetric.C0848;
import org.spongycastle.jcajce.provider.asymmetric.dh.C0834;
import org.spongycastle.jcajce.provider.asymmetric.dh.C0835;
import org.spongycastle.jce.spec.C0864;
import org.spongycastle.math.C0878;
import org.spongycastle.pkcs.jcajce.C0898;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0002¨\u0006\u000b"}, d2 = {"Ldev/blaze/launcher/App;", "Landroid/app/Application;", "()V", "attachBaseContext", "", "base", "Landroid/content/Context;", "loadLibraries", "onCreate", "patchNativeLibraryDir", "Companion", "app_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class App extends Application {
    public static final long FIRST_SHOW_AD_TIME = 15000;
    public static final long SHOW_AD_TIME = 180000;

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f527short = {2827, 2901, 2910, 2900, 2828, 2906, 2909, 2904, 2880, 2830, 2827, 2901, 2827, 2880, 2905, 2825, 2905, 2910, 2880, 2901, 2901, 2827, 2828, 2880, 2905, 2911, 2909, 2908, 2905, 2830, 2907, 2827, 2830, 2901, 2901, 2907, 1641, 1597, 1597, 1596, 1641, 1597, 1598, 1642, 1574, 1596, 1598, 1593, 1592, 1574, 1599, 1598, 1597, 1593, 1574, 1587, 1641, 1599, 1595, 1574, 1641, 1593, 1647, 1599, 1594, 1592, 1640, 1587, 1646, 1592, 1647, 1646, 2393, 2373, 2373, 2369, 2370, 2315, 2334, 2334, 2384, 2386, 2386, 2398, 2372, 2399, 2373, 2335, 2396, 2398, 2395, 2384, 2399, 2390, 2335, 2386, 2398, 2396, 2334, 2373, 2388, 2371, 2396, 2370, 2322, 2369, 2371, 2392, 2375, 2384, 2386, 2376, 3089, 3085, 3085, 3081, 3082, 3139, 3158, 3158, 3081, 3083, 3088, 3087, 3096, 3098, 3072, 3159, 3092, 3088, 3098, 3083, 3094, 3082, 3094, 3103, 3085, 3159, 3098, 3094, 3092, 3158, 3100, 3095, 3156, 3084, 3082, 3158, 3081, 3083, 3088, 3087, 3096, 3098, 3072, 3082, 3085, 3096, 3085, 3100, 3092, 3100, 3095, 3085, 258, 286, 286, 282, 281, 336, 325, 325, 286, 324, 263, 271, 325, 264, 262, 267, 272, 271, 262, 267, 287, 260, 265, 258, 271, 280, 3119, 3123, 3123, 3127, 3124, 3197, 3176, 3176, 3110, 3116, 3110, 3177, 3114, 3124, 3176, 3127, 3125, 3118, 3121, 3110, 3108, 3134, 1456, 1452, 1452, 1448, 1451, 1506, 1527, 1527, 1465, 1459, 1465, 1526, 1461, 1451, 1527, 1461, 1467, 1469, 1468, 1453, 1460, 1463, 1471, 1451, 1602, 1630, 1630, 1626, 1625, 1552, 1541, 1541, 1611, 1601, 1611, 1540, 1607, 1625, 1541, 1607, 1615, 1615, 1630, 1615, 1624, 1607, 1625, 2902, 2890, 2890, 2894, 2893, 2820, 2833, 2833, 2911, 2901, 2911, 2832, 2899, 2893, 2833, 2931, 2903, 2896, 2907, 2909, 2892, 2911, 2904, 2890, 2943, 2896, 2906, 2892, 2897, 2903, 2906, 2939, 2886, 2890, 2907, 2892, 2896, 2911, 2898, 2925, 2890, 2897, 2892, 2911, 2905, 2907, 2262, 2269, 2271, 2260, 309, 381, 381, 265, 293, 318, 311, 292, 307, 306, 1919, 1915, 1916, 1911, 1905, 1888, 1907, 1908, 1894, 1890, 1911, 2915, 2891, 2890, 2887, 2895, 2922, 2891, 2893, 2881, 2890, 2891, 2908, 2909, 2929, 2927, 2880, 2890, 2908, 2881, 2887, 2890, 2146, 2083, 2092, 2105, 2084, 2107, 2088, 2146, 2330, 612, 586, 583, 604, 579, 618, 583, 595, 584, 581, 590, 579, 596, 616, 583, 594, 591, 592, 579, 3145, 3173, 3181, 3178, 3141, 3175, 3184, 3181, 3186, 3181, 3184, 3197, 3108, 3159, 3184, 3173, 3190, 3184, 3114, 2112, 2131, 2131, 2126, 2134, 2174, 2117, 2126, 2134, 2127, 2063, 2129, 2127, 2118, 1746, 1729, 1729, 1756, 1732, 1772, 1729, 1754, 1748, 1755, 1735, 1693, 1731, 1757, 1748, 2606, 2621, 2621, 2592, 2616, 2576, 2618, 2623, 2657, 2623, 2593, 2600, 3157, 3158, 3166, 3158, 3095, 3145, 3159, 3166, 2458, 2457, 2449, 2457, 2473, 2457, 2448, 2448, 2520, 2438, 2456, 2449, 1538, 1539, 1603, 1565, 1539, 1546, 1902, 1895, 1895, 1839, 1905, 1903, 1894, 3129, 3132, 3176, 3177, 3189, 3115, 3125, 3132, 2320, 2325, 2372, 2374, 2396, 2306, 2332, 2325, 3038, 3011, 3038, 3014, 3023, 2948, 3034, 3012, 3021, 985, 964, 985, 961, 968, 899, 985, 985, 971, 1780, 1791, 1788, 1777, 1778, 1791, 1725, 1767, 1767, 1781, 1415, 1409, 1426, 1437, 1408, 1439, 1426, 1415, 1434, 1436, 1437, 1501, 1424, 1429, 1428, 2142, 2113, 2132, 2143, 2073, 2079, 2079, 2079, 2072};
    public static final String AD_UNIT_ID = C0391.m2263(m3029(), 0, 36, 2925);
    public static final String AD_UNIT_INTERSTITIAL_ID = C0594.m4678(m3029(), 36, 36, 1547);
    public static final String PRIVACY_POLICE_MINECRAFT = C0835.m6246(m3029(), 72, 40, 2353);
    public static final String PRIVACY_POLICE_XBOX = C0207.m995(m3029(), 112, 52, 3193);
    public static final String REDIRECT_URL = C0864.m6371(m3029(), CipherSuite.TLS_DH_DSS_WITH_AES_128_GCM_SHA256, 26, 362);

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final List<String> REDIRECT_MINECRAFT_URLS = m3032(new String[]{C0411.m2372(m3029(), CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256, 22, 3143), C0376.m2153(m3029(), 212, 24, 1496), C0642.m5355(m3029(), 236, 23, 1578), C0525.m2953(m3029(), 259, 46, 2878)});

    private final void loadLibraries() {
        C0684.m5577(C0077.m376(m3029(), 305, 4, 2224));
        Iterator itM2529 = C0439.m2529(m3034(new String[]{C0467.m2681(m3029(), 309, 10, 342), C0342.m1995(m3029(), 319, 11, 1810), C0360.m2072(m3029(), 330, 21, 2862)}));
        while (C0257.m1503(itM2529)) {
            String str = (String) C0127.m645(itM2529);
            try {
                C0673.m5524();
                App app = this;
                C0684.m5577(str);
                C0172.m823(C0765.m5937());
            } catch (Throwable th) {
                C0673.m5524();
                C0172.m823(C0092.m460(th));
            }
        }
    }

    private final void patchNativeLibraryDir() {
        try {
            C0673.m5524();
            App app = this;
            ClassLoader classLoaderM5385 = C0649.m5385(this);
            File fileM5760 = C0725.m5760(this);
            C0848.m6301(classLoaderM5385, new File(C0554.m3261(C0281.m1661(C0281.m1661(C0281.m1661(C0270.m1575(new StringBuilder(), fileM5760), C0577.m4582(m3029(), 351, 8, 2125)), C0061.m299(C0175.m841())), C0785.m6029(m3029(), 359, 1, 2357)))));
            C0172.m823(C0765.m5937());
        } catch (Throwable th) {
            C0673.m5524();
            C0172.m823(C0092.m460(th));
        }
    }

    /* JADX INFO: renamed from: ۟۠ۥۧۥ, reason: not valid java name and contains not printable characters */
    public static short[] m3029() {
        if (C0561.m4508() >= 0) {
            return f527short;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟۠ۧۧۡ, reason: not valid java name and contains not printable characters */
    public static List m3030() {
        if (C0691.m5605() <= 0) {
            return REDIRECT_MINECRAFT_URLS;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟۠ۧۨ۠, reason: not valid java name and contains not printable characters */
    public static void m3031(Object obj) {
        if (C0669.m5502() <= 0) {
            ((App) obj).patchNativeLibraryDir();
        }
    }

    /* JADX INFO: renamed from: ۟ۢۤۥۦ, reason: not valid java name and contains not printable characters */
    public static List m3032(Object obj) {
        if (C0103.m512() > 0) {
            return CollectionsKt.listOf((Object[]) obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۤۢۥ, reason: not valid java name and contains not printable characters */
    public static void m3033(Object obj) {
        if (C0418.m2402() <= 0) {
            ((App) obj).loadLibraries();
        }
    }

    /* JADX INFO: renamed from: ۤۨ۠۠, reason: not valid java name and contains not printable characters */
    public static ArrayList m3034(Object obj) {
        if (C0676.m5541() >= 0) {
            return CollectionsKt.arrayListOf((Object[]) obj);
        }
        return null;
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context base) throws Exception {
        super.attachBaseContext(base);
        C0519.m2923(m3029(), 360, 19, 550);
        C0315.m1871(m3029(), 379, 19, 3076);
        C0575.m4572(C0898.m6496(this), C0356.m2057(m3029(), 398, 14, 2081));
        C0575.m4572(C0898.m6496(this), C0370.m2122(m3029(), HttpStatus.SC_PRECONDITION_FAILED, 15, 1715));
        C0575.m4572(C0898.m6496(this), C0490.m2779(m3029(), 427, 12, 2639));
        C0575.m4572(C0898.m6496(this), C0450.m2581(m3029(), 439, 8, 3129));
        C0575.m4572(C0898.m6496(this), C0177.m847(m3029(), 447, 12, 2550));
        C0575.m4572(C0898.m6496(this), C0700.m5645(m3029(), 459, 6, 1645));
        C0575.m4572(C0898.m6496(this), C0434.m2507(m3029(), 465, 7, 1793));
        C0575.m4572(C0898.m6496(this), C0683.m5570(m3029(), 472, 8, 3163));
        C0575.m4572(C0898.m6496(this), C0417.m2396(m3029(), 480, 8, 2418));
        C0575.m4572(C0898.m6496(this), C0745.m5848(m3029(), 488, 9, 2986));
        C0584.m4621(C0180.m862(C0898.m6496(this), C0389.m2253(m3029(), 497, 9, 941)));
        C0676.m5539(C0180.m862(C0898.m6496(this), C0050.m254(m3029(), TypedValues.PositionType.TYPE_PERCENT_X, 10, 1683)));
        InputStream inputStreamM862 = C0180.m862(C0898.m6496(this), C0768.m5953(m3029(), 516, 15, 1523));
        C0198.m955(inputStreamM862, C0058.m286(m3029(), 531, 9, 2097));
        Reader inputStreamReader = new InputStreamReader(inputStreamM862, C0834.m6241());
        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
        try {
            GLES3JNIView.translation = C0582.m4608(bufferedReader);
            C0765.m5937();
            C0085.m433(bufferedReader, null);
            App app = this;
            C0730.m5782(new ResourceInstaller(app));
            C0197.m950(new NativeInstaller(app));
            m3031(this);
            m3033(this);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                C0085.m433(bufferedReader, th);
                throw th2;
            }
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        C0878.m6437(this);
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Ldev/blaze/launcher/App$Companion;", "", "()V", "AD_UNIT_ID", "", "AD_UNIT_INTERSTITIAL_ID", "FIRST_SHOW_AD_TIME", "", "PRIVACY_POLICE_MINECRAFT", "PRIVACY_POLICE_XBOX", "REDIRECT_MINECRAFT_URLS", "", "getREDIRECT_MINECRAFT_URLS", "()Ljava/util/List;", "REDIRECT_URL", "SHOW_AD_TIME", "app_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<String> getREDIRECT_MINECRAFT_URLS() {
            return App.m3030();
        }
    }
}

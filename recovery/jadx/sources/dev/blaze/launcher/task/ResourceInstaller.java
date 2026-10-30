package dev.blaze.launcher.task;

import android.content.Context;
import androidx.appcompat.text.C0013;
import androidx.appcompat.text.C0014;
import androidx.arch.core.util.C0023;
import androidx.constraintlayout.core.parser.C0046;
import androidx.core.os.C0085;
import androidx.dynamicanimation.animation.C0122;
import androidx.loader.app.C0153;
import androidx.swiperefreshlayout.C0180;
import com.braze.ui.C0298;
import com.google.android.datatransport.backend.cct.C0303;
import com.google.android.gms.dynamic.C0348;
import com.google.android.material.circularreveal.cardview.C0380;
import com.google.firebase.analytics.connector.C0432;
import com.google.firebase.dynamicloading.C0436;
import com.google.firebase.dynamicloading.C0437;
import com.microsoft.xbox.idp.ui.C0489;
import com.microsoft.xbox.telemetry.utc.model.C0502;
import java.io.File;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.builders.C0557;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.jdk8.C0590;
import kotlin.system.C0606;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.cache2.C0635;
import okhttp3.internal.platform.android.C0647;
import okhttp3.internal.ws.C0651;
import org.apache.http.client.protocol.C0671;
import org.apache.http.impl.auth.C0684;
import org.apache.http.impl.conn.tsccm.C0688;
import org.apache.http.impl.conn.tsccm.C0689;
import org.spongycastle.asn1.cmp.C0736;
import org.spongycastle.asn1.eac.EACTags;
import org.spongycastle.asn1.x500.style.C0765;
import org.spongycastle.crypto.tls.CipherSuite;
import org.spongycastle.jcajce.provider.asymmetric.elgamal.C0840;
import org.spongycastle.jcajce.spec.C0859;
import org.spongycastle.jce.spec.C0865;
import org.spongycastle.math.ec.endo.C0869;
import org.spongycastle.openssl.C0887;
import org.spongycastle.operator.jcajce.C0889;
import org.spongycastle.pqc.jcajce.provider.gmss.C0912;
import org.spongycastle.pqc.jcajce.provider.util.C0917;
import org.spongycastle.x509.util.C0937;
import org.xmlpull.v1.util.C0948;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0002J\u0006\u0010\n\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Ldev/blaze/launcher/task/ResourceInstaller;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "extract", "", "assetsName", "", "output", "install", "app_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ResourceInstaller {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f535short = {1833, 1829, 1828, 1854, 1839, 1842, 1854, 461, 476, 468, 457, 1256, 1212, 1199, 1206};
    private final Context context;

    /* JADX INFO: renamed from: dev.blaze.launcher.task.ResourceInstaller$install$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "dev.blaze.launcher.task.ResourceInstaller$install$1", f = "ResourceInstaller.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: short, reason: not valid java name */
        private static final short[] f536short = {1138, 1125, 1139, 1135, 1141, 1138, 1123, 1125, 1139, 1071, 1143, 1135, 1138, 1132, 1124, 1139, 1070, 1146, 1129, 1136, 1290, 1292, 1280, 1288, 1310, 1346, 1294, 1282, 1280, 1347, 1280, 1282, 1287, 1292, 1283, 1290, 1346, 1280, 1284, 1283, 1288, 1294, 1311, 1292, 1291, 1305, 1338, 1282, 1311, 1281, 1289, 1310, 2244, 2259, 2245, 2265, 2243, 2244, 2261, 2259, 2245, 2201, 2260, 2259, 2270, 2263, 2240, 2271, 2265, 2244, 2281, 2246, 2263, 2261, 2269, 2245, 2200, 2252, 2271, 2246, 3161, 3167, 3155, 3163, 3149, 3089, 3165, 3153, 3155, 3088, 3155, 3153, 3156, 3167, 3152, 3161, 3089, 3164, 3163, 3158, 3167, 3144, 3159, 3153, 3148, 3169, 3150, 3167, 3165, 3157, 3149, 2710, 2689, 2711, 2699, 2705, 2710, 2695, 2689, 2711, 2763, 2710, 2689, 2711, 2699, 2705, 2710, 2695, 2689, 2747, 2708, 2693, 2695, 2703, 2711, 2762, 2718, 2701, 2708, 2285, 2283, 2279, 2287, 2297, 2213, 2281, 2277, 2279, 2212, 2279, 2277, 2272, 2283, 2276, 2285, 2213, 2296, 2287, 2297, 2277, 2303, 2296, 2281, 2287, 2261, 2298, 2283, 2281, 2273, 2297, 2800, 2791, 2801, 2797, 2807, 2800, 2785, 2791, 2801, 2733, 2801, 2793, 2795, 2796, 2781, 2802, 2787, 2785, 2793, 2801, 2732, 2808, 2795, 2802, 2587, 2589, 2577, 2585, 2575, 2643, 2591, 2579, 2577, 2642, 2577, 2579, 2582, 2589, 2578, 2587, 2643, 2575, 2583, 2581, 2578, 2595, 2572, 2589, 2591, 2583, 2575, 1272, 1274, 1271, 1271, 1211, 1263, 1268, 1211, 1212, 1257, 1278, 1256, 1262, 1270, 1278, 1212, 1211, 1273, 1278, 1277, 1268, 1257, 1278, 1211, 1212, 1266, 1269, 1261, 1268, 1264, 1278, 1212, 1211, 1260, 1266, 1263, 1267, 1211, 1272, 1268, 1257, 1268, 1262, 1263, 1266, 1269, 1278};
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        /* JADX INFO: renamed from: ۟۟۟ۦۤ, reason: not valid java name and contains not printable characters */
        public static int m3081(Object obj) {
            if (C0736.m5810() > 0) {
                return ((AnonymousClass1) obj).label;
            }
            return 0;
        }

        /* JADX INFO: renamed from: ۣ۟ۧۦ۠, reason: not valid java name and contains not printable characters */
        public static ResourceInstaller m3082(Object obj) {
            if (C0489.m2777() <= 0) {
                return ResourceInstaller.this;
            }
            return null;
        }

        /* JADX INFO: renamed from: ۣ۠ۡۦ, reason: not valid java name and contains not printable characters */
        public static Object m3083() {
            if (C0912.m6563() <= 0) {
                return IntrinsicsKt.getCOROUTINE_SUSPENDED();
            }
            return null;
        }

        /* JADX INFO: renamed from: ۥ۠ۢۢ, reason: contains not printable characters */
        public static Continuation m3084(Object obj, Object obj2, Object obj3) {
            if (C0380.m2172() > 0) {
                return ((AnonymousClass1) obj).create(obj2, (Continuation) obj3);
            }
            return null;
        }

        /* JADX INFO: renamed from: ۥۥۤۤ, reason: contains not printable characters */
        public static short[] m3085() {
            if (C0590.m4649() > 0) {
                return f536short;
            }
            return null;
        }

        /* JADX INFO: renamed from: ۦۥۥۤ, reason: contains not printable characters */
        public static Object m3086(Object obj, Object obj2) {
            if (C0689.m5598() < 0) {
                return ((AnonymousClass1) obj).invokeSuspend(obj2);
            }
            return null;
        }

        /* JADX INFO: renamed from: ۦۨ۟ۤ, reason: contains not printable characters */
        public static Object m3087(Object obj, Object obj2, Object obj3) {
            if (C0887.m6464() <= 0) {
                return ((AnonymousClass1) obj).invoke2((CoroutineScope) obj2, (Continuation<? super Unit>) obj3);
            }
            return null;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return m3082(this).new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return m3087(this, coroutineScope, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return m3086((AnonymousClass1) m3084(this, coroutineScope, continuation), C0765.m5937());
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            m3083();
            if (m3081(this) != 0) {
                throw new IllegalStateException(C0948.m6719(m3085(), 221, 47, 1179));
            }
            C0840.m6268(obj);
            C0865.m6374(m3082(this), C0557.m3752(m3085(), 0, 20, 1024), C0606.m4803(m3085(), 20, 32, 1389));
            C0865.m6374(m3082(this), C0684.m5573(m3085(), 52, 28, 2230), C0437.m2520(m3085(), 80, 31, 3134));
            C0865.m6374(m3082(this), C0298.m1780(m3085(), EACTags.FCI_TEMPLATE, 28, 2788), C0651.m5396(m3085(), CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA, 31, 2186));
            C0865.m6374(m3082(this), C0635.m5322(m3085(), CipherSuite.TLS_DHE_PSK_WITH_AES_128_GCM_SHA256, 24, 2690), C0502.m2833(m3085(), CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA256, 27, 2684));
            return C0765.m5937();
        }
    }

    public ResourceInstaller(Context context) {
        C0432.m2481(context, C0688.m5594(m3079(), 0, 7, 1866));
        this.context = context;
    }

    private final void extract(String assetsName, String output) {
        try {
            File fileM2025 = C0348.m2025(C0180.m863(m3079(), 7, 4, 441), C0122.m604(m3079(), 11, 4, 1222));
            File file = new File(C0869.m6396(C0014.m68(m3080(this))), output);
            InputStream inputStreamM862 = C0180.m862(C0671.m5513(m3080(this)), assetsName);
            try {
                InputStream inputStream = inputStreamM862;
                C0917.m6586(fileM2025);
                C0917.m6586(inputStream);
                C0489.m2774(fileM2025, inputStream);
                C0085.m433(inputStreamM862, null);
                C0023.m105(C0889.m6469(), fileM2025, file);
                C0046.m234(fileM2025);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    C0085.m433(inputStreamM862, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            C0013.m63(e);
        }
    }

    /* JADX INFO: renamed from: ۟۟ۡ۠ۦ, reason: not valid java name and contains not printable characters */
    public static void m3078(Object obj, Object obj2, Object obj3) {
        if (C0436.m2514() > 0) {
            ((ResourceInstaller) obj).extract((String) obj2, (String) obj3);
        }
    }

    /* JADX INFO: renamed from: ۣ۟ۡۥۥ, reason: not valid java name and contains not printable characters */
    public static short[] m3079() {
        if (C0647.m5375() >= 0) {
            return f535short;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣۣۢۢ, reason: not valid java name and contains not printable characters */
    public static Context m3080(Object obj) {
        if (C0937.m6671() < 0) {
            return ((ResourceInstaller) obj).context;
        }
        return null;
    }

    public final void install() {
        C0303.m1804(C0153.m742(C0859.m6350()), null, null, new AnonymousClass1(null), 3, null);
    }
}

package dev.blaze.launcher.task;

import android.content.Context;
import androidx.appcompat.resources.C0012;
import androidx.appcompat.text.C0014;
import androidx.constraintlayout.utils.widget.C0061;
import androidx.core.hardware.fingerprint.C0073;
import androidx.core.internal.view.C0074;
import androidx.core.ktx.C0078;
import androidx.core.os.C0085;
import androidx.core.provider.C0088;
import androidx.core.telephony.mbms.C0092;
import androidx.core.view.C0110;
import androidx.fragment.ktx.C0127;
import androidx.localbroadcastmanager.C0156;
import androidx.navigation.common.C0160;
import androidx.savedstate.ktx.C0172;
import androidx.slidingpanelayout.widget.C0175;
import com.braze.dispatch.C0217;
import com.braze.events.internal.C0221;
import com.braze.push.support.C0237;
import com.braze.push.support.C0238;
import com.braze.triggers.events.C0252;
import com.braze.ui.C0297;
import com.braze.ui.adapters.C0257;
import com.braze.ui.contentcards.view.C0270;
import com.braze.ui.inappmessage.factories.C0281;
import com.braze.ui.inappmessage.factories.C0282;
import com.google.android.datatransport.backend.cct.C0303;
import com.google.android.gms.common.config.C0334;
import com.google.android.gms.common.images.C0335;
import com.google.android.material.expandable.C0392;
import com.google.android.material.search.C0406;
import com.google.firebase.analytics.connector.C0432;
import com.google.firebase.analytics.connector.C0433;
import com.google.firebase.emulators.C0439;
import com.google.firebase.iid.internal.C0448;
import com.google.firebase.installations.time.C0455;
import com.google.firebase.platforminfo.C0466;
import com.google.firebase.provider.C0467;
import com.microsoft.xbox.idp.ui.C0489;
import com.mojang.minecraftpe.input.C0531;
import com.mojang.minecraftpe.packagesource.C0533;
import com.mojang.minecraftpe.store.amazonappstore.C0535;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import javax.xml.stream.util.C0554;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.C0571;
import kotlin.text.StringsKt;
import kotlinx.coroutines.channels.C0613;
import kotlinx.coroutines.flow.internal.C0622;
import org.apache.http.client.config.C0666;
import org.apache.http.client.params.C0667;
import org.apache.http.client.params.C0669;
import org.apache.http.config.C0673;
import org.apache.http.conn.params.C0674;
import org.apache.http.impl.conn.C0690;
import org.spongycastle.asn1.bsi.C0735;
import org.spongycastle.asn1.eac.EACTags;
import org.spongycastle.asn1.mozilla.C0759;
import org.spongycastle.asn1.x500.style.C0765;
import org.spongycastle.crypto.ec.C0796;
import org.spongycastle.crypto.tls.CipherSuite;
import org.spongycastle.jcajce.provider.asymmetric.util.C0845;
import org.spongycastle.pqc.jcajce.provider.util.C0917;
import org.spongycastle.util.test.C0931;
import org.xmlpull.v1.wrapper.classic.C0951;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0003J \u0010\u000e\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\bH\u0002J\b\u0010\u0011\u001a\u00020\bH\u0002J\u0006\u0010\u0012\u001a\u00020\u0006J\b\u0010\u0013\u001a\u00020\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Ldev/blaze/launcher/task/NativeInstaller;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "extractFromAPK", "", "abi", "", "archive", "Ljava/io/File;", "extractFromAppBundle", "extractLibArchive", "extractLibraries", "extractLibrary", "outDir", "libName", "getDeviceABI", "install", "isAppBundle", "", "app_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NativeInstaller {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f534short = {2262, 2266, 2267, 2241, 2256, 2253, 2241, 2808, 2813, 2806, 2747, 734, 669, 664, 659, 668, 664, 671, 660, 658, 643, 656, 663, 645, 641, 660, 735, 642, 670, 2034, 2017, 2046, 729, 665, 663, 3064, 3069, 3062, 3003, 707, 640, 645, 654, 651, 653, 641, 649, 706, 671, 643, 1211, 1274, 1269, 1248, 1277, 1250, 1265, 1486, 1483, 1472, 1477, 1475, 1487, 1479, 1420, 1496, 1483, 1490, 3146, 3142, 3140, 3079, 3140, 3142, 3139, 3144, 3143, 3150, 3079, 3140, 3136, 3143, 3148, 3146, 3163, 3144, 3151, 3165, 3161, 3148, 1048, 1113, 1110, 1091, 1118, 1089, 1106, 1048, 2341, 2837, 2832, 2843, 2842, 2898, 2898, 2854, 2826, 2833, 2840, 2827, 2844, 2845, 2903, 2826, 2838, 1268, 1265, 1274, 1269, 1265, 1270, 1277, 1275, 1258, 1273, 1278, 1260, 1256, 1277, 1206, 1259, 1271, 538, 543, 532, 571, 531, 530, 543, 535, 562, 531, 533, 537, 530, 531, 516, 517, 553, 567, 536, 530, 516, 537, 543, 530, 600, 517, 537, 1859, 1862, 1869, 1865, 1858, 1856, 1867, 1793, 1884, 1856, 2207, 2271, 2257, 2232, 2257, 2259, 578, 514, 524};
    private final Context context;

    public NativeInstaller(Context context) {
        C0432.m2481(context, C0156.m756(m3072(), 0, 7, 2229));
        this.context = context;
    }

    private final void extractFromAPK(String abi, File archive) {
        InputStream inputStreamM2487 = C0433.m2487(new ZipFile(C0448.m2566(C0282.m1670(m3068(this)))), new ZipEntry(C0554.m3261(C0281.m1661(C0281.m1661(new StringBuilder(C0535.m3003(m3072(), 7, 4, 2708)), abi), C0392.m2269(m3072(), 11, 18, 753)))));
        if (inputStreamM2487 != null) {
            InputStream inputStream = inputStreamM2487;
            try {
                C0334.m1960(C0489.m2774(archive, inputStream));
                C0085.m433(inputStream, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    C0085.m433(inputStream, th);
                    throw th2;
                }
            }
        }
    }

    private final void extractFromAppBundle(String abi, File archive) {
        InputStream inputStreamM2487;
        String[] strArrM5525 = C0673.m5525(C0282.m1670(m3068(this)));
        if (strArrM5525 != null) {
            for (String str : strArrM5525) {
                String strM1802 = C0303.m1802(new File(str));
                C0917.m6586(strM1802);
                String str2 = strM1802;
                if ((m3073(str2, C0466.m2676(m3072(), 29, 3, 1939), false, 2, null) || m3073(str2, C0931.m6648(m3072(), 32, 3, 673), false, 2, null)) && (inputStreamM2487 = C0433.m2487(new ZipFile(str), new ZipEntry(C0554.m3261(C0281.m1661(C0281.m1661(new StringBuilder(C0571.m4549(m3072(), 35, 4, 2964)), abi), C0455.m2604(m3072(), 39, 11, 748)))))) != null) {
                    C0917.m6586(inputStreamM2487);
                    InputStream inputStream = inputStreamM2487;
                    try {
                        C0334.m1960(C0489.m2774(archive, inputStream));
                        C0085.m433(inputStream, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            C0085.m433(inputStream, th);
                            throw th2;
                        }
                    }
                }
            }
        }
    }

    private final void extractLibArchive(String abi) {
        try {
            C0673.m5524();
            NativeInstaller nativeInstaller = this;
            File file = new File(C0554.m3261(C0281.m1661(C0270.m1575(new StringBuilder(), C0014.m68(m3068(this))), C0074.m361(m3072(), 50, 7, 1172))));
            if (!C0221.m1172(file)) {
                C0073.m360(file);
            }
            File file2 = new File(file, C0669.m5501(m3072(), 57, 11, 1442));
            if (m3070(this)) {
                m3067(this, abi, file2);
            } else {
                m3077(this, abi, file2);
            }
            C0172.m823(C0765.m5937());
        } catch (Throwable th) {
            C0673.m5524();
            C0172.m823(C0092.m460(th));
        }
    }

    private final void extractLibraries(String abi) {
        File file = new File(C0078.m382(C0282.m1670(C0237.m1351(m3068(this), C0012.m58(m3072(), 68, 22, 3113), 2))));
        File file2 = new File(C0554.m3261(C0281.m1661(C0281.m1661(C0281.m1661(C0270.m1575(new StringBuilder(), C0014.m68(m3068(this))), C0667.m5491(m3072(), 90, 8, 1079)), abi), C0238.m1356(m3072(), 98, 1, 2314))));
        if (!C0221.m1172(file2)) {
            C0073.m360(file2);
        }
        Iterator itM2529 = C0439.m2529(m3075(new String[]{C0759.m5913(m3072(), 99, 16, 2937), C0845.m6286(m3072(), EACTags.DISCRETIONARY_DATA_OBJECTS, 17, 1176), C0531.m2986(m3072(), CipherSuite.TLS_RSA_WITH_CAMELLIA_256_CBC_SHA, 27, 630), C0160.m776(m3072(), CipherSuite.TLS_DHE_RSA_WITH_AES_256_GCM_SHA384, 10, 1839)}));
        while (C0257.m1503(itM2529)) {
            String str = (String) C0127.m645(itM2529);
            m3076(this, new File(file, str), file2, str);
        }
    }

    private final void extractLibrary(File archive, File outDir, String libName) {
        File file = new File(outDir, libName);
        FileInputStream fileInputStream = new FileInputStream(archive);
        try {
            C0489.m2774(file, fileInputStream);
            C0085.m433(fileInputStream, null);
            C0622.m5107(file, true);
            C0297.m1776(file, true);
            C0335.m1968(file, true);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                C0085.m433(fileInputStream, th);
                throw th2;
            }
        }
    }

    private final String getDeviceABI() {
        String strM299 = C0061.m299(C0175.m841());
        return C0666.m5486(strM299, C0252.m1444(m3072(), CipherSuite.TLS_PSK_WITH_AES_256_GCM_SHA384, 6, 2279)) ? C0217.m1154(m3072(), CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA384, 3, 570) : strM299;
    }

    private final boolean isAppBundle() {
        String[] strArrM5525 = C0673.m5525(C0282.m1670(m3068(this)));
        return !(strArrM5525 == null || strArrM5525.length == 0);
    }

    /* JADX INFO: renamed from: ۟۟ۢۤۥ, reason: not valid java name and contains not printable characters */
    public static void m3067(Object obj, Object obj2, Object obj3) {
        if (C0110.m543() >= 0) {
            ((NativeInstaller) obj).extractFromAppBundle((String) obj2, (File) obj3);
        }
    }

    /* JADX INFO: renamed from: ۣۣ۟ۡۡ, reason: not valid java name and contains not printable characters */
    public static Context m3068(Object obj) {
        if (C0690.m5600() <= 0) {
            return ((NativeInstaller) obj).context;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۢ۟ۡ۟, reason: not valid java name and contains not printable characters */
    public static String m3069(Object obj) {
        if (C0088.m446() > 0) {
            return ((NativeInstaller) obj).getDeviceABI();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۤۡ۠۠, reason: not valid java name and contains not printable characters */
    public static boolean m3070(Object obj) {
        if (C0406.m2346() >= 0) {
            return ((NativeInstaller) obj).isAppBundle();
        }
        return false;
    }

    /* JADX INFO: renamed from: ۟ۥ۟ۤ, reason: not valid java name and contains not printable characters */
    public static void m3071(Object obj, Object obj2) {
        if (C0674.m5529() >= 0) {
            ((NativeInstaller) obj).extractLibArchive((String) obj2);
        }
    }

    /* JADX INFO: renamed from: ۣ۠ۥۧ, reason: not valid java name and contains not printable characters */
    public static short[] m3072() {
        if (C0613.m5070() <= 0) {
            return f534short;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡ۠ۡۦ, reason: not valid java name and contains not printable characters */
    public static boolean m3073(Object obj, Object obj2, boolean z, int i, Object obj3) {
        if (C0467.m2680() >= 0) {
            return StringsKt.contains$default((CharSequence) obj, (CharSequence) obj2, z, i, obj3);
        }
        return false;
    }

    /* JADX INFO: renamed from: ۣۥۦۣ, reason: not valid java name and contains not printable characters */
    public static void m3074(Object obj, Object obj2) {
        if (C0951.m6732() >= 0) {
            ((NativeInstaller) obj).extractLibraries((String) obj2);
        }
    }

    /* JADX INFO: renamed from: ۣۦۦۥ, reason: not valid java name and contains not printable characters */
    public static List m3075(Object obj) {
        if (C0796.m6074() > 0) {
            return CollectionsKt.listOf((Object[]) obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۦۣۤۥ, reason: contains not printable characters */
    public static void m3076(Object obj, Object obj2, Object obj3, Object obj4) {
        if (C0533.m2997() <= 0) {
            ((NativeInstaller) obj).extractLibrary((File) obj2, (File) obj3, (String) obj4);
        }
    }

    /* JADX INFO: renamed from: ۨۦۨۤ, reason: not valid java name and contains not printable characters */
    public static void m3077(Object obj, Object obj2, Object obj3) {
        if (C0735.m5803() <= 0) {
            ((NativeInstaller) obj).extractFromAPK((String) obj2, (File) obj3);
        }
    }

    public final void install() {
        String strM3069 = m3069(this);
        m3071(this, strM3069);
        m3074(this, strM3069);
    }
}

package dev.blaze.launcher;

import android.content.res.AssetManager;
import androidx.activity.ktx.C0007;
import androidx.appcompat.text.C0013;
import androidx.core.accessibilityservice.C0065;
import androidx.core.view.contentcapture.C0105;
import androidx.customview.C0116;
import androidx.savedstate.C0174;
import com.braze.C0301;
import com.braze.configuration.C0215;
import com.braze.support.delegates.C0244;
import com.google.android.datatransport.runtime.time.C0323;
import com.google.android.gms.common.C0346;
import com.google.android.material.canvas.C0368;
import com.google.android.material.drawable.C0391;
import com.google.android.material.shadow.C0408;
import com.google.firebase.heartbeatinfo.C0447;
import dalvik.system.DexFile;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import okhttp3.internal.cache2.C0635;
import org.apache.http.conn.scheme.C0677;
import org.apache.http.impl.pool.C0697;
import org.simpleframework.xml.convert.C0716;
import org.simpleframework.xml.core.C0717;
import org.spongycastle.asn1.eac.EACTags;
import org.spongycastle.crypto.engines.C0800;
import org.spongycastle.crypto.tls.CipherSuite;
import org.spongycastle.eac.operator.jcajce.C0827;
import org.spongycastle.jcajce.provider.keystore.C0853;
import org.spongycastle.jcajce.provider.keystore.bc.C0851;
import org.spongycastle.mozilla.C0881;
import org.spongycastle.openssl.C0887;
import org.spongycastle.pqc.asn1.C0901;
import org.spongycastle.pqc.crypto.mceliece.C0907;
import org.spongycastle.pqc.math.ntru.util.C0923;
import org.spongycastle.x509.util.C0934;
import org.spongycastle.x509.util.C0935;

/* JADX INFO: loaded from: classes3.dex */
public class Patcher {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f529short = {2704, 2719, 2709, 2691, 2718, 2712, 2709, 2783, 2706, 2718, 2719, 2693, 2708, 2719, 2693, 2783, 2691, 2708, 2690, 2783, 2736, 2690, 2690, 2708, 2693, 2748, 2704, 2719, 2704, 2710, 2708, 2691, 615, 610, 610, 583, 629, 629, 611, 626, 598, 615, 626, 622, 3190, 3193, 3180, 3185, 3182, 3197, 3156, 3185, 3194, 3178, 3193, 3178, 3169, 3144, 3193, 3180, 3184, 3165, 3188, 3197, 3189, 3197, 3190, 3180, 3179, 784, 799, 778, 791, 776, 795, 818, 791, 796, 780, 799, 780, 775, 826, 791, 780, 795, 797, 778, 785, 780, 791, 795, 781, 733, 727, 733, 730, 715, 707, 736, 719, 730, 711, 728, 715, 738, 711, 716, 732, 719, 732, 727, 746, 711, 732, 715, 717, 730, 705, 732, 711, 715, 733, 2939, 2922, 2943, 2915, 2887, 2914, 2936, 2943, 1935, 1930, 1927, 1949, 1922, 1920, 1989, 1944, 1938, 1944, 1951, 1934, 1926, 1989, 1961, 1930, 1944, 1934, 1967, 1934, 1939, 1960, 1927, 1930, 1944, 1944, 1959, 1924, 1930, 1935, 1934, 1945, 1551, 1546, 1543, 1565, 1538, 1536, 1605, 1560, 1554, 1560, 1567, 1550, 1542, 1605, 1583, 1550, 1555, 1595, 1546, 1567, 1539, 1575, 1538, 1560, 1567, 1615, 1582, 1543, 1550, 1542, 1550, 1541, 1567, 1388, 1385, 1380, 1406, 1377, 1379, 1318, 1403, 1393, 1403, 1404, 1389, 1381, 1318, 1356, 1389, 1392, 1368, 1385, 1404, 1376, 1348, 1377, 1403, 1404, 1324, 1350, 1385, 1404, 1377, 1406, 1389, 1348, 1377, 1386, 1402, 1385, 1402, 1393, 1357, 1380, 1389, 1381, 1389, 1382, 1404};

    public static AssetManager getPluginAssetsManager(File file, File file2) throws ClassNotFoundException {
        for (Method method : C0853.m6321(C0717.m5721(C0935.m6663(m3042(), 0, 32, 2801)))) {
            if (C0116.m572(C0827.m6209(method), C0301.m1793(m3042(), 32, 12, 518))) {
                try {
                    AssetManager assetManager = (AssetManager) m3041(AssetManager.class);
                    C0323.m1916(method, assetManager, new Object[]{C0851.m6314(file)});
                    C0323.m1916(method, assetManager, new Object[]{C0851.m6314(file2)});
                    return assetManager;
                } catch (Exception e) {
                    C0013.m63(e);
                }
            }
        }
        return null;
    }

    public static void patchNativeLibraryDir(ClassLoader classLoader, File file) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, InstantiationException, ClassNotFoundException, InvocationTargetException {
        List list;
        Object[] objArr;
        List list2;
        Object[] objArr2;
        PathClassLoader pathClassLoader = (PathClassLoader) classLoader;
        int iM6613 = C0923.m6613();
        String strM6657 = C0934.m6657(m3042(), 44, 25, 3096);
        String strM2565 = C0447.m2565(m3042(), 69, 24, 894);
        String strM1412 = C0244.m1412(m3042(), 93, 30, 686);
        String strM6447 = C0881.m6447(m3042(), EACTags.SECURITY_ENVIRONMENT_TEMPLATE, 8, 2827);
        String strM2263 = C0391.m2263(m3042(), 131, 32, 2027);
        if (iM6613 <= 25) {
            Field fieldM6538 = C0907.m6538(C0717.m5721(strM2263), strM6447);
            C0007.m32(fieldM6538, true);
            Object objM6089 = C0800.m6089(fieldM6538, pathClassLoader);
            if (objM6089 != null) {
                Class clsM5721 = C0717.m5721(C0716.m5718(m3042(), CipherSuite.TLS_DHE_DSS_WITH_AES_256_GCM_SHA384, 33, 1643));
                Constructor constructorM2264 = C0391.m2264(clsM5721, new Class[]{File.class, C0635.m5324(), File.class, DexFile.class});
                Field fieldM6539 = C0907.m6538(C0901.m6509(objM6089), strM1412);
                Field fieldM65310 = C0907.m6538(C0901.m6509(objM6089), strM2565);
                Field fieldM65311 = C0907.m6538(C0901.m6509(objM6089), strM6657);
                C0007.m32(fieldM6539, true);
                C0007.m32(fieldM65310, true);
                C0007.m32(fieldM65311, true);
                List list3 = (List) C0800.m6089(fieldM6539, objM6089);
                if (list3 == null || (list2 = (List) C0800.m6089(fieldM65310, objM6089)) == null || (objArr2 = (Object[]) C0800.m6089(fieldM65311, objM6089)) == null) {
                    return;
                }
                Object objM1145 = C0215.m1145(clsM5721, objArr2.length + 1);
                C0887.m6466(list3, file);
                C0887.m6466(list2, file);
                C0105.m518(fieldM6539, objM6089, list3);
                C0105.m518(fieldM65310, objM6089, list2);
                if (constructorM2264 != null) {
                    C0697.m5635(constructorM2264, true);
                    C0346.m2012(objM1145, 0, C0174.m835(constructorM2264, new Object[]{file, C0677.m5542(true), null, null}));
                    for (int i = 1; i < objArr2.length + 1; i++) {
                        C0346.m2012(objM1145, i, objArr2[i - 1]);
                    }
                    C0105.m518(fieldM65311, objM6089, objM1145);
                    return;
                }
                return;
            }
            return;
        }
        Field fieldM65312 = C0907.m6538(C0717.m5721(strM2263), strM6447);
        C0007.m32(fieldM65312, true);
        Object objM60810 = C0800.m6089(fieldM65312, pathClassLoader);
        if (objM60810 != null) {
            Class clsM5722 = C0717.m5721(C0065.m317(m3042(), CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256, 46, 1288));
            Constructor constructorM2265 = C0391.m2264(clsM5722, new Class[]{File.class});
            Field fieldM65313 = C0907.m6538(C0901.m6509(objM60810), strM1412);
            Field fieldM65314 = C0907.m6538(C0901.m6509(objM60810), strM2565);
            Field fieldM65315 = C0907.m6538(C0901.m6509(objM60810), strM6657);
            C0007.m32(fieldM65313, true);
            C0007.m32(fieldM65314, true);
            C0007.m32(fieldM65315, true);
            List list4 = (List) C0800.m6089(fieldM65313, objM60810);
            if (list4 == null || (list = (List) C0800.m6089(fieldM65314, objM60810)) == null || (objArr = (Object[]) C0800.m6089(fieldM65315, objM60810)) == null) {
                return;
            }
            Object objM1146 = C0215.m1145(clsM5722, objArr.length + 1);
            C0887.m6466(list4, file);
            C0887.m6466(list, file);
            C0105.m518(fieldM65313, objM60810, list4);
            C0105.m518(fieldM65314, objM60810, list);
            if (constructorM2265 != null) {
                C0697.m5635(constructorM2265, true);
                C0346.m2012(objM1146, 0, C0174.m835(constructorM2265, new Object[]{file}));
                for (int i2 = 1; i2 < objArr.length + 1; i2++) {
                    C0346.m2012(objM1146, i2, objArr[i2 - 1]);
                }
                C0105.m518(fieldM65315, objM60810, objM1146);
            }
        }
    }

    /* JADX INFO: renamed from: ۟ۢ۠ۧۢ, reason: not valid java name and contains not printable characters */
    public static Object m3041(Object obj) {
        if (C0368.m2115() < 0) {
            return ((Class) obj).newInstance();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠ۨ۟ۧ, reason: not valid java name and contains not printable characters */
    public static short[] m3042() {
        if (C0408.m2354() >= 0) {
            return f529short;
        }
        return null;
    }
}

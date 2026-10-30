package dev.blaze.launcher.utils;

import androidx.activity.ktx.C0007;
import androidx.core.view.animation.C0103;
import androidx.core.view.contentcapture.C0105;
import androidx.savedstate.C0174;
import com.braze.configuration.C0215;
import com.braze.triggers.conditions.C0250;
import com.google.android.gms.common.C0346;
import com.google.android.material.drawable.C0391;
import com.google.firebase.messaging.ktx.C0458;
import dalvik.system.DexFile;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import okhttp3.C0652;
import okhttp3.internal.cache2.C0635;
import org.apache.http.HttpStatus;
import org.apache.http.conn.scheme.C0677;
import org.apache.http.impl.pool.C0697;
import org.simpleframework.xml.core.C0717;
import org.spongycastle.cert.crmf.bc.C0776;
import org.spongycastle.crypto.engines.C0800;
import org.spongycastle.crypto.tls.CipherSuite;
import org.spongycastle.jcajce.provider.keystore.C0854;
import org.spongycastle.openssl.C0887;
import org.spongycastle.pqc.asn1.C0901;
import org.spongycastle.pqc.crypto.mceliece.C0907;
import org.spongycastle.pqc.math.ntru.euclid.C0921;
import org.spongycastle.pqc.math.ntru.util.C0923;
import org.xmlpull.v1.builder.adapter.C0942;

/* JADX INFO: loaded from: classes3.dex */
public class Patcher {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f555short = {1592, 1591, 1570, 1599, 1568, 1587, 1562, 1599, 1588, 1572, 1591, 1572, 1583, 1542, 1591, 1570, 1598, 1555, 1594, 1587, 1595, 1587, 1592, 1570, 1573, 1612, 1603, 1622, 1611, 1620, 1607, 1646, 1611, 1600, 1616, 1603, 1616, 1627, 1638, 1611, 1616, 1607, 1601, 1622, 1613, 1616, 1611, 1607, 1617, 2129, 2139, 2129, 2134, 2119, 2127, 2156, 2115, 2134, 2123, 2132, 2119, 2158, 2123, 2112, 2128, 2115, 2128, 2139, 2150, 2123, 2128, 2119, 2113, 2134, 2125, 2128, 2123, 2119, 2129, 3136, 3153, 3140, 3160, 3196, 3161, 3139, 3140, 2972, 2969, 2964, 2958, 2961, 2963, 3030, 2955, 2945, 2955, 2956, 2973, 2965, 3030, 3002, 2969, 2955, 2973, 3004, 2973, 2944, 3003, 2964, 2969, 2955, 2955, 2996, 2967, 2969, 2972, 2973, 2954, 1317, 1312, 1325, 1335, 1320, 1322, 1391, 1330, 1336, 1330, 1333, 1316, 1324, 1391, 1285, 1316, 1337, 1297, 1312, 1333, 1321, 1293, 1320, 1330, 1333, 1381, 1284, 1325, 1316, 1324, 1316, 1327, 1333, 506, 511, 498, 488, 503, 501, 432, 493, 487, 493, 490, 507, 499, 432, 474, 507, 486, 462, 511, 490, 502, 466, 503, 493, 490, 442, 464, 511, 490, 503, 488, 507, 466, 503, 508, 492, 511, 492, 487, 475, 498, 507, 499, 507, 496, 490};

    public static void patchNativeLibraryDir(ClassLoader classLoader, File file) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, InstantiationException, ClassNotFoundException, InvocationTargetException {
        List list;
        Object[] objArr;
        List list2;
        Object[] objArr2;
        PathClassLoader pathClassLoader = (PathClassLoader) classLoader;
        int iM6613 = C0923.m6613();
        String strM6330 = C0854.m6330(m3224(), 0, 25, 1622);
        String strM5401 = C0652.m5401(m3224(), 25, 24, 1570);
        String strM1437 = C0250.m1437(m3224(), 49, 30, 2082);
        String strM511 = C0103.m511(m3224(), 79, 8, 3120);
        String strM6605 = C0921.m6605(m3224(), 87, 32, 3064);
        if (iM6613 <= 25) {
            Field fieldM6538 = C0907.m6538(C0717.m5721(strM6605), strM511);
            C0007.m32(fieldM6538, true);
            Object objM6089 = C0800.m6089(fieldM6538, pathClassLoader);
            if (objM6089 != null) {
                Class clsM5721 = C0717.m5721(C0458.m2637(m3224(), 119, 33, 1345));
                Constructor constructorM2264 = C0391.m2264(clsM5721, new Class[]{File.class, C0635.m5324(), File.class, DexFile.class});
                Field fieldM6539 = C0907.m6538(C0901.m6509(objM6089), strM1437);
                Field fieldM65310 = C0907.m6538(C0901.m6509(objM6089), strM5401);
                Field fieldM65311 = C0907.m6538(C0901.m6509(objM6089), strM6330);
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
        Field fieldM65312 = C0907.m6538(C0717.m5721(strM6605), strM511);
        C0007.m32(fieldM65312, true);
        Object objM60810 = C0800.m6089(fieldM65312, pathClassLoader);
        if (objM60810 != null) {
            Class clsM5722 = C0717.m5721(C0776.m5987(m3224(), CipherSuite.TLS_DH_RSA_WITH_SEED_CBC_SHA, 46, HttpStatus.SC_REQUEST_URI_TOO_LONG));
            Constructor constructorM2265 = C0391.m2264(clsM5722, new Class[]{File.class});
            Field fieldM65313 = C0907.m6538(C0901.m6509(objM60810), strM1437);
            Field fieldM65314 = C0907.m6538(C0901.m6509(objM60810), strM5401);
            Field fieldM65315 = C0907.m6538(C0901.m6509(objM60810), strM6330);
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

    /* JADX INFO: renamed from: ۣۨ۟ۡ, reason: not valid java name and contains not printable characters */
    public static short[] m3224() {
        if (C0942.m6691() > 0) {
            return f555short;
        }
        return null;
    }
}

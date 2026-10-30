package dev.blaze.launcher.task;

import android.content.Context;
import android.support.v4.app.C0002;
import androidx.appcompat.resources.C0012;
import androidx.appcompat.text.C0013;
import androidx.appcompat.text.C0014;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.parser.C0046;
import androidx.constraintlayout.core.widgets.analyzer.C0053;
import androidx.constraintlayout.utils.widget.C0060;
import androidx.core.hardware.fingerprint.C0073;
import androidx.core.os.C0085;
import androidx.core.telephony.mbms.C0092;
import androidx.core.text.method.C0094;
import androidx.core.view.contentcapture.C0105;
import androidx.customview.C0116;
import androidx.fragment.ktx.C0127;
import androidx.localbroadcastmanager.content.C0155;
import androidx.navigation.ui.C0163;
import androidx.savedstate.ktx.C0172;
import androidx.startup.C0177;
import com.braze.enums.C0220;
import com.braze.events.internal.C0221;
import com.braze.support.delegates.C0244;
import com.braze.ui.adapters.C0257;
import com.braze.ui.banners.listeners.C0260;
import com.braze.ui.contentcards.view.C0270;
import com.braze.ui.inappmessage.factories.C0281;
import com.braze.ui.inappmessage.views.C0289;
import com.braze.ui.widget.C0294;
import com.google.android.datatransport.runtime.logging.C0313;
import com.google.android.datatransport.runtime.scheduling.C0319;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C0314;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C0315;
import com.google.android.gms.actions.C0326;
import com.google.android.material.dialog.C0389;
import com.google.android.material.search.C0406;
import com.google.android.material.search.C0407;
import com.google.firebase.analytics.connector.C0432;
import com.google.firebase.dynamicloading.C0435;
import com.google.firebase.emulators.C0439;
import com.google.firebase.installations.time.C0455;
import com.google.firebase.util.C0468;
import com.microsoft.xal.browser.C0481;
import com.microsoft.xal.logging.C0482;
import com.microsoft.xbox.idp.util.C0491;
import com.microsoft.xbox.xle.ui.C0520;
import com.microsoft.xboxlive.C0524;
import com.mojang.minecraftpe.store.amazonappstore.C0535;
import dev.blaze.launcher.C0548;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import javax.xml.stream.util.C0554;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.unsigned.C0560;
import kotlin.contracts.C0565;
import kotlin.system.C0606;
import okhttp3.internal.tls.C0650;
import org.apache.commons.logging.impl.C0663;
import org.apache.http.HttpStatus;
import org.apache.http.client.params.C0668;
import org.apache.http.config.C0673;
import org.spongycastle.asn1.bc.C0731;
import org.spongycastle.asn1.esf.C0743;
import org.spongycastle.asn1.pkcs.C0762;
import org.spongycastle.asn1.x500.style.C0765;
import org.spongycastle.crypto.macs.C0807;
import org.spongycastle.crypto.tls.CipherSuite;
import org.spongycastle.jcajce.provider.asymmetric.dh.C0834;
import org.spongycastle.jcajce.provider.asymmetric.ies.C0843;
import org.spongycastle.math.ec.endo.C0869;
import org.spongycastle.mozilla.jcajce.C0880;
import org.spongycastle.pqc.jcajce.provider.util.C0917;
import org.spongycastle.util.io.pem.C0930;
import org.spongycastle.x509.util.C0935;
import org.xmlpull.v1.builder.impl.C0945;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\b\u001a\u00020\tH\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\b\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\rH\u0002J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Ldev/blaze/launcher/task/CustomServers;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "serverList", "", "", "getServerFile", "Ljava/io/File;", "install", "", "isAddedServers", "", "setAddedServers", "mode", "writeServersToFile", "file", "app_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CustomServers {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f533short = {2278, 2282, 2283, 2289, 2272, 2301, 2289, 1260, 1137, 1210, 1137, 1207, 1269, 1255, 1270, 247, 227, 150, 228, 227, 150, 1270, 1278, 1156, 1155, 1279, 1260, 1189, 1250, 1248, 1272, 1211, 1215, 1208, 1203, 1189, 1188, 1184, 1272, 1188, 1187, 1260, 1255, 1263, 1255, 1253, 1252, 1260, 1255, 1251, 1248, 1262, 1255, 1252, 1254, 1254, 1248, 1253, 1007, 882, 953, 882, 948, 1014, 999, 1013, 2036, 2016, 1941, 2023, 2016, 1941, 1013, 1021, 903, 896, 1020, 1007, 934, 993, 994, 1019, 952, 956, 955, 944, 934, 935, 931, 1019, 935, 928, 1007, 996, 1004, 996, 998, 999, 1007, 996, 992, 995, 1005, 996, 999, 997, 997, 993, 993, 762, 615, 684, 615, 673, 739, 756, 736, 1761, 1781, 1664, 1778, 1781, 1664, 736, 744, 658, 661, 745, 762, 691, 756, 760, 750, 685, 681, 686, 677, 691, 690, 694, 750, 690, 693, 762, 753, 761, 753, 755, 754, 762, 753, 757, 758, 760, 753, 754, 752, 752, 755, 754, 515, 670, 597, 670, 600, 538, 524, 537, 634, 587, 600, 607, 589, 604, 587, 586, 596, 602, 537, 515, 585, 597, 600, 576, 535, 602, 587, 600, 607, 589, 604, 587, 586, 596, 602, 535, 599, 604, 589, 515, 520, 512, 520, 522, 523, 3155, 3278, 3077, 3278, 3080, 3146, 3160, 3145, 3114, 3078, 3076, 3097, 3077, 3084, 3089, 3145, 3118, 3080, 3076, 3072, 3079, 3086, 3145, 3155, 3076, 3097, 3098, 3143, 3076, 3082, 3140, 3082, 3078, 3076, 3097, 3077, 3084, 3089, 3143, 3082, 3078, 3076, 3155, 3160, 3152, 3160, 3162, 3163, 330, 471, 284, 471, 273, 339, 322, 336, 295, 305, 291, 308, 307, 290, 305, 310, 292, 377, 377, 336, 330, 295, 273, 259, 276, 307, 258, 273, 278, 260, 350, 273, 260, 277, 258, 286, 287, 259, 350, 285, 277, 330, 326, 321, 322, 329, 321, 702, 547, 744, 547, 741, 679, 695, 676, 713, 711, 716, 753, 742, 676, 702, 756, 737, 682, 745, 743, 748, 753, 742, 682, 743, 747, 745, 702, 693, 701, 693, 695, 694, 1175, 1034, 1217, 1034, 1228, 1166, 1165, 1260, 1222, 1240, 1216, 1228, 1248, 1262, 1165, 1175, 1231, 1224, 1225, 1247, 1218, 1230, 1222, 1155, 1228, 1222, 1240, 1216, 1228, 1216, 1230, 1155, 1219, 1224, 1241, 1175, 1180, 1172, 1180, 1182, 1183, 2194, 2063, 2244, 2063, 2249, 2187, 2184, 2278, 2253, 2268, 2240, 2253, 2266, 2287, 2249, 2245, 2253, 2267, 2184, 2278, 2253, 2268, 2271, 2247, 2266, 2243, 2184, 2194, 2264, 2244, 2249, 2257, 2182, 2246, 2253, 2268, 2240, 2253, 2266, 2255, 2249, 2245, 2253, 2267, 2182, 2247, 2266, 2255, 2194, 2201, 2193, 2201, 2203, 2202, 1587, 1710, 1637, 1710, 1640, 1578, 1577, 1615, 1640, 1645, 1644, 1610, 1637, 1638, 1660, 1645, 1577, 1587, 1636, 1657, 1575, 1647, 1640, 1645, 1644, 1642, 1637, 1638, 1660, 1645, 1575, 1642, 1638, 1636, 1587, 1592, 1584, 1592, 1594, 1595, 1216, 1117, 1174, 1117, 1179, 1241, 1242, 1202, 1179, 1164, 1173, 1177, 1242, 1213, 1179, 1175, 1183, 1161, 1242, 1239, 1242, 1198, 1170, 1183, 1242, 1207, 1171, 1172, 1171, 1172, 1181, 1242, 1214, 1183, 1179, 1182, 1242, 1216, 1162, 1173, 1177, 1169, 1183, 1166, 1236, 1170, 1179, 1164, 1173, 1177, 1236, 1181, 1179, 1175, 1183, 1161, 1216, 1227, 1219, 1227, 1225, 1224, 1243, 1094, 1165, 1094, 1152, 1218, 1217, 1193, 1176, 1169, 1156, 1171, 1197, 1152, 1167, 1157, 1170, 1217, 1243, 1169, 1165, 1152, 1176, 1231, 1161, 1176, 1169, 1156, 1171, 1165, 1152, 1167, 1157, 1170, 1164, 1154, 1231, 1167, 1156, 1173, 1243, 1232, 1240, 1232, 1234, 1235, 821, 936, 867, 936, 878, 812, 815, 857, 864, 893, 891, 874, 887, 815, 833, 874, 891, 888, 864, 893, 868, 815, 821, 877, 874, 875, 893, 864, 876, 868, 801, 889, 864, 893, 891, 874, 887, 865, 874, 891, 888, 864, 893, 868, 801, 865, 874, 891, 821, 830, 822, 830, 828, 829, 1495, 1354, 1409, 1354, 1420, 1486, 1485, 1469, 1409, 1432, 1433, 1410, 1411, 1412, 1432, 1408, 1485, 1495, 1408, 1422, 1437, 1416, 1475, 1437, 1409, 1432, 1433, 1410, 1411, 1412, 1432, 1408, 1475, 1423, 1416, 1438, 1433, 1495, 1500, 1492, 1500, 1502, 1503, 3025, 2892, 2951, 2892, 2954, 3016, 3019, 2983, 2958, 2950, 2948, 2949, 2984, 2951, 2948, 2974, 2959, 3019, 3025, 2950, 2971, 2968, 3013, 2951, 2958, 2950, 2948, 2949, 2952, 2951, 2948, 2974, 2959, 3013, 2949, 2958, 2975, 3025, 3034, 3026, 3034, 3032, 3033, 1477, 1368, 1427, 1368, 1438, 1500, 1503, 1461, 1438, 1436, 1428, 1423, 1424, 1419, 1458, 1468, 1503, 1477, 1437, 1434, 1435, 1421, 1424, 1436, 1428, 1489, 1429, 1438, 1436, 1428, 1423, 1424, 1419, 1426, 1436, 1489, 1436, 1424, 1426, 1477, 1486, 1478, 1486, 1484, 1485, 1046, 1163, 1088, 1163, 1101, 1039, 1036, 1150, 1097, 1096, 1097, 1036, 1150, 1097, 1114, 1091, 1036, 1046, 1094, 1091, 1099, 1101, 1118, 1026, 1118, 1097, 1096, 1097, 1118, 1097, 1114, 1091, 1026, 1103, 1091, 1089, 1046, 1053, 1045, 1053, 1055, 1054, 1847, 1962, 1889, 1962, 1900, 1838, 1837, 1881, 1914, 1896, 1919, 1892, 1890, 1891, 1837, 1847, 1903, 1896, 1897, 1919, 1890, 1902, 1894, 1827, 1913, 1914, 1896, 1919, 1892, 1890, 1891, 1827, 1891, 1896, 1913, 1847, 1852, 1844, 1852, 1854, 1855, 3256, 3109, 3310, 3109, 3299, 3233, 3234, 3288, 3303, 3315, 3299, 3234, 3282, 3312, 3299, 3297, 3318, 3307, 3297, 3303, 3234, 3256, 3320, 3303, 3315, 3299, 3244, 3308, 3303, 3318, 3256, 3251, 3259, 3251, 3249, 3248, 986, 839, 908, 839, 897, 963, 960, 947, 897, 908, 911, 911, 910, 942, 901, 916, 919, 911, 914, 907, 974, 899, 911, 909, 960, 948, 796, 914, 907, 960, 936, 917, 898, 960, 947, 917, 910, 917, 899, 917, 961, 960, 986, 912, 908, 897, 921, 974, 915, 897, 908, 911, 911, 910, 910, 901, 916, 919, 911, 914, 907, 974, 899, 911, 909, 986, 977, 985, 977, 979, 978, 2323, 2446, 2373, 2446, 2376, 2314, 2313, 2406, 2399, 2380, 2395, 2384, 2313, 2308, 2313, 2426, 2370, 2384, 2379, 2373, 2374, 2378, 2370, 2313, 2323, 2393, 2373, 2376, 2384, 2311, 2374, 2399, 2380, 2395, 2384, 2372, 2378, 2311, 2383, 2395, 2323, 2328, 2320, 2328, 2330, 2331, 3116, 3249, 3194, 
    3249, 3191, 3125, 3126, 3155, 3195, 3174, 3187, 3172, 3199, 3191, 3194, 3173, 3142, 3155, 3126, 3129, 3129, 3126, 3155, 3141, 3142, 3155, 3126, 3116, 3174, 3194, 3191, 3183, 3128, 3187, 3195, 3174, 3187, 3172, 3199, 3191, 3194, 3173, 3128, 3192, 3187, 3170, 3116, 3111, 3119, 3111, 3109, 3108, 2784, 2685, 2742, 2685, 2747, 2809, 2810, 2711, 2739, 2740, 2751, 2701, 2747, 2732, 2751, 2810, 2784, 2744, 2728, 2804, 2743, 2739, 2740, 2751, 2733, 2747, 2732, 2751, 2804, 2740, 2751, 2734, 2784, 2795, 2787, 2795, 2793, 2792, 3153, 3276, 3079, 3276, 3082, 3144, 3147, 3164, 3135, 3076, 3084, 3072, 3128, 3110, 3131, 3147, 3129, 3086, 3101, 3076, 3079, 3102, 3103, 3074, 3076, 3077, 3147, 3153, 3099, 3079, 3082, 3090, 3141, 3164, 3103, 3076, 3084, 3072, 3078, 3080, 3141, 3074, 3087, 3153, 3162, 3154, 3162, 3160, 3161, 2127, 2258, 2073, 2258, 2068, 2134, 2133, 2110, 2076, 2055, 2076, 2063, 2068, 2107, 2064, 2049, 2050, 2074, 2055, 2078, 2133, 2127, 2053, 2073, 2068, 2060, 2139, 2078, 2076, 2055, 2076, 2063, 2068, 2075, 2064, 2049, 2050, 2074, 2055, 2078, 2139, 2061, 2060, 2063, 2127, 2116, 2124, 2116, 2118, 2119, 1025, 1180, 1111, 1180, 1114, 1048, 1051, 1135, 1223, 1097, 1104, 1051, 1142, 1102, 1089, 1144, 1097, 1114, 1117, 1103, 1051, 1142, 1144, 1131, 1150, 1045, 1142, 1134, 1121, 1144, 1129, 1146, 1149, 1135, 1045, 1144, 1140, 1142, 1074, 1051, 1025, 1110, 1112, 1099, 1118, 1045, 1110, 1102, 1089, 1112, 1097, 1114, 1117, 1103, 1045, 1112, 1108, 1110, 1025, 1034, 1026, 1034, 1032, 1033, 2017, 1916, 1975, 1916, 1978, 2040, 2043, 1929, 1966, 1975, 1982, 1961, 1944, 1961, 1978, 1981, 1967, 2002, 2043, 2017, 1963, 1975, 1978, 1954, 2037, 1961, 1966, 1975, 1982, 1961, 1976, 1961, 1978, 1981, 1967, 2037, 1976, 1972, 1974, 2017, 2025, 2030, 2030, 2029, 2030, 459, 342, 413, 342, 400, 466, 465, 439, 400, 395, 414, 387, 404, 434, 387, 400, 407, 389, 504, 465, 459, 385, 413, 400, 392, 479, 407, 400, 395, 414, 387, 404, 402, 387, 400, 407, 389, 479, 393, 392, 395, 459, 448, 456, 448, 450, 451, 1505, 1404, 1463, 1404, 1466, 1528, 1531, 1416, 1454, 1461, 1449, 1458, 1448, 1470, 1531, 1416, 1430, 1419, 1490, 1531, 1505, 1451, 1463, 1466, 1442, 1525, 1448, 1454, 1461, 1449, 1458, 1448, 1470, 1462, 1464, 1525, 1443, 1442, 1441, 1505, 1514, 1506, 1514, 1512, 1515, 3102, 3158, 3152, 3164, 3156, 3138, 3102, 3154, 3166, 3164, 3103, 3164, 3166, 3163, 3152, 3167, 3158, 3102, 3164, 3160, 3167, 3156, 3154, 3139, 3152, 3159, 3141, 3137, 3156, 2693, 2712, 2708, 2693, 2706, 2702, 2689, 2700, 2751, 2707, 2693, 2706, 2710, 2693, 2706, 2707, 2766, 2708, 2712, 2708, 1808, 1813, 1813, 1812, 1813, 1838, 1810, 1796, 1794, 1797, 1822, 1820, 1838, 1794, 1812, 1795, 1799, 1812, 1795, 1794, 959, 954, 954, 955, 954, 897, 957, 939, 941, 938, 945, 947, 897, 941, 955, 940, 936, 955, 940, 941, 3199, 2524, 2522, 2512, 2541, 2550, 2544, 2533, 2529, 2556, 2554, 2555, 2485, 2530, 2557, 2556, 2553, 2544, 2485, 2550, 2535, 2544, 2548, 2529, 2556, 2555, 2546, 2485, 2547, 2556, 2553, 2544, 2479, 2485, 1497, 1527, 1530, 1505, 1534, 1495, 1530, 1518, 1525, 1528, 1523, 1534, 1513};
    private final Context context;
    private final List<String> serverList;

    public CustomServers(Context context) {
        C0432.m2481(context, C0807.m6125(m3062(), 0, 7, 2181));
        this.context = context;
        this.serverList = m3059(new String[]{C0013.m62(m3062(), 7, 51, 1238), C0565.m4525(m3062(), 58, 51, 981), C0244.m1412(m3062(), 109, 51, TypedValues.TransitionType.TYPE_AUTO_TRANSITION), C0315.m1871(m3062(), CipherSuite.TLS_DH_RSA_WITH_AES_128_GCM_SHA256, 45, 569), C0482.m2744(m3062(), HttpStatus.SC_RESET_CONTENT, 48, 3177), C0116.m571(m3062(), 253, 47, 368), C0319.m1897(m3062(), 300, 33, 644), C0524.m2947(m3062(), 333, 41, 1197), C0155.m750(m3062(), 374, 54, 2216), C0432.m2482(m3062(), 428, 40, 1545), C0105.m523(m3062(), 468, 62, 1274), C0326.m1927(m3062(), 530, 46, 1249), C0548.m3237(m3062(), 576, 54, 783), C0762.m5928(m3062(), 630, 43, 1517), C0012.m58(m3062(), 673, 43, 3051), C0481.m2741(m3062(), 716, 45, 1535), C0435.m2511(m3062(), 761, 42, 1068), C0843.m6279(m3062(), 803, 41, 1805), C0439.m2527(m3062(), 844, 36, 3202), C0455.m2604(m3062(), 880, 71, 992), C0560.m4476(m3062(), 951, 46, 2345), C0880.m6444(m3062(), 997, 52, 3094), C0468.m2684(m3062(), 1049, 38, 2778), C0046.m236(m3062(), 1087, 49, 3179), C0930.m6643(m3062(), 1136, 50, 2165), C0260.m1525(m3062(), 1186, 64, 1083), C0407.m2349(m3062(), 1250, 45, 2011), C0053.m269(m3062(), 1295, 47, 497), C0163.m795(m3062(), 1342, 45, 1499)});
    }

    private final File getServerFile() {
        File file = new File(C0554.m3261(C0281.m1661(C0270.m1575(new StringBuilder(), C0869.m6396(C0014.m68(m3063(this)))), C0843.m6279(m3062(), 1387, 29, 3121))));
        if (!C0221.m1172(file)) {
            C0073.m360(file);
        }
        return new File(file, C0406.m2344(m3062(), 1416, 20, 2784));
    }

    private final boolean isAddedServers() {
        return C0389.m2255(C0663.m5473(m3063(this)), C0491.m2783(m3062(), 1436, 20, 1905), true);
    }

    private final void setAddedServers(boolean mode) {
        C0535.m3005(C0668.m5497(C0743.m5843(C0663.m5473(m3063(this))), C0094.m472(m3062(), 1456, 20, 990), mode));
    }

    private final void writeServersToFile(File file) {
        Writer outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), C0834.m6241());
        BufferedWriter bufferedWriter = outputStreamWriter instanceof BufferedWriter ? (BufferedWriter) outputStreamWriter : new BufferedWriter(outputStreamWriter, 8192);
        try {
            BufferedWriter bufferedWriter2 = bufferedWriter;
            Iterator itM2529 = C0439.m2529(m3060(this));
            int i = 0;
            while (C0257.m1503(itM2529)) {
                Object objM645 = C0127.m645(itM2529);
                int i2 = i + 1;
                if (i < 0) {
                    m3065();
                }
                C0220.m1167(bufferedWriter2, C0554.m3261(C0281.m1661(C0281.m1661(C0762.m5927(new StringBuilder(), i2), (String) objM645), C0945.m6704(m3062(), 1476, 1, 3189))));
                i = i2;
            }
            C0765.m5937();
            C0085.m433(bufferedWriter, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                C0085.m433(bufferedWriter, th);
                throw th2;
            }
        }
    }

    /* JADX INFO: renamed from: ۟ۡۢ۠, reason: not valid java name and contains not printable characters */
    public static boolean m3058(Object obj) {
        if (C0294.m1764() < 0) {
            return ((CustomServers) obj).isAddedServers();
        }
        return false;
    }

    /* JADX INFO: renamed from: ۣ۟ۥ۟۠, reason: not valid java name and contains not printable characters */
    public static List m3059(Object obj) {
        if (C0060.m295() <= 0) {
            return CollectionsKt.listOf((Object[]) obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۧ۠ۢۦ, reason: not valid java name and contains not printable characters */
    public static List m3060(Object obj) {
        if (C0606.m4800() >= 0) {
            return ((CustomServers) obj).serverList;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۧۤۥۥ, reason: not valid java name and contains not printable characters */
    public static void m3061(Object obj, Object obj2) {
        if (C0289.m1732() >= 0) {
            ((CustomServers) obj).writeServersToFile((File) obj2);
        }
    }

    /* JADX INFO: renamed from: ۡۨۦ, reason: not valid java name and contains not printable characters */
    public static short[] m3062() {
        if (C0314.m1864() < 0) {
            return f533short;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣۨۨۢ, reason: not valid java name and contains not printable characters */
    public static Context m3063(Object obj) {
        if (C0313.m1847() > 0) {
            return ((CustomServers) obj).context;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣۤ۟۟, reason: not valid java name and contains not printable characters */
    public static void m3064(Object obj, boolean z) {
        if (C0650.m5389() >= 0) {
            ((CustomServers) obj).setAddedServers(z);
        }
    }

    /* JADX INFO: renamed from: ۤ۠۠ۢ, reason: not valid java name and contains not printable characters */
    public static void m3065() {
        if (C0520.m2929() > 0) {
            CollectionsKt.throwIndexOverflow();
        }
    }

    /* JADX INFO: renamed from: ۧ۠۠۟, reason: not valid java name and contains not printable characters */
    public static File m3066(Object obj) {
        if (C0177.m848() < 0) {
            return ((CustomServers) obj).getServerFile();
        }
        return null;
    }

    public final void install() {
        Object objM823;
        if (m3058(this)) {
            try {
                C0673.m5524();
                CustomServers customServers = this;
                File fileM3066 = m3066(this);
                if (!C0221.m1172(fileM3066)) {
                    C0935.m6664(fileM3066);
                    m3061(this, fileM3066);
                }
                m3064(this, false);
                objM823 = C0172.m823(C0765.m5937());
            } catch (Throwable th) {
                C0673.m5524();
                objM823 = C0172.m823(C0092.m460(th));
            }
            Throwable thM11 = C0002.m11(objM823);
            if (thM11 != null) {
                C0554.m3261(C0270.m1575(new StringBuilder(C0731.m5786(m3062(), 1477, 33, 2453)), thM11));
                C0917.m6587(m3062(), 1510, 13, 1435);
            }
        }
    }
}

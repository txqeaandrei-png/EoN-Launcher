package dev.blaze.launcher.utils;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.widgets.analyzer.C0053;
import androidx.core.net.C0083;
import androidx.core.view.contentcapture.C0105;
import androidx.drawerlayout.C0119;
import androidx.navigation.common.C0160;
import androidx.navigation.ui.C0162;
import androidx.webkit.internal.C0195;
import androidx.window.embedding.C0198;
import com.braze.communication.dust.C0210;
import com.braze.models.outgoing.event.C0234;
import com.braze.ui.contentcards.managers.C0268;
import com.braze.ui.feed.view.C0275;
import com.google.android.gms.tasks.C0359;
import com.google.android.material.progressindicator.C0404;
import com.google.firebase.analytics.connector.C0432;
import com.google.firebase.heartbeatinfo.C0446;
import com.google.firebase.messaging.ktx.C0458;
import com.microsoft.xbox.service.model.privacy.C0492;
import com.microsoft.xbox.xle.model.C0518;
import dev.blaze.launcher.C0548;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.List;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.JvmStatic;
import kotlinx.coroutines.channels.C0614;
import okhttp3.internal.io.C0644;
import org.apache.http.HttpStatus;
import org.apache.http.client.config.C0666;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.util.C0709;
import org.chromium.support_lib_boundary.util.C0710;
import org.spongycastle.cert.path.validations.C0783;
import org.spongycastle.jcajce.provider.asymmetric.dh.C0834;
import org.spongycastle.math.raw.C0876;
import org.spongycastle.pqc.crypto.ntru.C0909;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0012\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0007J\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\t2\u0006\u0010\n\u001a\u00020\u0006J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0018\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0010H\u0007J\u0018\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0004H\u0007J\u0018\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0010H\u0007J\u0018\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0007¨\u0006\u0011"}, d2 = {"Ldev/blaze/launcher/utils/FileHelper;", "", "()V", "readFile", "", "file", "Ljava/io/File;", ClientCookie.PATH_ATTR, "readFileAsLines", "", "fileName", "writeToFile", "", "content", "Ljava/io/InputStream;", "", "", "app_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FileHelper {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f553short = {617, 614, 611, 618, 565, 564, 550, 575, 600, 3142, 3159, 3138, 3166, 500, 501, 487, 510, 409, 2461, 2450, 2455, 2462, 930, 942, 943, 949, 932, 943, 949, 868, 875, 878, 871, 1253, 1257, 1256, 1266, 1251, 1256, 1266, 2779, 2778, 2760, 2769, 2742, 2297, 2299, 2282, 2268, 2279, 2282, 2299, 2285, 2230, 2224, 2224, 2224, 2231, 284, 275, 278, 287, 2365, 2353, 2352, 2346, 2363, 2352, 2346, 2718, 2703, 2714, 2694, 800, 812, 813, 823, 806, 813, 823, 270, 271, 285, 260, 355, 2099, 2097, 2080, 2070, 2093, 2080, 2097, 2087, 2172, 2170, 2170, 2170, 2173, 2233, 2216, 2237, 2209, 1380, 1384, 1385, 1395, 1378, 1385, 1395, 1153, 1166, 1163, 1154, 1193, 1158, 1162, 1154};
    public static final FileHelper INSTANCE = new FileHelper();

    private FileHelper() {
    }

    @JvmStatic
    public static final String readFile(File file) {
        C0432.m2481(file, C0275.m1602(m3221(), 0, 4, 527));
        byte[] bArrM519 = C0105.m519(new FileInputStream(file));
        Charset charsetM790 = C0162.m790();
        C0198.m955(charsetM790, C0909.m6550(m3221(), 4, 5, TypedValues.MotionType.TYPE_DRAW_PATH));
        return new String(bArrM519, charsetM790);
    }

    @JvmStatic
    public static final String readFile(String path) {
        C0432.m2481(path, C0404.m2321(m3221(), 9, 4, 3126));
        byte[] bArrM519 = C0105.m519(new FileInputStream(new File(path)));
        Charset charsetM790 = C0162.m790();
        C0198.m955(charsetM790, C0666.m5489(m3221(), 13, 5, HttpStatus.SC_EXPECTATION_FAILED));
        return new String(bArrM519, charsetM790);
    }

    @JvmStatic
    public static final long writeToFile(File file, InputStream content) {
        C0432.m2481(file, C0053.m269(m3221(), 18, 4, 2555));
        C0432.m2481(content, C0644.m5362(m3221(), 22, 7, 961));
        return C0876.m6426(content, new FileOutputStream(file), 4096);
    }

    @JvmStatic
    public static final void writeToFile(File file, String content) {
        C0432.m2481(file, C0709.m5687(m3221(), 29, 4, 770));
        C0432.m2481(content, C0210.m1110(m3221(), 33, 7, 1158));
        Charset charsetM790 = C0162.m790();
        C0198.m955(charsetM790, C0710.m5694(m3221(), 40, 5, 2702));
        byte[] bArrM2791 = C0492.m2791(content, charsetM790);
        C0198.m955(bArrM2791, C0518.m2921(m3221(), 45, 13, 2206));
        m3222(file, bArrM2791);
    }

    @JvmStatic
    public static final void writeToFile(File file, byte[] content) {
        C0432.m2481(file, C0458.m2637(m3221(), 58, 4, 378));
        C0432.m2481(content, C0548.m3237(m3221(), 62, 7, 2398));
        m3222(file, content);
    }

    @JvmStatic
    public static final void writeToFile(String path, String content) {
        C0432.m2481(path, C0268.m1564(m3221(), 69, 4, 2798));
        C0432.m2481(content, C0234.m1288(m3221(), 73, 7, 835));
        File file = new File(path);
        Charset charsetM790 = C0162.m790();
        C0198.m955(charsetM790, C0119.m586(m3221(), 80, 5, 347));
        byte[] bArrM2791 = C0492.m2791(content, charsetM790);
        C0198.m955(bArrM2791, C0614.m5075(m3221(), 85, 13, 2132));
        m3222(file, bArrM2791);
    }

    @JvmStatic
    public static final void writeToFile(String path, byte[] content) {
        C0432.m2481(path, C0783.m6019(m3221(), 98, 4, 2249));
        C0432.m2481(content, C0359.m2071(m3221(), 102, 7, 1287));
        m3222(new File(path), content);
    }

    /* JADX INFO: renamed from: ۟۟ۡۢۦ, reason: not valid java name and contains not printable characters */
    public static short[] m3221() {
        if (C0195.m935() < 0) {
            return f553short;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۥۦۧ۟, reason: contains not printable characters */
    public static void m3222(Object obj, Object obj2) {
        if (C0160.m778() < 0) {
            FilesKt.writeBytes((File) obj, (byte[]) obj2);
        }
    }

    public final List<String> readFileAsLines(File fileName) {
        C0432.m2481(fileName, C0446.m2561(m3221(), 109, 8, 1255));
        Reader inputStreamReader = new InputStreamReader(new FileInputStream(fileName), C0834.m6241());
        return C0083.m420(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192));
    }
}

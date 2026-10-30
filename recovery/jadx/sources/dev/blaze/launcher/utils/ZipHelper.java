package dev.blaze.launcher.utils;

import androidx.browser.trusted.splashscreens.C0030;
import androidx.concurrent.futures.C0043;
import androidx.core.hardware.fingerprint.C0073;
import androidx.core.os.C0085;
import androidx.core.view.contentcapture.C0105;
import androidx.viewpager.C0191;
import com.braze.exceptions.C0222;
import com.braze.models.outgoing.event.C0235;
import com.google.android.datatransport.runtime.time.C0324;
import com.google.android.gms.common.server.response.C0339;
import com.google.firebase.analytics.connector.C0432;
import com.google.firebase.analytics.connector.C0433;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import kotlin.Metadata;
import org.spongycastle.asn1.gnu.C0748;
import org.spongycastle.asn1.mozilla.C0759;
import org.spongycastle.asn1.x500.style.C0765;
import org.spongycastle.eac.operator.jcajce.C0826;
import org.spongycastle.math.ec.endo.C0869;
import org.spongycastle.pqc.jcajce.provider.util.C0917;
import org.xmlpull.v1.wrapper.C0952;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b¨\u0006\f"}, d2 = {"Ldev/blaze/launcher/utils/ZipHelper;", "", "()V", "extractFiles", "", "input", "Ljava/io/File;", "output", "getZipEntry", "", "entry", "", "app_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ZipHelper {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f557short = {442, 445, 419, 422, 423, 2921, 2931, 2930, 2934, 2931, 2930, 2350, 2345, 2359, 2354, 2355, 1084, 1079, 1069, 1067, 1056};
    public static final ZipHelper INSTANCE = new ZipHelper();

    private ZipHelper() {
    }

    /* JADX INFO: renamed from: ۣۣ۟۠ۢ, reason: not valid java name and contains not printable characters */
    public static short[] m3227() {
        if (C0235.m1293() > 0) {
            return f557short;
        }
        return null;
    }

    public final void extractFiles(File input, File output) {
        C0432.m2481(input, C0043.m219(m3227(), 0, 5, 467));
        C0432.m2481(output, C0324.m1917(m3227(), 5, 6, 2822));
        ZipFile zipFile = new ZipFile(input);
        try {
            ZipFile zipFile2 = zipFile;
            Enumeration enumerationM6734 = C0952.m6734(zipFile2);
            while (C0759.m5915(enumerationM6734)) {
                ZipEntry zipEntry = (ZipEntry) C0339.m1986(enumerationM6734);
                File file = new File(output, C0748.m5860(zipEntry));
                if (C0030.m137(zipEntry)) {
                    C0073.m360(file);
                } else {
                    File fileM6396 = C0869.m6396(file);
                    if (fileM6396 != null) {
                        C0073.m360(fileM6396);
                    }
                    InputStream inputStreamM2487 = C0433.m2487(zipFile2, zipEntry);
                    try {
                        InputStream inputStream = inputStreamM2487;
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            C0917.m6586(inputStream);
                            C0085.m429(inputStream, fileOutputStream, 0, 2, null);
                            C0085.m433(fileOutputStream, null);
                            C0085.m433(inputStreamM2487, null);
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                C0085.m433(fileOutputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            C0085.m433(inputStreamM2487, th3);
                            throw th4;
                        }
                    }
                }
            }
            C0765.m5937();
            C0085.m433(zipFile, null);
        } catch (Throwable th5) {
            try {
                throw th5;
            } catch (Throwable th6) {
                C0085.m433(zipFile, th5);
                throw th6;
            }
        }
    }

    public final byte[] getZipEntry(File input, String entry) {
        C0432.m2481(input, C0222.m1176(m3227(), 11, 5, 2375));
        C0432.m2481(entry, C0191.m915(m3227(), 16, 5, 1113));
        ZipFile zipFile = new ZipFile(input);
        try {
            ZipFile zipFile2 = zipFile;
            ZipEntry zipEntryM6205 = C0826.m6205(zipFile2, entry);
            if (zipEntryM6205 == null) {
                C0085.m433(zipFile, null);
                return null;
            }
            C0917.m6586(zipEntryM6205);
            InputStream inputStreamM2487 = C0433.m2487(zipFile2, zipEntryM6205);
            try {
                InputStream inputStream = inputStreamM2487;
                C0917.m6586(inputStream);
                byte[] bArrM519 = C0105.m519(inputStream);
                C0085.m433(inputStreamM2487, null);
                C0085.m433(zipFile, null);
                return bArrM519;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    C0085.m433(inputStreamM2487, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                C0085.m433(zipFile, th3);
                throw th4;
            }
        }
    }
}

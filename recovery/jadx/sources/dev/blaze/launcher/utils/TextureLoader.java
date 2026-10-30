package dev.blaze.launcher.utils;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import androidx.concurrent.futures.C0043;
import androidx.constraintlayout.core.state.helpers.C0047;
import androidx.core.content.C0068;
import androidx.core.content.pm.C0066;
import androidx.fragment.ktx.C0127;
import androidx.swiperefreshlayout.C0180;
import androidx.viewpager2.widget.C0193;
import com.braze.communication.dust.C0211;
import com.braze.enums.inappmessage.C0218;
import com.braze.images.C0223;
import com.braze.ui.adapters.C0257;
import com.braze.ui.inappmessage.factories.C0281;
import com.google.firebase.messaging.threads.C0461;
import com.google.gson.internal.bind.C0473;
import com.microsoft.xbox.xle.app.C0517;
import com.microsoft.xbox.xle.app.activity.Profile.C0513;
import com.mojang.minecraftpe.store.amazonappstore.C0535;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.xml.stream.util.C0554;
import kotlin.io.encoding.C0575;
import mainz.C0631;
import okhttp3.internal.tls.C0650;
import org.apache.http.client.protocol.C0671;
import org.spongycastle.crypto.engines.C0801;
import org.spongycastle.jce.C0868;
import org.spongycastle.math.ec.C0870;
import org.spongycastle.openssl.C0887;
import org.spongycastle.pqc.math.ntru.polynomial.C0922;
import org.xmlpull.v1.util.C0949;

/* JADX INFO: loaded from: classes3.dex */
public class TextureLoader {
    public static AssetManager originAssets;

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f556short = {3230, 3202, 3313, 3173, 3191, 3191, 3169, 3184, 3191, 3115, 3190, 3169, 3191, 3179, 3185, 3190, 3175, 3169, 3163, 3188, 3173, 3175, 3183, 3191, 3115, 3186, 3173, 3178, 3181, 3176, 3176, 3173, 3115, 3184, 3169, 3196, 3184, 3185, 3190, 3169, 3191, 3115, 3181, 3184, 3169, 3177, 3191, 3115, 1316, 1402, 1380, 1389, 2857, 2875, 2875, 2861, 2876, 2875, 2919, 2874, 2861, 2875, 2855, 2877, 2874, 2859, 2861, 2839, 2872, 2857, 2859, 2851, 2875, 2919, 2878, 2857, 2854, 2849, 2852, 2852, 2857, 2919, 2876, 2861, 2864, 2876, 2877, 2874, 2861, 2875, 2919, 2877, 2849, 2919};
    public static List<BitmapMapperS> bitmapList = new ArrayList();

    public TextureLoader(Context context, boolean z) throws IOException {
        m3225(this, context, z);
    }

    public static native void IJOdfj();

    private void initTexture(Context context, boolean z) throws IOException {
        Iterator itM5390 = C0650.m5390(C0043.m220());
        while (C0257.m1503(itM5390)) {
            BitmapMapperS bitmapMapperS = (BitmapMapperS) C0127.m645(itM5390);
            int[] iArr = new int[1];
            C0066.m323(1, iArr, 0);
            C0631.m5171(3553, iArr[0]);
            C0461.m2653(3553, 10241, 9728);
            C0461.m2653(3553, 10240, 9728);
            C0513.m2890(3553, 0, C0575.m4574(bitmapMapperS), 0);
            C0868.m6391(C0575.m4574(bitmapMapperS));
            C0047.m242(C0554.m3261(C0281.m1661(new StringBuilder(C0211.m1118(m3226(), 0, 3, 3275)), C0535.m3007(bitmapMapperS))), iArr[0]);
        }
        AssetManager assetManagerM5513 = C0671.m5513(context);
        String strM2914 = C0517.m2914(m3226(), 3, 45, 3076);
        String[] strArrM334 = C0068.m334(assetManagerM5513, strM2914);
        String strM6723 = C0949.m6723(m3226(), 48, 4, 1290);
        if (strArrM334 != null) {
            for (String str : strArrM334) {
                if (C0193.m922(str, strM6723)) {
                    Bitmap bitmapM2704 = C0473.m2704(C0180.m862(C0671.m5513(context), C0554.m3261(C0281.m1661(new StringBuilder(strM2914), str))));
                    int[] iArr2 = new int[1];
                    C0066.m323(1, iArr2, 0);
                    C0631.m5171(3553, iArr2[0]);
                    C0461.m2653(3553, 10241, 9728);
                    C0461.m2653(3553, 10240, 9728);
                    C0513.m2890(3553, 0, bitmapM2704, 0);
                    C0868.m6391(bitmapM2704);
                    C0047.m242(C0223.m1188(str, 0, C0870.m6401(str) - 4), iArr2[0]);
                }
            }
        }
        AssetManager assetManagerM5514 = C0671.m5513(context);
        String strM6608 = C0922.m6608(m3226(), 52, 42, 2888);
        String[] strArrM335 = C0068.m334(assetManagerM5514, strM6608);
        if (strArrM335 != null) {
            for (String str2 : strArrM335) {
                if (C0193.m922(str2, strM6723)) {
                    Bitmap bitmapM2705 = C0473.m2704(C0180.m862(C0671.m5513(context), C0554.m3261(C0281.m1661(new StringBuilder(strM6608), str2))));
                    int[] iArr3 = new int[1];
                    C0066.m323(1, iArr3, 0);
                    C0631.m5171(3553, iArr3[0]);
                    C0461.m2653(3553, 10241, 9728);
                    C0461.m2653(3553, 10240, 9728);
                    C0513.m2890(3553, 0, bitmapM2705, 0);
                    C0868.m6391(bitmapM2705);
                    C0047.m242(C0223.m1188(str2, 0, C0870.m6401(str2) - 4), iArr3[0]);
                }
            }
        }
    }

    public static void loadImage(AssetManager assetManager, String str) throws Exception {
        C0887.m6466(C0043.m220(), new BitmapMapperS(C0223.m1188(str, 0, C0870.m6401(str) - 4), C0473.m2704(C0180.m862(assetManager, str))));
    }

    /* JADX INFO: renamed from: ۟۟ۡۥۣ, reason: not valid java name and contains not printable characters */
    public static void m3225(Object obj, Object obj2, boolean z) throws IOException {
        if (C0801.m6094() <= 0) {
            ((TextureLoader) obj).initTexture((Context) obj2, z);
        }
    }

    /* JADX INFO: renamed from: ۢ۟ۡۤ, reason: not valid java name and contains not printable characters */
    public static short[] m3226() {
        if (C0218.m1158() >= 0) {
            return f556short;
        }
        return null;
    }
}

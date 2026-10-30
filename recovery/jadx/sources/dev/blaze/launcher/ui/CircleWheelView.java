package dev.blaze.launcher.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.support.customtabs.C0001;
import android.support.v4.graphics.drawable.C0003;
import android.support.v4.os.C0004;
import android.support.v4.os.C0005;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.browser.trusted.C0033;
import androidx.browser.trusted.sharing.C0029;
import androidx.collection.C0040;
import androidx.concurrent.futures.C0041;
import androidx.constraintlayout.core.motion.parse.C0045;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.state.C0048;
import androidx.constraintlayout.core.widgets.analyzer.C0052;
import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.C0074;
import androidx.core.math.C0080;
import androidx.core.provider.C0086;
import androidx.core.text.C0096;
import androidx.core.view.accessibility.C0100;
import androidx.customview.C0116;
import androidx.customview.view.C0112;
import androidx.drawerlayout.C0119;
import androidx.drawerlayout.C0120;
import androidx.drawerlayout.widget.C0118;
import androidx.fragment.app.strictmode.C0125;
import androidx.interpolator.C0130;
import androidx.lifecycle.livedata.core.C0141;
import androidx.loader.app.C0154;
import androidx.tracing.C0182;
import androidx.viewbinding.C0187;
import androidx.window.C0200;
import androidx.window.embedding.C0198;
import com.bea.xml.stream.samples.C0207;
import com.braze.configuration.C0216;
import com.braze.managers.C0227;
import com.braze.models.inappmessage.C0231;
import com.braze.triggers.actions.C0246;
import com.braze.triggers.events.C0252;
import com.braze.ui.C0299;
import com.braze.ui.C0300;
import com.braze.ui.actions.C0256;
import com.braze.ui.actions.brazeactions.steps.C0254;
import com.braze.ui.contentcards.managers.C0268;
import com.braze.ui.contentcards.view.C0271;
import com.braze.ui.feed.listeners.C0273;
import com.braze.ui.feed.view.C0278;
import com.braze.ui.inappmessage.factories.C0281;
import com.braze.ui.inappmessage.listeners.C0284;
import com.braze.ui.inappmessage.views.C0289;
import com.google.android.datatransport.runtime.scheduling.C0319;
import com.google.android.gms.actions.C0326;
import com.google.android.gms.common.api.C0333;
import com.google.android.gms.common.api.internal.C0331;
import com.google.android.gms.internal.tasks.C0355;
import com.google.android.gms.tasks.C0359;
import com.google.android.material.bottomsheet.C0365;
import com.google.android.material.bottomsheet.C0366;
import com.google.android.material.floatingactionbutton.C0394;
import com.google.android.material.math.C0396;
import com.google.android.material.ripple.C0405;
import com.google.android.material.switchmaterial.C0416;
import com.google.android.material.tabs.C0418;
import com.google.firebase.analytics.connector.C0432;
import com.google.firebase.dynamicloading.C0434;
import com.google.firebase.installations.interop.C0451;
import com.google.firebase.internal.C0456;
import com.google.gson.internal.bind.C0472;
import com.microsoft.xal.logging.C0482;
import com.microsoft.xal.logging.C0484;
import com.microsoft.xbox.service.model.serialization.C0493;
import com.microsoft.xbox.toolkit.C0509;
import com.microsoft.xbox.toolkit.ui.util.C0506;
import com.microsoft.xbox.xle.app.C0516;
import com.microsoft.xbox.xle.model.C0518;
import com.microsoft.xbox.xle.model.C0519;
import com.microsoft.xbox.xle.ui.C0522;
import com.microsoft.xboxlive.C0523;
import com.mojang.android.C0526;
import dev.blaze.launcher.Server.C0541;
import java.util.ArrayList;
import java.util.List;
import javax.xml.stream.util.C0554;
import kotlin.C0612;
import kotlin.Metadata;
import kotlin.comparisons.C0561;
import kotlin.comparisons.C0563;
import kotlin.internal.jdk8.C0572;
import kotlin.jdk7.C0581;
import kotlin.jvm.functions.C0585;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.random.C0594;
import kotlin.text.jdk8.C0607;
import kotlinx.coroutines.stream.C0628;
import okhttp3.internal.http2.C0643;
import okhttp3.internal.io.C0644;
import org.apache.commons.codec.cli.C0656;
import org.apache.commons.codec.digest.C0657;
import org.apache.commons.logging.impl.C0661;
import org.apache.http.client.params.C0669;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.impl.client.C0686;
import org.apache.http.impl.conn.C0691;
import org.apache.http.impl.pool.C0696;
import org.apache.http.impl.pool.C0697;
import org.apache.http.pool.C0703;
import org.apache.http.pool.C0705;
import org.chromium.support_lib_boundary.util.C0710;
import org.simpleframework.xml.C0727;
import org.simpleframework.xml.core.C0718;
import org.simpleframework.xml.transform.C0724;
import org.spongycastle.asn1.bc.C0732;
import org.spongycastle.asn1.smime.C0764;
import org.spongycastle.asn1.x509.qualified.C0767;
import org.spongycastle.asn1.x509.sigi.C0768;
import org.spongycastle.cert.cmp.C0775;
import org.spongycastle.cert.crmf.jcajce.C0779;
import org.spongycastle.cert.ocsp.C0782;
import org.spongycastle.cert.ocsp.jcajce.C0781;
import org.spongycastle.crypto.digests.C0795;
import org.spongycastle.crypto.tls.CipherSuite;
import org.spongycastle.jcajce.provider.asymmetric.elgamal.C0840;
import org.spongycastle.math.ec.C0870;
import org.spongycastle.math.raw.C0877;
import org.spongycastle.openssl.C0887;
import org.spongycastle.operator.C0890;
import org.spongycastle.pkcs.jcajce.C0899;
import org.spongycastle.pqc.crypto.gmss.util.C0905;
import org.spongycastle.pqc.jcajce.provider.gmss.C0913;
import org.spongycastle.pqc.jcajce.provider.mceliece.C0914;
import org.spongycastle.pqc.math.ntru.euclid.C0921;
import org.spongycastle.pqc.math.ntru.util.C0923;
import org.spongycastle.tsp.C0926;
import org.xmlpull.v1.builder.C0946;
import org.xmlpull.v1.util.C0949;
import org.xmlpull.v1.wrapper.C0953;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 y2\u00020\u0001:\u0001yB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\b\u0010Q\u001a\u00020RH\u0002J(\u0010S\u001a\u00020R2\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020\t2\u0006\u0010W\u001a\u00020\u001f2\u0006\u0010X\u001a\u00020\u000bH\u0002J(\u0010Y\u001a\u00020R2\u0006\u0010T\u001a\u00020U2\u0006\u0010X\u001a\u00020\u000b2\u0006\u0010Z\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020\\H\u0002J8\u0010]\u001a\u00020R2\u0006\u0010^\u001a\u00020U2\u0006\u0010_\u001a\u00020\u000b2\u0006\u0010`\u001a\u00020\u001f2\u0006\u0010a\u001a\u00020\t2\u0006\u0010b\u001a\u00020\u000b2\u0006\u0010c\u001a\u00020\u000bH\u0002J(\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020\u00112\u0006\u0010g\u001a\u00020\u00112\u0006\u0010h\u001a\u00020\u000b2\u0006\u0010i\u001a\u00020\u000bH\u0002J\u0010\u0010j\u001a\u00020D2\u0006\u0010k\u001a\u00020eH\u0002J\u001e\u0010l\u001a\u00020.2\u0006\u0010m\u001a\u00020n2\f\u0010o\u001a\b\u0012\u0004\u0012\u00020D0CH\u0002J\b\u0010p\u001a\u00020RH\u0002J\u0010\u0010q\u001a\u00020(2\u0006\u0010m\u001a\u00020nH\u0002J\u0010\u0010r\u001a\u00020R2\u0006\u0010T\u001a\u00020UH\u0014J\u0018\u0010s\u001a\u00020R2\u0006\u0010t\u001a\u00020.2\u0006\u0010u\u001a\u00020.H\u0014J\u0010\u0010v\u001a\u00020(2\u0006\u0010m\u001a\u00020nH\u0016J\u0010\u0010w\u001a\u00020R2\u0006\u0010x\u001a\u00020(H\u0002R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0017X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0017X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\r\"\u0004\b\u001d\u0010\u000fR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\r\"\u0004\b&\u0010\u000fR\u001a\u0010'\u001a\u00020(X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001a\u0010-\u001a\u00020.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001a\u00103\u001a\u00020.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00100\"\u0004\b5\u00102R\u001c\u00106\u001a\u0004\u0018\u000107X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u001a\u0010<\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u0013\"\u0004\b>\u0010\u0015R\u001a\u0010?\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010\u0013\"\u0004\bA\u0010\u0015R \u0010B\u001a\b\u0012\u0004\u0012\u00020D0CX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\u000e\u0010I\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R \u0010J\u001a\b\u0012\u0004\u0012\u00020\u001f0CX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010F\"\u0004\bL\u0010HR\u000e\u0010M\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010N\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010\r\"\u0004\bP\u0010\u000f¨\u0006z"}, d2 = {"Ldev/blaze/launcher/ui/CircleWheelView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attributeSet", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "mArcPaint", "Landroid/graphics/Paint;", "mArcRadiu", "", "getMArcRadiu", "()F", "setMArcRadiu", "(F)V", "mArcRect", "Landroid/graphics/RectF;", "getMArcRect", "()Landroid/graphics/RectF;", "setMArcRect", "(Landroid/graphics/RectF;)V", "mBg", "Landroid/graphics/Bitmap;", "mCenterBgPaint", "mCenterNormalBitmap", "mCenterPressBitmap", "mCenterRadiu", "getMCenterRadiu", "setMCenterRadiu", "mCenterStr", "", "getMCenterStr", "()Ljava/lang/String;", "setMCenterStr", "(Ljava/lang/String;)V", "mChangeAngel", "getMChangeAngel", "setMChangeAngel", "mIsPress", "", "getMIsPress", "()Z", "setMIsPress", "(Z)V", "mLastArea", "", "getMLastArea", "()I", "setMLastArea", "(I)V", "mLastPos", "getMLastPos", "setMLastPos", "mOnWheelClickListener", "Ldev/blaze/launcher/ui/OnWheelClickListener;", "getMOnWheelClickListener", "()Ldev/blaze/launcher/ui/OnWheelClickListener;", "setMOnWheelClickListener", "(Ldev/blaze/launcher/ui/OnWheelClickListener;)V", "mRectIn", "getMRectIn", "setMRectIn", "mRectOut", "getMRectOut", "setMRectOut", "mRegionList", "", "Landroid/graphics/Region;", "getMRegionList", "()Ljava/util/List;", "setMRegionList", "(Ljava/util/List;)V", "mSelectPaint", "mTextList", "getMTextList", "setMTextList", "mTextPaint", "mWRadius", "getMWRadius", "setMWRadius", "clearData", "", "drawCenterText", "canvas", "Landroid/graphics/Canvas;", "paint", "centerTitle", "radius", "drawLinePath", "radiusN", "angele", "", "drawText", "mCanvas", "textAngle", "kinds", "mPaint", "mRadius", "mCenTer", "getArcPath", "Landroid/graphics/Path;", "inSide", "out", "startAngle", "angle", "getRegion", ClientCookie.PATH_ATTR, "inAreaPos", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "regions", "initView", "isInCenter", "onDraw", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "onTouchEvent", "showRect", "isShow", "Companion", "app_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CircleWheelView extends View {
    private Paint mArcPaint;
    private float mArcRadiu;
    private RectF mArcRect;
    private Bitmap mBg;
    private Paint mCenterBgPaint;
    private Bitmap mCenterNormalBitmap;
    private Bitmap mCenterPressBitmap;
    private float mCenterRadiu;
    private String mCenterStr;
    private float mChangeAngel;
    private boolean mIsPress;
    private int mLastArea;
    private int mLastPos;
    private OnWheelClickListener mOnWheelClickListener;
    private RectF mRectIn;
    private RectF mRectOut;
    private List<Region> mRegionList;
    private Paint mSelectPaint;
    private List<String> mTextList;
    private Paint mTextPaint;
    private float mWRadius;

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f537short = {754, 728, 707, 722, 733, 724, 742, 729, 724, 724, 733, 743, 728, 724, 710, 1397, 1401, 1400, 1378, 1395, 1390, 1378, 3059, 3071, 3070, 3044, 3061, 3048, 3044, 1057, 1054, 1043, 1043, 1050, 1513, 1534, 1454, 1454, 1522, 1454, 1522, 1454, 1522, 709, 672, 701, 3033, 3033, 2944, 3012, 701, 663, 652, 669, 658, 667, 681, 662, 667, 667, 658, 680, 663, 667, 649, 408, 422, 400, 409, 400, 406, 385, 421, 404, 412, 411, 385, 3113, 3122, 3130, 3135, 3123, 3133, 3133, 3177, 3132, 2924, 2901, 2916, 2937, 2933, 2897, 2912, 2920, 2927, 2933, 2086, 2058, 2105, 2088, 2075, 2090, 2082, 2085, 2111, 831, 808, 888, 812, 812, 812, 812, 812, 812, 2543, 2542, 2536, 2532, 2543, 2542, 2521, 2542, 2552, 2532, 2558, 2553, 2536, 2542, 2467, 2469, 2469, 2469, 2466, 1053, 1112, 1078, 1078, 1135, 1067, 578, 578, 527, 565, 560, 515, 518, 523, 535, 529, 607, 1576, 1576, 1637, 1611, 1645, 1638, 1660, 1645, 1658, 1626, 1641, 1644, 1633, 1661, 1589, 2069, 2111, 2084, 2101, 2106, 2099, 2049, 2110, 2099, 2099, 2106, 2048, 2111, 2099, 2081, 1667, 1665, 1678, 1686, 1665, 1683, 1891, 1882, 1899, 1910, 1914, 1886, 1903, 1895, 1888, 1914, 2658, 2636, 2666, 2657, 2683, 2666, 2685, 2637, 2664, 2655, 2670, 2662, 2657, 2683, 860, 883, 854, 2424, 2388, 2407, 2422, 2373, 2420, 2428, 2427, 2401, 815, 785, 807, 814, 807, 801, 822, 786, 803, 811, 812, 822, 1618, 1660, 1626, 1617, 1611, 1626, 1613, 1647, 1613, 1626, 1612, 1612, 1661, 1622, 1611, 1618, 1630, 1615, 438, 408, 446, 437, 431, 446, 425, 405, 436, 425, 438, 442, 439, 409, 434, 431, 438, 442, 427, 1021, 967, 962, 1009, 1012, 1017, 997, 995, 941, 2813, 2775, 2764, 2781, 2770, 2779, 2793, 2774, 2779, 2779, 2770, 2792, 2775, 2779, 2761, 3168, 3187, 3168, 3179, 3185, 3255, 3320, 3310, 3327, 3238, 3252, 3253, 718, 641, 663, 646, 735, 717, 716, 3228, 3283, 3269, 3284, 3213, 3231, 3230, 1426, 1501, 1483, 1498, 1411, 1425, 1424, 884, 827, 813, 828, 869, 887, 886, 1742, 1665, 1687, 1670, 1759, 1741, 1740};
    public static final String TAG = C0029.m130(m3108(), 0, 15, 689);

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Ldev/blaze/launcher/ui/CircleWheelView$Companion;", "", "()V", "TAG", "", "app_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CircleWheelView(Context context) {
        this(context, null);
        C0432.m2481(context, C0661.m5464(m3108(), 15, 7, 1302));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircleWheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, -1);
        C0432.m2481(context, C0451.m2585(m3108(), 22, 7, 2960));
        this.mTextList = new ArrayList();
        this.mLastPos = -1;
        this.mRectOut = new RectF();
        this.mRectIn = new RectF();
        this.mArcRect = new RectF();
        this.mRegionList = new ArrayList();
        this.mLastArea = -1;
        this.mCenterStr = C0366.m2104(m3108(), 29, 5, 1142);
        m3120(this);
    }

    private final void clearData() {
        this.mLastArea = -1;
        C0840.m6265(m3105(this));
    }

    private final void drawCenterText(Canvas canvas, Paint paint, String centerTitle, float radius) {
        C0326.m1928(paint, -1);
        C0914.m6573(paint, 40.0f);
        Paint.FontMetrics fontMetricsM2797 = C0493.m2797(paint);
        C0273.m1591(canvas, centerTitle, 0.0f, ((C0004.m20(fontMetricsM2797) - C0643.m5360(fontMetricsM2797)) / 2.0f) - C0004.m20(fontMetricsM2797), paint);
    }

    private final void drawLinePath(Canvas canvas, float radius, float radiusN, double angele) {
        Path path = new Path();
        Paint paint = new Paint();
        C0326.m1928(paint, C0119.m590(C0256.m1498(m3108(), 34, 9, 1482)));
        C0405.m2328(paint, C0732.m5794());
        C0913.m6569(paint, true);
        C0724.m5753(paint, 3.0f);
        if (0.0d <= angele && angele <= 90.0d) {
            C0572.m4558(path, ((float) C0086.m435((float) C0732.m5793(angele))) * radiusN, (-radiusN) * ((float) C0516.m2909((float) C0732.m5793(angele))));
            C0949.m6720(path, ((float) C0086.m435((float) C0732.m5793(angele))) * radius, (-radius) * ((float) C0516.m2909((float) C0732.m5793(angele))));
        } else if (90.0d <= angele && angele <= 180.0d) {
            float f = -radiusN;
            double d = angele - ((double) 90);
            C0572.m4558(path, ((float) C0516.m2909((float) C0732.m5793(angele - ((double) 90.0f)))) * f, f * ((float) C0086.m435((float) C0732.m5793(d))));
            float f2 = -radius;
            C0949.m6720(path, ((float) C0516.m2909((float) C0732.m5793(d))) * f2, f2 * ((float) C0086.m435((float) C0732.m5793(d))));
        } else if (180.0d <= angele && angele <= 270.0d) {
            double d2 = angele - ((double) CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256);
            C0572.m4558(path, (-radiusN) * ((float) C0086.m435((float) C0732.m5793(d2))), radiusN * ((float) C0516.m2909((float) C0732.m5793(d2))));
            C0949.m6720(path, (-radius) * ((float) C0086.m435((float) C0732.m5793(d2))), radius * ((float) C0516.m2909((float) C0732.m5793(d2))));
        } else if (270.0d <= angele && angele <= 360.0d) {
            double d3 = angele - ((double) 270);
            C0572.m4558(path, ((float) C0516.m2909((float) C0732.m5793(d3))) * radiusN, radiusN * ((float) C0086.m435((float) C0732.m5793(d3))));
            C0949.m6720(path, ((float) C0516.m2909((float) C0732.m5793(d3))) * radius, radius * ((float) C0086.m435((float) C0732.m5793(d3))));
        }
        C0326.m1925(canvas, path, paint);
    }

    private final void drawText(Canvas mCanvas, float textAngle, String kinds, Paint mPaint, float mRadius, float mCenTer) {
        double dM435;
        double dM2909;
        double dM436;
        double dM29010;
        Rect rect = new Rect();
        C0914.m6573(mPaint, 38.0f);
        Paint.FontMetrics fontMetricsM2797 = C0493.m2797(mPaint);
        float fM20 = ((C0004.m20(fontMetricsM2797) - C0643.m5360(fontMetricsM2797)) / 2.0f) - C0004.m20(fontMetricsM2797);
        C0394.m2278(mPaint, kinds, 0, C0870.m6401(kinds), rect);
        PointF pointF = new PointF();
        PointF pointF2 = new PointF();
        PointF pointF3 = new PointF();
        double d = textAngle;
        if (0.0d > d || d > 90.0d) {
            if (textAngle > 90.0f && textAngle <= 180.0f) {
                double d2 = ((double) CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256) - d;
                dM435 = -C0086.m435(C0732.m5793(d2));
                dM2909 = C0516.m2909(C0732.m5793(d2));
            } else if (textAngle <= 180.0f || textAngle > 270.0f) {
                double d3 = ((double) 360) - d;
                dM435 = C0086.m435(C0732.m5793(d3));
                dM2909 = -C0516.m2909(C0732.m5793(d3));
            } else {
                double d4 = d - 180.0d;
                dM436 = -C0086.m435(C0732.m5793(d4));
                dM29010 = -C0516.m2909(C0732.m5793(d4));
            }
            double d5 = dM435;
            dM29010 = dM2909;
            dM436 = d5;
            double d6 = mCenTer;
            C0705.m5671(pointF2, (float) (dM436 * d6), (float) (d6 * dM29010));
            double d7 = mRadius;
            C0705.m5671(pointF, (float) (dM436 * d7), (float) (dM29010 * d7));
            float f = 2;
            C0705.m5671(pointF3, (C0612.m5026(pointF) + C0612.m5026(pointF2)) / f, (C0120.m596(pointF) + C0120.m596(pointF2)) / f);
            C0554.m3261(C0254.m1492(C0281.m1661(C0254.m1492(new StringBuilder(C0289.m1735(m3108(), 43, 3, 669)), (C0612.m5026(pointF) + C0612.m5026(pointF2)) / f), C0768.m5953(m3108(), 46, 4, 3065)), (C0120.m596(pointF) + C0120.m596(pointF2)) / f));
            C0523.m2942(m3108(), 50, 15, 766);
            C0273.m1591(mCanvas, kinds, C0612.m5026(pointF3), C0120.m596(pointF3) + fM20, mPaint);
        }
        dM436 = C0086.m435(C0732.m5793(d));
        dM29010 = C0516.m2909(C0732.m5793(d));
        double d8 = mCenTer;
        C0705.m5671(pointF2, (float) (dM436 * d8), (float) (d8 * dM29010));
        double d9 = mRadius;
        C0705.m5671(pointF, (float) (dM436 * d9), (float) (dM29010 * d9));
        float f2 = 2;
        C0705.m5671(pointF3, (C0612.m5026(pointF) + C0612.m5026(pointF2)) / f2, (C0120.m596(pointF) + C0120.m596(pointF2)) / f2);
        C0554.m3261(C0254.m1492(C0281.m1661(C0254.m1492(new StringBuilder(C0289.m1735(m3108(), 43, 3, 669)), (C0612.m5026(pointF) + C0612.m5026(pointF2)) / f2), C0768.m5953(m3108(), 46, 4, 3065)), (C0120.m596(pointF) + C0120.m596(pointF2)) / f2));
        C0523.m2942(m3108(), 50, 15, 766);
        C0273.m1591(mCanvas, kinds, C0612.m5026(pointF3), C0120.m596(pointF3) + fM20, mPaint);
    }

    private final Path getArcPath(RectF inSide, RectF out, float startAngle, float angle) {
        Path path = new Path();
        C0572.m4558(path, C0767.m5949(inSide), C0775.m5984(inSide));
        C0921.m6601(path, C0767.m5949(inSide), C0775.m5984(inSide), (2 * m3088(this)) / 3, C0607.m4832());
        Path path2 = new Path();
        C0572.m4558(path2, C0767.m5949(out), C0775.m5984(out));
        C0506.m2858(path2, out, startAngle, angle);
        Path path3 = new Path();
        C0877.m6430(path3, path2, path, C0125.m638());
        return path3;
    }

    private final Region getRegion(Path path) {
        Region region = new Region();
        RectF rectF = new RectF();
        C0953.m6741(path, rectF, true);
        C0254.m1487(region, path, new Region((int) C0669.m5500(rectF), (int) C0119.m589(rectF), (int) C0585.m4623(rectF), (int) C0299.m1785(rectF)));
        return region;
    }

    private final int inAreaPos(MotionEvent event, List<Region> regions) {
        float fM897 = C0187.m897(event) - m3095(this);
        float fM1235 = C0227.m1235(event) - m3095(this);
        int iM5442 = C0656.m5442(m3105(this));
        for (int i = 0; i < iM5442; i++) {
            if (C0116.m576((Region) C0048.m246(regions, i), (int) fM897, (int) fM1235)) {
                return i;
            }
        }
        return -1;
    }

    private final void initView() {
        Paint paint = new Paint();
        this.mSelectPaint = paint;
        C0913.m6569(paint, true);
        Paint paintM3111 = m3111(this);
        String strM968 = C0200.m968(m3108(), 65, 12, 501);
        Paint paint2 = null;
        if (paintM3111 == null) {
            C0141.m692(strM968);
            paintM3111 = null;
        }
        C0405.m2328(paintM3111, C0644.m5363());
        Paint paintM3112 = m3111(this);
        if (paintM3112 == null) {
            C0141.m692(strM968);
            paintM3112 = null;
        }
        C0326.m1928(paintM3112, C0119.m590(C0686.m5585(m3108(), 77, 9, 3082)));
        Paint paint3 = new Paint();
        this.mTextPaint = paint3;
        C0913.m6569(paint3, true);
        Paint paintM3113 = m3112(this);
        String strM6500 = C0899.m6500(m3108(), 86, 10, 2817);
        if (paintM3113 == null) {
            C0141.m692(strM6500);
            paintM3113 = null;
        }
        C0326.m1928(paintM3113, -1);
        Paint paintM3114 = m3112(this);
        if (paintM3114 == null) {
            C0141.m692(strM6500);
            paintM3114 = null;
        }
        C0319.m1898(paintM3114, C0779.m6001());
        Paint paint4 = new Paint();
        this.mArcPaint = paint4;
        C0913.m6569(paint4, true);
        Paint paintM3101 = m3101(this);
        if (paintM3101 == null) {
            C0141.m692(C0905.m6529(m3108(), 96, 9, 2123));
        } else {
            paint2 = paintM3101;
        }
        C0326.m1928(paint2, C0119.m590(C0001.m6(m3108(), 105, 9, 796)));
        Paint paint5 = new Paint();
        this.mCenterBgPaint = paint5;
        C0913.m6569(paint5, true);
        Bitmap bitmapM4601 = C0581.m4601(C0703.m5662(C0484.m2752(this)), C0278.m1613());
        String strM2870 = C0509.m2870(m3108(), 114, 19, 2443);
        C0198.m955(bitmapM4601, strM2870);
        this.mCenterNormalBitmap = bitmapM4601;
        Bitmap bitmapM4602 = C0581.m4601(C0703.m5662(C0484.m2752(this)), C0482.m2747());
        C0198.m955(bitmapM4602, strM2870);
        this.mCenterPressBitmap = bitmapM4602;
        Bitmap bitmapM4603 = C0581.m4601(C0703.m5662(C0484.m2752(this)), C0657.m5446());
        C0198.m955(bitmapM4603, strM2870);
        this.mBg = bitmapM4603;
    }

    private final boolean isInCenter(MotionEvent event) {
        float fM897 = C0187.m897(event);
        float fM1235 = C0227.m1235(event);
        C0554.m3261(C0254.m1492(C0281.m1661(C0254.m1492(C0281.m1661(C0254.m1492(C0281.m1661(C0254.m1492(new StringBuilder(C0207.m995(m3108(), CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA, 2, 1125)), fM897), C0118.m585(m3108(), CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA, 4, 1046)), fM1235), C0045.m231(m3108(), CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA, 11, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS)), m3095(this)), C0781.m6011(m3108(), CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA, 15, 1544)), m3088(this)));
        C0923.m6612(m3108(), CipherSuite.TLS_DH_DSS_WITH_AES_256_GCM_SHA384, 15, 2134);
        float fM3095 = m3095(this);
        float fM3088 = m3088(this);
        return fM897 >= fM3095 - fM3088 && fM897 <= fM3088 + fM3095 && fM1235 >= fM3095 - fM3088 && fM1235 <= fM3088 + fM3095;
    }

    private final void showRect(boolean isShow) {
        this.mIsPress = isShow;
        C0052.m261(this);
    }

    /* JADX INFO: renamed from: ۣ۟۟ۢ۠, reason: not valid java name and contains not printable characters */
    public static float m3088(Object obj) {
        if (C0041.m212() <= 0) {
            return ((CircleWheelView) obj).mCenterRadiu;
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: ۟۟ۨ۟ۦ, reason: not valid java name and contains not printable characters */
    public static float m3089(Object obj) {
        if (C0005.m26() <= 0) {
            return ((CircleWheelView) obj).mArcRadiu;
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: ۟۠۠ۢ۟, reason: not valid java name and contains not printable characters */
    public static void m3090(Object obj, Object obj2, float f, float f2, double d) {
        if (C0522.m2940() <= 0) {
            ((CircleWheelView) obj).drawLinePath((Canvas) obj2, f, f2, d);
        }
    }

    /* JADX INFO: renamed from: ۣ۟ۡۧ۠, reason: not valid java name and contains not printable characters */
    public static Paint m3091(Object obj) {
        if (C0764.m5933() < 0) {
            return ((CircleWheelView) obj).mCenterBgPaint;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۡۤۨۡ, reason: not valid java name and contains not printable characters */
    public static void m3092(Object obj, boolean z) {
        if (C0040.m208() <= 0) {
            ((CircleWheelView) obj).showRect(z);
        }
    }

    /* JADX INFO: renamed from: ۟ۡۥۡۢ, reason: not valid java name and contains not printable characters */
    public static Bitmap m3093(Object obj) {
        if (C0795.m6068() < 0) {
            return ((CircleWheelView) obj).mCenterPressBitmap;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۢۦۣۤ, reason: not valid java name and contains not printable characters */
    public static int m3094(Object obj, Object obj2, Object obj3) {
        if (C0246.m1418() > 0) {
            return ((CircleWheelView) obj).inAreaPos((MotionEvent) obj2, (List) obj3);
        }
        return 0;
    }

    /* JADX INFO: renamed from: ۟ۢۧۦۦ, reason: not valid java name and contains not printable characters */
    public static float m3095(Object obj) {
        if (C0187.m900() < 0) {
            return ((CircleWheelView) obj).mWRadius;
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: ۣۣ۟۠ۨ, reason: not valid java name and contains not printable characters */
    public static RectF m3096(Object obj) {
        if (C0526.m2957() >= 0) {
            return ((CircleWheelView) obj).mArcRect;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣ۟ۡۤۦ, reason: not valid java name and contains not printable characters */
    public static void m3097(Object obj, Object obj2, Object obj3, Object obj4, float f) {
        if (C0331.m1951() < 0) {
            ((CircleWheelView) obj).drawCenterText((Canvas) obj2, (Paint) obj3, (String) obj4, f);
        }
    }

    /* JADX INFO: renamed from: ۣ۟ۡۤۧ, reason: not valid java name and contains not printable characters */
    public static Path m3098(Object obj, Object obj2, Object obj3, float f, float f2) {
        if (C0271.m1580() > 0) {
            return ((CircleWheelView) obj).getArcPath((RectF) obj2, (RectF) obj3, f, f2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣ۟ۡۦۡ, reason: not valid java name and contains not printable characters */
    public static int m3099(Object obj) {
        if (C0365.m2098() < 0) {
            return ((CircleWheelView) obj).mLastArea;
        }
        return 0;
    }

    /* JADX INFO: renamed from: ۣ۟ۥۦ۟, reason: not valid java name and contains not printable characters */
    public static OnWheelClickListener m3100(Object obj) {
        if (C0074.m363() <= 0) {
            return ((CircleWheelView) obj).mOnWheelClickListener;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣ۟ۤۤۥ, reason: not valid java name and contains not printable characters */
    public static Paint m3101(Object obj) {
        if (C0268.m1566() <= 0) {
            return ((CircleWheelView) obj).mArcPaint;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۤۧۨۡ, reason: not valid java name and contains not printable characters */
    public static int m3102(Object obj) {
        if (C0333.m1959() < 0) {
            return ((CircleWheelView) obj).mLastPos;
        }
        return 0;
    }

    /* JADX INFO: renamed from: ۟ۤۨۨۤ, reason: not valid java name and contains not printable characters */
    public static Bitmap m3103(Object obj) {
        if (C0594.m4680() <= 0) {
            return ((CircleWheelView) obj).mBg;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۥ۟ۥۤ, reason: not valid java name and contains not printable characters */
    public static Region m3104(Object obj, Object obj2) {
        if (C0096.m478() <= 0) {
            return ((CircleWheelView) obj).getRegion((Path) obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۦ۟۟ۤ, reason: not valid java name and contains not printable characters */
    public static List m3105(Object obj) {
        if (C0890.m6473() >= 0) {
            return ((CircleWheelView) obj).mRegionList;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۦ۟ۧۧ, reason: not valid java name and contains not printable characters */
    public static Bitmap m3106(Object obj) {
        if (C0727.m5770() > 0) {
            return ((CircleWheelView) obj).mCenterNormalBitmap;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۧۦۦ۠, reason: not valid java name and contains not printable characters */
    public static float m3107(Object obj) {
        if (C0216.m1147() <= 0) {
            return ((CircleWheelView) obj).mChangeAngel;
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: ۟ۨۡ, reason: not valid java name and contains not printable characters */
    public static short[] m3108() {
        if (C0923.m6615() < 0) {
            return f537short;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠۠ۡ, reason: not valid java name and contains not printable characters */
    public static boolean m3109(Object obj) {
        if (C0432.m2484() >= 0) {
            return ((CircleWheelView) obj).mIsPress;
        }
        return false;
    }

    /* JADX INFO: renamed from: ۢ۠ۨ۠, reason: not valid java name and contains not printable characters */
    public static RectF m3110(Object obj) {
        if (C0284.m1686() > 0) {
            return ((CircleWheelView) obj).mRectIn;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۡ۟ۥ, reason: not valid java name and contains not printable characters */
    public static Paint m3111(Object obj) {
        if (C0418.m2402() <= 0) {
            return ((CircleWheelView) obj).mSelectPaint;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤ۠ۧۨ, reason: not valid java name and contains not printable characters */
    public static Paint m3112(Object obj) {
        if (C0130.m660() <= 0) {
            return ((CircleWheelView) obj).mTextPaint;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۡۦۣ, reason: not valid java name and contains not printable characters */
    public static void m3113(Object obj, int i, int i2) {
        if (C0628.m5156() < 0) {
            ((CircleWheelView) obj).setMeasuredDimension(i, i2);
        }
    }

    /* JADX INFO: renamed from: ۤۢ۟ۥ, reason: not valid java name and contains not printable characters */
    public static void m3114(Object obj, Object obj2, float f, Object obj3, Object obj4, float f2, float f3) {
        if (C0252.m1445() <= 0) {
            ((CircleWheelView) obj).drawText((Canvas) obj2, f, (String) obj3, (Paint) obj4, f2, f3);
        }
    }

    /* JADX INFO: renamed from: ۤۧ۠ۥ, reason: not valid java name and contains not printable characters */
    public static void m3115(Object obj) {
        if (C0472.m2700() < 0) {
            ((CircleWheelView) obj).clearData();
        }
    }

    /* JADX INFO: renamed from: ۥۥۣۨ, reason: contains not printable characters */
    public static boolean m3116(Object obj, Object obj2) {
        if (C0300.m1788() <= 0) {
            return ((CircleWheelView) obj).isInCenter((MotionEvent) obj2);
        }
        return false;
    }

    /* JADX INFO: renamed from: ۦۦۡ۠, reason: contains not printable characters */
    public static List m3117(Object obj) {
        if (C0456.m2609() > 0) {
            return ((CircleWheelView) obj).mTextList;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۧۢۢۦ, reason: not valid java name and contains not printable characters */
    public static String m3118(Object obj) {
        if (C0080.m409() <= 0) {
            return ((CircleWheelView) obj).mCenterStr;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۨۥۦۡ, reason: not valid java name and contains not printable characters */
    public static RectF m3119(Object obj) {
        if (C0355.m2054() < 0) {
            return ((CircleWheelView) obj).mRectOut;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۨۨ۠ۧ, reason: not valid java name and contains not printable characters */
    public static void m3120(Object obj) {
        if (C0100.m498() >= 0) {
            ((CircleWheelView) obj).initView();
        }
    }

    public final float getMArcRadiu() {
        return m3089(this);
    }

    public final RectF getMArcRect() {
        return m3096(this);
    }

    public final float getMCenterRadiu() {
        return m3088(this);
    }

    public final String getMCenterStr() {
        return m3118(this);
    }

    public final float getMChangeAngel() {
        return m3107(this);
    }

    public final boolean getMIsPress() {
        return m3109(this);
    }

    public final int getMLastArea() {
        return m3099(this);
    }

    public final int getMLastPos() {
        return m3102(this);
    }

    public final OnWheelClickListener getMOnWheelClickListener() {
        return m3100(this);
    }

    public final RectF getMRectIn() {
        return m3110(this);
    }

    public final RectF getMRectOut() {
        return m3119(this);
    }

    public final List<Region> getMRegionList() {
        return m3105(this);
    }

    public final List<String> getMTextList() {
        return m3117(this);
    }

    public final float getMWRadius() {
        return m3095(this);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Paint paint;
        Paint paint2;
        C0432.m2481(canvas, C0526.m2954(m3108(), CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256, 6, 1760));
        super.onDraw(canvas);
        float fM3095 = m3095(this);
        C0518.m2920(canvas, fM3095, fM3095);
        this.mChangeAngel = 360.0f / C0656.m5442(m3117(this));
        boolean zM3109 = m3109(this);
        String strM6625 = C0926.m6625(m3108(), CipherSuite.TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256, 10, 1806);
        String strM1274 = C0231.m1274(m3108(), CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256, 14, 2575);
        if (zM3109) {
            Bitmap bitmapM3103 = m3103(this);
            String strM5633 = C0697.m5633(m3108(), 210, 3, 817);
            if (bitmapM3103 == null) {
                C0141.m692(strM5633);
                bitmapM3103 = null;
            }
            Bitmap bitmapM3104 = m3103(this);
            if (bitmapM3104 == null) {
                C0141.m692(strM5633);
                bitmapM3104 = null;
            }
            int iM150 = C0033.m150(bitmapM3104);
            Bitmap bitmapM3105 = m3103(this);
            if (bitmapM3105 == null) {
                C0141.m692(strM5633);
                bitmapM3105 = null;
            }
            Rect rect = new Rect(0, 0, iM150, C0416.m2394(bitmapM3105));
            float fM3096 = m3095(this);
            RectF rectF = new RectF(-fM3096, -fM3096, fM3096, fM3096);
            Paint paintM3091 = m3091(this);
            if (paintM3091 == null) {
                C0141.m692(strM1274);
                paintM3091 = null;
            }
            C0710.m5692(canvas, bitmapM3103, rect, rectF, paintM3091);
            C0840.m6265(m3105(this));
            int iM5442 = C0656.m5442(m3117(this));
            for (int i = 0; i < iM5442; i++) {
                float fM3107 = m3107(this);
                float f = i * fM3107;
                Path pathM3098 = m3098(this, m3110(this), m3096(this), f, fM3107);
                Paint paintM3101 = m3101(this);
                if (paintM3101 == null) {
                    C0141.m692(C0923.m6612(m3108(), 213, 9, 2325));
                    paintM3101 = null;
                }
                C0326.m1925(canvas, pathM3098, paintM3101);
                float f2 = 2;
                float fM3108 = f + (m3107(this) / f2);
                String str = (String) C0048.m246(m3117(this), i);
                Paint paintM3112 = m3112(this);
                if (paintM3112 == null) {
                    C0141.m692(strM6625);
                    paint2 = null;
                } else {
                    paint2 = paintM3112;
                }
                float f3 = 3;
                m3114(this, canvas, fM3108, str, paint2, m3089(this), (m3088(this) * f2) / f3);
                C0887.m6466(m3105(this), m3104(this, pathM3098));
                m3090(this, canvas, m3089(this), (m3088(this) * f2) / f3, f + m3107(this));
                if (m3099(this) == i) {
                    Paint paintM3111 = m3111(this);
                    if (paintM3111 == null) {
                        C0141.m692(C0541.m3051(m3108(), 222, 12, 834));
                        paintM3111 = null;
                    }
                    C0326.m1925(canvas, pathM3098, paintM3111);
                }
            }
        }
        if (m3109(this)) {
            Bitmap bitmapM3093 = m3093(this);
            String strM6016 = C0782.m6016(m3108(), 234, 18, 1599);
            if (bitmapM3093 == null) {
                C0141.m692(strM6016);
                bitmapM3093 = null;
            }
            Bitmap bitmapM3094 = m3093(this);
            if (bitmapM3094 == null) {
                C0141.m692(strM6016);
                bitmapM3094 = null;
            }
            int iM151 = C0033.m150(bitmapM3094);
            Bitmap bitmapM3095 = m3093(this);
            if (bitmapM3095 == null) {
                C0141.m692(strM6016);
                bitmapM3095 = null;
            }
            Rect rect2 = new Rect(0, 0, iM151, C0416.m2394(bitmapM3095));
            float fM3088 = m3088(this);
            RectF rectF2 = new RectF(-fM3088, -fM3088, fM3088, fM3088);
            Paint paintM3092 = m3091(this);
            if (paintM3092 == null) {
                C0141.m692(strM1274);
                paintM3092 = null;
            }
            C0710.m5692(canvas, bitmapM3093, rect2, rectF2, paintM3092);
        } else {
            Bitmap bitmapM3106 = m3106(this);
            String strM6708 = C0946.m6708(m3108(), 252, 19, 475);
            if (bitmapM3106 == null) {
                C0141.m692(strM6708);
                bitmapM3106 = null;
            }
            Bitmap bitmapM3107 = m3106(this);
            if (bitmapM3107 == null) {
                C0141.m692(strM6708);
                bitmapM3107 = null;
            }
            int iM152 = C0033.m150(bitmapM3107);
            Bitmap bitmapM3108 = m3106(this);
            if (bitmapM3108 == null) {
                C0141.m692(strM6708);
                bitmapM3108 = null;
            }
            Rect rect3 = new Rect(0, 0, iM152, C0416.m2394(bitmapM3108));
            float fM3089 = m3088(this);
            RectF rectF3 = new RectF(-fM3089, -fM3089, fM3089, fM3089);
            Paint paintM3093 = m3091(this);
            if (paintM3093 == null) {
                C0141.m692(strM1274);
                paintM3093 = null;
            }
            C0710.m5692(canvas, bitmapM3106, rect3, rectF3, paintM3093);
        }
        Paint paintM3113 = m3112(this);
        if (paintM3113 == null) {
            C0141.m692(strM6625);
            paint = null;
        } else {
            paint = paintM3113;
        }
        m3097(this, canvas, paint, m3118(this), m3088(this));
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int iM2926 = C0519.m2926(widthMeasureSpec);
        int iM5728 = C0718.m5728(widthMeasureSpec);
        if (iM2926 != 1073741824) {
            iM5728 = C0182.m873(C0484.m2752(this), 165.0f);
        }
        float f = iM5728 / 2.0f;
        this.mWRadius = f;
        float f2 = 3;
        this.mCenterRadiu = (f2 * f) / 7;
        this.mArcRadiu = (CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA * f) / 165.0f;
        C0112.m557(m3119(this), -f, -f, f, f);
        RectF rectFM3110 = m3110(this);
        float fM3088 = m3088(this);
        float f3 = 2;
        C0112.m557(rectFM3110, ((-fM3088) * f3) / f2, ((-fM3088) * f3) / f2, (fM3088 * f3) / f2, (fM3088 * f3) / f2);
        RectF rectFM3096 = m3096(this);
        float fM3089 = m3089(this);
        C0112.m557(rectFM3096, -fM3089, -fM3089, fM3089, fM3089);
        m3113(this, iM5728, iM5728);
        C0554.m3261(C0254.m1492(new StringBuilder(C0359.m2071(m3108(), 271, 9, 912)), m3095(this)));
        C0953.m6738(m3108(), 280, 15, 2750);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        C0432.m2481(event, C0781.m6011(m3108(), 295, 5, 3077));
        int iM4513 = C0563.m4513(event);
        if (iM4513 != 0) {
            if (iM4513 == 1) {
                int iM3094 = m3094(this, event, m3105(this));
                OnWheelClickListener onWheelClickListenerM3100 = m3100(this);
                if (onWheelClickListenerM3100 != null) {
                    C0696.m5627(onWheelClickListenerM3100, iM3094);
                }
                m3115(this);
                m3092(this, false);
            } else if (iM4513 == 2) {
                int iM3095 = m3094(this, event, m3105(this));
                if (iM3095 == -1) {
                    if (m3099(this) > -1) {
                        this.mLastArea = -1;
                        m3092(this, true);
                    }
                } else if (iM3095 != m3099(this)) {
                    this.mLastPos = iM3095;
                    C0052.m261(this);
                    this.mLastArea = iM3095;
                }
            }
        } else {
            if (!m3116(this, event)) {
                return super.onTouchEvent(event);
            }
            m3092(this, true);
        }
        return true;
    }

    public final void setMArcRadiu(float f) {
        this.mArcRadiu = f;
    }

    public final void setMArcRect(RectF rectF) {
        C0432.m2481(rectF, C0396.m2288(m3108(), 300, 7, 3211));
        this.mArcRect = rectF;
    }

    public final void setMCenterRadiu(float f) {
        this.mCenterRadiu = f;
    }

    public final void setMCenterStr(String str) {
        C0432.m2481(str, C0003.m13(m3108(), 307, 7, 754));
        this.mCenterStr = str;
    }

    public final void setMChangeAngel(float f) {
        this.mChangeAngel = f;
    }

    public final void setMIsPress(boolean z) {
        this.mIsPress = z;
    }

    public final void setMLastArea(int i) {
        this.mLastArea = i;
    }

    public final void setMLastPos(int i) {
        this.mLastPos = i;
    }

    public final void setMOnWheelClickListener(OnWheelClickListener onWheelClickListener) {
        this.mOnWheelClickListener = onWheelClickListener;
    }

    public final void setMRectIn(RectF rectF) {
        C0432.m2481(rectF, C0691.m5606(m3108(), 314, 7, 3232));
        this.mRectIn = rectF;
    }

    public final void setMRectOut(RectF rectF) {
        C0432.m2481(rectF, C0561.m4504(m3108(), 321, 7, 1454));
        this.mRectOut = rectF;
    }

    public final void setMRegionList(List<Region> list) {
        C0432.m2481(list, C0154.m746(m3108(), 328, 7, 840));
        this.mRegionList = list;
    }

    public final void setMTextList(List<String> list) {
        C0432.m2481(list, C0434.m2507(m3108(), 335, 7, 1778));
        this.mTextList = list;
    }

    public final void setMWRadius(float f) {
        this.mWRadius = f;
    }
}

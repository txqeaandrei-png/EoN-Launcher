package dev.blaze.launcher.ui;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.PopupWindow;
import androidx.arch.core.util.C0024;
import androidx.browser.C0036;
import androidx.customview.C0117;
import androidx.interpolator.view.animation.C0129;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.runtime.C0148;
import androidx.resourceinspection.annotation.C0171;
import androidx.swiperefreshlayout.C0180;
import androidx.webkit.C0196;
import androidx.window.C0201;
import com.braze.configuration.C0214;
import com.braze.configuration.C0215;
import com.braze.models.outgoing.event.C0235;
import com.braze.requests.framework.queue.C0241;
import com.braze.support.delegates.C0244;
import com.braze.triggers.events.C0252;
import com.braze.ui.C0296;
import com.braze.ui.banners.C0263;
import com.braze.ui.feed.view.C0276;
import com.google.android.datatransport.runtime.backends.C0305;
import com.google.android.datatransport.runtime.firebase.transport.C0312;
import com.google.android.gms.common.annotation.C0328;
import com.google.android.material.bottomappbar.C0363;
import com.google.android.material.circularreveal.coordinatorlayout.C0381;
import com.google.android.material.drawable.C0390;
import com.google.android.material.expandable.C0392;
import com.google.firebase.emulators.C0439;
import com.google.firebase.installations.ktx.C0454;
import com.google.gson.internal.bind.C0473;
import com.microsoft.xbox.service.model.C0495;
import com.microsoft.xbox.xle.anim.C0511;
import dev.blaze.launcher.ui.dashboard.C0544;
import java.io.IOException;
import kotlin.C0612;
import kotlin.js.C0583;
import okhttp3.internal.connection.C0637;
import okhttp3.internal.http.C0640;
import org.apache.http.HttpStatus;
import org.apache.http.client.protocol.C0671;
import org.apache.http.config.C0673;
import org.apache.http.conn.routing.C0676;
import org.apache.http.impl.io.C0694;
import org.apache.http.pool.C0703;
import org.apache.http.protocol.C0706;
import org.simpleframework.xml.C0726;
import org.simpleframework.xml.util.C0725;
import org.spongycastle.asn1.cmp.C0736;
import org.spongycastle.cert.ocsp.jcajce.C0781;
import org.spongycastle.crypto.examples.C0803;
import org.spongycastle.crypto.params.C0814;
import org.spongycastle.jcajce.provider.asymmetric.dh.C0834;
import org.spongycastle.jcajce.provider.util.C0858;
import org.spongycastle.math.ec.C0871;
import org.spongycastle.math.field.C0874;
import org.spongycastle.pkcs.jcajce.C0899;
import org.xmlpull.v1.C0954;
import org.xmlpull.v1.wrapper.C0952;

/* JADX INFO: loaded from: classes3.dex */
public class ClickGuiButton extends PopupWindow {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f538short = {2105, 2104, 2091, 2163, 2111, 2097, 2108, 2087, 2104, 2163, 2097, 2108, 2088, 2099, 2110, 2101, 2104, 2095, 2770, 2769, 2777, 2769, 2785, 2769, 2776, 2776, 2704, 2766, 2768, 2777};
    private float X;
    private final Activity activity;
    private MutableLiveData<Bitmap> bitmap;
    private boolean isEnable;
    private ImageView mButton;
    public final String text;
    private long downTime = 0;
    private boolean isShow = false;
    private float Y = 0.0f;

    public ClickGuiButton(Activity activity, String str, boolean z) {
        this.activity = activity;
        this.text = str;
        this.isEnable = z;
        try {
            Bitmap bitmapM2704 = C0473.m2704(C0180.m862(C0671.m5513(C0676.m5535(C0511.m2877(), C0214.m1137(m3131(), 0, 18, 2141), 0)), C0640.m5347(m3131(), 18, 12, 2750)));
            ImageView imageView = new ImageView(activity);
            this.mButton = imageView;
            C0244.m1411(imageView, bitmapM2704);
            C0117.m579(m3130(this), 1.0f);
            C0736.m5812(m3130(this), 1.0f);
            C0148.m719(this, m3130(this));
            GradientDrawable gradientDrawable = new GradientDrawable();
            C0263.m1539(gradientDrawable, C0196.m940(127, 0, 0, 0));
            C0235.m1292(gradientDrawable, 20.0f);
            C0706.m5677(gradientDrawable, C0725.m5761(), C0725.m5761());
            C0390.m2260(this, gradientDrawable);
            C0276.m1608(m3130(this), gradientDrawable);
            C0637.m5331(this, C0725.m5761());
            C0781.m6010(this, C0725.m5761());
            C0834.m6239(this, 100.0f);
            C0036.m161(m3130(this), new ClickGuiButton$$ExternalSyntheticLambda0(this));
            C0252.m1447(m3130(this), new View.OnLongClickListener() { // from class: dev.blaze.launcher.ui.ClickGuiButton$$ExternalSyntheticLambda1
                /* JADX INFO: renamed from: ۦۣۢۢ, reason: contains not printable characters */
                public static boolean m3135(Object obj) {
                    if (C0952.m6737() >= 0) {
                        return ClickGuiButton.lambda$new$1((View) obj);
                    }
                    return false;
                }

                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return m3135(view);
                }
            });
            C0439.m2530(m3130(this), new View.OnTouchListener() { // from class: dev.blaze.launcher.ui.ClickGuiButton.1
                private float lastX;
                private float lastY;

                {
                    this.lastX = m3143(ClickGuiButton.this);
                    this.lastY = m3138(ClickGuiButton.this);
                }

                /* JADX INFO: renamed from: ۟ۡۢۦ, reason: not valid java name and contains not printable characters */
                public static float m3136(Object obj) {
                    if (C0874.m6416() >= 0) {
                        return ((AnonymousClass1) obj).lastY;
                    }
                    return 0.0f;
                }

                /* JADX INFO: renamed from: ۣ۟ۧۦ۟, reason: not valid java name and contains not printable characters */
                public static ClickGuiButton m3137(Object obj) {
                    if (C0381.m2175() >= 0) {
                        return ClickGuiButton.this;
                    }
                    return null;
                }

                /* JADX INFO: renamed from: ۣ۟ۤۧۢ, reason: not valid java name and contains not printable characters */
                public static float m3138(Object obj) {
                    if (C0129.m656() >= 0) {
                        return ClickGuiButton.m3133((ClickGuiButton) obj);
                    }
                    return 0.0f;
                }

                /* JADX INFO: renamed from: ۟ۦۧۤۦ, reason: not valid java name and contains not printable characters */
                public static void m3139(Object obj, long j) {
                    if (C0871.m6402() > 0) {
                        ((ClickGuiButton) obj).downTime = j;
                    }
                }

                /* JADX INFO: renamed from: ۟ۦۨۡۨ, reason: not valid java name and contains not printable characters */
                public static long m3140(Object obj) {
                    if (C0328.m1937() < 0) {
                        return ClickGuiButton.m3128((ClickGuiButton) obj);
                    }
                    return 0L;
                }

                /* JADX INFO: renamed from: ۤۡۤۧ, reason: not valid java name and contains not printable characters */
                public static void m3141(Object obj, float f) {
                    if (C0296.m1771() >= 0) {
                        ((ClickGuiButton) obj).X = f;
                    }
                }

                /* JADX INFO: renamed from: ۥۧۤۤ, reason: contains not printable characters */
                public static float m3142(Object obj) {
                    if (C0814.m6151() < 0) {
                        return ((AnonymousClass1) obj).lastX;
                    }
                    return 0.0f;
                }

                /* JADX INFO: renamed from: ۧۤۤۦ, reason: not valid java name and contains not printable characters */
                public static float m3143(Object obj) {
                    if (C0612.m5023() > 0) {
                        return ClickGuiButton.m3132((ClickGuiButton) obj);
                    }
                    return 0.0f;
                }

                /* JADX INFO: renamed from: ۨۦ, reason: not valid java name and contains not printable characters */
                public static void m3144(Object obj, float f) {
                    if (C0454.m2601() <= 0) {
                        ((ClickGuiButton) obj).Y = f;
                    }
                }

                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (!C0703.m5660(view)) {
                        return false;
                    }
                    int iM6102 = C0803.m6102(motionEvent);
                    if (iM6102 == 0) {
                        this.lastX = C0899.m6504(motionEvent);
                        this.lastY = C0726.m5766(motionEvent);
                        m3139(m3137(this), C0215.m1140());
                        return false;
                    }
                    if (iM6102 == 1 || iM6102 != 2 || C0215.m1140() - m3140(m3137(this)) <= 200) {
                        return false;
                    }
                    float fM6504 = C0899.m6504(motionEvent);
                    float fM5766 = C0726.m5766(motionEvent);
                    float fM3142 = fM6504 - m3142(this);
                    float fM3136 = fM5766 - m3136(this);
                    ClickGuiButton clickGuiButtonM3137 = m3137(this);
                    m3141(clickGuiButtonM3137, m3143(clickGuiButtonM3137) + fM3142);
                    ClickGuiButton clickGuiButtonM3138 = m3137(this);
                    m3144(clickGuiButtonM3138, m3138(clickGuiButtonM3138) + fM3136);
                    ClickGuiButton clickGuiButtonM3139 = m3137(this);
                    C0024.m113(clickGuiButtonM3139, C0858.m6344(m3143(clickGuiButtonM3139)), C0858.m6344(m3138(m3137(this))), -1, -1);
                    ClickGuiButton clickGuiButtonM31310 = m3137(this);
                    m3141(clickGuiButtonM31310, C0858.m6344(m3143(clickGuiButtonM31310)));
                    ClickGuiButton clickGuiButtonM31311 = m3137(this);
                    m3144(clickGuiButtonM31311, C0858.m6344(m3138(clickGuiButtonM31311)));
                    this.lastX = fM6504;
                    this.lastY = fM5766;
                    return false;
                }
            });
        } catch (PackageManager.NameNotFoundException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static native boolean getEnable();

    private /* synthetic */ void lambda$new$0(View view) {
        C0495.m2802(!C0171.m821());
        boolean zM821 = C0171.m821();
        this.isEnable = zM821;
        C0544.m3196(this, zM821);
    }

    static /* synthetic */ boolean lambda$new$1(View view) {
        return true;
    }

    public static native void toggle(boolean z);

    /* JADX INFO: renamed from: ۟۟ۨۨ۟, reason: not valid java name and contains not printable characters */
    public static long m3128(Object obj) {
        if (C0312.m1843() > 0) {
            return ((ClickGuiButton) obj).downTime;
        }
        return 0L;
    }

    /* JADX INFO: renamed from: ۣۣ۟ۥۤ, reason: not valid java name and contains not printable characters */
    public static void m3129(Object obj, Object obj2) {
        if (C0201.m971() <= 0) {
            ((ClickGuiButton) obj).lambda$new$0((View) obj2);
        }
    }

    /* JADX INFO: renamed from: ۣ۟ۥۢۡ, reason: not valid java name and contains not printable characters */
    public static ImageView m3130(Object obj) {
        if (C0694.m5616() <= 0) {
            return ((ClickGuiButton) obj).mButton;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۣۣ۟ۧۦ, reason: not valid java name and contains not printable characters */
    public static short[] m3131() {
        if (C0952.m6737() >= 0) {
            return f538short;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۢۥۡ, reason: not valid java name and contains not printable characters */
    public static float m3132(Object obj) {
        if (C0673.m5526() >= 0) {
            return ((ClickGuiButton) obj).X;
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: ۤۢۢ۠, reason: not valid java name and contains not printable characters */
    public static float m3133(Object obj) {
        if (C0305.m1812() > 0) {
            return ((ClickGuiButton) obj).Y;
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: ۥۦۦ۠, reason: contains not printable characters */
    public static boolean m3134(Object obj) {
        if (C0241.m1369() > 0) {
            return ((ClickGuiButton) obj).isShow;
        }
        return false;
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        if (C0363.m2088(this)) {
            super.dismiss();
            this.isShow = false;
        }
    }

    public boolean isShow() {
        return m3134(this);
    }

    public void setEnable(boolean z) {
        if (!z) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            C0263.m1539(gradientDrawable, C0196.m940(127, 0, 0, 0));
            C0235.m1292(gradientDrawable, 20.0f);
            C0706.m5677(gradientDrawable, C0725.m5761(), C0725.m5761());
            C0390.m2260(this, gradientDrawable);
            C0276.m1608(m3130(this), gradientDrawable);
            C0583.m4612(m3130(this), C0196.m940(0, 40, 255, HttpStatus.SC_RESET_CONTENT));
            return;
        }
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        C0263.m1539(gradientDrawable2, C0196.m940(127, 0, 0, 0));
        C0235.m1292(gradientDrawable2, 20.0f);
        C0706.m5677(gradientDrawable2, C0725.m5761(), C0725.m5761());
        C0392.m2271(gradientDrawable2, 7, C0196.m940(255, 40, 255, HttpStatus.SC_RESET_CONTENT));
        C0390.m2260(this, gradientDrawable2);
        C0276.m1608(m3130(this), gradientDrawable2);
        C0583.m4612(m3130(this), C0196.m940(255, 40, 255, HttpStatus.SC_RESET_CONTENT));
    }

    public void show(int i, int i2) {
        if (C0363.m2088(this)) {
            return;
        }
        C0954.m6748(this, m3130(this), 17, i, i2);
        this.X = i;
        this.Y = i2;
        this.isShow = true;
    }
}

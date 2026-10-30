package dev.blaze.launcher.ui;

import android.app.Activity;
import android.graphics.Paint;
import android.graphics.drawable.GradientDrawable;
import android.support.customtabs.C0000;
import android.support.v4.os.C0004;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.PopupWindow;
import androidx.concurrent.futures.C0042;
import androidx.constraintlayout.core.state.C0049;
import androidx.core.net.C0083;
import androidx.drawerlayout.C0119;
import androidx.emoji2.viewsintegration.C0124;
import androidx.lifecycle.livedata.core.C0140;
import androidx.lifecycle.livedata.ktx.C0143;
import androidx.navigation.common.C0160;
import androidx.recyclerview.C0170;
import androidx.webkit.C0196;
import androidx.webkit.internal.C0195;
import com.braze.configuration.C0215;
import com.braze.models.outgoing.event.C0235;
import com.braze.triggers.config.C0251;
import com.braze.triggers.events.C0252;
import com.braze.ui.banners.C0263;
import com.braze.ui.inappmessage.factories.C0281;
import com.google.android.datatransport.cct.internal.C0304;
import com.google.android.material.carousel.C0373;
import com.google.android.material.circularreveal.C0383;
import com.google.android.material.expandable.C0392;
import com.google.android.material.shadow.C0409;
import com.google.android.material.tabs.C0418;
import com.google.firebase.analytics.connector.C0432;
import com.google.firebase.encoders.config.C0441;
import com.google.firebase.installations.ktx.C0454;
import com.microsoft.xbox.service.model.serialization.C0493;
import com.microsoft.xbox.xle.model.C0519;
import go.C0551;
import javax.xml.C0555;
import javax.xml.stream.util.C0554;
import kotlin.io.C0580;
import kotlin.io.encoding.C0576;
import kotlin.jvm.C0591;
import kotlin.random.C0594;
import kotlin.streams.jdk8.C0603;
import kotlin.system.C0606;
import okhttp3.internal.http.C0638;
import okhttp3.internal.http2.C0643;
import okhttp3.internal.proxy.C0648;
import org.apache.http.HttpStatus;
import org.apache.http.impl.io.C0694;
import org.apache.http.pool.C0703;
import org.simpleframework.xml.C0726;
import org.spongycastle.asn1.oiw.C0761;
import org.spongycastle.asn1.x509.qualified.C0767;
import org.spongycastle.cert.crmf.jcajce.C0778;
import org.spongycastle.cert.ocsp.jcajce.C0781;
import org.spongycastle.crypto.agreement.kdf.C0791;
import org.spongycastle.crypto.engines.C0801;
import org.spongycastle.crypto.examples.C0803;
import org.spongycastle.crypto.io.C0805;
import org.spongycastle.crypto.util.C0819;
import org.spongycastle.jcajce.provider.util.C0858;
import org.spongycastle.jce.spec.C0864;
import org.spongycastle.pkcs.jcajce.C0899;
import org.spongycastle.pqc.jcajce.provider.mceliece.C0914;
import org.spongycastle.pqc.jcajce.provider.mceliece.C0915;
import org.xmlpull.v1.builder.C0947;

/* JADX INFO: loaded from: classes3.dex */
public class ShortcutButton extends PopupWindow {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f541short = {2124, 2089, 2089, 2089, 2089, 2089, 2089, 2783, 2780, 2781, 2954, 3055, 3055, 3055, 3055, 3055, 3055};
    private float X;
    private final Activity activity;
    private final Button mButton;
    public final String text;
    private long downTime = 0;
    private boolean isShow = false;
    private float Y = 0.0f;

    public ShortcutButton(Activity activity, String str, boolean z) {
        this.activity = activity;
        this.text = str;
        Button button = new Button(activity);
        this.mButton = button;
        C0195.m932(button, 9.35f);
        C0160.m775(button, C0119.m590(C0252.m1444(m3154(), 0, 7, 2159)));
        C0432.m2485(button, true);
        C0124.m616(button, 17);
        C0694.m5618(button, str);
        C0373.m2139(button, false);
        C0304.m1808(this, button);
        Paint paint = new Paint();
        C0914.m6573(paint, C0251.m1443(button) * 2.0f);
        float fM4578 = C0576.m4578(paint, C0554.m3261(C0281.m1661(C0281.m1661(new StringBuilder(), str), C0819.m6175(m3154(), 7, 3, 2718)))) * 1.7f * 0.35f;
        Paint.FontMetrics fontMetricsM2797 = C0493.m2797(paint);
        float fM20 = C0004.m20(fontMetricsM2797) - C0643.m5360(fontMetricsM2797);
        GradientDrawable gradientDrawable = new GradientDrawable();
        C0263.m1539(gradientDrawable, C0196.m940(127, 0, 0, 0));
        C0235.m1292(gradientDrawable, 15.0f);
        C0603.m4790(this, gradientDrawable);
        C0606.m4802(button, gradientDrawable);
        C0594.m4681(this, (int) (((double) fM4578) * 1.2d));
        C0638.m5335(this, (int) (((double) fM20) * 1.5d));
        C0409.m2360(this, 100.0f);
        C0947.m6711(button, new ShortcutButton$$ExternalSyntheticLambda0(str));
        C0519.m2924(button, new View.OnLongClickListener() { // from class: dev.blaze.launcher.ui.ShortcutButton$$ExternalSyntheticLambda1
            /* JADX INFO: renamed from: ۟ۤۢۢ۟, reason: not valid java name and contains not printable characters */
            public static boolean m3160(Object obj) {
                if (C0143.m701() > 0) {
                    return ShortcutButton.lambda$new$1((View) obj);
                }
                return false;
            }

            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return m3160(view);
            }
        });
        C0801.m6097(button, new View.OnTouchListener(str) { // from class: dev.blaze.launcher.ui.ShortcutButton.1
            private float lastX;
            private float lastY;
            final /* synthetic */ String val$text;

            {
                this.val$text = str;
                this.lastX = C0580.m4597(str);
                this.lastY = C0140.m688(str);
            }

            /* JADX INFO: renamed from: ۟۟ۢ۟ۨ, reason: not valid java name and contains not printable characters */
            public static float m3161(Object obj) {
                if (C0805.m6112() <= 0) {
                    return ((AnonymousClass1) obj).lastX;
                }
                return 0.0f;
            }

            /* JADX INFO: renamed from: ۟۟ۦۧۥ, reason: not valid java name and contains not printable characters */
            public static float m3162(Object obj) {
                if (C0042.m217() <= 0) {
                    return ShortcutButton.m3158((ShortcutButton) obj);
                }
                return 0.0f;
            }

            /* JADX INFO: renamed from: ۟ۡۨۧۦ, reason: not valid java name and contains not printable characters */
            public static float m3163(Object obj) {
                if (C0915.m6578() < 0) {
                    return ((AnonymousClass1) obj).lastY;
                }
                return 0.0f;
            }

            /* JADX INFO: renamed from: ۟ۧ۠ۡۦ, reason: not valid java name and contains not printable characters */
            public static float m3164(Object obj) {
                if (C0864.m6369() >= 0) {
                    return ShortcutButton.m3156((ShortcutButton) obj);
                }
                return 0.0f;
            }

            /* JADX INFO: renamed from: ۟ۧ۠ۥ, reason: not valid java name and contains not printable characters */
            public static void m3165(Object obj, float f) {
                if (C0000.m2() >= 0) {
                    ((ShortcutButton) obj).Y = f;
                }
            }

            /* JADX INFO: renamed from: ۟ۧۥ۠ۢ, reason: not valid java name and contains not printable characters */
            public static void m3166(Object obj, long j) {
                if (C0555.m3269() <= 0) {
                    ((ShortcutButton) obj).downTime = j;
                }
            }

            /* JADX INFO: renamed from: ۣۢۡ, reason: not valid java name and contains not printable characters */
            public static long m3167(Object obj) {
                if (C0801.m6094() < 0) {
                    return ShortcutButton.m3157((ShortcutButton) obj);
                }
                return 0L;
            }

            /* JADX INFO: renamed from: ۥۡۨۡ, reason: contains not printable characters */
            public static ShortcutButton m3168(Object obj) {
                if (C0383.m2186() < 0) {
                    return ShortcutButton.this;
                }
                return null;
            }

            /* JADX INFO: renamed from: ۥۤۦۡ, reason: contains not printable characters */
            public static String m3169(Object obj) {
                if (C0781.m6013() < 0) {
                    return ((AnonymousClass1) obj).val$text;
                }
                return null;
            }

            /* JADX INFO: renamed from: ۣۨ۟۟, reason: not valid java name and contains not printable characters */
            public static void m3170(Object obj, float f) {
                if (C0761.m5923() <= 0) {
                    ((ShortcutButton) obj).X = f;
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
                    m3166(m3168(this), C0215.m1140());
                    return false;
                }
                if (iM6102 == 1 || iM6102 != 2 || C0215.m1140() - m3167(m3168(this)) <= 200) {
                    return false;
                }
                float fM6504 = C0899.m6504(motionEvent);
                float fM5766 = C0726.m5766(motionEvent);
                float fM3161 = fM6504 - m3161(this);
                float fM3163 = fM5766 - m3163(this);
                ShortcutButton shortcutButtonM3168 = m3168(this);
                m3170(shortcutButtonM3168, m3164(shortcutButtonM3168) + fM3161);
                ShortcutButton shortcutButtonM3169 = m3168(this);
                m3165(shortcutButtonM3169, m3162(shortcutButtonM3169) + fM3163);
                ShortcutButton shortcutButtonM31610 = m3168(this);
                C0778.m5997(shortcutButtonM31610, C0858.m6344(m3164(shortcutButtonM31610)), C0858.m6344(m3162(m3168(this))), -1, -1);
                C0767.m5951(m3169(this), C0858.m6344(m3164(m3168(this))));
                C0454.m2600(m3169(this), C0858.m6344(m3162(m3168(this))));
                this.lastX = fM6504;
                this.lastY = fM5766;
                return false;
            }
        });
    }

    static /* synthetic */ boolean lambda$new$1(View view) {
        return true;
    }

    public static native void toggleModuleByName(String str);

    /* JADX INFO: renamed from: ۣ۟ۡۥ, reason: not valid java name and contains not printable characters */
    public static boolean m3153(Object obj) {
        if (C0791.m6053() > 0) {
            return ((ShortcutButton) obj).isShow;
        }
        return false;
    }

    /* JADX INFO: renamed from: ۟ۤ۟ۧ۟, reason: not valid java name and contains not printable characters */
    public static short[] m3154() {
        if (C0441.m2536() <= 0) {
            return f541short;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۤۤۥۨ, reason: not valid java name and contains not printable characters */
    public static Button m3155(Object obj) {
        if (C0170.m816() >= 0) {
            return ((ShortcutButton) obj).mButton;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡۥۦ۟, reason: not valid java name and contains not printable characters */
    public static float m3156(Object obj) {
        if (C0049.m252() < 0) {
            return ((ShortcutButton) obj).X;
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: ۣۢۡۡ, reason: not valid java name and contains not printable characters */
    public static long m3157(Object obj) {
        if (C0418.m2402() < 0) {
            return ((ShortcutButton) obj).downTime;
        }
        return 0L;
    }

    /* JADX INFO: renamed from: ۢۤۨۢ, reason: not valid java name and contains not printable characters */
    public static float m3158(Object obj) {
        if (C0591.m4653() >= 0) {
            return ((ShortcutButton) obj).Y;
        }
        return 0.0f;
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        if (C0648.m5381(this)) {
            super.dismiss();
            this.isShow = false;
        }
    }

    public boolean isShow() {
        return m3153(this);
    }

    public void setEnable(boolean z) {
        if (z) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            C0263.m1539(gradientDrawable, C0196.m940(127, 0, 0, 0));
            C0235.m1292(gradientDrawable, 15.0f);
            C0392.m2271(gradientDrawable, 5, C0196.m940(255, 40, 255, HttpStatus.SC_RESET_CONTENT));
            C0603.m4790(this, gradientDrawable);
            C0606.m4802(m3155(this), gradientDrawable);
            C0160.m775(m3155(this), C0196.m940(255, 40, 255, HttpStatus.SC_RESET_CONTENT));
            return;
        }
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        C0263.m1539(gradientDrawable2, C0196.m940(127, 0, 0, 0));
        C0235.m1292(gradientDrawable2, 15.0f);
        C0392.m2271(gradientDrawable2, 0, C0196.m940(0, 40, 255, HttpStatus.SC_RESET_CONTENT));
        C0603.m4790(this, gradientDrawable2);
        C0606.m4802(m3155(this), gradientDrawable2);
        C0160.m775(m3155(this), C0119.m590(C0551.m3251(m3154(), 10, 7, 2985)));
    }

    public void show(int i, int i2) {
        if (C0648.m5381(this)) {
            return;
        }
        C0083.m423(this, m3155(this), 17, i, i2);
        this.X = i;
        this.Y = i2;
        this.isShow = true;
    }
}

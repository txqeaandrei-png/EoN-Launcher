package dev.blaze.launcher.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import androidx.drawerlayout.C0119;
import androidx.dynamicanimation.animation.C0121;
import com.google.android.gms.actions.C0326;
import com.google.android.material.ripple.C0405;
import kotlin.io.encoding.C0577;
import kotlin.jvm.functions.C0584;
import okhttp3.internal.io.C0644;
import org.spongycastle.asn1.C0770;
import org.spongycastle.asn1.crmf.C0739;
import org.spongycastle.jce.spec.C0865;

/* JADX INFO: loaded from: classes3.dex */
public class ModuleSwitch extends View {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f540short = {1527, 1511, 1508, 1511, 1508, 1511, 1508, 2532, 2545, 2434, 2545, 2434, 2545, 2434};
    private Canvas mCanvas;

    public ModuleSwitch(Context context) {
        super(context);
    }

    /* JADX INFO: renamed from: ۣۢ۟ۡ, reason: not valid java name and contains not printable characters */
    public static short[] m3146() {
        if (C0577.m4583() <= 0) {
            return f540short;
        }
        return null;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mCanvas = canvas;
        Paint paint = new Paint();
        C0326.m1928(paint, C0119.m590(C0865.m6376(m3146(), 0, 7, 1492)));
        C0405.m2328(paint, C0644.m5363());
        Paint paint2 = new Paint();
        C0326.m1928(paint2, C0119.m590(C0770.m5962(m3146(), 7, 7, 2503)));
        C0405.m2328(paint2, C0644.m5363());
        C0739.m5824(canvas, new RectF(0.0f, 0.0f, 300.0f, 300.0f), 10.0f, 10.0f, paint);
        C0121.m599(canvas, 0.0f, 0.0f, 30.0f, paint2);
        C0584.m4617(this);
    }
}

package dev.blaze.launcher.ui;

import android.app.Activity;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.PopupWindow;
import androidx.customview.widget.C0114;
import androidx.dynamicanimation.animation.C0121;
import com.braze.ui.actions.brazeactions.steps.C0254;
import com.braze.ui.banners.C0263;
import com.google.android.gms.common.wrappers.C0344;
import com.google.android.material.chip.C0377;
import com.microsoft.xbox.service.model.C0498;
import javax.xml.stream.util.C0554;
import org.apache.http.conn.routing.C0676;
import org.apache.http.impl.conn.tsccm.C0688;
import org.spongycastle.crypto.kems.C0806;

/* JADX INFO: loaded from: classes3.dex */
public class PopupWindowManager {
    public static boolean canRecord = true;

    public static void circleView(View view, int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        C0114.m565(gradientDrawable, 0);
        C0263.m1539(gradientDrawable, i);
        float f = i2;
        C0676.m5540(gradientDrawable, new float[]{f, f, f, f, f, f, f, f});
        C0254.m1488(view, gradientDrawable);
    }

    public static void circleViewEachRadio(View view, int i, int[] iArr) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        C0114.m565(gradientDrawable, 0);
        C0263.m1539(gradientDrawable, i);
        C0676.m5540(gradientDrawable, new float[]{iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7]});
        C0254.m1488(view, gradientDrawable);
    }

    public static PopupWindow createCanClosePopupWindow(Activity activity, View view, int i, int i2, int i3) {
        PopupWindow popupWindow = new PopupWindow(view, -2, -2, true);
        C0688.m5590(popupWindow, true);
        C0806.m6120(popupWindow, 1);
        C0344.m2003(popupWindow, true);
        C0121.m600(popupWindow, C0498.m2819(C0377.m2159(activity)), i, i2, i3);
        return popupWindow;
    }

    public static PopupWindow createNoClickPopupWindow(Activity activity, View view, int i, int i2, int i3, int i4, int i5, boolean z) {
        PopupWindow popupWindow = new PopupWindow(view, i4, i5, true);
        C0688.m5590(popupWindow, false);
        C0344.m2003(popupWindow, false);
        C0554.m3264(popupWindow, false);
        C0121.m600(popupWindow, C0498.m2819(C0377.m2159(activity)), i, i2, i3);
        return popupWindow;
    }

    public static PopupWindow createNoClickPopupWindow(Activity activity, View view, int i, int i2, int i3, boolean z) {
        PopupWindow popupWindow = new PopupWindow(view, -2, -2, true);
        C0688.m5590(popupWindow, false);
        C0344.m2003(popupWindow, false);
        C0554.m3264(popupWindow, false);
        C0121.m600(popupWindow, C0498.m2819(C0377.m2159(activity)), i, i2, i3);
        return popupWindow;
    }

    public static PopupWindow createPopupWindow(Activity activity, View view, int i, int i2, int i3) {
        PopupWindow popupWindow = new PopupWindow(view, -2, -2, true);
        C0688.m5590(popupWindow, false);
        C0344.m2003(popupWindow, false);
        C0121.m600(popupWindow, C0498.m2819(C0377.m2159(activity)), i, i2, i3);
        return popupWindow;
    }
}

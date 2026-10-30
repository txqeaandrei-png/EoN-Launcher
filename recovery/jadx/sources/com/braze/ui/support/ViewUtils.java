package com.braze.ui.support;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.DisplayCutoutCompat;
import androidx.core.view.WindowInsetsCompat;
import com.braze.enums.inappmessage.Orientation;
import com.braze.support.BrazeLogger;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\f\u0010\u0004\u001a\u00020\u0005*\u0004\u0018\u00010\u0006\u001a\n\u0010\u0007\u001a\u00020\u0005*\u00020\u0006\u001a\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\t\u001a\n\u0010\r\u001a\u00020\u000e*\u00020\u000f\u001a\u0012\u0010\u0010\u001a\u00020\u0005*\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0003\u001a\u0016\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0003\u001a\u000e\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000b\u001a\u0016\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0019\u001a\u000e\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001c\u001a\u000e\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001c\u001a\u000e\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001c\u001a\u000e\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001c\u001a\u000e\u0010 \u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0006\u001a\u000e\u0010!\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"TAG", "", "TABLET_SMALLEST_WIDTH_DP", "", "removeViewFromParent", "", "Landroid/view/View;", "setFocusableInTouchModeAndRequestFocus", "convertDpToPixels", "", "context", "Landroid/content/Context;", "valueInDp", "isRunningOnTablet", "", "Landroid/app/Activity;", "setActivityRequestedOrientation", "requestedOrientation", "setHeightOnViewLayoutParams", "view", "height", "isDeviceInNightMode", "isCurrentOrientationValid", "currentScreenOrientation", "preferredOrientation", "Lcom/braze/enums/inappmessage/Orientation;", "getMaxSafeLeftInset", "windowInsets", "Landroidx/core/view/WindowInsetsCompat;", "getMaxSafeRightInset", "getMaxSafeTopInset", "getMaxSafeBottomInset", "isDeviceNotInTouchMode", "getStatusBarHeight", "android-sdk-ui_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ViewUtils {
    private static final int TABLET_SMALLEST_WIDTH_DP = 600;
    private static final String TAG = BrazeLogger.INSTANCE.getBrazeLogTag("ViewUtils");

    public static final void removeViewFromParent(final View view) {
        if (view == null) {
            try {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.D, (Throwable) null, false, new Function0() { // from class: com.braze.ui.support.ViewUtils$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ViewUtils.removeViewFromParent$lambda$0();
                    }
                }, 12, (Object) null);
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.ui.support.ViewUtils$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ViewUtils.removeViewFromParent$lambda$2();
                    }
                }, 8, (Object) null);
                return;
            }
        }
        if ((view != null ? view.getParent() : null) instanceof ViewGroup) {
            ViewParent parent = view.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            final ViewGroup viewGroup = (ViewGroup) parent;
            viewGroup.removeView(view);
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.D, (Throwable) null, false, new Function0() { // from class: com.braze.ui.support.ViewUtils$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ViewUtils.removeViewFromParent$lambda$1(view, viewGroup);
                }
            }, 12, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeViewFromParent$lambda$0() {
        return "View passed in is null. Not removing from parent.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeViewFromParent$lambda$1(View view, ViewGroup viewGroup) {
        return "Removed view: " + view + "\nfrom parent: " + viewGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeViewFromParent$lambda$2() {
        return "Caught exception while removing view from parent.";
    }

    public static final void setFocusableInTouchModeAndRequestFocus(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        try {
            view.setFocusableInTouchMode(true);
            view.requestFocus();
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.ui.support.ViewUtils$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ViewUtils.setFocusableInTouchModeAndRequestFocus$lambda$3();
                }
            }, 8, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setFocusableInTouchModeAndRequestFocus$lambda$3() {
        return "Caught exception while setting view to focusable in touch mode and requesting focus.";
    }

    public static final double convertDpToPixels(Context context, double d) {
        Intrinsics.checkNotNullParameter(context, "context");
        return d * ((double) context.getResources().getDisplayMetrics().density);
    }

    public static final boolean isRunningOnTablet(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        return activity.getResources().getConfiguration().smallestScreenWidthDp >= 600;
    }

    public static final void setActivityRequestedOrientation(final Activity activity, final int i) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        try {
            activity.setRequestedOrientation(i);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.ui.support.ViewUtils$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ViewUtils.setActivityRequestedOrientation$lambda$4(i, activity);
                }
            }, 8, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setActivityRequestedOrientation$lambda$4(int i, Activity activity) {
        return "Failed to set requested orientation " + i + " for activity class: " + activity.getLocalClassName();
    }

    public static final void setHeightOnViewLayoutParams(View view, int i) {
        Intrinsics.checkNotNullParameter(view, "view");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i;
        view.setLayoutParams(layoutParams);
    }

    public static final boolean isDeviceInNightMode(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static final boolean isCurrentOrientationValid(final int i, final Orientation preferredOrientation) {
        Intrinsics.checkNotNullParameter(preferredOrientation, "preferredOrientation");
        if (i == 2 && preferredOrientation == Orientation.LANDSCAPE) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.D, (Throwable) null, false, new Function0() { // from class: com.braze.ui.support.ViewUtils$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ViewUtils.isCurrentOrientationValid$lambda$5();
                }
            }, 12, (Object) null);
            return true;
        }
        if (i == 1 && preferredOrientation == Orientation.PORTRAIT) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.D, (Throwable) null, false, new Function0() { // from class: com.braze.ui.support.ViewUtils$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ViewUtils.isCurrentOrientationValid$lambda$6();
                }
            }, 12, (Object) null);
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.D, (Throwable) null, false, new Function0() { // from class: com.braze.ui.support.ViewUtils$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ViewUtils.isCurrentOrientationValid$lambda$7(i, preferredOrientation);
            }
        }, 12, (Object) null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isCurrentOrientationValid$lambda$5() {
        return "Current and preferred orientation are landscape.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isCurrentOrientationValid$lambda$6() {
        return "Current and preferred orientation are portrait.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isCurrentOrientationValid$lambda$7(int i, Orientation orientation) {
        return "Current orientation " + i + " and preferred orientation " + orientation + " don't match";
    }

    public static final int getMaxSafeLeftInset(WindowInsetsCompat windowInsets) {
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        DisplayCutoutCompat displayCutout = windowInsets.getDisplayCutout();
        return Math.max(displayCutout != null ? displayCutout.getSafeInsetLeft() : 0, windowInsets.getInsets(WindowInsetsCompat.Type.systemBars()).left);
    }

    public static final int getMaxSafeRightInset(WindowInsetsCompat windowInsets) {
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        DisplayCutoutCompat displayCutout = windowInsets.getDisplayCutout();
        return Math.max(displayCutout != null ? displayCutout.getSafeInsetRight() : 0, windowInsets.getInsets(WindowInsetsCompat.Type.systemBars()).right);
    }

    public static final int getMaxSafeTopInset(WindowInsetsCompat windowInsets) {
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        DisplayCutoutCompat displayCutout = windowInsets.getDisplayCutout();
        return Math.max(displayCutout != null ? displayCutout.getSafeInsetTop() : 0, windowInsets.getInsets(WindowInsetsCompat.Type.systemBars()).top);
    }

    public static final int getMaxSafeBottomInset(WindowInsetsCompat windowInsets) {
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        DisplayCutoutCompat displayCutout = windowInsets.getDisplayCutout();
        return Math.max(displayCutout != null ? displayCutout.getSafeInsetBottom() : 0, windowInsets.getInsets(WindowInsetsCompat.Type.systemBars()).bottom);
    }

    public static final boolean isDeviceNotInTouchMode(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return !view.isInTouchMode();
    }

    public static final int getStatusBarHeight(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }
}

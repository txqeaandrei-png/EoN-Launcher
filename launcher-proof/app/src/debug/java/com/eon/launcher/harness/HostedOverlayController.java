package com.eon.launcher.harness;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;

import com.eon.launcher.gui.ClickGuiView;

final class HostedOverlayController {
    private static final int PANEL_MARGIN_DP = 24;
    private static final int PANEL_VERTICAL_MARGIN_DP = 42;
    private final FrameLayout root;
    private final View scrim;
    private final ClickGuiView clickGuiView;
    private final TextView toggleButton;
    private boolean guiVisible;
    private boolean disposed;

    HostedOverlayController(Activity activity, FrameLayout root) {
        this.root = root;

        scrim = new View(activity);
        scrim.setBackgroundColor(0x56000000);
        scrim.setClickable(true);
        scrim.setOnClickListener(view -> setGuiVisible(false));
        scrim.setVisibility(View.GONE);
        root.addView(scrim, new FrameLayout.LayoutParams(-1, -1));

        clickGuiView = new ClickGuiView(activity);
        clickGuiView.setClickable(true);
        clickGuiView.setVisibility(View.GONE);
        FrameLayout.LayoutParams guiParams = new FrameLayout.LayoutParams(-1, -1, Gravity.CENTER);
        int horizontalMargin = dp(activity, PANEL_MARGIN_DP);
        int verticalMargin = dp(activity, PANEL_VERTICAL_MARGIN_DP);
        guiParams.setMargins(horizontalMargin, verticalMargin, horizontalMargin, verticalMargin);
        root.addView(clickGuiView, guiParams);

        toggleButton = new TextView(activity);
        toggleButton.setText("EON");
        toggleButton.setTextColor(Color.rgb(10, 20, 18));
        toggleButton.setTextSize(13);
        toggleButton.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        toggleButton.setGravity(Gravity.CENTER);
        toggleButton.setContentDescription("Open ClickGUI");
        toggleButton.setBackground(buttonBackground(activity));
        toggleButton.setElevation(dp(activity, 8));
        toggleButton.setClickable(true);
        toggleButton.setFocusable(true);
        toggleButton.setOnClickListener(view -> setGuiVisible(!guiVisible));
        FrameLayout.LayoutParams buttonParams = new FrameLayout.LayoutParams(dp(activity, 58), dp(activity, 58),
                Gravity.BOTTOM | Gravity.END);
        buttonParams.setMargins(dp(activity, 16), dp(activity, 16), dp(activity, 18), dp(activity, 18));
        root.addView(toggleButton, buttonParams);
    }

    boolean isGuiVisible() {
        return guiVisible;
    }

    void setGuiVisible(boolean visible) {
        if (disposed || guiVisible == visible) {
            return;
        }
        guiVisible = visible;
        scrim.setVisibility(visible ? View.VISIBLE : View.GONE);
        clickGuiView.setVisibility(visible ? View.VISIBLE : View.GONE);
        toggleButton.setContentDescription(visible ? "Close ClickGUI" : "Open ClickGUI");
        if (visible) {
            clickGuiView.setAlpha(0f);
            clickGuiView.animate().alpha(1f).setDuration(150).start();
        } else {
            clickGuiView.animate().cancel();
            clickGuiView.setAlpha(1f);
        }
    }

    void dispose() {
        if (disposed) {
            return;
        }
        disposed = true;
        clickGuiView.animate().cancel();
        removeIfAttached(scrim);
        removeIfAttached(clickGuiView);
        removeIfAttached(toggleButton);
    }

    private void removeIfAttached(View view) {
        if (view.getParent() == root) {
            root.removeView(view);
        }
    }

    private static GradientDrawable buttonBackground(Activity activity) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setShape(GradientDrawable.OVAL);
        drawable.setColor(Color.rgb(127, 224, 179));
        drawable.setStroke(dp(activity, 2), Color.rgb(220, 255, 242));
        return drawable;
    }

    private static int dp(Activity activity, int value) {
        return Math.round(value * activity.getResources().getDisplayMetrics().density);
    }
}
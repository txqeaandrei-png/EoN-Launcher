package com.eon.launcher.harness;

import android.graphics.Color;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.FrameLayout;

import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.app.AppCompatActivity;

public final class HostedOverlayHarnessActivity extends AppCompatActivity {
    private static final String STATE_GUI_VISIBLE = "hosted_overlay_gui_visible";
    private FrameLayout root;
    private SyntheticGameSurface gameSurface;
    private HostedOverlayController overlayController;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setStatusBarColor(Color.rgb(10, 14, 17));
        getWindow().setNavigationBarColor(Color.rgb(10, 14, 17));

        root = new FrameLayout(this);
        root.setBackgroundColor(Color.rgb(10, 14, 17));
        gameSurface = new SyntheticGameSurface(this);
        root.addView(gameSurface, new FrameLayout.LayoutParams(-1, -1));

        overlayController = new HostedOverlayController(this, root);
        overlayController.setGuiVisible(savedInstanceState != null
                && savedInstanceState.getBoolean(STATE_GUI_VISIBLE, false));
        setContentView(root);

        getOnBackPressedDispatcher().addCallback(this, new OnBackPressedCallback(true) {
            @Override
            public void handleOnBackPressed() {
                if (overlayController.isGuiVisible()) {
                    overlayController.setGuiVisible(false);
                } else {
                    finish();
                }
            }
        });
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (gameSurface != null) {
            gameSurface.onResume();
        }
    }

    @Override
    protected void onPause() {
        if (gameSurface != null) {
            gameSurface.onPause();
        }
        super.onPause();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        if (overlayController != null) {
            outState.putBoolean(STATE_GUI_VISIBLE, overlayController.isGuiVisible());
        }
        super.onSaveInstanceState(outState);
    }

    @Override
    protected void onDestroy() {
        if (overlayController != null) {
            overlayController.dispose();
            overlayController = null;
        }
        if (gameSurface != null) {
            gameSurface.shutdown();
            gameSurface = null;
        }
        root = null;
        super.onDestroy();
    }
}
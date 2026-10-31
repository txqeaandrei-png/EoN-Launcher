package com.eon.launcher;

import android.os.Bundle;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.eon.launcher.gui.ClickGuiView;

public class MainActivity extends AppCompatActivity {
    private static final String GAME_PACKAGE = "com.mojang.minecraftpe";
    private static final int COLOR_BACKGROUND = Color.rgb(11, 17, 16);
    private static final int COLOR_SURFACE = Color.rgb(21, 31, 29);
    private static final int COLOR_TEXT = Color.rgb(237, 243, 240);
    private static final int COLOR_MUTED = Color.rgb(155, 171, 164);
    private static final int COLOR_ACCENT = Color.rgb(127, 224, 179);

    private FrameLayout contentHost;
    private LinearLayout pageContent;
    private boolean showingControlPanel;
    private boolean showingClickGui;

    static {
        System.loadLibrary("eoncore");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (!nativeInitialize()) {
            throw new IllegalStateException("Eon native runtime failed to initialize");
        }
        getWindow().setStatusBarColor(COLOR_BACKGROUND);
        getWindow().setNavigationBarColor(COLOR_BACKGROUND);
        getWindow().getDecorView().setSystemUiVisibility(0);

        LinearLayout shell = new LinearLayout(this);
        shell.setOrientation(LinearLayout.VERTICAL);
        shell.setBackgroundColor(COLOR_BACKGROUND);

        LinearLayout header = new LinearLayout(this);
        header.setGravity(Gravity.CENTER_VERTICAL);
        header.setPadding(dp(24), dp(12), dp(24), dp(12));
        TextView brand = text("EON", 17, COLOR_ACCENT);
        brand.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        header.addView(brand);
        TextView headerLabel = text("  /  BEDROCK LAUNCHER", 11, COLOR_MUTED);
        header.addView(headerLabel);
        shell.addView(header, new LinearLayout.LayoutParams(-1, dp(64)));

        contentHost = new FrameLayout(this);
        shell.addView(contentHost, new LinearLayout.LayoutParams(-1, 0, 1));

        LinearLayout navigation = new LinearLayout(this);
        navigation.setPadding(dp(16), dp(8), dp(16), dp(12));
        navigation.setOrientation(LinearLayout.HORIZONTAL);
        TextView homeTab = navButton("HOME");
        TextView guiTab = navButton("CLICKGUI");
        TextView panelTab = navButton("STATUS");
        homeTab.setOnClickListener(view -> showHome());
        guiTab.setOnClickListener(view -> showClickGui());
        panelTab.setOnClickListener(view -> showControlPanel());
        LinearLayout.LayoutParams navParams = new LinearLayout.LayoutParams(0, dp(48), 1);
        navigation.addView(homeTab, navParams);
        LinearLayout.LayoutParams guiParams = new LinearLayout.LayoutParams(0, dp(48), 1);
        guiParams.setMargins(dp(8), 0, dp(8), 0);
        navigation.addView(guiTab, guiParams);
        navigation.addView(panelTab, new LinearLayout.LayoutParams(0, dp(48), 1));
        shell.addView(navigation);

        setContentView(shell);
        showHome();
    }

    @Override
    protected void onResume() {
        super.onResume();
        nativeOnResume();
        if (pageContent != null && !showingControlPanel && !showingClickGui) {
            showHome();
        }
    }

    @Override
    protected void onPause() {
        nativeOnPause();
        super.onPause();
    }

    @Override
    protected void onDestroy() {
        nativeShutdown();
        super.onDestroy();
    }

    private void showHome() {
        showingControlPanel = false;
        showingClickGui = false;
        beginScrollablePage();
        pageContent.removeAllViews();
        addLabel("GAME");
        addTitle("Minecraft");
        addBody("Bedrock Edition");
        addSpace(28);

        boolean installed = getPackageManager().getLaunchIntentForPackage(GAME_PACKAGE) != null;
        LinearLayout gameStatus = new LinearLayout(this);
        gameStatus.setOrientation(LinearLayout.VERTICAL);
        gameStatus.setPadding(dp(18), dp(16), dp(18), dp(16));
        gameStatus.setBackground(background(COLOR_SURFACE, 12, 0));
        gameStatus.addView(text("INSTALLATION", 10, COLOR_MUTED));
        TextView status = text(installed ? "Minecraft is installed" : "Minecraft not found", 16,
                installed ? COLOR_TEXT : COLOR_MUTED);
        status.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        LinearLayout.LayoutParams statusParams = new LinearLayout.LayoutParams(-1, -2);
        statusParams.topMargin = dp(8);
        gameStatus.addView(status, statusParams);
        TextView packageName = text(GAME_PACKAGE, 12, COLOR_MUTED);
        LinearLayout.LayoutParams packageParams = new LinearLayout.LayoutParams(-1, -2);
        packageParams.topMargin = dp(5);
        gameStatus.addView(packageName, packageParams);
        pageContent.addView(gameStatus, new LinearLayout.LayoutParams(-1, -2));

        TextView launch = actionButton(installed ? "LAUNCH MINECRAFT" : "MINECRAFT NOT INSTALLED", installed);
        LinearLayout.LayoutParams launchParams = new LinearLayout.LayoutParams(-1, dp(56));
        launchParams.topMargin = dp(18);
        pageContent.addView(launch, launchParams);
        if (installed) {
            launch.setOnClickListener(view -> launchMinecraft());
        }

        if ((getApplicationInfo().flags & android.content.pm.ApplicationInfo.FLAG_DEBUGGABLE) != 0) {
            TextView harness = actionButton("OPEN HOSTED OVERLAY HARNESS  /  DEBUG", true);
            LinearLayout.LayoutParams harnessParams = new LinearLayout.LayoutParams(-1, dp(48));
            harnessParams.topMargin = dp(10);
            pageContent.addView(harness, harnessParams);
            harness.setOnClickListener(view -> {
                Intent intent = new Intent();
                intent.setClassName(this, "com.eon.launcher.harness.HostedOverlayHarnessActivity");
                startActivity(intent);
            });
        }

        addSpace(28);
        addLabel("LAUNCHER CORE");
        addBody("Native core is running in the Eon Launcher process.");
    }

    private void showControlPanel() {
        showingControlPanel = true;
        showingClickGui = false;
        beginScrollablePage();
        pageContent.removeAllViews();
        addLabel("DIAGNOSTICS");
        addTitle("Control panel");
        addSpace(20);
        addStatusRow("Native core", nativeGetStatus(), "READY", COLOR_ACCENT);
        addStatusRow("Minecraft process", "No in-game connection", "NOT CONNECTED", COLOR_MUTED);
        addStatusRow("Rendering API", "No authorized integration configured", "UNAVAILABLE", COLOR_MUTED);
        addStatusRow("Input API", "No authorized integration configured", "UNAVAILABLE", COLOR_MUTED);
    }

    private void showClickGui() {
        showingControlPanel = false;
        showingClickGui = true;
        pageContent = null;
        contentHost.removeAllViews();
        contentHost.addView(new ClickGuiView(this), new FrameLayout.LayoutParams(-1, -1));
    }

    private void beginScrollablePage() {
        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);
        pageContent = new LinearLayout(this);
        pageContent.setOrientation(LinearLayout.VERTICAL);
        pageContent.setPadding(dp(24), dp(20), dp(24), dp(28));
        scrollView.addView(pageContent);
        contentHost.removeAllViews();
        contentHost.addView(scrollView, new FrameLayout.LayoutParams(-1, -1));
    }

    private void launchMinecraft() {
        Intent launchIntent = getPackageManager().getLaunchIntentForPackage(GAME_PACKAGE);
        if (launchIntent != null) {
            startActivity(launchIntent);
        } else {
            showHome();
        }
    }

    private void addStatusRow(String title, String detail, String state, int stateColor) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.VERTICAL);
        row.setPadding(0, dp(14), 0, dp(14));
        TextView heading = text(title, 15, COLOR_TEXT);
        heading.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        row.addView(heading);
        TextView description = text(detail, 12, COLOR_MUTED);
        description.setPadding(0, dp(5), 0, 0);
        row.addView(description);
        TextView stateView = text(state, 10, stateColor);
        stateView.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        stateView.setPadding(0, dp(8), 0, 0);
        row.addView(stateView);
        pageContent.addView(row, new LinearLayout.LayoutParams(-1, -2));
        View divider = new View(this);
        divider.setBackgroundColor(Color.rgb(39, 52, 48));
        pageContent.addView(divider, new LinearLayout.LayoutParams(-1, dp(1)));
    }

    private void addLabel(String value) {
        TextView label = text(value, 10, COLOR_ACCENT);
        label.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        label.setLetterSpacing(0.12f);
        pageContent.addView(label);
    }

    private void addTitle(String value) {
        TextView title = text(value, 30, COLOR_TEXT);
        title.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-1, -2);
        params.topMargin = dp(8);
        pageContent.addView(title, params);
    }

    private void addBody(String value) {
        TextView body = text(value, 14, COLOR_MUTED);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-1, -2);
        params.topMargin = dp(6);
        pageContent.addView(body, params);
    }

    private void addSpace(int height) {
        pageContent.addView(new View(this), new LinearLayout.LayoutParams(1, dp(height)));
    }

    private TextView navButton(String label) {
        TextView button = text(label, 10, COLOR_TEXT);
        button.setGravity(Gravity.CENTER);
        button.setBackground(background(COLOR_SURFACE, 8, 0));
        return button;
    }

    private TextView actionButton(String label, boolean enabled) {
        TextView button = text(label, 12, enabled ? COLOR_BACKGROUND : COLOR_MUTED);
        button.setGravity(Gravity.CENTER);
        button.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        button.setBackground(background(enabled ? COLOR_ACCENT : COLOR_SURFACE, 8, 0));
        button.setEnabled(enabled);
        return button;
    }

    private TextView text(String value, int size, int color) {
        TextView view = new TextView(this);
        view.setText(value);
        view.setTextSize(size);
        view.setTextColor(color);
        return view;
    }

    private GradientDrawable background(int color, int radius, int strokeColor) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(color);
        drawable.setCornerRadius(dp(radius));
        if (strokeColor != 0) {
            drawable.setStroke(dp(1), strokeColor);
        }
        return drawable;
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

    public native boolean nativeInitialize();

    public native void nativeOnResume();

    public native void nativeOnPause();

    public native void nativeShutdown();

    public native String nativeGetStatus();
}

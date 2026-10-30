package dev.blaze.launcher;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.opengl.GLSurfaceView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.Toast;
import dev.blaze.launcher.ui.CircleWheelView;
import dev.blaze.launcher.ui.ClickGuiButton;
import dev.blaze.launcher.ui.OnWheelClickListener;
import dev.blaze.launcher.ui.PopupWindowManager;
import dev.blaze.launcher.ui.ShortcutButton;
import dev.blaze.launcher.utils.TextureLoader;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes3.dex */
public class GLES3JNIView extends GLSurfaceView implements GLSurfaceView.Renderer {
    private static CircleWheelView circleWheelView;
    private static PopupWindow circleWheelWindow;
    public static ClickGuiButton clickGuiButton;
    public static byte[] globalFontData;
    public static Activity mainActivity;
    public static TextureLoader textureLoader;
    public static TextureLoader textureLoaderLauncher;
    public static byte[] titleFontData;
    public static String translation;
    public static float windowSizeX;
    public static float windowSizeY;
    private WorkerThread workerThread;
    public static List<ShortcutButton> shortcutButtonList = new ArrayList();
    public static int clickGuiButtonSize = CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA;
    private static boolean mCircleWheelView = false;

    public static native void MotionEventClick(boolean z, float f, float f2);

    public static native int getShortcutXByName(String str);

    public static native int getShortcutYByName(String str);

    public static native String getWindowRect();

    public static native void imgui_Shutdown();

    public static native void init();

    public static native void loadImage(String str, int i);

    public static native void resize(int i, int i2);

    public static native void setShortcutXByName(String str, int i);

    public static native void setShortcutYByName(String str, int i);

    public static native void setTranslation(String str);

    public static native void setValue(String str);

    public static native void step();

    public static void loadTitleFont(InputStream inputStream) {
        try {
            byte[] bArr = new byte[inputStream.available()];
            titleFontData = bArr;
            inputStream.read(bArr);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static void loadGlobalFont(InputStream inputStream) {
        try {
            byte[] bArr = new byte[inputStream.available()];
            globalFontData = bArr;
            inputStream.read(bArr);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static void updateShortcut(String str, boolean z) {
        for (ShortcutButton shortcutButton : shortcutButtonList) {
            if (Objects.equals(shortcutButton.text, str)) {
                shortcutButton.setEnable(z);
            }
        }
        if (Objects.equals(str, "ClickGui")) {
            Start.clickGuiButton.setEnable(z);
        }
    }

    public GLES3JNIView(Context context) {
        super(context);
        setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        getHolder().setFormat(-3);
        setEGLContextClientVersion(3);
        setRenderer(this);
        this.workerThread = new WorkerThread(this);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        step();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        resize(i, i2);
        windowSizeX = i;
        windowSizeY = i2;
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        try {
            Context contextCreatePackageContext = Start.activity.createPackageContext("com.mojang.minecraftpe", 0);
            contextCreatePackageContext.getAssets();
            textureLoader = new TextureLoader(contextCreatePackageContext, false);
            init();
            this.workerThread.startRendering();
            this.workerThread.requestRender();
        } catch (PackageManager.NameNotFoundException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static void openLinkInBrowser(String str) {
        Start.activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        WorkerThread workerThread = this.workerThread;
        if (workerThread != null) {
            workerThread.stopRendering();
        }
        super.onDetachedFromWindow();
        imgui_Shutdown();
    }

    public static void showDialog(String str, String str2) {
        LinearLayout linearLayout = new LinearLayout(Start.activity);
        final EditText editText = new EditText(Start.activity);
        editText.setHint("...");
        editText.setText(str2);
        linearLayout.addView(editText, -1, -1);
        new AlertDialog.Builder(Start.activity, android.R.style.Theme.Material.Light.Dialog.Alert).setTitle(str).setCancelable(true).setView(linearLayout).setPositiveButton("Yes", new DialogInterface.OnClickListener() { // from class: dev.blaze.launcher.GLES3JNIView.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                GLES3JNIView.setValue(editText.getText().toString());
                Start.display.requestFocus();
                Start.vTouch.performClick();
                Start.display.performClick();
                Start.vTouch.requestFocus();
            }
        }).create().show();
    }

    public static void showToast(String str) {
        Toast.makeText(Start.activity, str, 0).show();
    }

    public static void addToCircleWheel(String str) {
        if (!mCircleWheelView || circleWheelView.getMTextList().contains(str)) {
            return;
        }
        circleWheelView.getMTextList().add(str);
    }

    public static void removeFromCircleWheel(String str) {
        if (mCircleWheelView) {
            circleWheelView.getMTextList().remove(str);
        }
    }

    public static void toggleShortcut(String str, boolean z, int i, int i2) {
        if (!mCircleWheelView) {
            CircleWheelView circleWheelView2 = new CircleWheelView(Start.activity);
            circleWheelView = circleWheelView2;
            circleWheelView2.setMOnWheelClickListener(new OnWheelClickListener() { // from class: dev.blaze.launcher.GLES3JNIView.2
                @Override // dev.blaze.launcher.ui.OnWheelClickListener
                public void onWheelClick(int i3) {
                    if (i3 != -1) {
                        ShortcutButton.toggleModuleByName(GLES3JNIView.circleWheelView.getMTextList().get(i3));
                    }
                }
            });
            circleWheelWindow = PopupWindowManager.createPopupWindow(Start.activity, circleWheelView, 17, 350, -600);
            mCircleWheelView = true;
        }
        if (circleWheelView.getMTextList().size() >= 2) {
            circleWheelWindow.showAtLocation(Start.activity.getWindow().getDecorView(), 17, 350, -600);
        } else {
            circleWheelWindow.dismiss();
        }
        if (shortcutButtonList.isEmpty()) {
            ShortcutButton shortcutButton = new ShortcutButton(Start.activity, str, false);
            shortcutButtonList.add(shortcutButton);
            if (z) {
                shortcutButton.show(getShortcutXByName(str), getShortcutYByName(str));
                return;
            } else {
                shortcutButton.dismiss();
                return;
            }
        }
        boolean z2 = false;
        for (ShortcutButton shortcutButton2 : shortcutButtonList) {
            if (Objects.equals(shortcutButton2.text, str)) {
                if (z) {
                    shortcutButton2.show(getShortcutXByName(str), getShortcutYByName(str));
                } else {
                    shortcutButton2.dismiss();
                }
                z2 = true;
            }
        }
        if (z2) {
            return;
        }
        ShortcutButton shortcutButton3 = new ShortcutButton(Start.activity, str, false);
        shortcutButtonList.add(shortcutButton3);
        if (z) {
            shortcutButton3.show(getShortcutXByName(str), getShortcutYByName(str));
        } else {
            shortcutButton3.dismiss();
        }
    }
}

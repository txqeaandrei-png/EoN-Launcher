package dev.blaze.launcher;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import dev.blaze.launcher.ui.ClickGuiButton;

/* JADX INFO: loaded from: classes3.dex */
public class Start {
    public static Activity activity;
    public static ClickGuiButton clickGuiButton;
    public static GLES3JNIView display;
    public static WindowManager manager;
    public static WindowManager.LayoutParams vParams;
    public static View vTouch;
    public static WindowManager.LayoutParams wParams;
    public static WindowManager windowManager;
    public static WindowManager xfqManager;

    public static native void ooOOOooooOOOo();

    public static void _Start(final Context context) {
        new Handler().postDelayed(new Runnable() { // from class: dev.blaze.launcher.Start$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                Start.lambda$_Start$1(context);
            }
        }, 3000L);
    }

    static /* synthetic */ void lambda$_Start$1(final Context context) {
        try {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: dev.blaze.launcher.Start$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    Start.Start(context);
                }
            });
            Thread.sleep(100L);
        } catch (InterruptedException e) {
            Log.e("BlazeLauncherNative", "err: " + e);
        }
    }

    public static void __Start(Activity activity2) {
        activity = activity2;
        new Handler().postDelayed(new Runnable() { // from class: dev.blaze.launcher.Start$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                new Thread(new Runnable() { // from class: dev.blaze.launcher.Start$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        Start.lambda$__Start$2();
                    }
                }).start();
            }
        }, 4500L);
    }

    /* JADX INFO: Infinite loop detected, blocks: 8, insns: 0 */
    static /* synthetic */ void lambda$__Start$2() {
        while (true) {
            try {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: dev.blaze.launcher.Start$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        Start.ooOOOooooOOOo();
                    }
                });
                Thread.sleep(100L);
            } catch (InterruptedException e) {
                Log.e("BlazeLauncherNative", "err: " + e);
            }
        }
    }

    public static void Start(Context context) {
        manager = ((Activity) context).getWindowManager();
        vParams = getAttributes(false);
        wParams = getAttributes(true);
        Log.d("BlazeLauncherNative", "before GLES3JNIView(context)");
        display = new GLES3JNIView(context);
        Log.d("BlazeLauncherNative", "after GLES3JNIView(context)");
        View view = new View(context);
        vTouch = view;
        manager.addView(view, vParams);
        manager.addView(display, wParams);
        vTouch.setOnTouchListener(new View.OnTouchListener() { // from class: dev.blaze.launcher.Start.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0 || action == 1 || action == 2) {
                    GLES3JNIView.MotionEventClick(action != 1, motionEvent.getRawX(), motionEvent.getRawY());
                }
                return false;
            }
        });
        final Handler handler = new Handler();
        handler.postDelayed(new Runnable() { // from class: dev.blaze.launcher.Start.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    String[] strArrSplit = GLES3JNIView.getWindowRect().split("\\|");
                    Start.vParams.x = Integer.parseInt(strArrSplit[0]);
                    Start.vParams.y = Integer.parseInt(strArrSplit[1]);
                    Start.vParams.width = Integer.parseInt(strArrSplit[2]);
                    Start.vParams.height = Integer.parseInt(strArrSplit[3]);
                    Start.manager.updateViewLayout(Start.vTouch, Start.vParams);
                } catch (Exception unused) {
                }
                handler.postDelayed(this, 1000L);
            }
        }, 20L);
        ClickGuiButton clickGuiButton2 = new ClickGuiButton(activity, "logo.png", false);
        clickGuiButton = clickGuiButton2;
        clickGuiButton2.show(0, 0);
    }

    public static WindowManager.LayoutParams getAttributes(boolean z) {
        new WindowManager.LayoutParams();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 100, 2, 243270968, -2);
        layoutParams.flags = 201327624;
        if (z) {
            layoutParams.flags |= 48;
        }
        layoutParams.format = 1;
        if (Build.VERSION.SDK_INT >= 28) {
            layoutParams.layoutInDisplayCutoutMode = 1;
        }
        layoutParams.gravity = 51;
        layoutParams.y = 0;
        layoutParams.x = 0;
        int i = z ? -1 : 0;
        layoutParams.height = i;
        layoutParams.width = i;
        return layoutParams;
    }
}

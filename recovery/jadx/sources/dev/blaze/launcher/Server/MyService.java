package dev.blaze.launcher.Server;

import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Point;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public class MyService extends Service {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static int xxx;
    public static int yyy;
    private WindowManager DrawWindow;
    private ShowImgui drawView;
    Handler han = new Handler();
    private WindowManager manager;
    private Point point;
    private WindowManager.LayoutParams vParams;
    private View vTouch;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Display defaultDisplay = ((WindowManager) getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        if (point.x > point.y) {
            xxx = point.x;
            yyy = point.y;
        } else {
            xxx = point.y;
            yyy = point.x;
        }
        ShowImgui.ScreenSize(xxx, yyy);
        try {
            InputStream inputStreamOpen = getAssets().open("TextStyle.ttf");
            ShowImgui.fontData = new byte[inputStreamOpen.available()];
            inputStreamOpen.read(ShowImgui.fontData);
        } catch (Exception unused) {
        }
        this.DrawWindow = (WindowManager) getSystemService("window");
        this.manager = (WindowManager) getApplicationContext().getSystemService("window");
        this.vParams = getAttributes(false);
        WindowManager.LayoutParams attributes = getAttributes(true);
        ShowImgui showImgui = new ShowImgui(this);
        View view = new View(this);
        this.vTouch = view;
        this.manager.addView(view, this.vParams);
        this.manager.addView(showImgui, attributes);
        this.vTouch.setOnTouchListener(new View.OnTouchListener() { // from class: dev.blaze.launcher.Server.MyService$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return MyService.lambda$onCreate$0(view2, motionEvent);
            }
        });
        final Handler handler = new Handler();
        handler.postDelayed(new Runnable() { // from class: dev.blaze.launcher.Server.MyService.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    String[] strArrSplit = ShowImgui.getWindowRect().split("\\|");
                    MyService.this.vParams.x = Integer.parseInt(strArrSplit[0]);
                    MyService.this.vParams.y = Integer.parseInt(strArrSplit[1]);
                    MyService.this.vParams.width = Integer.parseInt(strArrSplit[2]);
                    MyService.this.vParams.height = Integer.parseInt(strArrSplit[3]);
                    MyService.this.manager.updateViewLayout(MyService.this.vTouch, MyService.this.vParams);
                } catch (Exception unused2) {
                }
                handler.postDelayed(this, 20L);
            }
        }, 20L);
    }

    static /* synthetic */ boolean lambda$onCreate$0(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0 || action == 1 || action == 2) {
            ShowImgui.MotionEventClick(action != 1, motionEvent.getRawX(), motionEvent.getRawY());
        }
        return false;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.point = new Point();
        this.DrawWindow.getDefaultDisplay().getRealSize(this.point);
        ShowImgui.real(this.point.x, this.point.y);
    }

    private WindowManager.LayoutParams getAttributes(boolean z) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams.type = 2038;
        } else {
            layoutParams.type = 2002;
        }
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

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ShowImgui showImgui = this.drawView;
        if (showImgui != null) {
            this.manager.removeView(showImgui);
        }
    }
}

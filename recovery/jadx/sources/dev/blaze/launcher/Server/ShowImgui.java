package dev.blaze.launcher.Server;

import android.content.Context;
import android.opengl.GLSurfaceView;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes3.dex */
public class ShowImgui extends GLSurfaceView implements GLSurfaceView.Renderer {
    public static byte[] fontData;

    public static native void MotionEventClick(boolean z, float f, float f2);

    public static native void ScreenSize(int i, int i2);

    public static native void Shutdown();

    public static native String getWindowRect();

    public static native void init();

    public static native void real(int i, int i2);

    public static native void resize(int i, int i2);

    public static native void step();

    public ShowImgui(Context context) {
        super(context);
        setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        getHolder().setFormat(-3);
        setEGLContextClientVersion(3);
        setRenderer(this);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        init();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        resize(i, i2);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        step();
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Shutdown();
    }
}

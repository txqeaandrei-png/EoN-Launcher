package com.eon.launcher.runtime;

import android.content.Context;
import android.graphics.PixelFormat;
import android.opengl.GLSurfaceView;
import android.view.MotionEvent;
import android.view.SurfaceHolder;

import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public final class NativeRendererView extends GLSurfaceView implements GLSurfaceView.Renderer {
    private boolean surfaceReady;
    private boolean hostPaused = true;
    private boolean released;
    private long previousFrameNanos;

    public NativeRendererView(Context context) {
        super(context);
        setEGLContextClientVersion(2);
        setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        getHolder().setFormat(PixelFormat.TRANSLUCENT);
        setZOrderMediaOverlay(true);
        setPreserveEGLContextOnPause(false);
        setRenderer(this);
        setRenderMode(RENDERMODE_CONTINUOUSLY);
        setFocusable(true);
        setFocusableInTouchMode(true);
        setOnTouchListener((view, event) -> {
            NativeInput.forwardMotionEvent(event, this);
            return true;
        });
    }

    @Override
    public void onSurfaceCreated(GL10 gl, EGLConfig config) {
        surfaceReady = JNIBridge.onSurfaceCreated();
        previousFrameNanos = System.nanoTime();
    }

    @Override
    public void onSurfaceChanged(GL10 gl, int width, int height) {
        JNIBridge.onSurfaceChanged(width, height,
                getResources().getDisplayMetrics().density);
    }

    @Override
    public void onDrawFrame(GL10 gl) {
        if (!surfaceReady || released || hostPaused) return;
        long now = System.nanoTime();
        double deltaSeconds = previousFrameNanos == 0 ? 0.0
                : (now - previousFrameNanos) / 1_000_000_000.0;
        previousFrameNanos = now;
        JNIBridge.renderFrame(deltaSeconds);
    }

    public void onHostResume() {
        if (released || !hostPaused) return;
        hostPaused = false;
        super.onResume();
    }

    public void onHostPause() {
        if (released || hostPaused) return;
        hostPaused = true;
        detachSurfaceOnGlThread();
        super.onPause();
    }

    public void shutdown() {
        if (released) return;
        released = true;
        setOnTouchListener(null);
        if (!hostPaused) {
            detachSurfaceOnGlThread();
        }
        setRenderMode(RENDERMODE_WHEN_DIRTY);
    }

    @Override
    public boolean performClick() {
        super.performClick();
        return true;
    }

    @Override
    public void surfaceDestroyed(SurfaceHolder holder) {
        detachSurfaceOnGlThread();
        super.surfaceDestroyed(holder);
    }

    @Override
    protected void onDetachedFromWindow() {
        shutdown();
        super.onDetachedFromWindow();
    }

    private void detachSurfaceOnGlThread() {
        if (!surfaceReady) return;
        surfaceReady = false;
        queueEvent(JNIBridge::onSurfaceDestroyed);
    }
}
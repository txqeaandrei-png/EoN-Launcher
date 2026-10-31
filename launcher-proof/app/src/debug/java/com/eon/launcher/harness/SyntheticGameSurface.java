package com.eon.launcher.harness;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.view.MotionEvent;

final class SyntheticGameSurface extends GLSurfaceView {
    private final SyntheticGameRenderer renderer;
    private float lastTouchX;
    private float lastTouchY;

    SyntheticGameSurface(Context context) {
        super(context);
        setEGLContextClientVersion(2);
        setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        renderer = new SyntheticGameRenderer();
        setRenderer(renderer);
        setRenderMode(GLSurfaceView.RENDERMODE_CONTINUOUSLY);
        setFocusable(true);
        setFocusableInTouchMode(true);
        setOnTouchListener((view, event) -> handleSceneTouch(event));
    }

    private boolean handleSceneTouch(MotionEvent event) {
        switch (event.getActionMasked()) {
            case MotionEvent.ACTION_DOWN:
                lastTouchX = event.getX();
                lastTouchY = event.getY();
                return true;
            case MotionEvent.ACTION_MOVE:
                float deltaX = event.getX() - lastTouchX;
                float deltaY = event.getY() - lastTouchY;
                lastTouchX = event.getX();
                lastTouchY = event.getY();
                renderer.orbit(deltaX, deltaY);
                return true;
            case MotionEvent.ACTION_UP:
                performClick();
                return true;
            case MotionEvent.ACTION_CANCEL:
                return true;
            default:
                return false;
        }
    }

    @Override
    public boolean performClick() {
        super.performClick();
        return true;
    }

    void shutdown() {
        renderer.stop();
        setRenderMode(GLSurfaceView.RENDERMODE_WHEN_DIRTY);
        setOnTouchListener(null);
    }
}
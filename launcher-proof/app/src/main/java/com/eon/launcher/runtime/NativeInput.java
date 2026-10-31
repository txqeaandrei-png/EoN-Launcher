package com.eon.launcher.runtime;

import android.view.MotionEvent;
import android.view.View;

public final class NativeInput {
    private NativeInput() {
    }

    public static void forwardMotionEvent(MotionEvent event, View source) {
        final android.util.DisplayMetrics display = source.getResources().getDisplayMetrics();
        final int width = display.widthPixels;
        final int height = display.heightPixels;
        final float density = display.density;
        final int action = event.getActionMasked();
        final int actionIndex = event.getActionIndex();

        switch (action) {
            case MotionEvent.ACTION_DOWN:
            case MotionEvent.ACTION_POINTER_DOWN:
                forward(event, source, 0, actionIndex, width, height, density);
                break;
            case MotionEvent.ACTION_UP:
            case MotionEvent.ACTION_POINTER_UP:
                forward(event, source, 2, actionIndex, width, height, density);
                break;
            case MotionEvent.ACTION_MOVE:
                for (int pointer = 0; pointer < event.getPointerCount(); pointer++) {
                    forward(event, source, 1, pointer, width, height, density);
                }
                break;
            case MotionEvent.ACTION_CANCEL:
                JNIBridge.onInputEvent(3, -1, 0, 0f, 0f, event.getEventTime(),
                        width, height, density);
                break;
            default:
                break;
        }
    }

    private static void forward(MotionEvent event, View source, int phase, int pointerIndex,
            int width, int height, float density) {
        if (pointerIndex < 0 || pointerIndex >= event.getPointerCount()) return;
        int[] location = new int[2];
        source.getLocationOnScreen(location);
        JNIBridge.onInputEvent(phase, event.getPointerId(pointerIndex), 0,
            location[0] + event.getX(pointerIndex), location[1] + event.getY(pointerIndex), event.getEventTime(),
                width, height, density);
    }
}
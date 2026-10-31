package com.eon.launcher.runtime;

import android.view.MotionEvent;
import android.view.View;

import com.eon.launcher.gui.ClickGuiView;

public final class GuiBridge implements ClickGuiView.InteractionListener {
    public void setVisible(boolean visible) {
        JNIBridge.setGuiVisible(visible);
    }

    @Override
    public void onCategoryChanged(String category) {
        JNIBridge.setGuiCategory(category);
    }

    @Override
    public void onSearchChanged(String query) {
        JNIBridge.setGuiSearch(query);
    }

    @Override
    public void onModuleToggled(String moduleId, boolean enabled) {
        JNIBridge.setModuleEnabled(moduleId, enabled);
    }

    @Override
    public void onSettingChanged(String moduleId, String setting, String value) {
        JNIBridge.setSetting(moduleId, setting, value);
    }

    @Override
    public void onTouchEvent(MotionEvent event, View source) {
        NativeInput.forwardMotionEvent(event, source);
    }
}
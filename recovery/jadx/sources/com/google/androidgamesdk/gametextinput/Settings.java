package com.google.androidgamesdk.gametextinput;

import android.view.inputmethod.EditorInfo;

/* JADX INFO: loaded from: classes3.dex */
public final class Settings {
    EditorInfo mEditorInfo;
    boolean mForwardKeyEvents;

    public Settings(EditorInfo editorInfo, boolean z) {
        this.mEditorInfo = editorInfo;
        this.mForwardKeyEvents = z;
    }
}

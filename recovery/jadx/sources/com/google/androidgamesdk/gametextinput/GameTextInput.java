package com.google.androidgamesdk.gametextinput;

import android.view.inputmethod.EditorInfo;

/* JADX INFO: loaded from: classes3.dex */
public final class GameTextInput {
    public static final void copyEditorInfo(EditorInfo editorInfo, EditorInfo editorInfo2) {
        if (editorInfo == null || editorInfo2 == null) {
            return;
        }
        if (editorInfo.hintText != null) {
            editorInfo2.hintText = editorInfo.hintText;
        }
        editorInfo2.inputType = editorInfo.inputType;
        editorInfo2.imeOptions = editorInfo.imeOptions;
        editorInfo2.label = editorInfo.label;
        editorInfo2.initialCapsMode = editorInfo.initialCapsMode;
        editorInfo2.privateImeOptions = editorInfo.privateImeOptions;
        if (editorInfo.packageName != null) {
            editorInfo2.packageName = editorInfo.packageName;
        }
        editorInfo2.fieldId = editorInfo.fieldId;
        if (editorInfo.fieldName != null) {
            editorInfo2.fieldName = editorInfo.fieldName;
        }
        editorInfo2.initialSelStart = editorInfo.initialSelStart;
        editorInfo2.initialSelEnd = editorInfo.initialSelEnd;
    }

    public static final class Pair {
        int first;
        int second;

        Pair(int i, int i2) {
            this.first = i;
            this.second = i2;
        }
    }

    private GameTextInput() {
    }
}

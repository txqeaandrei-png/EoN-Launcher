package com.mojang.android;

import android.widget.TextView;

/* JADX INFO: loaded from: classes4.dex */
public class TextViewReader implements StringValue {
    private final TextView _view;

    public TextViewReader(TextView textView) {
        this._view = textView;
    }

    @Override // com.mojang.android.StringValue
    public String getStringValue() {
        return this._view.getText().toString();
    }
}

package com.microsoft.xbox.toolkit.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes3.dex */
public class FastProgressBar extends ProgressBar {
    private boolean isEnabled;
    private int visibility;

    public FastProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setEnabled(true);
        setVisibility(0);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        postInvalidateDelayed(33L);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        if (this.isEnabled != z) {
            this.isEnabled = z;
            if (!z) {
                this.visibility = getVisibility();
                super.setVisibility(8);
            } else {
                super.setVisibility(this.visibility);
            }
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (this.isEnabled) {
            super.setVisibility(i);
        } else {
            this.visibility = i;
        }
    }
}

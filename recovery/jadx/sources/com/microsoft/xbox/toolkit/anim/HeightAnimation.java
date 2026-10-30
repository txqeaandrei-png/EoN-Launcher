package com.microsoft.xbox.toolkit.anim;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* JADX INFO: loaded from: classes3.dex */
public class HeightAnimation extends Animation {
    private int fromValue;
    private final int toValue;
    private View view;

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return true;
    }

    public HeightAnimation(int i, int i2) {
        this.fromValue = i;
        this.toValue = i2;
    }

    public void setTargetView(View view) {
        this.view = view;
        this.fromValue = view.getHeight();
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.view.getLayoutParams().height = this.fromValue + ((int) ((this.toValue - this.fromValue) * f));
        this.view.requestLayout();
    }
}

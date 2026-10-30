package com.microsoft.xbox.toolkit.anim;

/* JADX INFO: loaded from: classes4.dex */
public class BackEaseInterpolator extends XLEInterpolator {
    private final float amplitude;

    public BackEaseInterpolator(float f, EasingMode easingMode) {
        super(easingMode);
        this.amplitude = f;
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEInterpolator
    public float getInterpolationCore(float f) {
        float fMax = (float) Math.max(f, 0.0d);
        return (float) (((double) ((fMax * fMax) * fMax)) - (((double) (this.amplitude * fMax)) * Math.sin(((double) fMax) * 3.141592653589793d)));
    }
}

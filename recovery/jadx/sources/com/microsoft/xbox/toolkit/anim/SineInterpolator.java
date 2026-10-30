package com.microsoft.xbox.toolkit.anim;

/* JADX INFO: loaded from: classes4.dex */
public class SineInterpolator extends XLEInterpolator {
    public SineInterpolator(EasingMode easingMode) {
        super(easingMode);
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEInterpolator
    public float getInterpolationCore(float f) {
        return (float) (1.0d - Math.sin((1.0d - ((double) f)) * 1.5707963267948966d));
    }
}

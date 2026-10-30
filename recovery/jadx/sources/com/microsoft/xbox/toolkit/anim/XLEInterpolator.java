package com.microsoft.xbox.toolkit.anim;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes3.dex */
public class XLEInterpolator implements Interpolator {
    private final EasingMode easingMode;

    public float getInterpolationCore(float f) {
        return f;
    }

    public XLEInterpolator(EasingMode easingMode) {
        this.easingMode = easingMode;
    }

    /* JADX INFO: renamed from: com.microsoft.xbox.toolkit.anim.XLEInterpolator$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$microsoft$xbox$toolkit$anim$EasingMode;

        static {
            int[] iArr = new int[EasingMode.values().length];
            $SwitchMap$com$microsoft$xbox$toolkit$anim$EasingMode = iArr;
            try {
                iArr[EasingMode.EaseIn.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$anim$EasingMode[EasingMode.EaseOut.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$anim$EasingMode[EasingMode.EaseInOut.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("should respect 0<=normalizedTime<=1");
        }
        int i = AnonymousClass1.$SwitchMap$com$microsoft$xbox$toolkit$anim$EasingMode[this.easingMode.ordinal()];
        if (i == 1) {
            return getInterpolationCore(f);
        }
        if (i == 2) {
            return 1.0f - getInterpolationCore(1.0f - f);
        }
        if (i != 3) {
            return f;
        }
        if (f < 0.5d) {
            return getInterpolationCore(f * 2.0f) / 2.0f;
        }
        return ((1.0f - getInterpolationCore(2.0f - (f * 2.0f))) / 2.0f) + 0.5f;
    }
}

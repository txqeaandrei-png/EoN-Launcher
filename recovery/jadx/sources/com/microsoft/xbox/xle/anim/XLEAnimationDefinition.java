package com.microsoft.xbox.xle.anim;

import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import com.microsoft.xbox.toolkit.XLERValueHelper;
import com.microsoft.xbox.toolkit.anim.AnimationFunctionType;
import com.microsoft.xbox.toolkit.anim.AnimationProperty;
import com.microsoft.xbox.toolkit.anim.BackEaseInterpolator;
import com.microsoft.xbox.toolkit.anim.EasingMode;
import com.microsoft.xbox.toolkit.anim.ExponentialInterpolator;
import com.microsoft.xbox.toolkit.anim.HeightAnimation;
import com.microsoft.xbox.toolkit.anim.SineInterpolator;
import com.microsoft.xbox.toolkit.anim.XLEInterpolator;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import org.simpleframework.xml.Attribute;

/* JADX INFO: loaded from: classes3.dex */
public class XLEAnimationDefinition {

    @Attribute(required = false)
    public int delayMs;

    @Attribute(required = false)
    public String dimen;

    @Attribute(required = false)
    public int durationMs;

    @Attribute(required = false)
    public float from;

    @Attribute(required = false)
    public float parameter;

    @Attribute(required = false)
    public AnimationProperty property;

    @Attribute(required = false)
    public float to;

    @Attribute(required = false)
    public AnimationFunctionType type;

    @Attribute(required = false)
    public EasingMode easing = EasingMode.EaseIn;

    @Attribute(required = false)
    public int fromXType = 1;

    @Attribute(required = false)
    public int fromYType = 1;

    @Attribute(required = false)
    public float pivotX = 0.5f;

    @Attribute(required = false)
    public float pivotY = 0.5f;

    @Attribute(required = false)
    public boolean scaleRelativeToSelf = true;

    @Attribute(required = false)
    public int toXType = 1;

    @Attribute(required = false)
    public int toYType = 1;

    public Animation getAnimation() {
        Animation alphaAnimation;
        Interpolator interpolator = getInterpolator();
        int i = AnonymousClass1.$SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationProperty[this.property.ordinal()];
        if (i == 1) {
            alphaAnimation = new AlphaAnimation(this.from, this.to);
        } else if (i == 2) {
            float f = this.from;
            float f2 = this.to;
            boolean z = this.scaleRelativeToSelf;
            alphaAnimation = new ScaleAnimation(f, f2, f, f2, z ? 1 : 2, this.pivotX, z ? 1 : 2, this.pivotY);
        } else if (i == 3) {
            alphaAnimation = new TranslateAnimation(this.fromXType, this.from, this.toXType, this.to, 1, 0.0f, 1, 0.0f);
        } else if (i == 4) {
            alphaAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, this.fromYType, this.from, this.toYType, this.to);
        } else if (i != 5) {
            alphaAnimation = null;
        } else {
            int iFindDimensionIdByName = XLERValueHelper.findDimensionIdByName(this.dimen);
            alphaAnimation = new HeightAnimation(0, iFindDimensionIdByName >= 0 ? XboxTcuiSdk.getResources().getDimensionPixelSize(iFindDimensionIdByName) : 0);
        }
        if (alphaAnimation == null) {
            return null;
        }
        alphaAnimation.setDuration(this.durationMs);
        alphaAnimation.setInterpolator(interpolator);
        alphaAnimation.setStartOffset(this.delayMs);
        return alphaAnimation;
    }

    /* JADX INFO: renamed from: com.microsoft.xbox.xle.anim.XLEAnimationDefinition$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationFunctionType;
        static final /* synthetic */ int[] $SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationProperty;

        static {
            int[] iArr = new int[AnimationFunctionType.values().length];
            $SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationFunctionType = iArr;
            try {
                iArr[AnimationFunctionType.Sine.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationFunctionType[AnimationFunctionType.Exponential.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationFunctionType[AnimationFunctionType.BackEase.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[AnimationProperty.values().length];
            $SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationProperty = iArr2;
            try {
                iArr2[AnimationProperty.Alpha.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationProperty[AnimationProperty.Scale.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationProperty[AnimationProperty.PositionX.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationProperty[AnimationProperty.PositionY.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationProperty[AnimationProperty.Height.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private Interpolator getInterpolator() {
        int i = AnonymousClass1.$SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationFunctionType[this.type.ordinal()];
        if (i == 1) {
            return new SineInterpolator(this.easing);
        }
        if (i == 2) {
            return new ExponentialInterpolator(this.parameter, this.easing);
        }
        if (i == 3) {
            return new BackEaseInterpolator(this.parameter, this.easing);
        }
        return new XLEInterpolator(this.easing);
    }
}

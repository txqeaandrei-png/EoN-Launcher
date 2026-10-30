package com.microsoft.xbox.toolkit.anim;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Interpolator;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.XLEAssert;

/* JADX INFO: loaded from: classes4.dex */
public class XLEAnimationView extends XLEAnimation {
    private final Animation anim;
    public View animtarget;

    public XLEAnimationView(Animation animation) {
        this.anim = animation;
        animation.setFillAfter(true);
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.microsoft.xbox.toolkit.anim.XLEAnimationView.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation2) {
                XLEAnimationView.this.onViewAnimationStart();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
                XLEAnimationView.this.onViewAnimationEnd();
                if (XLEAnimationView.this.endRunnable != null) {
                    XLEAnimationView.this.endRunnable.run();
                }
            }
        });
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEAnimation
    public void start() {
        this.animtarget.startAnimation(this.anim);
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEAnimation
    public void clear() {
        this.anim.setAnimationListener(null);
        this.animtarget.clearAnimation();
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEAnimation
    public void setTargetView(View view) {
        XLEAssert.assertNotNull(view);
        this.animtarget = view;
        Animation animation = this.anim;
        if (animation instanceof AnimationSet) {
            for (Animation animation2 : ((AnimationSet) animation).getAnimations()) {
                if (animation2 instanceof HeightAnimation) {
                    ((HeightAnimation) animation2).setTargetView(view);
                }
            }
        }
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEAnimation
    public void setInterpolator(Interpolator interpolator) {
        this.anim.setInterpolator(interpolator);
    }

    public void setFillAfter(boolean z) {
        this.anim.setFillAfter(z);
    }

    public void onViewAnimationStart() {
        this.animtarget.setLayerType(2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewAnimationEnd$0() {
        this.animtarget.setLayerType(0, null);
    }

    public void onViewAnimationEnd() {
        ThreadManager.UIThreadPost(new Runnable() { // from class: com.microsoft.xbox.toolkit.anim.XLEAnimationView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onViewAnimationEnd$0();
            }
        });
    }
}

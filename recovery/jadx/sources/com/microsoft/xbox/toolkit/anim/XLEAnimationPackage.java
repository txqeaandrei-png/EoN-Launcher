package com.microsoft.xbox.toolkit.anim;

import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.XLEAssert;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes3.dex */
public class XLEAnimationPackage {
    public Runnable onAnimationEndRunnable;
    private final LinkedList<XLEAnimationEntry> animations = new LinkedList<>();
    private boolean running = false;

    public void tryFinishAll() {
        if (getRemainingAnimations() == 0) {
            XLEAssert.assertTrue(this.running);
            this.running = false;
            this.onAnimationEndRunnable.run();
        }
    }

    private int getRemainingAnimations() {
        Iterator<XLEAnimationEntry> it = this.animations.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (!it.next().done) {
                i++;
            }
        }
        return i;
    }

    public void setOnAnimationEndRunnable(Runnable runnable) {
        this.onAnimationEndRunnable = runnable;
    }

    public void startAnimation() {
        XLEAssert.assertTrue(!this.running);
        this.running = true;
        Iterator<XLEAnimationEntry> it = this.animations.iterator();
        while (it.hasNext()) {
            it.next().startAnimation();
        }
    }

    public void clearAnimation() {
        Iterator<XLEAnimationEntry> it = this.animations.iterator();
        while (it.hasNext()) {
            it.next().clearAnimation();
        }
    }

    public void add(XLEAnimation xLEAnimation) {
        this.animations.add(new XLEAnimationEntry(xLEAnimation));
    }

    public XLEAnimationPackage add(XLEAnimationPackage xLEAnimationPackage) {
        if (xLEAnimationPackage != null) {
            Iterator<XLEAnimationEntry> it = xLEAnimationPackage.animations.iterator();
            while (it.hasNext()) {
                add(it.next().animation);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class XLEAnimationEntry {
        public XLEAnimation animation;
        public boolean done = false;
        public int iterationID = 0;

        public XLEAnimationEntry(XLEAnimation xLEAnimation) {
            this.animation = xLEAnimation;
            xLEAnimation.setOnAnimationEnd(new Runnable() { // from class: com.microsoft.xbox.toolkit.anim.XLEAnimationPackage$XLEAnimationEntry$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            });
        }

        /* JADX INFO: renamed from: onAnimationEnded, reason: merged with bridge method [inline-methods] */
        public void lambda$new$0() {
            XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
            XLEAssert.assertTrue(XLEAnimationPackage.this.onAnimationEndRunnable != null);
            final int i = this.iterationID;
            ThreadManager.UIThreadPost(new Runnable() { // from class: com.microsoft.xbox.toolkit.anim.XLEAnimationPackage$XLEAnimationEntry$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onAnimationEnded$1(i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnded$1(int i) {
            if (i == this.iterationID) {
                finish();
            }
        }

        public void finish() {
            this.done = true;
            XLEAnimationPackage.this.tryFinishAll();
        }

        public void startAnimation() {
            this.animation.start();
        }

        public void clearAnimation() {
            this.iterationID++;
            this.animation.clear();
        }
    }
}

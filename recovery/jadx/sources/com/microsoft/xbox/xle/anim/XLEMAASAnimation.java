package com.microsoft.xbox.xle.anim;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.LayoutAnimationController;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLERValueHelper;
import com.microsoft.xbox.toolkit.anim.MAASAnimation;
import com.microsoft.xbox.toolkit.anim.XLEAnimation;
import com.microsoft.xbox.toolkit.anim.XLEAnimationAbsListView;
import com.microsoft.xbox.toolkit.anim.XLEAnimationView;
import java.util.ArrayList;
import java.util.Iterator;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.ElementList;

/* JADX INFO: loaded from: classes4.dex */
public class XLEMAASAnimation extends MAASAnimation {

    @ElementList(required = false)
    public ArrayList<XLEAnimationDefinition> animations;

    @Attribute(required = false)
    public int offsetMs;

    @Attribute(required = false)
    public boolean fillAfter = true;

    @Attribute(required = false)
    public TargetType target = TargetType.View;

    @Attribute(required = false)
    public String targetId = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum TargetType {
        View,
        ListView,
        GridView
    }

    public XLEAnimation compile() {
        return compile(XLERValueHelper.findViewByString(this.targetId));
    }

    public XLEAnimation compileWithRoot(View view) {
        return compile(view.findViewById(XLERValueHelper.getIdRValue(this.targetId)));
    }

    public XLEAnimation compile(View view) {
        AnimationSet animationSet;
        XLEAnimation xLEAnimationAbsListView;
        ArrayList<XLEAnimationDefinition> arrayList = this.animations;
        if (arrayList == null || arrayList.size() <= 0) {
            animationSet = null;
        } else {
            animationSet = new AnimationSet(false);
            Iterator<XLEAnimationDefinition> it = this.animations.iterator();
            while (it.hasNext()) {
                Animation animation = it.next().getAnimation();
                if (animation != null) {
                    animationSet.addAnimation(animation);
                }
            }
        }
        int i = AnonymousClass1.$SwitchMap$com$microsoft$xbox$xle$anim$XLEMAASAnimation$TargetType[this.target.ordinal()];
        if (i == 1) {
            XLEAssert.assertNotNull(animationSet);
            XLEAnimationView xLEAnimationView = new XLEAnimationView(animationSet);
            xLEAnimationView.setFillAfter(this.fillAfter);
            xLEAnimationAbsListView = xLEAnimationView;
        } else if (i == 2 || i == 3) {
            XLEAssert.assertNotNull(animationSet);
            xLEAnimationAbsListView = new XLEAnimationAbsListView(new LayoutAnimationController(animationSet, this.offsetMs / 1000.0f));
        } else {
            throw new UnsupportedOperationException();
        }
        xLEAnimationAbsListView.setTargetView(view);
        return xLEAnimationAbsListView;
    }

    /* JADX INFO: renamed from: com.microsoft.xbox.xle.anim.XLEMAASAnimation$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$microsoft$xbox$xle$anim$XLEMAASAnimation$TargetType;

        static {
            int[] iArr = new int[TargetType.values().length];
            $SwitchMap$com$microsoft$xbox$xle$anim$XLEMAASAnimation$TargetType = iArr;
            try {
                iArr[TargetType.View.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$xle$anim$XLEMAASAnimation$TargetType[TargetType.ListView.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$xle$anim$XLEMAASAnimation$TargetType[TargetType.GridView.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}

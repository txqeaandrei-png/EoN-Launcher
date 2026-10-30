package com.microsoft.xbox.toolkit.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.microsoft.xbox.toolkit.XLERValueHelper;

/* JADX INFO: loaded from: classes4.dex */
public class SwitchPanelItem extends FrameLayout implements SwitchPanel.SwitchPanelChild {
    private final int INVALID_STATE_ID;
    private final int state;

    public SwitchPanelItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.INVALID_STATE_ID = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, XLERValueHelper.getStyleableRValueArray("SwitchPanelItem"));
        int integer = typedArrayObtainStyledAttributes.getInteger(XLERValueHelper.getStyleableRValue("SwitchPanelItem_state"), -1);
        this.state = integer;
        typedArrayObtainStyledAttributes.recycle();
        if (integer >= 0) {
            setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            return;
        }
        throw new IllegalArgumentException("You must specify the state attribute in the xml, and the value must be positive.");
    }

    @Override // com.microsoft.xbox.toolkit.ui.SwitchPanel.SwitchPanelChild
    public int getState() {
        return this.state;
    }
}

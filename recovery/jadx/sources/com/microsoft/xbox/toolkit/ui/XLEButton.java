package com.microsoft.xbox.toolkit.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import com.microsoft.xbox.toolkit.XLERValueHelper;

/* JADX INFO: loaded from: classes3.dex */
public class XLEButton extends Button {
    private boolean alwaysClickable;
    protected boolean disableSound;
    private int disabledTextColor;
    private int enabledTextColor;
    protected ButtonStateHandler stateHandler;

    public XLEButton(Context context) {
        super(context);
        this.stateHandler = new ButtonStateHandler();
        this.disableSound = false;
        setSoundEffectsEnabled(false);
    }

    public XLEButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public XLEButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.stateHandler = new ButtonStateHandler();
        this.disableSound = false;
        if (isInEditMode()) {
            return;
        }
        setSoundEffectsEnabled(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, XLERValueHelper.getStyleableRValueArray("XLEButton"));
        try {
            this.stateHandler.setDisabled(typedArrayObtainStyledAttributes.getBoolean(XLERValueHelper.getStyleableRValue("XLEButton_disabled"), false));
            this.stateHandler.setDisabledImageHandle(typedArrayObtainStyledAttributes.getResourceId(XLERValueHelper.getStyleableRValue("XLEButton_disabledImage"), -1));
            this.stateHandler.setEnabledImageHandle(typedArrayObtainStyledAttributes.getResourceId(XLERValueHelper.getStyleableRValue("XLEButton_enabledImage"), -1));
            this.stateHandler.setPressedImageHandle(typedArrayObtainStyledAttributes.getResourceId(XLERValueHelper.getStyleableRValue("XLEButton_pressedImage"), -1));
            this.disableSound = typedArrayObtainStyledAttributes.getBoolean(XLERValueHelper.getStyleableRValue("XLEButton_disableSound"), false);
            setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, XLERValueHelper.getStyleableRValueArray("CustomTypeface"));
            String string = typedArrayObtainStyledAttributes.getString(XLERValueHelper.getStyleableRValue("CustomTypeface_typefaceSource"));
            if (string != null && string.length() > 0) {
                applyCustomTypeface(context, string);
            }
            this.enabledTextColor = getCurrentTextColor();
            this.disabledTextColor = typedArrayObtainStyledAttributes.getColor(XLERValueHelper.getStyleableRValue("XLEButton_disabledTextColor"), this.enabledTextColor);
            boolean z = typedArrayObtainStyledAttributes.getBoolean(XLERValueHelper.getStyleableRValue("XLEButton_alwaysClickable"), false);
            this.alwaysClickable = z;
            if (z) {
                super.setEnabled(true);
                super.setClickable(true);
            }
            typedArrayObtainStyledAttributes.recycle();
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void applyCustomTypeface(Context context, String str) {
        if (str != null) {
            setTypeface(FontManager.Instance().getTypeface(getContext(), str));
        }
    }

    public void setTypeFace(String str) {
        applyCustomTypeface(getContext(), str);
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z) {
        if (!this.alwaysClickable) {
            super.setEnabled(z);
        }
        if (this.stateHandler == null) {
            this.stateHandler = new ButtonStateHandler();
        }
        this.stateHandler.setEnabled(z);
        updateImage();
        updateTextColor();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        updateImage();
        setOnTouchListener(new View.OnTouchListener() { // from class: com.microsoft.xbox.toolkit.ui.XLEButton$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f$0.lambda$onFinishInflate$0(view, motionEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onFinishInflate$0(View view, MotionEvent motionEvent) {
        boolean zOnTouch = this.stateHandler.onTouch(motionEvent);
        updateImage();
        return zOnTouch;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        if (this.disableSound) {
            super.setOnClickListener(onClickListener);
        } else {
            super.setOnClickListener(TouchUtil.createOnClickListener(onClickListener));
        }
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        if (this.disableSound) {
            super.setOnLongClickListener(onLongClickListener);
        } else {
            super.setOnLongClickListener(TouchUtil.createOnLongClickListener(onLongClickListener));
        }
    }

    public void setPressedStateRunnable(ButtonStateHandler.ButtonStateHandlerRunnable buttonStateHandlerRunnable) {
        this.stateHandler.setPressedStateRunnable(buttonStateHandlerRunnable);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (hasSize() && this.stateHandler.onSizeChanged(getWidth(), getHeight())) {
            updateImage();
        }
    }

    private boolean hasSize() {
        return getWidth() > 0 && getHeight() > 0;
    }

    public void updateImage() {
        if (this.stateHandler.getImageDrawable() != null) {
            setBackgroundDrawable(this.stateHandler.getImageDrawable());
        }
    }

    public void updateTextColor() {
        if (this.enabledTextColor != this.disabledTextColor) {
            setTextColor(this.stateHandler.getDisabled() ? this.disabledTextColor : this.enabledTextColor);
        }
    }
}

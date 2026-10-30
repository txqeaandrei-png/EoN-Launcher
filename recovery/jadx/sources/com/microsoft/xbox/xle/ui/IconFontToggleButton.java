package com.microsoft.xbox.xle.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.microsoft.xbox.toolkit.XLERValueHelper;
import com.microsoft.xbox.toolkit.ui.FontManager;
import com.microsoft.xboxtcui.R;

/* JADX INFO: loaded from: classes3.dex */
public class IconFontToggleButton extends LinearLayout implements Checkable {
    private boolean checked;
    private String checkedIcon;
    private String checkedText;
    private TextView iconTextView;
    private TextView labelTextView;
    private String uncheckedIcon;
    private String uncheckedText;

    public IconFontToggleButton(Context context) {
        super(context);
    }

    public IconFontToggleButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initViews(context, attributeSet);
    }

    public IconFontToggleButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initViews(context, attributeSet);
    }

    private void initViews(Context context, AttributeSet attributeSet) {
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.iconfont_toggle_btn_view, (ViewGroup) this, true);
        this.iconTextView = (TextView) findViewById(R.id.iconfont_toggle_btn_icon);
        this.labelTextView = (TextView) findViewById(R.id.iconfont_toggle_btn_text);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, XLERValueHelper.getStyleableRValueArray("CustomTypeface"));
        String string = typedArrayObtainStyledAttributes.getString(XLERValueHelper.getStyleableRValue("CustomTypeface_typefaceSource"));
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, XLERValueHelper.getStyleableRValueArray("IconFontToggleButton"));
        this.checkedText = typedArrayObtainStyledAttributes2.getString(XLERValueHelper.getStyleableRValue("IconFontToggleButton_text_checked"));
        this.uncheckedText = typedArrayObtainStyledAttributes2.getString(XLERValueHelper.getStyleableRValue("IconFontToggleButton_text_unchecked"));
        this.checkedIcon = typedArrayObtainStyledAttributes2.getString(XLERValueHelper.getStyleableRValue("IconFontToggleButton_icon_checked"));
        this.uncheckedIcon = typedArrayObtainStyledAttributes2.getString(XLERValueHelper.getStyleableRValue("IconFontToggleButton_icon_unchecked"));
        float dimensionPixelSize = typedArrayObtainStyledAttributes2.getDimensionPixelSize(XLERValueHelper.getStyleableRValue("IconFontToggleButton_icon_size"), -1);
        if (dimensionPixelSize != -1.0f) {
            this.iconTextView.setTextSize(0, dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes2.recycle();
        applyCustomTypeface(context, string);
        setFocusable(true);
    }

    private void applyCustomTypeface(Context context, String str) {
        TextView textView;
        if (str == null || (textView = this.labelTextView) == null) {
            return;
        }
        textView.setTypeface(FontManager.Instance().getTypeface(getContext(), str));
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.checked;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        this.checked = z;
        sendAccessibilityEvent(1);
        TextView textView = this.labelTextView;
        if (textView != null) {
            textView.setText(this.checked ? this.checkedText : this.uncheckedText);
            this.labelTextView.setVisibility(0);
        }
        TextView textView2 = this.iconTextView;
        if (textView2 != null) {
            textView2.setText(this.checked ? this.checkedIcon : this.uncheckedIcon);
            this.iconTextView.setVisibility(0);
        }
        invalidate();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.checked);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClickable(true);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    public void setCheckedText(String str) {
        this.checkedText = str;
    }

    public void setUncheckedText(String str) {
        this.uncheckedText = str;
    }
}

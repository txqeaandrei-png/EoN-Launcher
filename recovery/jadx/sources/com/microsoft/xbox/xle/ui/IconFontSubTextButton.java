package com.microsoft.xbox.xle.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.microsoft.xbox.toolkit.XLERValueHelper;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.xle.app.XLEUtil;
import com.microsoft.xboxtcui.R;

/* JADX INFO: loaded from: classes3.dex */
public class IconFontSubTextButton extends LinearLayout {
    private final FrameLayout iconFrameLayout;
    private final CustomTypefaceTextView iconTextView;
    private final CustomTypefaceTextView subtitleTextView;
    private final CustomTypefaceTextView titleTextView;

    public IconFontSubTextButton(Context context) {
        this(context, null);
    }

    public IconFontSubTextButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public IconFontSubTextButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(R.layout.icon_font_subtext_button, (ViewGroup) this, true);
        CustomTypefaceTextView customTypefaceTextView = (CustomTypefaceTextView) findViewById(R.id.icon_font_subtext_icon);
        this.iconTextView = customTypefaceTextView;
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.icon_font_subtext_btn_icon_bg);
        this.iconFrameLayout = frameLayout;
        CustomTypefaceTextView customTypefaceTextView2 = (CustomTypefaceTextView) findViewById(R.id.icon_font_subtext_btn_title);
        this.titleTextView = customTypefaceTextView2;
        CustomTypefaceTextView customTypefaceTextView3 = (CustomTypefaceTextView) findViewById(R.id.icon_font_subtext_btn_subtitle);
        this.subtitleTextView = customTypefaceTextView3;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, XLERValueHelper.getStyleableRValueArray("IconFontSubTextButton"));
        String string = typedArrayObtainStyledAttributes.getString(XLERValueHelper.getStyleableRValue("IconFontSubTextButton_icon_uri"));
        String string2 = typedArrayObtainStyledAttributes.getString(XLERValueHelper.getStyleableRValue("IconFontSubTextButton_text_title"));
        String string3 = typedArrayObtainStyledAttributes.getString(XLERValueHelper.getStyleableRValue("IconFontSubTextButton_text_subtitle"));
        frameLayout.setBackgroundColor(typedArrayObtainStyledAttributes.getColor(XLERValueHelper.getStyleableRValue("IconFontSubTextButton_icon_bg"), 0));
        typedArrayObtainStyledAttributes.recycle();
        XLEUtil.updateTextAndVisibilityIfNotNull(customTypefaceTextView, string, 0);
        XLEUtil.updateTextAndVisibilityIfNotNull(customTypefaceTextView2, string2, 0);
        XLEUtil.updateTextAndVisibilityIfNotNull(customTypefaceTextView3, string3, 0);
        setFocusable(true);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClickable(true);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }
}

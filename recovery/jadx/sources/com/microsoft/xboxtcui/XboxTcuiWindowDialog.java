package com.microsoft.xboxtcui;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.ui.ActivityParameters;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.toolkit.ui.ScreenLayout;
import com.microsoft.xbox.toolkit.ui.XLEButton;

/* JADX INFO: loaded from: classes3.dex */
public class XboxTcuiWindowDialog extends Dialog {
    private DetachedCallback detachedCallback;
    private final XboxTcuiWindow xboxTcuiWindow;

    public interface DetachedCallback {
        void onDetachedFromWindow();
    }

    public XboxTcuiWindowDialog(Activity activity, Class<? extends ScreenLayout> cls, ActivityParameters activityParameters) {
        super(activity, R.style.TcuiDialog);
        this.xboxTcuiWindow = new XboxTcuiWindow(activity, cls, activityParameters);
    }

    public void setDetachedCallback(DetachedCallback detachedCallback) {
        this.detachedCallback = detachedCallback;
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setLayout(-1, -1);
        getWindow().setFlags(1024, 1024);
        this.xboxTcuiWindow.onCreate(bundle);
        setContentView(this.xboxTcuiWindow);
        addCloseButton();
        NavigationManager.getInstance().setOnNavigatedListener(new NavigationManager.OnNavigatedListener() { // from class: com.microsoft.xboxtcui.XboxTcuiWindowDialog.1
            @Override // com.microsoft.xbox.toolkit.ui.NavigationManager.OnNavigatedListener
            public void onPageRestarted(ScreenLayout screenLayout) {
            }

            @Override // com.microsoft.xbox.toolkit.ui.NavigationManager.OnNavigatedListener
            public void onPageNavigated(ScreenLayout screenLayout, ScreenLayout screenLayout2) {
                if (screenLayout2 == null) {
                    XboxTcuiWindowDialog.this.dismiss();
                }
            }
        });
    }

    private void addCloseButton() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 5;
        XLEButton xLEButton = new XLEButton(getContext());
        xLEButton.setPadding(60, 0, 0, 0);
        xLEButton.setBackgroundResource(R.drawable.common_button_background);
        xLEButton.setText(R.string.ic_Close);
        xLEButton.setTextColor(-1);
        xLEButton.setTextSize(2, 14.0f);
        xLEButton.setTypeFace("fonts/SegXboxSymbol.ttf");
        xLEButton.setContentDescription(getContext().getResources().getString(R.string.TextInput_Confirm));
        xLEButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xboxtcui.XboxTcuiWindowDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                XboxTcuiWindowDialog.lambda$addCloseButton$0(view);
            }
        });
        xLEButton.setOnKeyListener(NavigationManager.getInstance());
        frameLayout.addView(xLEButton);
        addContentView(frameLayout, layoutParams);
    }

    static /* synthetic */ void lambda$addCloseButton$0(View view) {
        try {
            NavigationManager.getInstance().PopAllScreens();
        } catch (XLEException e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Dialog
    public void onStart() {
        this.xboxTcuiWindow.onStart();
    }

    @Override // android.app.Dialog
    public void onStop() {
        this.xboxTcuiWindow.onStop();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        DetachedCallback detachedCallback = this.detachedCallback;
        if (detachedCallback != null) {
            detachedCallback.onDetachedFromWindow();
        }
        super.onDetachedFromWindow();
    }
}

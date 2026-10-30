package com.mojang.minecraftpe.Webview;

import android.R;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.mojang.minecraftpe.MainActivity;
import com.mojang.minecraftpe.PopupView;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public class MinecraftWebview {
    private MainActivity mActivity;
    public WebView mWebView;
    public PopupView mWebViewPopup;

    public native void nativeDismiss();

    public native void nativeOnWebError(int i, String str);

    public native void nativeSendToHost(String str);

    public MinecraftWebview() {
        MainActivity mainActivity = MainActivity.mInstance;
        this.mActivity = mainActivity;
        mainActivity.runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.Webview.MinecraftWebview$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0._createWebView();
            }
        });
    }

    public void teardown() {
        this.mWebViewPopup.dismiss();
        this.mWebViewPopup = null;
        this.mWebView = null;
        this.mActivity = null;
    }

    public void setRect(float f, float f2, float f3, float f4) {
        final int i = (int) f;
        final int i2 = (int) f2;
        final int i3 = (int) f3;
        final int i4 = (int) f4;
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.Webview.MinecraftWebview$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setRect$0(i, i2, i3, i4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setRect$0(int i, int i2, int i3, int i4) {
        this.mWebViewPopup.setRect(i, i2, i3, i4);
        this.mWebViewPopup.update();
    }

    public void setPropagatedAlpha(float f) {
        setShowView(((double) f) == 1.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setUrl$1(String str) {
        this.mWebView.loadUrl(str);
    }

    public void setUrl(final String str) {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.Webview.MinecraftWebview$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setUrl$1(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setShowView$2(boolean z) {
        this.mWebViewPopup.setVisible(z);
    }

    public void setShowView(final boolean z) {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.Webview.MinecraftWebview$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setShowView$2(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendToWebView$3(String str) {
        this.mWebView.evaluateJavascript(str, null);
    }

    public void sendToWebView(final String str) {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.Webview.MinecraftWebview$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendToWebView$3(str);
            }
        });
    }

    public void _injectApi() {
        String str_readResource = _readResource(this.mActivity.getResources().getIdentifier("code_builder_hosted_editor", "raw", this.mActivity.getPackageName()));
        if (str_readResource != null) {
            this.mWebView.evaluateJavascript(str_readResource, null);
        } else {
            nativeOnWebError(0, "Unable to inject api");
        }
    }

    private String _readResource(int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        InputStream inputStreamOpenRawResource = this.mActivity.getResources().openRawResource(i);
        try {
            byte[] bArr = new byte[256];
            while (true) {
                int i2 = inputStreamOpenRawResource.read(bArr);
                if (i2 > 0) {
                    byteArrayOutputStream.write(bArr, 0, i2);
                } else {
                    inputStreamOpenRawResource.close();
                    return byteArrayOutputStream.toString();
                }
            }
        } catch (IOException e) {
            System.out.println("Failed to read resource " + i + " with error " + e.toString());
            return null;
        }
    }

    public void _createWebView() {
        if (!MainActivity.mInstance.isPublishBuild()) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        WebView webView = new WebView(this.mActivity) { // from class: com.mojang.minecraftpe.Webview.MinecraftWebview.1
            @Override // android.view.View
            public boolean performClick() {
                requestFocus();
                return super.performClick();
            }
        };
        this.mWebView = webView;
        webView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.mWebView.setWebViewClient(new MinecraftWebViewClient(this));
        this.mWebView.setWebChromeClient(new MinecraftChromeClient(this));
        this.mWebView.addJavascriptInterface(new WebviewHostInterface(this), "codeBuilderHostInterface");
        WebSettings settings = this.mWebView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        this.mWebViewPopup = new PopupView(this.mActivity);
        View rootView = this.mActivity.findViewById(R.id.content).getRootView();
        this.mWebViewPopup.setContentView(this.mWebView);
        this.mWebViewPopup.setParentView(rootView);
    }
}

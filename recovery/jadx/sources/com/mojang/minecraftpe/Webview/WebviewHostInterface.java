package com.mojang.minecraftpe.Webview;

import android.webkit.JavascriptInterface;

/* JADX INFO: loaded from: classes3.dex */
class WebviewHostInterface {
    private final MinecraftWebview mView;

    public WebviewHostInterface(MinecraftWebview minecraftWebview) {
        this.mView = minecraftWebview;
    }

    @JavascriptInterface
    public void sendToHost(String str) {
        System.out.println("SendToHost " + str);
        this.mView.nativeSendToHost(str);
    }

    @JavascriptInterface
    public void dismiss() {
        System.out.println("dismiss");
        this.mView.nativeDismiss();
    }
}

package com.mojang.minecraftpe.Webview;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.mojang.minecraftpe.MainActivity;

/* JADX INFO: loaded from: classes3.dex */
class MinecraftChromeClient extends WebChromeClient {
    public MinecraftWebview mView;

    public MinecraftChromeClient(MinecraftWebview minecraftWebview) {
        this.mView = minecraftWebview;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        super.onProgressChanged(webView, i);
        MainActivity.mInstance.runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.Webview.MinecraftChromeClient$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onProgressChanged$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onProgressChanged$0() {
        this.mView._injectApi();
    }
}

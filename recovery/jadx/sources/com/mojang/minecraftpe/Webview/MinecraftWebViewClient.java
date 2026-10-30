package com.mojang.minecraftpe.Webview;

import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mojang.minecraftpe.MainActivity;

/* JADX INFO: loaded from: classes3.dex */
class MinecraftWebViewClient extends WebViewClient {
    private final MinecraftWebview mView;

    public MinecraftWebViewClient(MinecraftWebview minecraftWebview) {
        this.mView = minecraftWebview;
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        System.out.println("Started loading " + str);
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        System.out.println("Finished loading " + str);
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        System.out.printf("Error %s loading url %s%n", webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
        this.mView.nativeOnWebError(webResourceError.getErrorCode(), webResourceError.getDescription().toString());
        super.onReceivedError(webView, webResourceRequest, webResourceError);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url = webResourceRequest.getUrl();
        Uri uri = Uri.parse(webView.getUrl());
        if (!webResourceRequest.hasGesture() || uri.getHost().equals(url.getHost())) {
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
        MainActivity.mInstance.launchUri(webResourceRequest.getUrl().toString());
        return true;
    }
}

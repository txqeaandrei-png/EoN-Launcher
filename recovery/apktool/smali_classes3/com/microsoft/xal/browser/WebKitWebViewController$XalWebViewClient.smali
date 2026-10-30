.class public final Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xal/browser/WebKitWebViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "XalWebViewClient"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\u001a\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0017J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0013\u001a\u00020\u0005H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;",
        "Landroid/webkit/WebViewClient;",
        "mActivity",
        "Landroid/app/Activity;",
        "mUrl",
        "",
        "(Lcom/microsoft/xal/browser/WebKitWebViewController;Landroid/app/Activity;Ljava/lang/String;)V",
        "onPageFinished",
        "",
        "webView",
        "Landroid/webkit/WebView;",
        "url",
        "shouldInterceptRequest",
        "Landroid/webkit/WebResourceResponse;",
        "webResourceRequest",
        "Landroid/webkit/WebResourceRequest;",
        "shouldOverrideUrlLoading",
        "",
        "webResponseFromAssets",
        "resName",
        "xal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/microsoft/xal/browser/WebKitWebViewController;


# direct methods
.method public static synthetic $r8$lambda$3tweFoiQqUEn79nZsjjl2Qp5Xns(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;->shouldInterceptRequest$lambda$2(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CCxyaOaVYpHRSJwEhP1M6CIdYbY(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;->shouldInterceptRequest$lambda$3(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xal/browser/WebKitWebViewController;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "mActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;->this$0:Lcom/microsoft/xal/browser/WebKitWebViewController;

    .line 143
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;->mActivity:Landroid/app/Activity;

    .line 142
    iput-object p3, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;->mUrl:Ljava/lang/String;

    return-void
.end method

.method private static final shouldInterceptRequest$lambda$2(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$webView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private static final shouldInterceptRequest$lambda$3(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$webView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private final webResponseFromAssets(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 206
    :try_start_0
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, "text/css"

    const-string v2, "UTF-8"

    iget-object v3, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 208
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/16 p2, 0x82

    .line 147
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->requestFocus(I)Z

    const/16 p2, 0x8

    .line 148
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->sendAccessibilityEvent(I)V

    .line 150
    const-string p2, "if (typeof window.__xal__performAccessibilityFocus === \"function\") { window.__xal__performAccessibilityFocus(); }"

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 9

    const-string/jumbo v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webResourceRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    const-string v1, "XBOX_URI"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "favicon.ico"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    const-string v6, "AppLogos"

    if-nez v2, :cond_0

    move-object v2, v6

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v7, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1, v0}, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 177
    :cond_1
    const-string v2, ".css"

    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v1, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "splash"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v1, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 178
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient$$ExternalSyntheticLambda1;

    invoke-direct {v8, p1, v0}, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 180
    :cond_2
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "login"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "signup"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    :cond_3
    const-string v0, "bootstrap"

    check-cast v0, Ljava/lang/CharSequence;

    .line 180
    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 184
    const-string p1, "resources/login.css"

    invoke-direct {p0, p1}, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;->webResponseFromAssets(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 186
    :cond_4
    const-string v0, "images-eds"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "xbox"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    const-string v0, "User Finished Login"

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 189
    :cond_5
    const-string v0, "microsoft_logo"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 190
    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v1, v6, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 191
    const-string v0, "applogos"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 192
    const-string/jumbo v0, "xboxlivelogo"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 193
    const-string v0, "logo"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 194
    const-string v0, "14_298176657f8069ea5220"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 196
    const-string v0, "AppBackgrounds"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const-string v2, "resources/bg32.png"

    if-nez v0, :cond_8

    const-string v0, "appbackgrounds"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "73_b46031e02b69c55b4305"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 197
    const-string v0, "minecraft"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ".png"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ".jpg"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 198
    :cond_6
    invoke-direct {p0, v2}, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;->webResponseFromAssets(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    goto :goto_0

    .line 199
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    goto :goto_0

    .line 200
    :cond_8
    invoke-direct {p0, v2}, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;->webResponseFromAssets(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    goto :goto_0

    .line 201
    :cond_9
    const-string p1, "resources/title.png"

    invoke-direct {p0, p1}, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;->webResponseFromAssets(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const-string/jumbo v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;->mUrl:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;->this$0:Lcom/microsoft/xal/browser/WebKitWebViewController;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    const-string v1, "RESPONSE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p2, -0x1

    .line 159
    invoke-virtual {p1, p2, v0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setResult(ILandroid/content/Intent;)V

    .line 162
    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;->this$0:Lcom/microsoft/xal/browser/WebKitWebViewController;

    invoke-virtual {p1}, Lcom/microsoft/xal/browser/WebKitWebViewController;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

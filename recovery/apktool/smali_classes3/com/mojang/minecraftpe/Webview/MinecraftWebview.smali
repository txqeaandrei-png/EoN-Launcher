.class public Lcom/mojang/minecraftpe/Webview/MinecraftWebview;
.super Ljava/lang/Object;


# instance fields
.field private mActivity:Lcom/mojang/minecraftpe/MainActivity;

.field public mWebView:Landroid/webkit/WebView;

.field public mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;


# direct methods
.method public static synthetic $r8$lambda$7z-26EEsYtLl415Xlx78h-wg4uw(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->lambda$sendToWebView$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EB8GN1QCy8DURtVViWgjyeNz_XU(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->lambda$setRect$0(IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fe_weX7JABn3WyrValTKEuhwzGo(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->lambda$setShowView$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$eXCoV7tT4uzMk8b30tQ7ValXCLc(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->lambda$setUrl$1(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    iput-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    .line 25
    new-instance v1, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda2;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private _readResource(I)Ljava/lang/String;
    .locals 5

    .line 82
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x100

    .line 85
    :try_start_0
    new-array v2, v2, [B

    .line 87
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 89
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 92
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 96
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read resource "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " with error "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$sendToWebView$3(Ljava/lang/String;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private synthetic lambda$setRect$0(IIII)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mojang/minecraftpe/PopupView;->setRect(IIII)V

    .line 48
    iget-object p1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/PopupView;->update()V

    return-void
.end method

.method private synthetic lambda$setShowView$2(Z)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;

    invoke-virtual {v0, p1}, Lcom/mojang/minecraftpe/PopupView;->setVisible(Z)V

    return-void
.end method

.method private synthetic lambda$setUrl$1(Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _createWebView()V
    .locals 4

    .line 103
    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->isPublishBuild()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 104
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 106
    :cond_0
    new-instance v0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$1;

    iget-object v2, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {v0, p0, v2}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$1;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    .line 112
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/mojang/minecraftpe/Webview/MinecraftWebViewClient;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebViewClient;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 115
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/mojang/minecraftpe/Webview/WebviewHostInterface;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/Webview/WebviewHostInterface;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V

    const-string v3, "codeBuilderHostInterface"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 119
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 120
    new-instance v0, Lcom/mojang/minecraftpe/PopupView;

    iget-object v1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {v0, v1}, Lcom/mojang/minecraftpe/PopupView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;

    .line 121
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;

    iget-object v2, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/mojang/minecraftpe/PopupView;->setContentView(Landroid/view/View;)V

    .line 123
    iget-object v1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;

    invoke-virtual {v1, v0}, Lcom/mojang/minecraftpe/PopupView;->setParentView(Landroid/view/View;)V

    return-void
.end method

.method public _injectApi()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code_builder_hosted_editor"

    const-string v3, "raw"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->_readResource(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 76
    const-string v1, "Unable to inject api"

    invoke-virtual {p0, v0, v1}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->nativeOnWebError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public native nativeDismiss()V
.end method

.method public native nativeOnWebError(ILjava/lang/String;)V
.end method

.method public native nativeSendToHost(Ljava/lang/String;)V
.end method

.method public sendToWebView(Ljava/lang/String;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda4;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPropagatedAlpha(F)V
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 53
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->setShowView(Z)V

    return-void
.end method

.method public setRect(FFFF)V
    .locals 6

    float-to-int v2, p1

    float-to-int v3, p2

    float-to-int v4, p3

    float-to-int v5, p4

    .line 46
    iget-object p1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance p2, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda0;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda0;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;IIII)V

    invoke-virtual {p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setShowView(Z)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda3;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;Z)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda1;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public teardown()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/PopupView;->dismiss()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;

    .line 37
    iput-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    .line 38
    iput-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    return-void
.end method

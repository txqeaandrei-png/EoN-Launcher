.class Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field public mView:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;


# direct methods
.method public static synthetic $r8$lambda$a5hWFHGUNXANboO9k1NPI8Y-j8I(Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;->lambda$onProgressChanged$0()V

    return-void
.end method

.method public constructor <init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;->mView:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    return-void
.end method

.method private synthetic lambda$onProgressChanged$0()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;->mView:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->_injectApi()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 18
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 19
    sget-object p1, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    new-instance p2, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient$$ExternalSyntheticLambda0;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;)V

    invoke-virtual {p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

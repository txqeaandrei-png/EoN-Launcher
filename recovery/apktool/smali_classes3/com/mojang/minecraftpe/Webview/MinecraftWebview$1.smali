.class Lcom/mojang/minecraftpe/Webview/MinecraftWebview$1;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->_createWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;Landroid/content/Context;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$1;->this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$1;->requestFocus()Z

    .line 109
    invoke-super {p0}, Landroid/webkit/WebView;->performClick()Z

    move-result v0

    return v0
.end method

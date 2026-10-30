.class public final synthetic Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;


# direct methods
.method public synthetic constructor <init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda2;->f$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda2;->f$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->_createWebView()V

    return-void
.end method

.class Lcom/mojang/minecraftpe/Webview/WebviewHostInterface;
.super Ljava/lang/Object;


# instance fields
.field private final mView:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mojang/minecraftpe/Webview/WebviewHostInterface;->mView:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 23
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "dismiss"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/WebviewHostInterface;->mView:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->nativeDismiss()V

    return-void
.end method

.method public sendToHost(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 17
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendToHost "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/WebviewHostInterface;->mView:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    invoke-virtual {v0, p1}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->nativeSendToHost(Ljava/lang/String;)V

    return-void
.end method

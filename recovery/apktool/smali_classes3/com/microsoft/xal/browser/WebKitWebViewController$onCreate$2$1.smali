.class public final Lcom/microsoft/xal/browser/WebKitWebViewController$onCreate$2$1;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xal/browser/WebKitWebViewController;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/microsoft/xal/browser/WebKitWebViewController$onCreate$2$1",
        "Landroid/webkit/WebChromeClient;",
        "onProgressChanged",
        "",
        "webView",
        "Landroid/webkit/WebView;",
        "i",
        "",
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
.field final synthetic this$0:Lcom/microsoft/xal/browser/WebKitWebViewController;


# direct methods
.method constructor <init>(Lcom/microsoft/xal/browser/WebKitWebViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$onCreate$2$1;->this$0:Lcom/microsoft/xal/browser/WebKitWebViewController;

    .line 92
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const-string/jumbo v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$onCreate$2$1;->this$0:Lcom/microsoft/xal/browser/WebKitWebViewController;

    mul-int/lit8 p2, p2, 0x64

    invoke-virtual {p1, p2}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setProgress(I)V

    return-void
.end method

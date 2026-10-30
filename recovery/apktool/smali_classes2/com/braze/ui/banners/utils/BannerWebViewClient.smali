.class public final Lcom/braze/ui/banners/utils/BannerWebViewClient;
.super Lcom/braze/ui/BrazeWebViewClient;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/braze/ui/banners/utils/BannerWebViewClient;",
        "Lcom/braze/ui/BrazeWebViewClient;",
        "context",
        "Landroid/content/Context;",
        "bannerWebViewClientListener",
        "Lcom/braze/ui/banners/listeners/IBannerWebViewClientListener;",
        "<init>",
        "(Landroid/content/Context;Lcom/braze/ui/banners/listeners/IBannerWebViewClientListener;)V",
        "android-sdk-ui_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/braze/ui/banners/listeners/IBannerWebViewClientListener;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v3, Lcom/braze/ui/BrazeWebViewClient$Type;->BANNER:Lcom/braze/ui/BrazeWebViewClient$Type;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    .line 16
    invoke-direct/range {v1 .. v7}, Lcom/braze/ui/BrazeWebViewClient;-><init>(Landroid/content/Context;Lcom/braze/ui/BrazeWebViewClient$Type;Lcom/braze/models/inappmessage/IInAppMessage;Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;Lcom/braze/ui/banners/listeners/IBannerWebViewClientListener;Ljava/lang/String;)V

    return-void
.end method

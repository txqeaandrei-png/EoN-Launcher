.class public final Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;
.super Lcom/braze/ui/JavascriptInterfaceBase;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010\u0014\u001a\u00020\t2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0017J\u0008\u0010\u0016\u001a\u00020\tH\u0017J\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0008H\u0007J\u0008\u0010\u0019\u001a\u00020\tH\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u00020\u00118G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;",
        "Lcom/braze/ui/JavascriptInterfaceBase;",
        "context",
        "Landroid/content/Context;",
        "placementId",
        "",
        "setHeightCallback",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "getPlacementId",
        "()Ljava/lang/String;",
        "getSetHeightCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "user",
        "Lcom/braze/ui/banners/jsinterface/BannerUserJavascriptInterface;",
        "getUser",
        "()Lcom/braze/ui/banners/jsinterface/BannerUserJavascriptInterface;",
        "logButtonClick",
        "buttonId",
        "logClick",
        "setBannerHeight",
        "height",
        "requestPushPermission",
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


# instance fields
.field private final placementId:Ljava/lang/String;

.field private final setHeightCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final user:Lcom/braze/ui/banners/jsinterface/BannerUserJavascriptInterface;


# direct methods
.method public static synthetic $r8$lambda$-FBunejZAmhruwHksLfWdIuXcOI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->requestPushPermission$lambda$5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$2yc1Nj-jNGBYKRVzYc2PRAPbVfE(D)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->setBannerHeight$lambda$4(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$B7owPtJddsUFKjt7RX1IeYiWQGY()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->logClick$lambda$2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$IkwJSVCJkz43gUcFIeFU8OjmLHA()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->logButtonClick$lambda$1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$PrzeOjVz__HP3xlxeDYEpXkXsAI(D)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->setBannerHeight$lambda$3(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WGrR1-CtqcsOMIGuyJGvK752EZY(D)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->_init_$lambda$0(D)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setHeightCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/braze/ui/JavascriptInterfaceBase;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->placementId:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->setHeightCallback:Lkotlin/jvm/functions/Function1;

    .line 29
    new-instance p2, Lcom/braze/ui/banners/jsinterface/BannerUserJavascriptInterface;

    invoke-direct {p2, p1}, Lcom/braze/ui/banners/jsinterface/BannerUserJavascriptInterface;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->user:Lcom/braze/ui/banners/jsinterface/BannerUserJavascriptInterface;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 25
    new-instance p3, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface$$ExternalSyntheticLambda1;-><init>()V

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0(D)Lkotlin/Unit;
    .locals 0

    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logButtonClick$lambda$1()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "Banner logButtonClick() called. Logging banner click with button ID."

    return-object v0
.end method

.method private static final logClick$lambda$2()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "Banner logClick() called. Logging banner click without button ID."

    return-object v0
.end method

.method private static final requestPushPermission$lambda$5()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "Banner requestPushPermission() called. Requesting push permission now."

    return-object v0
.end method

.method private static final setBannerHeight$lambda$3(D)Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Banner setBannerHeight("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") called with invalid height. Height must be a finite number, not NaN, and greater or equal to 0."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final setBannerHeight$lambda$4(D)Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Banner setBannerHeight("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") called."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSetHeightCallback()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->setHeightCallback:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getUser()Lcom/braze/ui/banners/jsinterface/BannerUserJavascriptInterface;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->user:Lcom/braze/ui/banners/jsinterface/BannerUserJavascriptInterface;

    return-object v0
.end method

.method public logButtonClick(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 33
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface$$ExternalSyntheticLambda0;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {p0}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    iget-object v1, p0, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/braze/Braze;->logBannerClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logClick()V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 39
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface$$ExternalSyntheticLambda2;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {p0}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    iget-object v1, p0, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->placementId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/braze/Braze;->logBannerClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final requestPushPermission()V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 58
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface$$ExternalSyntheticLambda3;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/braze/coroutine/BrazeCoroutineScope;->INSTANCE:Lcom/braze/coroutine/BrazeCoroutineScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface$requestPushPermission$2;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface$requestPushPermission$2;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setBannerHeight(D)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 46
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface$$ExternalSyntheticLambda5;

    invoke-direct {v6, p1, p2}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface$$ExternalSyntheticLambda5;-><init>(D)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;->setHeightCallback:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 47
    :cond_1
    :goto_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface$$ExternalSyntheticLambda4;

    invoke-direct {v6, p1, p2}, Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface$$ExternalSyntheticLambda4;-><init>(D)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

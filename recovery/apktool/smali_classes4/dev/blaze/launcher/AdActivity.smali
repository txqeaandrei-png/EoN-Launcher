.class public Ldev/blaze/launcher/AdActivity;
.super Lcom/mojang/minecraftpe/MainActivity;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0012\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000bH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Ldev/blaze/launcher/AdActivity;",
        "Lcom/mojang/minecraftpe/MainActivity;",
        "()V",
        "isFirstShown",
        "",
        "dispatchKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "getAssets",
        "Landroid/content/res/AssetManager;",
        "loadDelay",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "app_release"
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
.field private isFirstShown:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Ldev/blaze/launcher/AdActivity;->isFirstShown:Z

    return-void
.end method

.method public static final synthetic access$isFirstShown$p(Ldev/blaze/launcher/AdActivity;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Ldev/blaze/launcher/AdActivity;->isFirstShown:Z

    return p0
.end method

.method public static final synthetic access$setFirstShown$p(Ldev/blaze/launcher/AdActivity;Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Ldev/blaze/launcher/AdActivity;->isFirstShown:Z

    return-void
.end method

.method private final loadDelay()V
    .locals 7

    .line 40
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Ldev/blaze/launcher/AdActivity$loadDelay$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ldev/blaze/launcher/AdActivity$loadDelay$1;-><init>(Ldev/blaze/launcher/AdActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 3

    .line 36
    new-instance v0, Ljava/io/File;

    const-string v1, "com.mojang.minecraftpe"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ldev/blaze/launcher/AdActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ldev/blaze/launcher/AdActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ldev/blaze/launcher/Patcher;->getPluginAssetsManager(Ljava/io/File;Ljava/io/File;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "getPluginAssetsManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/mojang/minecraftpe/MainActivity;->onDestroy()V

    return-void
.end method

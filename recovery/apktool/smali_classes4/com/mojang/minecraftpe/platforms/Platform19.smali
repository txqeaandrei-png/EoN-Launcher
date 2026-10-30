.class public Lcom/mojang/minecraftpe/platforms/Platform19;
.super Lcom/mojang/minecraftpe/platforms/Platform9;


# instance fields
.field public decorViewSettings:Ljava/lang/Runnable;

.field public decoreView:Landroid/view/View;

.field public eventHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$EMU56LpiG4N6jfG7zrfvxrQTPdM(Lcom/mojang/minecraftpe/platforms/Platform19;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/platforms/Platform19;->lambda$onAppStart$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vho-EvG_mtqm_eSnQW3rfa8nK50(Lcom/mojang/minecraftpe/platforms/Platform19;)V
    .locals 0

    invoke-direct {p0}, Lcom/mojang/minecraftpe/platforms/Platform19;->lambda$onAppStart$1()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/mojang/minecraftpe/platforms/Platform9;-><init>()V

    if-eqz p1, :cond_0

    .line 17
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->eventHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAppStart$0(I)V
    .locals 3

    .line 27
    iget-object p1, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->eventHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->decorViewSettings:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$onAppStart$1()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->decoreView:Landroid/view/View;

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAppStart(Landroid/view/View;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 26
    iput-object p1, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->decoreView:Landroid/view/View;

    .line 27
    new-instance v0, Lcom/mojang/minecraftpe/platforms/Platform19$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/platforms/Platform19$$ExternalSyntheticLambda0;-><init>(Lcom/mojang/minecraftpe/platforms/Platform19;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 28
    new-instance p1, Lcom/mojang/minecraftpe/platforms/Platform19$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/mojang/minecraftpe/platforms/Platform19$$ExternalSyntheticLambda1;-><init>(Lcom/mojang/minecraftpe/platforms/Platform19;)V

    iput-object p1, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->decorViewSettings:Ljava/lang/Runnable;

    .line 29
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onViewFocusChanged(Z)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->decorViewSettings:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onVolumePressed()V
    .locals 0

    return-void
.end method

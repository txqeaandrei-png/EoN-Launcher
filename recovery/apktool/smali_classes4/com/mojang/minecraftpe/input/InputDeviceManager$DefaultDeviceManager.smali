.class public Lcom/mojang/minecraftpe/input/InputDeviceManager$DefaultDeviceManager;
.super Lcom/mojang/minecraftpe/input/InputDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/input/InputDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultDeviceManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/mojang/minecraftpe/input/InputDeviceManager;-><init>()V

    return-void
.end method


# virtual methods
.method public register()V
    .locals 2

    .line 27
    const-string v0, "BlazeLauncher"

    const-string v1, "INPUT Noop register device manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregister()V
    .locals 2

    .line 31
    const-string v0, "BlazeLauncher"

    const-string v1, "INPUT Noop unregister device manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

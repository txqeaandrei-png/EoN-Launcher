.class public Lcom/mojang/minecraftpe/BrazeManager;
.super Ljava/lang/Object;


# instance fields
.field private mActivity:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    return-void
.end method


# virtual methods
.method public configureBrazeAtRuntime()V
    .locals 0

    return-void
.end method

.method public disableBrazeSDK()V
    .locals 0

    return-void
.end method

.method public enableBrazeSDK()V
    .locals 0

    return-void
.end method

.method public isBrazeSDKDisabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public requestImmediateDataFlush()V
    .locals 0

    return-void
.end method

.method public requestPushPermission()V
    .locals 0

    return-void
.end method

.method public setBrazeID(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

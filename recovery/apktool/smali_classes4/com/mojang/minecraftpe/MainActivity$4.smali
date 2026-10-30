.class Lcom/mojang/minecraftpe/MainActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->createTextWidget()Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$45qdmG0Zrz84lPDmRJkqSCRq_nw(Lcom/mojang/minecraftpe/MainActivity$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity$4;->lambda$onBackKeyPressed$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hwspThW8MervxsWWC6gkj3Btux8(Lcom/mojang/minecraftpe/MainActivity$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity$4;->lambda$onDeleteKeyPressed$0()V

    return-void
.end method

.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$4;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBackKeyPressed$1()V
    .locals 2

    .line 699
    const-string v0, "BlazeLauncher - keyboard"

    const-string v1, "textInputWidget.onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$4;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->nativeBackPressed()V

    return-void
.end method

.method private synthetic lambda$onDeleteKeyPressed$0()V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$4;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->nativeBackSpacePressed()V

    return-void
.end method


# virtual methods
.method public onBackKeyPressed()Z
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$4;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$4$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$4$$ExternalSyntheticLambda1;-><init>(Lcom/mojang/minecraftpe/MainActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDeleteKeyPressed()V
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$4;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$4$$ExternalSyntheticLambda0;-><init>(Lcom/mojang/minecraftpe/MainActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

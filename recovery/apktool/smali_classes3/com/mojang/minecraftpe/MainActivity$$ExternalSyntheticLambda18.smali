.class public final synthetic Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/mojang/minecraftpe/MainActivity;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/mojang/minecraftpe/MainActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda18;->f$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-wide p2, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda18;->f$1:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda18;->f$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-wide v1, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda18;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->$r8$lambda$mPfov7zUQEmAc0PA32wbzLxYYQM(Lcom/mojang/minecraftpe/MainActivity;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

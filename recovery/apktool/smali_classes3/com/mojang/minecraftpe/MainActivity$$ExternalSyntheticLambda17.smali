.class public final synthetic Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/mojang/minecraftpe/MainActivity;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/mojang/minecraftpe/MainActivity;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda17;->f$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-wide p2, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda17;->f$1:J

    iput-wide p4, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda17;->f$2:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda17;->f$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-wide v1, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda17;->f$1:J

    iget-wide v3, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda17;->f$2:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mojang/minecraftpe/MainActivity;->$r8$lambda$tXIxALkv2F2rWvNwX97HmvXNTcw(Lcom/mojang/minecraftpe/MainActivity;JJ)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

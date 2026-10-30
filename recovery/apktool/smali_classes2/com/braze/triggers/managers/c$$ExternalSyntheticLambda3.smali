.class public final synthetic Lcom/braze/triggers/managers/c$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(JJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/braze/triggers/managers/c$$ExternalSyntheticLambda3;->f$0:J

    iput-wide p3, p0, Lcom/braze/triggers/managers/c$$ExternalSyntheticLambda3;->f$1:J

    iput-wide p5, p0, Lcom/braze/triggers/managers/c$$ExternalSyntheticLambda3;->f$2:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 0
    iget-wide v0, p0, Lcom/braze/triggers/managers/c$$ExternalSyntheticLambda3;->f$0:J

    iget-wide v2, p0, Lcom/braze/triggers/managers/c$$ExternalSyntheticLambda3;->f$1:J

    iget-wide v4, p0, Lcom/braze/triggers/managers/c$$ExternalSyntheticLambda3;->f$2:J

    invoke-static/range {v0 .. v5}, Lcom/braze/triggers/managers/c;->a(JJJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

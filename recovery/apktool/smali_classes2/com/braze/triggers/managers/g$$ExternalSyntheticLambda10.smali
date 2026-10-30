.class public final synthetic Lcom/braze/triggers/managers/g$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lcom/braze/triggers/config/a;


# direct methods
.method public synthetic constructor <init>(JLcom/braze/triggers/config/a;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/braze/triggers/managers/g$$ExternalSyntheticLambda10;->f$0:J

    iput-object p3, p0, Lcom/braze/triggers/managers/g$$ExternalSyntheticLambda10;->f$1:Lcom/braze/triggers/config/a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-wide v0, p0, Lcom/braze/triggers/managers/g$$ExternalSyntheticLambda10;->f$0:J

    iget-object v2, p0, Lcom/braze/triggers/managers/g$$ExternalSyntheticLambda10;->f$1:Lcom/braze/triggers/config/a;

    invoke-static {v0, v1, v2}, Lcom/braze/triggers/managers/g;->b(JLcom/braze/triggers/config/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

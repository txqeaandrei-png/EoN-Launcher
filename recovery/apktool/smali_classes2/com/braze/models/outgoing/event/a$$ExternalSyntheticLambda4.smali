.class public final synthetic Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:D

.field public final synthetic f$2:D


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;DD)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda4;->f$1:D

    iput-wide p4, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda4;->f$2:D

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda4;->f$1:D

    iget-wide v3, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda4;->f$2:D

    invoke-static {v0, v1, v2, v3, v4}, Lcom/braze/models/outgoing/event/a;->b(Ljava/lang/String;DD)Lcom/braze/models/i;

    move-result-object v0

    return-object v0
.end method

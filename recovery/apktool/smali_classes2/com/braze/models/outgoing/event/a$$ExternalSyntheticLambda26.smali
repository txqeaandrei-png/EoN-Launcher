.class public final synthetic Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;

.field public final synthetic f$1:Lcom/braze/models/o;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;Lcom/braze/models/o;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda26;->f$0:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda26;->f$1:Lcom/braze/models/o;

    iput-boolean p3, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda26;->f$2:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda26;->f$0:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda26;->f$1:Lcom/braze/models/o;

    iget-boolean v2, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda26;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/braze/models/outgoing/event/a;->b(Ljava/lang/Throwable;Lcom/braze/models/o;Z)Lcom/braze/models/i;

    move-result-object v0

    return-object v0
.end method

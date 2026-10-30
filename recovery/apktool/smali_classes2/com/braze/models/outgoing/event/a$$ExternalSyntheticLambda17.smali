.class public final synthetic Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/braze/enums/h;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/braze/enums/h;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda17;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda17;->f$1:Lcom/braze/enums/h;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda17;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda17;->f$1:Lcom/braze/enums/h;

    invoke-static {v0, v1}, Lcom/braze/models/outgoing/event/a;->b(Ljava/lang/String;Lcom/braze/enums/h;)Lcom/braze/models/i;

    move-result-object v0

    return-object v0
.end method

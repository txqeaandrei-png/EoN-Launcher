.class public final synthetic Lcom/braze/managers/s0$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/braze/events/internal/t;

.field public final synthetic f$1:Lcom/braze/managers/o0;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/events/internal/t;Lcom/braze/managers/o0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/managers/s0$$ExternalSyntheticLambda5;->f$0:Lcom/braze/events/internal/t;

    iput-object p2, p0, Lcom/braze/managers/s0$$ExternalSyntheticLambda5;->f$1:Lcom/braze/managers/o0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/managers/s0$$ExternalSyntheticLambda5;->f$0:Lcom/braze/events/internal/t;

    iget-object v1, p0, Lcom/braze/managers/s0$$ExternalSyntheticLambda5;->f$1:Lcom/braze/managers/o0;

    invoke-static {v0, v1}, Lcom/braze/managers/s0;->a(Lcom/braze/events/internal/t;Lcom/braze/managers/o0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

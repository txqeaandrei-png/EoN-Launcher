.class public final synthetic Lcom/braze/managers/m$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/events/IEventSubscriber;


# instance fields
.field public final synthetic f$0:Lcom/braze/managers/m;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/managers/m;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/managers/m$$ExternalSyntheticLambda29;->f$0:Lcom/braze/managers/m;

    return-void
.end method


# virtual methods
.method public final trigger(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/managers/m$$ExternalSyntheticLambda29;->f$0:Lcom/braze/managers/m;

    check-cast p1, Lcom/braze/events/internal/s;

    invoke-static {v0, p1}, Lcom/braze/managers/m;->a(Lcom/braze/managers/m;Lcom/braze/events/internal/s;)V

    return-void
.end method

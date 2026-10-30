.class public final synthetic Lcom/braze/managers/a0$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/events/IEventSubscriber;


# instance fields
.field public final synthetic f$0:Lcom/braze/managers/a0;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/managers/a0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/managers/a0$$ExternalSyntheticLambda14;->f$0:Lcom/braze/managers/a0;

    return-void
.end method


# virtual methods
.method public final trigger(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/managers/a0$$ExternalSyntheticLambda14;->f$0:Lcom/braze/managers/a0;

    check-cast p1, Lcom/braze/events/internal/d;

    invoke-static {v0, p1}, Lcom/braze/managers/a0;->a(Lcom/braze/managers/a0;Lcom/braze/events/internal/d;)V

    return-void
.end method

.class public final synthetic Lcom/braze/managers/i$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/events/IEventSubscriber;


# instance fields
.field public final synthetic f$0:Lcom/braze/managers/i;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/managers/i;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda9;->f$0:Lcom/braze/managers/i;

    return-void
.end method


# virtual methods
.method public final trigger(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda9;->f$0:Lcom/braze/managers/i;

    check-cast p1, Lcom/braze/events/internal/y;

    invoke-static {v0, p1}, Lcom/braze/managers/i;->a(Lcom/braze/managers/i;Lcom/braze/events/internal/y;)V

    return-void
.end method

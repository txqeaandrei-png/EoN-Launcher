.class public final synthetic Lcom/braze/triggers/managers/f$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/events/IEventSubscriber;


# instance fields
.field public final synthetic f$0:Lcom/braze/triggers/managers/f;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/triggers/managers/f;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/triggers/managers/f$$ExternalSyntheticLambda13;->f$0:Lcom/braze/triggers/managers/f;

    return-void
.end method


# virtual methods
.method public final trigger(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/triggers/managers/f$$ExternalSyntheticLambda13;->f$0:Lcom/braze/triggers/managers/f;

    check-cast p1, Lcom/braze/events/internal/c0;

    invoke-static {v0, p1}, Lcom/braze/triggers/managers/f;->a(Lcom/braze/triggers/managers/f;Lcom/braze/events/internal/c0;)V

    return-void
.end method

.class public final synthetic Lcom/braze/requests/framework/g$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/events/IEventSubscriber;


# instance fields
.field public final synthetic f$0:Lcom/braze/requests/framework/g;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/requests/framework/g;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/requests/framework/g$$ExternalSyntheticLambda1;->f$0:Lcom/braze/requests/framework/g;

    return-void
.end method


# virtual methods
.method public final trigger(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/requests/framework/g$$ExternalSyntheticLambda1;->f$0:Lcom/braze/requests/framework/g;

    check-cast p1, Lcom/braze/events/internal/o;

    invoke-static {v0, p1}, Lcom/braze/requests/framework/g;->a(Lcom/braze/requests/framework/g;Lcom/braze/events/internal/o;)V

    return-void
.end method

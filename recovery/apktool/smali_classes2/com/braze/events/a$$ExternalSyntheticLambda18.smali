.class public final synthetic Lcom/braze/events/a$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/events/IEventSubscriber;


# instance fields
.field public final synthetic f$0:Lcom/braze/events/a;

.field public final synthetic f$1:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/events/a;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/events/a$$ExternalSyntheticLambda18;->f$0:Lcom/braze/events/a;

    iput-object p2, p0, Lcom/braze/events/a$$ExternalSyntheticLambda18;->f$1:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final trigger(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/events/a$$ExternalSyntheticLambda18;->f$0:Lcom/braze/events/a;

    iget-object v1, p0, Lcom/braze/events/a$$ExternalSyntheticLambda18;->f$1:Ljava/util/concurrent/Semaphore;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lcom/braze/events/a;->a(Lcom/braze/events/a;Ljava/util/concurrent/Semaphore;Ljava/lang/Throwable;)V

    return-void
.end method

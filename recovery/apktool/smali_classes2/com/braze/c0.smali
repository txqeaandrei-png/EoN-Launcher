.class public final Lcom/braze/c0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/braze/BrazeUser;

.field public final synthetic b:Lcom/braze/models/outgoing/AttributionData;


# direct methods
.method public constructor <init>(Lcom/braze/BrazeUser;Lcom/braze/models/outgoing/AttributionData;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/braze/c0;->a:Lcom/braze/BrazeUser;

    iput-object p2, p0, Lcom/braze/c0;->b:Lcom/braze/models/outgoing/AttributionData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/braze/c0;

    iget-object v0, p0, Lcom/braze/c0;->a:Lcom/braze/BrazeUser;

    iget-object v1, p0, Lcom/braze/c0;->b:Lcom/braze/models/outgoing/AttributionData;

    invoke-direct {p1, v0, v1, p2}, Lcom/braze/c0;-><init>(Lcom/braze/BrazeUser;Lcom/braze/models/outgoing/AttributionData;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/braze/c0;

    iget-object v0, p0, Lcom/braze/c0;->a:Lcom/braze/BrazeUser;

    iget-object v1, p0, Lcom/braze/c0;->b:Lcom/braze/models/outgoing/AttributionData;

    invoke-direct {p1, v0, v1, p2}, Lcom/braze/c0;-><init>(Lcom/braze/BrazeUser;Lcom/braze/models/outgoing/AttributionData;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/braze/c0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/braze/c0;->a:Lcom/braze/BrazeUser;

    invoke-static {p1}, Lcom/braze/BrazeUser;->access$getUserCache$p(Lcom/braze/BrazeUser;)Lcom/braze/storage/h0;

    move-result-object p1

    iget-object v0, p0, Lcom/braze/c0;->b:Lcom/braze/models/outgoing/AttributionData;

    monitor-enter p1

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/braze/models/outgoing/AttributionData;->forJsonPut()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/braze/storage/h0;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :goto_1
    monitor-exit p1

    throw v0
.end method

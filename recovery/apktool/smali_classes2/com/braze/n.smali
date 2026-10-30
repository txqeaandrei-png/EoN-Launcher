.class public final Lcom/braze/n;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/braze/events/IValueCallback;

.field public final synthetic b:Lcom/braze/Braze;


# direct methods
.method public constructor <init>(Lcom/braze/events/IValueCallback;Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/braze/n;->a:Lcom/braze/events/IValueCallback;

    iput-object p2, p0, Lcom/braze/n;->b:Lcom/braze/Braze;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/braze/n;

    iget-object v0, p0, Lcom/braze/n;->a:Lcom/braze/events/IValueCallback;

    iget-object v1, p0, Lcom/braze/n;->b:Lcom/braze/Braze;

    invoke-direct {p1, v0, v1, p2}, Lcom/braze/n;-><init>(Lcom/braze/events/IValueCallback;Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/braze/n;

    iget-object v0, p0, Lcom/braze/n;->a:Lcom/braze/events/IValueCallback;

    iget-object v1, p0, Lcom/braze/n;->b:Lcom/braze/Braze;

    invoke-direct {p1, v0, v1, p2}, Lcom/braze/n;-><init>(Lcom/braze/events/IValueCallback;Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/braze/n;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {p1}, Lcom/braze/Braze$Companion;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/braze/n;->a:Lcom/braze/events/IValueCallback;

    invoke-interface {p1}, Lcom/braze/events/IValueCallback;->onError()V

    .line 4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/braze/n;->a:Lcom/braze/events/IValueCallback;

    iget-object v0, p0, Lcom/braze/n;->b:Lcom/braze/Braze;

    invoke-virtual {v0}, Lcom/braze/Braze;->getDeviceIdProvider$android_sdk_base_release()Lcom/braze/managers/e0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u;

    invoke-virtual {v0}, Lcom/braze/managers/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/braze/events/IValueCallback;->onSuccess(Ljava/lang/Object;)V

    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

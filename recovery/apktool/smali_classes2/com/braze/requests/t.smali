.class public final Lcom/braze/requests/t;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/braze/requests/u;

.field public final synthetic b:Lcom/braze/requests/framework/h;

.field public final synthetic c:Lcom/braze/requests/framework/c;


# direct methods
.method public constructor <init>(Lcom/braze/requests/u;Lcom/braze/requests/framework/h;Lcom/braze/requests/framework/c;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/braze/requests/t;->a:Lcom/braze/requests/u;

    iput-object p2, p0, Lcom/braze/requests/t;->b:Lcom/braze/requests/framework/h;

    iput-object p3, p0, Lcom/braze/requests/t;->c:Lcom/braze/requests/framework/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Lcom/braze/requests/t;

    iget-object v0, p0, Lcom/braze/requests/t;->a:Lcom/braze/requests/u;

    iget-object v1, p0, Lcom/braze/requests/t;->b:Lcom/braze/requests/framework/h;

    iget-object v2, p0, Lcom/braze/requests/t;->c:Lcom/braze/requests/framework/c;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/braze/requests/t;-><init>(Lcom/braze/requests/u;Lcom/braze/requests/framework/h;Lcom/braze/requests/framework/c;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/braze/requests/t;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/braze/requests/t;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/braze/requests/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/braze/requests/t;->a:Lcom/braze/requests/u;

    iget-object v1, p0, Lcom/braze/requests/t;->b:Lcom/braze/requests/framework/h;

    iget-object v10, p0, Lcom/braze/requests/t;->c:Lcom/braze/requests/framework/c;

    .line 2
    new-instance v11, Lcom/braze/requests/d;

    .line 4
    iget-object v2, p1, Lcom/braze/requests/u;->a:Lcom/braze/communication/e;

    .line 5
    iget-object v3, p1, Lcom/braze/requests/u;->b:Lcom/braze/events/e;

    .line 6
    iget-object v4, p1, Lcom/braze/requests/u;->c:Lcom/braze/events/e;

    .line 7
    iget-object v5, p1, Lcom/braze/requests/u;->d:Lcom/braze/storage/x;

    .line 8
    iget-object v6, p1, Lcom/braze/requests/u;->g:Lcom/braze/managers/m;

    .line 9
    iget-object v7, p1, Lcom/braze/requests/u;->e:Lcom/braze/storage/e0;

    .line 10
    iget-object v8, p1, Lcom/braze/requests/u;->f:Lcom/braze/storage/p;

    .line 11
    iget-object v9, p1, Lcom/braze/requests/u;->h:Lcom/braze/requests/util/a;

    move-object v0, v11

    .line 12
    invoke-direct/range {v0 .. v10}, Lcom/braze/requests/d;-><init>(Lcom/braze/requests/framework/h;Lcom/braze/communication/e;Lcom/braze/events/e;Lcom/braze/events/e;Lcom/braze/storage/x;Lcom/braze/managers/m;Lcom/braze/storage/e0;Lcom/braze/storage/p;Lcom/braze/requests/util/a;Lcom/braze/requests/framework/c;)V

    .line 23
    invoke-virtual {v11}, Lcom/braze/requests/d;->c()V

    .line 24
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

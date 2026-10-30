.class public final Lcom/braze/triggers/managers/e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/braze/triggers/actions/a;

.field public final synthetic b:Lcom/braze/triggers/managers/f;

.field public final synthetic c:Lcom/braze/triggers/events/b;

.field public final synthetic d:J


# direct methods
.method public constructor <init>(Lcom/braze/triggers/actions/a;Lcom/braze/triggers/managers/f;Lcom/braze/triggers/events/b;JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/braze/triggers/managers/e;->a:Lcom/braze/triggers/actions/a;

    iput-object p2, p0, Lcom/braze/triggers/managers/e;->b:Lcom/braze/triggers/managers/f;

    iput-object p3, p0, Lcom/braze/triggers/managers/e;->c:Lcom/braze/triggers/events/b;

    iput-wide p4, p0, Lcom/braze/triggers/managers/e;->d:J

    const/4 p1, 0x1

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v7, Lcom/braze/triggers/managers/e;

    iget-object v1, p0, Lcom/braze/triggers/managers/e;->a:Lcom/braze/triggers/actions/a;

    iget-object v2, p0, Lcom/braze/triggers/managers/e;->b:Lcom/braze/triggers/managers/f;

    iget-object v3, p0, Lcom/braze/triggers/managers/e;->c:Lcom/braze/triggers/events/b;

    iget-wide v4, p0, Lcom/braze/triggers/managers/e;->d:J

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/braze/triggers/managers/e;-><init>(Lcom/braze/triggers/actions/a;Lcom/braze/triggers/managers/f;Lcom/braze/triggers/events/b;JLkotlin/coroutines/Continuation;)V

    return-object v7
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1}, Lcom/braze/triggers/managers/e;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/braze/triggers/managers/e;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/braze/triggers/managers/e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/braze/triggers/managers/e;->a:Lcom/braze/triggers/actions/a;

    iget-object p1, p0, Lcom/braze/triggers/managers/e;->b:Lcom/braze/triggers/managers/f;

    .line 3
    iget-object v1, p1, Lcom/braze/triggers/managers/f;->a:Landroid/content/Context;

    .line 4
    iget-object v2, p1, Lcom/braze/triggers/managers/f;->c:Lcom/braze/events/e;

    .line 5
    iget-object v3, p0, Lcom/braze/triggers/managers/e;->c:Lcom/braze/triggers/events/b;

    iget-wide v4, p0, Lcom/braze/triggers/managers/e;->d:J

    invoke-interface/range {v0 .. v5}, Lcom/braze/triggers/actions/a;->a(Landroid/content/Context;Lcom/braze/events/e;Lcom/braze/triggers/events/b;J)V

    .line 6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

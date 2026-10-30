.class public final Lcom/braze/triggers/managers/d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/braze/triggers/actions/a;

.field public final synthetic b:Lcom/braze/triggers/managers/f;

.field public final synthetic c:Lcom/braze/triggers/events/b;

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public constructor <init>(Lcom/braze/triggers/actions/a;Lcom/braze/triggers/managers/f;Lcom/braze/triggers/events/b;JJLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/braze/triggers/managers/d;->a:Lcom/braze/triggers/actions/a;

    iput-object p2, p0, Lcom/braze/triggers/managers/d;->b:Lcom/braze/triggers/managers/f;

    iput-object p3, p0, Lcom/braze/triggers/managers/d;->c:Lcom/braze/triggers/events/b;

    iput-wide p4, p0, Lcom/braze/triggers/managers/d;->d:J

    iput-wide p6, p0, Lcom/braze/triggers/managers/d;->e:J

    const/4 p1, 0x1

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final a(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Performing triggered action after a delay of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " ms."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    new-instance v9, Lcom/braze/triggers/managers/d;

    iget-object v1, p0, Lcom/braze/triggers/managers/d;->a:Lcom/braze/triggers/actions/a;

    iget-object v2, p0, Lcom/braze/triggers/managers/d;->b:Lcom/braze/triggers/managers/f;

    iget-object v3, p0, Lcom/braze/triggers/managers/d;->c:Lcom/braze/triggers/events/b;

    iget-wide v4, p0, Lcom/braze/triggers/managers/d;->d:J

    iget-wide v6, p0, Lcom/braze/triggers/managers/d;->e:J

    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/braze/triggers/managers/d;-><init>(Lcom/braze/triggers/actions/a;Lcom/braze/triggers/managers/f;Lcom/braze/triggers/events/b;JJLkotlin/coroutines/Continuation;)V

    return-object v9
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1}, Lcom/braze/triggers/managers/d;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/braze/triggers/managers/d;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/braze/triggers/managers/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    .line 3
    sget-object v1, Lcom/braze/triggers/managers/f;->q:Ljava/lang/String;

    .line 4
    iget-wide v2, p0, Lcom/braze/triggers/managers/d;->e:J

    new-instance v5, Lcom/braze/triggers/managers/d$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v3}, Lcom/braze/triggers/managers/d$$ExternalSyntheticLambda0;-><init>(J)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    iget-object v8, p0, Lcom/braze/triggers/managers/d;->a:Lcom/braze/triggers/actions/a;

    iget-object p1, p0, Lcom/braze/triggers/managers/d;->b:Lcom/braze/triggers/managers/f;

    .line 6
    iget-object v9, p1, Lcom/braze/triggers/managers/f;->a:Landroid/content/Context;

    .line 7
    iget-object v10, p1, Lcom/braze/triggers/managers/f;->c:Lcom/braze/events/e;

    .line 8
    iget-object v11, p0, Lcom/braze/triggers/managers/d;->c:Lcom/braze/triggers/events/b;

    iget-wide v12, p0, Lcom/braze/triggers/managers/d;->d:J

    invoke-interface/range {v8 .. v13}, Lcom/braze/triggers/actions/a;->a(Landroid/content/Context;Lcom/braze/events/e;Lcom/braze/triggers/events/b;J)V

    .line 9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

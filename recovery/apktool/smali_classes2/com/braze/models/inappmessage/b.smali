.class public final Lcom/braze/models/inappmessage/b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/braze/managers/c0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/braze/managers/c0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/braze/models/inappmessage/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/braze/models/inappmessage/b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/braze/models/inappmessage/b;->d:Lcom/braze/managers/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    .line 333
    const-string v0, "Logging click on in-app message"

    return-object v0
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Logging click on in-app message with button id: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    new-instance v0, Lcom/braze/models/inappmessage/b;

    iget-object v1, p0, Lcom/braze/models/inappmessage/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/braze/models/inappmessage/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/braze/models/inappmessage/b;->d:Lcom/braze/managers/c0;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/braze/models/inappmessage/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/braze/managers/c0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/braze/models/inappmessage/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/braze/models/inappmessage/b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/braze/models/inappmessage/b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/braze/models/inappmessage/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/braze/models/inappmessage/b;->a:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    iget-object p1, p0, Lcom/braze/models/inappmessage/b;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    iget-object p1, p0, Lcom/braze/models/inappmessage/b;->b:Ljava/lang/String;

    new-instance v5, Lcom/braze/models/inappmessage/b$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/braze/models/inappmessage/b$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    sget-object p1, Lcom/braze/models/outgoing/event/b;->g:Lcom/braze/models/outgoing/event/a;

    iget-object v0, p0, Lcom/braze/models/inappmessage/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/braze/models/inappmessage/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/braze/models/outgoing/event/a;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/braze/models/i;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/braze/models/inappmessage/b;->d:Lcom/braze/managers/c0;

    .line 10
    check-cast v0, Lcom/braze/managers/m;

    invoke-virtual {v0, p1}, Lcom/braze/managers/m;->a(Lcom/braze/models/i;)Z

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/models/inappmessage/b$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/braze/models/inappmessage/b$$ExternalSyntheticLambda1;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 12
    sget-object p1, Lcom/braze/models/outgoing/event/b;->g:Lcom/braze/models/outgoing/event/a;

    iget-object v0, p0, Lcom/braze/models/inappmessage/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/braze/models/outgoing/event/a;->o(Ljava/lang/String;)Lcom/braze/models/i;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/braze/models/inappmessage/b;->d:Lcom/braze/managers/c0;

    .line 13
    check-cast v0, Lcom/braze/managers/m;

    invoke-virtual {v0, p1}, Lcom/braze/managers/m;->a(Lcom/braze/models/i;)Z

    .line 21
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

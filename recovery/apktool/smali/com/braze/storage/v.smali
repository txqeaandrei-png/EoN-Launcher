.class public final Lcom/braze/storage/v;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/braze/storage/f0;

.field public final b:Lcom/braze/events/d;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/braze/storage/f0;Lcom/braze/events/d;)V
    .locals 1

    const-string v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventPublisher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/braze/storage/v;->a:Lcom/braze/storage/f0;

    .line 3
    iput-object p2, p0, Lcom/braze/storage/v;->b:Lcom/braze/events/d;

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "Storage provider is closed. Not getting all events."

    return-object v0
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Storage provider is closed. Failed to "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/storage/v;Lcom/braze/models/i;)Lkotlin/Unit;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/braze/storage/v;->a:Lcom/braze/storage/f0;

    invoke-virtual {p0, p1}, Lcom/braze/storage/f0;->a(Lcom/braze/models/i;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final a(Lcom/braze/storage/v;Ljava/util/Set;)Lkotlin/Unit;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/braze/storage/v;->a:Lcom/braze/storage/f0;

    invoke-virtual {p0, p1}, Lcom/braze/storage/f0;->a(Ljava/util/Set;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to get all events from storage."

    return-object v0
.end method

.method public static final d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to log storage exception"

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/braze/models/i;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/braze/storage/v$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/braze/storage/v$$ExternalSyntheticLambda3;-><init>(Lcom/braze/storage/v;Lcom/braze/models/i;)V

    invoke-virtual {p0, v0, v1}, Lcom/braze/storage/v;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 8

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/braze/storage/v;->b:Lcom/braze/events/d;

    .line 80
    new-instance v1, Lcom/braze/exceptions/b;

    .line 81
    const-string v2, "A storage exception has occurred!"

    .line 82
    invoke-direct {v1, v2, p1}, Lcom/braze/exceptions/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 85
    const-class p1, Lcom/braze/exceptions/b;

    .line 86
    invoke-virtual {v0, v1, p1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    .line 93
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/storage/v$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/braze/storage/v$$ExternalSyntheticLambda5;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v0, p1

    .line 94
    iget-boolean v1, v8, Lcom/braze/storage/v;->c:Z

    if-eqz v1, :cond_0

    .line 95
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/storage/v$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/braze/storage/v$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 98
    :cond_0
    sget-object v9, Lcom/braze/coroutine/BrazeCoroutineScope;->INSTANCE:Lcom/braze/coroutine/BrazeCoroutineScope;

    new-instance v12, Lcom/braze/storage/u;

    const/4 v1, 0x0

    move-object/from16 v2, p2

    invoke-direct {v12, v2, p0, v0, v1}, Lcom/braze/storage/u;-><init>(Lkotlin/jvm/functions/Function0;Lcom/braze/storage/v;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 2

    const-string v0, "events"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete events "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/braze/storage/v$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/braze/storage/v$$ExternalSyntheticLambda4;-><init>(Lcom/braze/storage/v;Ljava/util/Set;)V

    invoke-virtual {p0, v0, v1}, Lcom/braze/storage/v;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final c()Ljava/util/Collection;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/braze/storage/v;->c:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/storage/v$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/braze/storage/v$$ExternalSyntheticLambda1;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 3
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/braze/storage/v;->a:Lcom/braze/storage/f0;

    invoke-virtual {v0}, Lcom/braze/storage/f0;->b()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/storage/v$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/braze/storage/v$$ExternalSyntheticLambda2;-><init>()V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/braze/storage/v;->a(Ljava/lang/Exception;)V

    .line 10
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

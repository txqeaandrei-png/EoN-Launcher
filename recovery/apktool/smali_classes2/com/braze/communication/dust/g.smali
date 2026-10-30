.class public final Lcom/braze/communication/dust/g;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/braze/communication/dust/h;

.field public final synthetic f:Lcom/braze/managers/x;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/braze/communication/dust/h;Lcom/braze/managers/x;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/communication/dust/g;->e:Lcom/braze/communication/dust/h;

    iput-object p2, p0, Lcom/braze/communication/dust/g;->f:Lcom/braze/managers/x;

    iput-object p3, p0, Lcom/braze/communication/dust/g;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "Stream job coroutine no longer active"

    return-object v0
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Starting DUST stream to "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lkotlin/jvm/internal/Ref$ObjectRef;)Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DUST stream response code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Caught unexpected exception listening to DUST stream"

    return-object v0
.end method

.method public static final c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Stream connection job cancelled"

    return-object v0
.end method

.method public static final d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Closing stream connection data"

    return-object v0
.end method

.method public static final e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Stream job finished"

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    new-instance v0, Lcom/braze/communication/dust/g;

    iget-object v1, p0, Lcom/braze/communication/dust/g;->e:Lcom/braze/communication/dust/h;

    iget-object v2, p0, Lcom/braze/communication/dust/g;->f:Lcom/braze/managers/x;

    iget-object v3, p0, Lcom/braze/communication/dust/g;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/braze/communication/dust/g;-><init>(Lcom/braze/communication/dust/h;Lcom/braze/managers/x;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/braze/communication/dust/g;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/braze/communication/dust/g;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/braze/communication/dust/g;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/braze/communication/dust/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v2, v1, Lcom/braze/communication/dust/g;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/braze/communication/dust/g;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v1, Lcom/braze/communication/dust/g;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v1, Lcom/braze/communication/dust/g;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v1, Lcom/braze/communication/dust/g;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v1, Lcom/braze/communication/dust/g;->d:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v13, v6

    move-object v6, v4

    move-object/from16 v4, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v2, v4

    goto/16 :goto_5

    .line 3
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/braze/communication/dust/g;->d:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    sget-object v7, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    .line 5
    sget-object v8, Lcom/braze/communication/dust/h;->b:Ljava/lang/String;

    .line 6
    iget-object v2, v1, Lcom/braze/communication/dust/g;->g:Ljava/lang/String;

    new-instance v12, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda0;

    invoke-direct {v12, v2}, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/16 v13, 0xe

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v14}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 8
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 11
    :try_start_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v7

    new-instance v8, Lcom/braze/communication/dust/f;

    iget-object v9, v1, Lcom/braze/communication/dust/g;->g:Ljava/lang/String;

    invoke-direct {v8, v9, v5}, Lcom/braze/communication/dust/f;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v1, Lcom/braze/communication/dust/g;->d:Ljava/lang/Object;

    iput-object v2, v1, Lcom/braze/communication/dust/g;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v2, v1, Lcom/braze/communication/dust/g;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v4, v1, Lcom/braze/communication/dust/g;->c:I

    invoke-static {v7, v8, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v4, v0, :cond_3

    return-object v0

    :cond_3
    move-object v13, v6

    move-object v6, v2

    .line 12
    :goto_0
    :try_start_3
    const-string v7, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 20
    sget-object v14, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 21
    :try_start_4
    sget-object v15, Lcom/braze/communication/dust/h;->b:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 22
    :try_start_5
    new-instance v2, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda1;

    invoke-direct {v2, v6}, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const/16 v20, 0xe

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v2

    invoke-static/range {v14 .. v21}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 24
    iget-object v2, v1, Lcom/braze/communication/dust/g;->e:Lcom/braze/communication/dust/h;

    iget-object v4, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v7, "getInputStream(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    instance-of v4, v8, Ljava/io/BufferedReader;

    if-eqz v4, :cond_4

    check-cast v8, Ljava/io/BufferedReader;

    goto :goto_1

    .line 25
    :cond_4
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v4, v8, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v8, v4

    .line 26
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance v10, Lcom/braze/communication/dust/d;

    invoke-direct {v10, v8, v5}, Lcom/braze/communication/dust/d;-><init>(Ljava/io/BufferedReader;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v13

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 28
    :try_start_7
    iget-object v4, v1, Lcom/braze/communication/dust/g;->e:Lcom/braze/communication/dust/h;

    iget-object v7, v1, Lcom/braze/communication/dust/g;->f:Lcom/braze/managers/x;

    iput-object v13, v1, Lcom/braze/communication/dust/g;->d:Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iput-object v6, v1, Lcom/braze/communication/dust/g;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v5, v1, Lcom/braze/communication/dust/g;->b:Lkotlin/jvm/internal/Ref$ObjectRef;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    iput v3, v1, Lcom/braze/communication/dust/g;->c:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 29
    :try_start_a
    invoke-virtual {v4, v13, v2, v7, v1}, Lcom/braze/communication/dust/h;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/channels/ReceiveChannel;Lcom/braze/managers/x;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-ne v2, v0, :cond_5

    return-object v0

    :cond_5
    move-object v2, v6

    move-object v3, v13

    .line 30
    :goto_2
    :try_start_b
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    .line 31
    sget-object v12, Lcom/braze/communication/dust/h;->b:Ljava/lang/String;

    .line 32
    new-instance v9, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda2;-><init>()V

    const/16 v10, 0xe

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    move-object v5, v12

    invoke-static/range {v4 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 40
    new-instance v9, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda3;

    invoke-direct {v9}, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda3;-><init>()V

    const/16 v10, 0xe

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    move-object v5, v12

    invoke-static/range {v4 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 41
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    goto :goto_7

    :goto_3
    move-object v10, v0

    move-object v6, v3

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v6

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    move-object v4, v6

    :goto_4
    move-object v2, v4

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v10, v0

    move-object v2, v6

    move-object v6, v13

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v10, v0

    .line 42
    :goto_5
    :try_start_c
    invoke-static {v6}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43
    sget-object v7, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    .line 44
    sget-object v8, Lcom/braze/communication/dust/h;->b:Ljava/lang/String;

    .line 45
    sget-object v9, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v12, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda4;

    invoke-direct {v12}, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda4;-><init>()V

    const/16 v13, 0x8

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v14}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_6

    .line 47
    :cond_6
    sget-object v15, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    .line 48
    sget-object v16, Lcom/braze/communication/dust/h;->b:Ljava/lang/String;

    .line 49
    new-instance v20, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda5;

    invoke-direct/range {v20 .. v20}, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda5;-><init>()V

    const/16 v21, 0xe

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v15 .. v22}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 52
    :goto_6
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    .line 53
    sget-object v4, Lcom/braze/communication/dust/h;->b:Ljava/lang/String;

    .line 54
    new-instance v8, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda3;-><init>()V

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 55
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    .line 41
    :goto_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 58
    :cond_7
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    .line 59
    sget-object v3, Lcom/braze/communication/dust/h;->b:Ljava/lang/String;

    .line 60
    new-instance v7, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda6;-><init>()V

    const/16 v8, 0xe

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 62
    :goto_8
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    .line 63
    sget-object v4, Lcom/braze/communication/dust/h;->b:Ljava/lang/String;

    .line 64
    new-instance v8, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/braze/communication/dust/g$$ExternalSyntheticLambda3;-><init>()V

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 65
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0
.end method

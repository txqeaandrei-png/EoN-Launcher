.class public final Lcom/braze/requests/framework/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/requests/framework/c;


# instance fields
.field public final synthetic a:Lcom/braze/requests/framework/g;

.field public final synthetic b:Lcom/braze/requests/framework/h;

.field public final synthetic c:Lcom/braze/requests/framework/b;


# direct methods
.method public constructor <init>(Lcom/braze/requests/framework/g;Lcom/braze/requests/framework/h;Lcom/braze/requests/framework/b;)V
    .locals 0

    iput-object p1, p0, Lcom/braze/requests/framework/e;->a:Lcom/braze/requests/framework/g;

    iput-object p2, p0, Lcom/braze/requests/framework/e;->b:Lcom/braze/requests/framework/h;

    iput-object p3, p0, Lcom/braze/requests/framework/e;->c:Lcom/braze/requests/framework/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/braze/requests/framework/g;)Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incremented invalidApiKeyErrorCounter to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/braze/requests/framework/g;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/requests/framework/g;Lcom/braze/requests/framework/h;J)Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got failed token "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/braze/requests/framework/g;->h:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " for\n "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1, p2, p3}, Lcom/braze/requests/framework/h;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/requests/framework/h;J)Ljava/lang/String;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request success received for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/braze/requests/framework/h;->a(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/requests/framework/h;JLcom/braze/models/response/d;)Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request failure received "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/braze/requests/framework/h;->a(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " \n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/braze/models/response/a;)V
    .locals 24

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    const-string v1, "apiResponse"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v10, v9, Lcom/braze/requests/framework/e;->a:Lcom/braze/requests/framework/g;

    .line 16
    iget-object v11, v10, Lcom/braze/requests/framework/g;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    iget-object v1, v9, Lcom/braze/requests/framework/e;->b:Lcom/braze/requests/framework/h;

    iget-object v2, v9, Lcom/braze/requests/framework/e;->c:Lcom/braze/requests/framework/b;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 18
    :try_start_0
    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInMillisecondsSystemClock()J

    move-result-wide v12

    .line 19
    instance-of v3, v0, Lcom/braze/models/response/g;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/braze/models/response/g;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_1

    .line 20
    iget-object v4, v3, Lcom/braze/models/response/g;->d:Lcom/braze/models/response/d;

    :cond_1
    move-object v14, v4

    .line 21
    sget-object v23, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    .line 22
    sget-object v16, Lcom/braze/requests/framework/g;->n:Ljava/lang/String;

    .line 23
    new-instance v3, Lcom/braze/requests/framework/e$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v12, v13, v14}, Lcom/braze/requests/framework/e$$ExternalSyntheticLambda1;-><init>(Lcom/braze/requests/framework/h;JLcom/braze/models/response/d;)V

    const/16 v21, 0xe

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v15, v23

    move-object/from16 v20, v3

    invoke-static/range {v15 .. v22}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 25
    sget-object v3, Lcom/braze/requests/framework/i;->b:Lcom/braze/requests/framework/i;

    invoke-virtual {v1, v12, v13, v3}, Lcom/braze/requests/framework/h;->a(JLcom/braze/requests/framework/i;)V

    .line 26
    invoke-virtual {v2, v12, v13, v1, v0}, Lcom/braze/requests/framework/b;->a(JLcom/braze/requests/framework/h;Lcom/braze/models/response/a;)V

    .line 29
    instance-of v0, v14, Lcom/braze/models/response/h;

    if-eqz v0, :cond_2

    .line 30
    iput-wide v12, v10, Lcom/braze/requests/framework/g;->i:J

    .line 31
    move-object v0, v14

    check-cast v0, Lcom/braze/models/response/h;

    .line 32
    iget-object v0, v0, Lcom/braze/models/response/h;->a:Lcom/braze/requests/n;

    .line 33
    check-cast v0, Lcom/braze/requests/b;

    .line 34
    iget-object v0, v0, Lcom/braze/requests/b;->i:Ljava/lang/String;

    .line 35
    iput-object v0, v10, Lcom/braze/requests/framework/g;->h:Ljava/lang/String;

    .line 36
    new-instance v6, Lcom/braze/requests/framework/e$$ExternalSyntheticLambda2;

    invoke-direct {v6, v10, v1, v12, v13}, Lcom/braze/requests/framework/e$$ExternalSyntheticLambda2;-><init>(Lcom/braze/requests/framework/g;Lcom/braze/requests/framework/h;J)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 37
    sget-wide v0, Lcom/braze/requests/framework/g;->o:J

    add-long/2addr v12, v0

    .line 38
    iput-wide v12, v10, Lcom/braze/requests/framework/g;->j:J

    .line 39
    :cond_2
    instance-of v0, v14, Lcom/braze/models/response/e;

    if-eqz v0, :cond_3

    .line 40
    iget-object v0, v10, Lcom/braze/requests/framework/g;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 42
    new-instance v6, Lcom/braze/requests/framework/e$$ExternalSyntheticLambda3;

    invoke-direct {v6, v10}, Lcom/braze/requests/framework/e$$ExternalSyntheticLambda3;-><init>(Lcom/braze/requests/framework/g;)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 44
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 46
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final a(Lcom/braze/models/response/g;)V
    .locals 13

    const-string v0, "apiResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/braze/requests/framework/e;->a:Lcom/braze/requests/framework/g;

    .line 2
    iget-object v0, v0, Lcom/braze/requests/framework/g;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    iget-object v1, p0, Lcom/braze/requests/framework/e;->b:Lcom/braze/requests/framework/h;

    iget-object v2, p0, Lcom/braze/requests/framework/e;->c:Lcom/braze/requests/framework/b;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInMillisecondsSystemClock()J

    move-result-wide v3

    .line 5
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    .line 6
    sget-object v6, Lcom/braze/requests/framework/g;->n:Ljava/lang/String;

    .line 7
    new-instance v10, Lcom/braze/requests/framework/e$$ExternalSyntheticLambda0;

    invoke-direct {v10, v1, v3, v4}, Lcom/braze/requests/framework/e$$ExternalSyntheticLambda0;-><init>(Lcom/braze/requests/framework/h;J)V

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static/range {v5 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    sget-object v5, Lcom/braze/requests/framework/i;->e:Lcom/braze/requests/framework/i;

    invoke-virtual {v1, v3, v4, v5}, Lcom/braze/requests/framework/h;->a(JLcom/braze/requests/framework/i;)V

    .line 10
    invoke-virtual {v2, v3, v4, v1, p1}, Lcom/braze/requests/framework/b;->a(JLcom/braze/requests/framework/h;Lcom/braze/models/response/g;)V

    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

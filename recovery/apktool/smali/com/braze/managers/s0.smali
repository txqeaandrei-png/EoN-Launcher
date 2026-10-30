.class public final Lcom/braze/managers/s0;
.super Ljava/lang/Object;


# static fields
.field public static final k:Lcom/braze/managers/n0;


# instance fields
.field public final a:Lcom/braze/storage/e0;

.field public final b:Lcom/braze/events/d;

.field public c:Lcom/braze/managers/o0;

.field public d:J

.field public e:I

.field public final f:Ljava/util/ArrayList;

.field public g:I

.field public final h:Ljava/util/concurrent/locks/ReentrantLock;

.field public i:Lkotlinx/coroutines/Job;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/braze/managers/n0;

    invoke-direct {v0}, Lcom/braze/managers/n0;-><init>()V

    sput-object v0, Lcom/braze/managers/s0;->k:Lcom/braze/managers/n0;

    return-void
.end method

.method public constructor <init>(Lcom/braze/storage/e0;Lcom/braze/events/d;Landroid/content/Context;)V
    .locals 2

    const-string v0, "serverConfigStorageProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalPublisher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/braze/managers/s0;->a:Lcom/braze/storage/e0;

    .line 3
    iput-object p2, p0, Lcom/braze/managers/s0;->b:Lcom/braze/events/d;

    .line 4
    new-instance p1, Lcom/braze/managers/o0;

    invoke-direct {p1}, Lcom/braze/managers/o0;-><init>()V

    iput-object p1, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    .line 5
    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/braze/managers/s0;->d:J

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/braze/managers/s0;->f:Ljava/util/ArrayList;

    .line 8
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/braze/managers/s0;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/braze/managers/s0;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    invoke-virtual {p0}, Lcom/braze/managers/s0;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/braze/managers/s0;->c()V

    .line 22
    :cond_0
    new-instance p1, Lcom/braze/managers/s0$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/braze/managers/s0$$ExternalSyntheticLambda2;-><init>(Lcom/braze/managers/s0;)V

    const-class p3, Lcom/braze/events/internal/q;

    invoke-virtual {p2, p3, p1}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 32
    new-instance p1, Lcom/braze/managers/s0$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/braze/managers/s0$$ExternalSyntheticLambda3;-><init>(Lcom/braze/managers/s0;)V

    const-class p3, Lcom/braze/events/internal/t;

    invoke-virtual {p2, p3, p1}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    return-void
.end method

.method public static final a(Lcom/braze/events/internal/t;)Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Updating SDK Debugger config with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/braze/events/internal/t;->a:Lcom/braze/managers/o0;

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/events/internal/t;Lcom/braze/managers/o0;)Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received SdkDebuggerConfigUpdateEvent. Updating SDK Debugger config with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object p0, p0, Lcom/braze/events/internal/t;->a:Lcom/braze/managers/o0;

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".\nOld config "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/managers/o0;)Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updating expiration time to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/braze/managers/o0;->b:Ljava/lang/Long;

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/managers/s0;Lcom/braze/events/internal/q;)V
    .locals 6

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/braze/events/internal/q;->a:Lcom/braze/requests/b;

    .line 2
    instance-of p1, p1, Lcom/braze/requests/w;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/braze/managers/s0;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 5
    sget-object v0, Lcom/braze/coroutine/BrazeCoroutineScope;->INSTANCE:Lcom/braze/coroutine/BrazeCoroutineScope;

    new-instance v3, Lcom/braze/managers/m0;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/braze/managers/m0;-><init>(Lcom/braze/managers/s0;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public static final a(Lcom/braze/managers/s0;Lcom/braze/events/internal/t;)V
    .locals 11

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    .line 7
    sget-object v9, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/managers/s0$$ExternalSyntheticLambda5;

    invoke-direct {v6, p1, v0}, Lcom/braze/managers/s0$$ExternalSyntheticLambda5;-><init>(Lcom/braze/events/internal/t;Lcom/braze/managers/o0;)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 8
    iget-object v1, p1, Lcom/braze/events/internal/t;->a:Lcom/braze/managers/o0;

    .line 9
    iget-object v1, v1, Lcom/braze/managers/o0;->b:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 10
    new-instance v6, Lcom/braze/managers/s0$$ExternalSyntheticLambda6;

    invoke-direct {v6, v0}, Lcom/braze/managers/s0$$ExternalSyntheticLambda6;-><init>(Lcom/braze/managers/o0;)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 11
    iget-object v1, p1, Lcom/braze/events/internal/t;->a:Lcom/braze/managers/o0;

    .line 12
    iget-object v2, v0, Lcom/braze/managers/o0;->b:Ljava/lang/Long;

    .line 13
    iput-object v2, v1, Lcom/braze/managers/o0;->b:Ljava/lang/Long;

    .line 14
    :cond_0
    iget-object v1, p1, Lcom/braze/events/internal/t;->a:Lcom/braze/managers/o0;

    .line 15
    iget-object v2, v1, Lcom/braze/managers/o0;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 16
    iget-object v2, v0, Lcom/braze/managers/o0;->c:Ljava/lang/String;

    .line 17
    iput-object v2, v1, Lcom/braze/managers/o0;->c:Ljava/lang/String;

    .line 18
    :cond_1
    iput-object v1, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    .line 19
    sget-object v10, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/managers/s0$$ExternalSyntheticLambda7;

    invoke-direct {v6, p1}, Lcom/braze/managers/s0$$ExternalSyntheticLambda7;-><init>(Lcom/braze/events/internal/t;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, v10

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 20
    iget-object v1, p0, Lcom/braze/managers/s0;->a:Lcom/braze/storage/e0;

    .line 21
    iget-object p1, p1, Lcom/braze/events/internal/t;->a:Lcom/braze/managers/o0;

    .line 22
    invoke-virtual {v1, p1}, Lcom/braze/storage/e0;->a(Lcom/braze/managers/o0;)V

    .line 23
    iget-boolean p1, v0, Lcom/braze/managers/o0;->a:Z

    if-nez p1, :cond_2

    .line 24
    iget-object v0, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    .line 25
    iget-boolean v0, v0, Lcom/braze/managers/o0;->a:Z

    if-eqz v0, :cond_2

    .line 26
    new-instance v6, Lcom/braze/managers/s0$$ExternalSyntheticLambda8;

    invoke-direct {v6}, Lcom/braze/managers/s0$$ExternalSyntheticLambda8;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, v10

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Lcom/braze/managers/s0;->c()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 28
    iget-object p1, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    .line 29
    iget-boolean p1, p1, Lcom/braze/managers/o0;->a:Z

    if-nez p1, :cond_3

    .line 30
    new-instance v6, Lcom/braze/managers/s0$$ExternalSyntheticLambda9;

    invoke-direct {v6}, Lcom/braze/managers/s0$$ExternalSyntheticLambda9;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, v10

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Lcom/braze/managers/s0;->i()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Shutting down SDK Debugger due to being past expiration time"

    return-object v0
.end method

.method public static final d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Initializing SDK Debugger"

    return-object v0
.end method

.method public static final e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SDK Debugger transitioned from disabled to enabled. Initializing SDK Debugger."

    return-object v0
.end method

.method public static final f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SDK Debugger transitioned from enabled to disabled. Shutting down SDK Debugger."

    return-object v0
.end method

.method public static final h()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Debugging session has expired. Disabling SDK Debugger."

    return-object v0
.end method

.method public static final j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Shutting down SDK Debugger"

    return-object v0
.end method


# virtual methods
.method public final a()Lkotlin/Unit;
    .locals 12

    .line 71
    iget-object v0, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    .line 72
    iget-boolean v1, v0, Lcom/braze/managers/o0;->a:Z

    if-eqz v1, :cond_b

    .line 73
    iget-object v1, v0, Lcom/braze/managers/o0;->c:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 74
    iget-object v0, v0, Lcom/braze/managers/o0;->b:Ljava/lang/Long;

    if-eqz v0, :cond_b

    const-wide/16 v1, 0x0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_b

    .line 76
    iget-object v0, p0, Lcom/braze/managers/s0;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    goto/16 :goto_5

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    .line 83
    iget-object v0, v0, Lcom/braze/managers/o0;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 85
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/managers/s0$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/braze/managers/s0$$ExternalSyntheticLambda1;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lcom/braze/managers/s0;->i()V

    .line 87
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 90
    :cond_1
    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/braze/managers/s0;->d:J

    iget-object v4, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    .line 91
    iget-wide v5, v4, Lcom/braze/managers/o0;->e:J

    add-long/2addr v2, v5

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_3

    .line 92
    iget v0, p0, Lcom/braze/managers/s0;->g:I

    int-to-long v5, v0

    .line 93
    iget-wide v7, v4, Lcom/braze/managers/o0;->d:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/braze/managers/s0;->i:Lkotlinx/coroutines/Job;

    if-nez v0, :cond_a

    .line 97
    sget-object v4, Lcom/braze/coroutine/BrazeCoroutineScope;->INSTANCE:Lcom/braze/coroutine/BrazeCoroutineScope;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v7, Lcom/braze/managers/p0;

    invoke-direct {v7, p0, v1}, Lcom/braze/managers/p0;-><init>(Lcom/braze/managers/s0;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcom/braze/coroutine/BrazeCoroutineScope;->launchDelayed$default(Lcom/braze/coroutine/BrazeCoroutineScope;Ljava/lang/Number;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/braze/managers/s0;->i:Lkotlinx/coroutines/Job;

    goto/16 :goto_4

    .line 99
    :cond_3
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget-object v2, p0, Lcom/braze/managers/s0;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 102
    :try_start_0
    iget-object v3, p0, Lcom/braze/managers/s0;->f:Ljava/util/ArrayList;

    .line 243
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/braze/models/m;

    .line 244
    iget v7, p0, Lcom/braze/managers/s0;->e:I

    if-eqz v7, :cond_4

    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/braze/managers/s0;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " logs due to buffer overflow"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 246
    new-instance v8, Lcom/braze/models/m;

    invoke-direct {v8, v7}, Lcom/braze/models/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iput v4, p0, Lcom/braze/managers/s0;->e:I

    .line 248
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    .line 249
    :cond_4
    iget-object v7, v6, Lcom/braze/models/m;->a:Ljava/lang/String;

    .line 250
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    int-to-long v8, v7

    .line 251
    iget-object v10, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    .line 252
    iget-wide v10, v10, Lcom/braze/managers/o0;->f:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    goto :goto_1

    .line 253
    :cond_5
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_1

    .line 383
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/braze/models/m;

    .line 384
    iget-object v6, p0, Lcom/braze/managers/s0;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 387
    :cond_7
    iget-object v3, p0, Lcom/braze/managers/s0;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/braze/models/m;

    .line 388
    iget-object v5, v5, Lcom/braze/models/m;->a:Ljava/lang/String;

    .line 389
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_3

    :cond_8
    iput v4, p0, Lcom/braze/managers/s0;->g:I

    .line 390
    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/braze/managers/s0;->d:J

    .line 391
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 415
    iget-object v2, p0, Lcom/braze/managers/s0;->i:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_9

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 416
    :cond_9
    iput-object v1, p0, Lcom/braze/managers/s0;->i:Lkotlinx/coroutines/Job;

    .line 417
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 418
    iget-object v1, p0, Lcom/braze/managers/s0;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 419
    iget-object v1, p0, Lcom/braze/managers/s0;->b:Lcom/braze/events/d;

    new-instance v2, Lcom/braze/events/internal/v;

    invoke-direct {v2, v0}, Lcom/braze/events/internal/v;-><init>(Ljava/util/ArrayList;)V

    const-class v0, Lcom/braze/events/internal/v;

    invoke-virtual {v1, v2, v0}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 430
    :cond_a
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    .line 431
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 432
    :cond_b
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 49
    new-instance v0, Lcom/braze/models/m;

    invoke-direct {v0, p1}, Lcom/braze/models/m;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/braze/managers/s0;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/braze/managers/s0;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget v1, p0, Lcom/braze/managers/s0;->g:I

    .line 55
    iget-object v0, v0, Lcom/braze/models/m;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/braze/managers/s0;->g:I

    const/high16 v0, 0x100000

    if-le v1, v0, :cond_0

    .line 60
    :goto_0
    iget v0, p0, Lcom/braze/managers/s0;->g:I

    const v1, 0xccccc

    if-le v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/braze/managers/s0;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braze/models/m;

    .line 62
    iget v1, p0, Lcom/braze/managers/s0;->g:I

    .line 63
    iget-object v0, v0, Lcom/braze/models/m;->a:Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/braze/managers/s0;->g:I

    .line 65
    iget v0, p0, Lcom/braze/managers/s0;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/braze/managers/s0;->e:I

    goto :goto_0

    .line 68
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 70
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final c()V
    .locals 9

    .line 1
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/managers/s0$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/braze/managers/s0$$ExternalSyntheticLambda4;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/braze/managers/q0;

    invoke-direct {v0, p0}, Lcom/braze/managers/q0;-><init>(Lcom/braze/managers/s0;)V

    invoke-virtual {v8, v0}, Lcom/braze/support/BrazeLogger;->setSdkDebuggerCallback$android_sdk_base_release(Lkotlin/jvm/functions/Function4;)V

    .line 3
    iget-object v0, p0, Lcom/braze/managers/s0;->b:Lcom/braze/events/d;

    new-instance v1, Lcom/braze/events/internal/u;

    invoke-direct {v1}, Lcom/braze/events/internal/u;-><init>()V

    const-class v2, Lcom/braze/events/internal/u;

    invoke-virtual {v0, v1, v2}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public final g()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    iget-object v1, p0, Lcom/braze/managers/s0;->a:Lcom/braze/storage/e0;

    invoke-virtual {v1}, Lcom/braze/storage/e0;->L()Z

    move-result v1

    .line 2
    iput-boolean v1, v0, Lcom/braze/managers/o0;->a:Z

    .line 3
    iget-object v0, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    .line 4
    iget-boolean v1, v0, Lcom/braze/managers/o0;->a:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/braze/managers/s0;->a:Lcom/braze/storage/e0;

    invoke-virtual {v1}, Lcom/braze/storage/e0;->y()Ljava/lang/String;

    move-result-object v1

    .line 6
    iput-object v1, v0, Lcom/braze/managers/o0;->c:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    iget-object v1, p0, Lcom/braze/managers/s0;->a:Lcom/braze/storage/e0;

    invoke-virtual {v1}, Lcom/braze/storage/e0;->A()J

    move-result-wide v1

    .line 8
    iput-wide v1, v0, Lcom/braze/managers/o0;->d:J

    .line 9
    iget-object v0, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    iget-object v1, p0, Lcom/braze/managers/s0;->a:Lcom/braze/storage/e0;

    invoke-virtual {v1}, Lcom/braze/storage/e0;->B()J

    move-result-wide v1

    .line 10
    iput-wide v1, v0, Lcom/braze/managers/o0;->e:J

    .line 11
    iget-object v0, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    iget-object v1, p0, Lcom/braze/managers/s0;->a:Lcom/braze/storage/e0;

    invoke-virtual {v1}, Lcom/braze/storage/e0;->C()J

    move-result-wide v1

    .line 12
    iput-wide v1, v0, Lcom/braze/managers/o0;->f:J

    .line 13
    iget-object v0, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    iget-object v1, p0, Lcom/braze/managers/s0;->a:Lcom/braze/storage/e0;

    invoke-virtual {v1}, Lcom/braze/storage/e0;->z()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/braze/managers/o0;->b:Ljava/lang/Long;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    .line 16
    iget-object v0, v0, Lcom/braze/managers/o0;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 18
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/managers/s0$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/braze/managers/s0$$ExternalSyntheticLambda0;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 19
    new-instance v0, Lcom/braze/managers/o0;

    invoke-direct {v0}, Lcom/braze/managers/o0;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    .line 23
    iget-boolean v0, v0, Lcom/braze/managers/o0;->a:Z

    return v0
.end method

.method public final i()V
    .locals 9

    .line 1
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/managers/s0$$ExternalSyntheticLambda10;

    invoke-direct {v5}, Lcom/braze/managers/s0$$ExternalSyntheticLambda10;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {v8, v0}, Lcom/braze/support/BrazeLogger;->setSdkDebuggerCallback$android_sdk_base_release(Lkotlin/jvm/functions/Function4;)V

    .line 3
    new-instance v0, Lcom/braze/managers/o0;

    invoke-direct {v0}, Lcom/braze/managers/o0;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/braze/managers/s0;->c:Lcom/braze/managers/o0;

    .line 5
    iget-object v0, p0, Lcom/braze/managers/s0;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/braze/managers/s0;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/braze/managers/s0;->g:I

    .line 8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

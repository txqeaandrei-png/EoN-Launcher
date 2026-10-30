.class public final Lcom/braze/dispatch/f;
.super Ljava/lang/Object;


# static fields
.field public static final m:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/braze/events/d;

.field public final c:Lcom/braze/dispatch/a;

.field public final d:Lcom/braze/dispatch/d;

.field public final e:Lcom/braze/dispatch/b;

.field public f:Lcom/braze/enums/g;

.field public g:J

.field public volatile h:Z

.field public final i:Landroid/net/ConnectivityManager;

.field public j:Lcom/braze/enums/f;

.field public k:Lkotlinx/coroutines/Job;

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/braze/dispatch/f;

    invoke-static {v0}, Lcom/braze/support/BrazeLogger;->getBrazeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/braze/dispatch/f;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/braze/events/d;Lcom/braze/dispatch/a;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalEventPublisher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSyncConfigurationProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/braze/dispatch/f;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/braze/dispatch/f;->b:Lcom/braze/events/d;

    .line 4
    iput-object p3, p0, Lcom/braze/dispatch/f;->c:Lcom/braze/dispatch/a;

    .line 8
    sget-object p3, Lcom/braze/enums/g;->b:Lcom/braze/enums/g;

    iput-object p3, p0, Lcom/braze/dispatch/f;->f:Lcom/braze/enums/g;

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lcom/braze/dispatch/f;->g:J

    .line 13
    const-string p3, "connectivity"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/braze/dispatch/f;->i:Landroid/net/ConnectivityManager;

    .line 14
    sget-object p1, Lcom/braze/enums/f;->c:Lcom/braze/enums/f;

    iput-object p1, p0, Lcom/braze/dispatch/f;->j:Lcom/braze/enums/f;

    .line 34
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1e

    if-lt p1, p3, :cond_0

    .line 35
    new-instance p1, Lcom/braze/dispatch/b;

    invoke-direct {p1, p0}, Lcom/braze/dispatch/b;-><init>(Lcom/braze/dispatch/f;)V

    iput-object p1, p0, Lcom/braze/dispatch/f;->e:Lcom/braze/dispatch/b;

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Lcom/braze/dispatch/d;

    invoke-direct {p1, p0}, Lcom/braze/dispatch/d;-><init>(Lcom/braze/dispatch/f;)V

    iput-object p1, p0, Lcom/braze/dispatch/f;->d:Lcom/braze/dispatch/d;

    .line 70
    :goto_0
    invoke-virtual {p0, p2}, Lcom/braze/dispatch/f;->a(Lcom/braze/events/d;)V

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "Failed to log throwable."

    return-object v0
.end method

.method public static final a(JLcom/braze/dispatch/f;)Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Kicking off the Sync Job. initialDelaysMs: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ": currentIntervalMs "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-wide p1, p2, Lcom/braze/dispatch/f;->g:J

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/dispatch/f;)Ljava/lang/String;
    .locals 3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data flush interval is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/braze/dispatch/f;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ms. Not scheduling a proceeding data flush."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/dispatch/f;Lcom/braze/events/internal/a0;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object p1, Lcom/braze/enums/g;->a:Lcom/braze/enums/g;

    iput-object p1, p0, Lcom/braze/dispatch/f;->f:Lcom/braze/enums/g;

    .line 39
    invoke-virtual {p0}, Lcom/braze/dispatch/f;->b()V

    return-void
.end method

.method public static final a(Lcom/braze/dispatch/f;Lcom/braze/events/internal/b0;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object p1, Lcom/braze/enums/g;->b:Lcom/braze/enums/g;

    iput-object p1, p0, Lcom/braze/dispatch/f;->f:Lcom/braze/enums/g;

    .line 41
    invoke-virtual {p0}, Lcom/braze/dispatch/f;->b()V

    return-void
.end method

.method public static final b(JLcom/braze/dispatch/f;)Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data flush interval has changed from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " ms to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-wide v0, p2, Lcom/braze/dispatch/f;->g:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 67
    const-string p1, " ms after connectivity state change to: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 68
    iget-object p1, p2, Lcom/braze/dispatch/f;->j:Lcom/braze/enums/f;

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 70
    const-string p1, " and session state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 71
    iget-object p1, p2, Lcom/braze/dispatch/f;->f:Lcom/braze/enums/g;

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/braze/dispatch/f;)Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "currentIntervalMs: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/braze/dispatch/f;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(J)Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Posting new sync runnable with delay "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcom/braze/dispatch/f;)Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recalculateDispatchState called with session state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/braze/dispatch/f;->f:Lcom/braze/enums/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastNetworkLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/braze/dispatch/f;->j:Lcom/braze/enums/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "The data sync policy is already running. Ignoring request."

    return-object v0
.end method

.method public static final d(Lcom/braze/dispatch/f;)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flush interval was too low ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/braze/dispatch/f;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "), moving to minimum of 1000 ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Data sync started"

    return-object v0
.end method

.method public static final g()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "The data sync policy is not running. Ignoring request."

    return-object v0
.end method

.method public static final h()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Data sync stopped"

    return-object v0
.end method

.method public static final j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to unregister Connectivity callback"

    return-object v0
.end method


# virtual methods
.method public final a(J)Lkotlinx/coroutines/Job;
    .locals 18

    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    .line 1
    iget-wide v0, v8, Lcom/braze/dispatch/f;->g:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    const/4 v11, 0x0

    if-ltz v0, :cond_0

    .line 2
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/dispatch/f$$ExternalSyntheticLambda6;

    invoke-direct {v5, v9, v10, v8}, Lcom/braze/dispatch/f$$ExternalSyntheticLambda6;-><init>(JLcom/braze/dispatch/f;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    sget-object v12, Lcom/braze/coroutine/BrazeCoroutineScope;->INSTANCE:Lcom/braze/coroutine/BrazeCoroutineScope;

    new-instance v15, Lcom/braze/dispatch/e;

    invoke-direct {v15, v8, v9, v10, v11}, Lcom/braze/dispatch/e;-><init>(Lcom/braze/dispatch/f;JLkotlin/coroutines/Continuation;)V

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v11

    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v1, v8, Lcom/braze/dispatch/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/Braze;->requestImmediateDataFlush()V

    .line 19
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/dispatch/f$$ExternalSyntheticLambda7;

    invoke-direct {v5, v8}, Lcom/braze/dispatch/f$$ExternalSyntheticLambda7;-><init>(Lcom/braze/dispatch/f;)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-object v11
.end method

.method public final a(Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/braze/dispatch/f;->j:Lcom/braze/enums/f;

    .line 27
    invoke-static {p1}, Lcom/braze/support/c;->a(Landroid/net/NetworkCapabilities;)Lcom/braze/enums/f;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/dispatch/f;->j:Lcom/braze/enums/f;

    if-eq v0, p1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/braze/dispatch/f;->b:Lcom/braze/events/d;

    new-instance v2, Lcom/braze/events/internal/o;

    invoke-direct {v2, v0, p1}, Lcom/braze/events/internal/o;-><init>(Lcom/braze/enums/f;Lcom/braze/enums/f;)V

    const-class p1, Lcom/braze/events/internal/o;

    invoke-virtual {v1, v2, p1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/braze/dispatch/f;->b()V

    return-void
.end method

.method public final a(Lcom/braze/events/d;)V
    .locals 2

    const-string v0, "eventManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/braze/dispatch/f$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/braze/dispatch/f$$ExternalSyntheticLambda14;-><init>(Lcom/braze/dispatch/f;)V

    const-class v1, Lcom/braze/events/internal/a0;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 37
    new-instance v0, Lcom/braze/dispatch/f$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/braze/dispatch/f$$ExternalSyntheticLambda1;-><init>(Lcom/braze/dispatch/f;)V

    const-class v1, Lcom/braze/events/internal/b0;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    return-void
.end method

.method public final a(Lcom/braze/events/d;Ljava/lang/Exception;)V
    .locals 8

    .line 22
    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {p1, p2, v0}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    .line 24
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/dispatch/f$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/braze/dispatch/f$$ExternalSyntheticLambda0;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 14

    .line 6
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v9, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/dispatch/f$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lcom/braze/dispatch/f$$ExternalSyntheticLambda8;-><init>(Lcom/braze/dispatch/f;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v9

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 7
    iget-wide v10, p0, Lcom/braze/dispatch/f;->g:J

    .line 8
    iget-object v0, p0, Lcom/braze/dispatch/f;->f:Lcom/braze/enums/g;

    sget-object v1, Lcom/braze/enums/g;->b:Lcom/braze/enums/g;

    const-wide/16 v2, -0x1

    if-eq v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/braze/dispatch/f;->l:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/braze/dispatch/f;->j:Lcom/braze/enums/f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide/16 v12, 0x3e8

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/braze/dispatch/f;->c:Lcom/braze/dispatch/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget-object v1, Lcom/braze/configuration/b;->b:Lcom/braze/configuration/b;

    .line 16
    const-string v1, "com_braze_data_flush_interval_great_network"

    const/16 v4, 0xa

    .line 17
    invoke-virtual {v0, v1, v4}, Lcom/braze/configuration/CachedConfigurationProvider;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/braze/dispatch/f;->c:Lcom/braze/dispatch/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    sget-object v1, Lcom/braze/configuration/b;->b:Lcom/braze/configuration/b;

    .line 20
    const-string v1, "com_braze_data_flush_interval_good_network"

    const/16 v4, 0x1e

    .line 21
    invoke-virtual {v0, v1, v4}, Lcom/braze/configuration/CachedConfigurationProvider;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/braze/dispatch/f;->c:Lcom/braze/dispatch/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    sget-object v1, Lcom/braze/configuration/b;->b:Lcom/braze/configuration/b;

    .line 24
    const-string v1, "com_braze_data_flush_interval_bad_network"

    const/16 v4, 0x3c

    .line 25
    invoke-virtual {v0, v1, v4}, Lcom/braze/configuration/CachedConfigurationProvider;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    int-to-long v0, v0

    mul-long/2addr v0, v12

    goto :goto_1

    :cond_4
    move-wide v0, v2

    .line 26
    :goto_1
    iput-wide v0, p0, Lcom/braze/dispatch/f;->g:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    cmp-long v0, v0, v12

    if-gez v0, :cond_6

    .line 35
    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/dispatch/f$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lcom/braze/dispatch/f$$ExternalSyntheticLambda9;-><init>(Lcom/braze/dispatch/f;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 39
    iput-wide v12, p0, Lcom/braze/dispatch/f;->g:J

    goto :goto_3

    .line 40
    :cond_5
    :goto_2
    iput-wide v2, p0, Lcom/braze/dispatch/f;->g:J

    .line 58
    :cond_6
    :goto_3
    new-instance v5, Lcom/braze/dispatch/f$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lcom/braze/dispatch/f$$ExternalSyntheticLambda10;-><init>(Lcom/braze/dispatch/f;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v9

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 59
    iget-wide v0, p0, Lcom/braze/dispatch/f;->g:J

    cmp-long v0, v10, v0

    if-eqz v0, :cond_7

    .line 60
    new-instance v5, Lcom/braze/dispatch/f$$ExternalSyntheticLambda11;

    invoke-direct {v5, v10, v11, p0}, Lcom/braze/dispatch/f$$ExternalSyntheticLambda11;-><init>(JLcom/braze/dispatch/f;)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 64
    iget-wide v0, p0, Lcom/braze/dispatch/f;->g:J

    invoke-virtual {p0, v0, v1}, Lcom/braze/dispatch/f;->b(J)V

    :cond_7
    return-void
.end method

.method public final b(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/braze/dispatch/f;->k:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iput-object v1, p0, Lcom/braze/dispatch/f;->k:Lkotlinx/coroutines/Job;

    .line 3
    iget-wide v0, p0, Lcom/braze/dispatch/f;->g:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 4
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/dispatch/f$$ExternalSyntheticLambda3;

    invoke-direct {v6, p1, p2}, Lcom/braze/dispatch/f$$ExternalSyntheticLambda3;-><init>(J)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/braze/dispatch/f;->a(J)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/dispatch/f;->k:Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/braze/dispatch/f;->h:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/dispatch/f$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lcom/braze/dispatch/f$$ExternalSyntheticLambda4;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/dispatch/f$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/braze/dispatch/f$$ExternalSyntheticLambda5;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/braze/dispatch/f;->i:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/braze/dispatch/f;->e:Lcom/braze/dispatch/b;

    if-nez v1, :cond_1

    const-string v1, "connectivityNetworkCallback"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 10
    iget-object v0, p0, Lcom/braze/dispatch/f;->i:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/braze/dispatch/f;->i:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/braze/dispatch/f;->a(Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    .line 14
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/braze/dispatch/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/braze/dispatch/f;->d:Lcom/braze/dispatch/d;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 16
    :goto_0
    iget-wide v0, p0, Lcom/braze/dispatch/f;->g:J

    invoke-virtual {p0, v0, v1}, Lcom/braze/dispatch/f;->b(J)V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/braze/dispatch/f;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/braze/dispatch/f;->h:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/dispatch/f$$ExternalSyntheticLambda12;

    invoke-direct {v6}, Lcom/braze/dispatch/f$$ExternalSyntheticLambda12;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/dispatch/f$$ExternalSyntheticLambda13;

    invoke-direct {v6}, Lcom/braze/dispatch/f$$ExternalSyntheticLambda13;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/braze/dispatch/f;->k:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 7
    :cond_1
    iput-object v1, p0, Lcom/braze/dispatch/f;->k:Lkotlinx/coroutines/Job;

    .line 8
    invoke-virtual {p0}, Lcom/braze/dispatch/f;->i()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/braze/dispatch/f;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i()V
    .locals 9

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/braze/dispatch/f;->i:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/braze/dispatch/f;->e:Lcom/braze/dispatch/b;

    if-nez v1, :cond_0

    const-string v1, "connectivityNetworkCallback"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/braze/dispatch/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/braze/dispatch/f;->d:Lcom/braze/dispatch/d;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 8
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/dispatch/f$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/braze/dispatch/f$$ExternalSyntheticLambda2;-><init>()V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

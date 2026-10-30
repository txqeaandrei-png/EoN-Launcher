.class public final Lcom/braze/requests/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/requests/p;


# instance fields
.field public final a:Lcom/braze/communication/e;

.field public final b:Lcom/braze/events/e;

.field public final c:Lcom/braze/events/e;

.field public final d:Lcom/braze/storage/x;

.field public final e:Lcom/braze/storage/e0;

.field public final f:Lcom/braze/storage/p;

.field public final g:Lcom/braze/managers/m;

.field public final h:Lcom/braze/requests/util/a;


# direct methods
.method public constructor <init>(Lcom/braze/communication/e;Lcom/braze/events/e;Lcom/braze/events/e;Lcom/braze/storage/x;Lcom/braze/storage/e0;Lcom/braze/storage/p;Lcom/braze/managers/m;Lcom/braze/requests/util/a;)V
    .locals 1

    const-string v0, "httpConnector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalEventPublisher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalEventPublisher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedStorageProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverConfigStorageProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCardsStorageProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brazeManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endpointMetadataProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/braze/requests/u;->a:Lcom/braze/communication/e;

    .line 3
    iput-object p2, p0, Lcom/braze/requests/u;->b:Lcom/braze/events/e;

    .line 4
    iput-object p3, p0, Lcom/braze/requests/u;->c:Lcom/braze/events/e;

    .line 5
    iput-object p4, p0, Lcom/braze/requests/u;->d:Lcom/braze/storage/x;

    .line 6
    iput-object p5, p0, Lcom/braze/requests/u;->e:Lcom/braze/storage/e0;

    .line 7
    iput-object p6, p0, Lcom/braze/requests/u;->f:Lcom/braze/storage/p;

    .line 8
    iput-object p7, p0, Lcom/braze/requests/u;->g:Lcom/braze/managers/m;

    .line 9
    iput-object p8, p0, Lcom/braze/requests/u;->h:Lcom/braze/requests/util/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/braze/requests/framework/h;Lcom/braze/requests/framework/c;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    const-string v1, "requestInfo"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "requestDispatchCallback"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1
    new-instance v12, Lcom/braze/requests/d;

    .line 3
    iget-object v3, v0, Lcom/braze/requests/u;->a:Lcom/braze/communication/e;

    .line 4
    iget-object v4, v0, Lcom/braze/requests/u;->b:Lcom/braze/events/e;

    .line 5
    iget-object v5, v0, Lcom/braze/requests/u;->c:Lcom/braze/events/e;

    .line 6
    iget-object v6, v0, Lcom/braze/requests/u;->d:Lcom/braze/storage/x;

    .line 7
    iget-object v7, v0, Lcom/braze/requests/u;->g:Lcom/braze/managers/m;

    .line 8
    iget-object v8, v0, Lcom/braze/requests/u;->e:Lcom/braze/storage/e0;

    .line 9
    iget-object v9, v0, Lcom/braze/requests/u;->f:Lcom/braze/storage/p;

    .line 10
    iget-object v10, v0, Lcom/braze/requests/u;->h:Lcom/braze/requests/util/a;

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    .line 11
    invoke-direct/range {v1 .. v11}, Lcom/braze/requests/d;-><init>(Lcom/braze/requests/framework/h;Lcom/braze/communication/e;Lcom/braze/events/e;Lcom/braze/events/e;Lcom/braze/storage/x;Lcom/braze/managers/m;Lcom/braze/storage/e0;Lcom/braze/storage/p;Lcom/braze/requests/util/a;Lcom/braze/requests/framework/c;)V

    .line 22
    invoke-virtual {v12}, Lcom/braze/requests/d;->c()V

    goto :goto_0

    .line 23
    :cond_0
    sget-object v13, Lcom/braze/coroutine/BrazeCoroutineScope;->INSTANCE:Lcom/braze/coroutine/BrazeCoroutineScope;

    new-instance v1, Lcom/braze/requests/t;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v11, v3}, Lcom/braze/requests/t;-><init>(Lcom/braze/requests/u;Lcom/braze/requests/framework/h;Lcom/braze/requests/framework/c;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method

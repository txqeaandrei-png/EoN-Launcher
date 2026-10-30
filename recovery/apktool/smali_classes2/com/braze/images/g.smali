.class public final Lcom/braze/images/g;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:I

.field public final synthetic c:Lcom/braze/images/DefaultBrazeImageLoader;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/braze/enums/BrazeViewBounds;

.field public final synthetic g:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/braze/images/DefaultBrazeImageLoader;Landroid/content/Context;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/braze/images/g;->c:Lcom/braze/images/DefaultBrazeImageLoader;

    iput-object p2, p0, Lcom/braze/images/g;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/braze/images/g;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/braze/images/g;->f:Lcom/braze/enums/BrazeViewBounds;

    iput-object p5, p0, Lcom/braze/images/g;->g:Landroid/widget/ImageView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to retrieve bitmap from url: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance p1, Lcom/braze/images/g;

    iget-object v1, p0, Lcom/braze/images/g;->c:Lcom/braze/images/DefaultBrazeImageLoader;

    iget-object v2, p0, Lcom/braze/images/g;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/braze/images/g;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/braze/images/g;->f:Lcom/braze/enums/BrazeViewBounds;

    iget-object v5, p0, Lcom/braze/images/g;->g:Landroid/widget/ImageView;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/braze/images/g;-><init>(Lcom/braze/images/DefaultBrazeImageLoader;Landroid/content/Context;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/braze/images/g;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/braze/images/g;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/braze/images/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/braze/images/g;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/braze/images/g;->a:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/16 p1, 0x539

    .line 2
    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 3
    iget-object p1, p0, Lcom/braze/images/g;->c:Lcom/braze/images/DefaultBrazeImageLoader;

    iget-object v1, p0, Lcom/braze/images/g;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/braze/images/g;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/braze/images/g;->f:Lcom/braze/enums/BrazeViewBounds;

    invoke-virtual {p1, v1, v3, v4}, Lcom/braze/images/DefaultBrazeImageLoader;->getBitmapFromUrl(Landroid/content/Context;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    .line 5
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    invoke-static {}, Lcom/braze/images/DefaultBrazeImageLoader;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/braze/images/g;->e:Ljava/lang/String;

    new-instance v8, Lcom/braze/images/g$$ExternalSyntheticLambda0;

    invoke-direct {v8, p1}, Lcom/braze/images/g$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/braze/images/g;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/braze/images/g;->g:Landroid/widget/ImageView;

    sget v4, Lcom/braze/R$string;->com_braze_image_lru_cache_image_url_key:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/braze/images/e;

    iget-object v4, p0, Lcom/braze/images/g;->g:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lcom/braze/images/e;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/braze/images/g;->a:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/braze/images/g;->b:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    .line 19
    :goto_0
    new-instance p1, Lcom/braze/images/f;

    iget-object v1, p0, Lcom/braze/images/g;->f:Lcom/braze/enums/BrazeViewBounds;

    iget-object v2, p0, Lcom/braze/images/g;->g:Landroid/widget/ImageView;

    invoke-direct {p1, v1, v2, v0}, Lcom/braze/images/f;-><init>(Lcom/braze/enums/BrazeViewBounds;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 31
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 34
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

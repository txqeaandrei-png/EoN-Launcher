.class public final Lcom/braze/storage/i;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/braze/storage/p;

.field public final synthetic b:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Lcom/braze/storage/p;Ljava/util/LinkedHashSet;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/storage/i;->a:Lcom/braze/storage/p;

    iput-object p2, p0, Lcom/braze/storage/i;->b:Ljava/util/LinkedHashSet;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/braze/storage/i;

    iget-object v0, p0, Lcom/braze/storage/i;->a:Lcom/braze/storage/p;

    iget-object v1, p0, Lcom/braze/storage/i;->b:Ljava/util/LinkedHashSet;

    invoke-direct {p1, v0, v1, p2}, Lcom/braze/storage/i;-><init>(Lcom/braze/storage/p;Ljava/util/LinkedHashSet;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/braze/storage/i;

    iget-object v0, p0, Lcom/braze/storage/i;->a:Lcom/braze/storage/p;

    iget-object v1, p0, Lcom/braze/storage/i;->b:Ljava/util/LinkedHashSet;

    invoke-direct {p1, v0, v1, p2}, Lcom/braze/storage/i;-><init>(Lcom/braze/storage/p;Ljava/util/LinkedHashSet;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/braze/storage/i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/braze/storage/i;->a:Lcom/braze/storage/p;

    .line 3
    iget-object p1, p1, Lcom/braze/storage/p;->j:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/braze/storage/i;->b:Ljava/util/LinkedHashSet;

    const-string v1, "test"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

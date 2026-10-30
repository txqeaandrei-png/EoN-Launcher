.class public final Lcom/braze/communication/dust/a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# instance fields
.field public a:Lcom/braze/communication/dust/h;

.field public b:Lkotlinx/coroutines/CoroutineScope;

.field public c:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public d:Lkotlin/jvm/functions/Function1;

.field public e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public f:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/braze/communication/dust/h;

.field public i:I


# direct methods
.method public constructor <init>(Lcom/braze/communication/dust/h;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/communication/dust/a;->h:Lcom/braze/communication/dust/h;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/braze/communication/dust/a;->g:Ljava/lang/Object;

    iget p1, p0, Lcom/braze/communication/dust/a;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/braze/communication/dust/a;->i:I

    iget-object p1, p0, Lcom/braze/communication/dust/a;->h:Lcom/braze/communication/dust/h;

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0, v0, v0, p0}, Lcom/braze/communication/dust/h;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/channels/ReceiveChannel;Lcom/braze/managers/x;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

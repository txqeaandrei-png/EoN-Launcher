.class public final synthetic Lcom/braze/managers/x;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/braze/managers/y;)V
    .locals 7

    .line 1
    const-class v3, Lcom/braze/managers/y;

    const-string v5, "ingestDustMessages(Lcom/braze/models/dust/IDustMessage;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "ingestDustMessages"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/braze/models/dust/e;

    .line 2
    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/braze/managers/y;

    .line 91
    invoke-virtual {v0, p1}, Lcom/braze/managers/y;->a(Lcom/braze/models/dust/e;)V

    .line 92
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

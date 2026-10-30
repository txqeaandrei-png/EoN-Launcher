.class public final Lcom/braze/triggers/utils/b;
.super Ljava/lang/Object;


# static fields
.field public static final b:Ljava/util/Comparator;


# instance fields
.field public final a:Ljava/util/PriorityQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/triggers/utils/b$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/braze/triggers/utils/b$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/braze/triggers/utils/b;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 3

    const-string v0, "fallbackActions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/braze/triggers/utils/b;->b:Ljava/util/Comparator;

    const/16 v2, 0xc

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/braze/triggers/utils/b;->a:Ljava/util/PriorityQueue;

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static final a(Lcom/braze/triggers/actions/a;Lcom/braze/triggers/actions/a;)I
    .locals 2

    const-string v0, "actionA"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionB"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p0, Lcom/braze/triggers/actions/g;

    .line 2
    iget-object v0, p0, Lcom/braze/triggers/actions/g;->b:Lcom/braze/triggers/config/c;

    .line 3
    iget v0, v0, Lcom/braze/triggers/config/c;->c:I

    .line 4
    check-cast p1, Lcom/braze/triggers/actions/g;

    .line 5
    iget-object v1, p1, Lcom/braze/triggers/actions/g;->b:Lcom/braze/triggers/config/c;

    .line 6
    iget v1, v1, Lcom/braze/triggers/config/c;->c:I

    if-le v0, v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/braze/triggers/actions/g;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/braze/triggers/actions/g;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

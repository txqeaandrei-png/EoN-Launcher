.class public final synthetic Lcom/braze/triggers/utils/b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/braze/triggers/actions/a;

    check-cast p2, Lcom/braze/triggers/actions/a;

    invoke-static {p1, p2}, Lcom/braze/triggers/utils/b;->a(Lcom/braze/triggers/actions/a;Lcom/braze/triggers/actions/a;)I

    move-result p1

    return p1
.end method

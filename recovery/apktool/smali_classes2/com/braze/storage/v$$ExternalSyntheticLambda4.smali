.class public final synthetic Lcom/braze/storage/v$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/braze/storage/v;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/storage/v;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/storage/v$$ExternalSyntheticLambda4;->f$0:Lcom/braze/storage/v;

    iput-object p2, p0, Lcom/braze/storage/v$$ExternalSyntheticLambda4;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/storage/v$$ExternalSyntheticLambda4;->f$0:Lcom/braze/storage/v;

    iget-object v1, p0, Lcom/braze/storage/v$$ExternalSyntheticLambda4;->f$1:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/braze/storage/v;->a(Lcom/braze/storage/v;Ljava/util/Set;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

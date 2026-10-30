.class public final synthetic Lcom/braze/storage/p$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/storage/p$$ExternalSyntheticLambda16;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lcom/braze/storage/p$$ExternalSyntheticLambda16;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/storage/p$$ExternalSyntheticLambda16;->f$0:Ljava/util/Set;

    iget-object v1, p0, Lcom/braze/storage/p$$ExternalSyntheticLambda16;->f$1:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/braze/storage/p;->a(Ljava/util/Set;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

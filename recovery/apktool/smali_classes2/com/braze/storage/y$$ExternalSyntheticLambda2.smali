.class public final synthetic Lcom/braze/storage/y$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/util/Map$Entry;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/storage/y$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map$Entry;

    iput-wide p2, p0, Lcom/braze/storage/y$$ExternalSyntheticLambda2;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/storage/y$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map$Entry;

    iget-wide v1, p0, Lcom/braze/storage/y$$ExternalSyntheticLambda2;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/braze/storage/y;->a(Ljava/util/Map$Entry;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final synthetic Lcom/braze/storage/r$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/braze/storage/r$$ExternalSyntheticLambda3;->f$0:Z

    iput-boolean p2, p0, Lcom/braze/storage/r$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/braze/storage/r$$ExternalSyntheticLambda3;->f$0:Z

    iget-boolean v1, p0, Lcom/braze/storage/r$$ExternalSyntheticLambda3;->f$1:Z

    invoke-static {v0, v1}, Lcom/braze/storage/r;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

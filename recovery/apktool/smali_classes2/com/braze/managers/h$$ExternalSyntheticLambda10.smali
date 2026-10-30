.class public final synthetic Lcom/braze/managers/h$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/braze/managers/h;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/managers/h;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/managers/h$$ExternalSyntheticLambda10;->f$0:Lcom/braze/managers/h;

    iput-object p2, p0, Lcom/braze/managers/h$$ExternalSyntheticLambda10;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/managers/h$$ExternalSyntheticLambda10;->f$0:Lcom/braze/managers/h;

    iget-object v1, p0, Lcom/braze/managers/h$$ExternalSyntheticLambda10;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/braze/managers/h;->a(Lcom/braze/managers/h;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final synthetic Lcom/braze/requests/d$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/braze/requests/d;

.field public final synthetic f$1:Lcom/braze/models/response/c;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/requests/d;Lcom/braze/models/response/c;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/requests/d$$ExternalSyntheticLambda11;->f$0:Lcom/braze/requests/d;

    iput-object p2, p0, Lcom/braze/requests/d$$ExternalSyntheticLambda11;->f$1:Lcom/braze/models/response/c;

    iput-object p3, p0, Lcom/braze/requests/d$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/requests/d$$ExternalSyntheticLambda11;->f$0:Lcom/braze/requests/d;

    iget-object v1, p0, Lcom/braze/requests/d$$ExternalSyntheticLambda11;->f$1:Lcom/braze/models/response/c;

    iget-object v2, p0, Lcom/braze/requests/d$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/braze/requests/d;->a(Lcom/braze/requests/d;Lcom/braze/models/response/c;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

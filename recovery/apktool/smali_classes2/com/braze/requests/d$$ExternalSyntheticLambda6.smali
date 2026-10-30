.class public final synthetic Lcom/braze/requests/d$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/braze/requests/d;

.field public final synthetic f$1:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/requests/d;Lorg/json/JSONArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/requests/d$$ExternalSyntheticLambda6;->f$0:Lcom/braze/requests/d;

    iput-object p2, p0, Lcom/braze/requests/d$$ExternalSyntheticLambda6;->f$1:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/requests/d$$ExternalSyntheticLambda6;->f$0:Lcom/braze/requests/d;

    iget-object v1, p0, Lcom/braze/requests/d$$ExternalSyntheticLambda6;->f$1:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/braze/requests/d;->a(Lcom/braze/requests/d;Lorg/json/JSONArray;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.class public final synthetic Lcom/braze/communication/e$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/braze/requests/util/c;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/requests/util/c;Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda0;->f$0:Lcom/braze/requests/util/c;

    iput-object p2, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda0;->f$2:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda0;->f$0:Lcom/braze/requests/util/c;

    iget-object v1, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    iget-object v2, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda0;->f$2:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/braze/communication/e;->a(Lcom/braze/requests/util/c;Ljava/util/Map;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

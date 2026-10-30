.class public final synthetic Lcom/braze/communication/e$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/Lazy;

.field public final synthetic f$1:Lcom/braze/requests/util/c;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lcom/braze/communication/e;

.field public final synthetic f$4:Ljava/util/Map;

.field public final synthetic f$5:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lkotlin/Lazy;Lcom/braze/requests/util/c;JLcom/braze/communication/e;Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda3;->f$0:Lkotlin/Lazy;

    iput-object p2, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda3;->f$1:Lcom/braze/requests/util/c;

    iput-wide p3, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda3;->f$2:J

    iput-object p5, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda3;->f$3:Lcom/braze/communication/e;

    iput-object p6, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda3;->f$4:Ljava/util/Map;

    iput-object p7, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda3;->f$5:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda3;->f$0:Lkotlin/Lazy;

    iget-object v1, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda3;->f$1:Lcom/braze/requests/util/c;

    iget-wide v2, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda3;->f$2:J

    iget-object v4, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda3;->f$3:Lcom/braze/communication/e;

    iget-object v5, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda3;->f$4:Ljava/util/Map;

    iget-object v6, p0, Lcom/braze/communication/e$$ExternalSyntheticLambda3;->f$5:Lorg/json/JSONObject;

    invoke-static/range {v0 .. v6}, Lcom/braze/communication/e;->a(Lkotlin/Lazy;Lcom/braze/requests/util/c;JLcom/braze/communication/e;Ljava/util/Map;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

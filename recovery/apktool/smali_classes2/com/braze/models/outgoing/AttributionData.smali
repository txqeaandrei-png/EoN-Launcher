.class public final Lcom/braze/models/outgoing/AttributionData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/models/IPutIntoJson;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/braze/models/IPutIntoJson<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0007\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000eB/\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u000cR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u000cR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u000cR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/braze/models/outgoing/AttributionData;",
        "Lcom/braze/models/IPutIntoJson;",
        "Lorg/json/JSONObject;",
        "",
        "network",
        "campaign",
        "adGroup",
        "creative",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "forJsonPut",
        "()Lorg/json/JSONObject;",
        "Ljava/lang/String;",
        "Companion",
        "com/braze/models/outgoing/a",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ADGROUP_KEY:Ljava/lang/String; = "adgroup"

.field private static final CAMPAIGN_KEY:Ljava/lang/String; = "campaign"

.field private static final CREATIVE_KEY:Ljava/lang/String; = "ad"

.field public static final Companion:Lcom/braze/models/outgoing/a;

.field private static final NETWORK_KEY:Ljava/lang/String; = "source"


# instance fields
.field private final adGroup:Ljava/lang/String;

.field private final campaign:Ljava/lang/String;

.field private final creative:Ljava/lang/String;

.field private final network:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$mhhbpPHHbprDJJ7bhqGbzfVfvZc(Lorg/json/JSONException;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/models/outgoing/AttributionData;->forJsonPut$lambda$0(Lorg/json/JSONException;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/braze/models/outgoing/a;

    invoke-direct {v0}, Lcom/braze/models/outgoing/a;-><init>()V

    sput-object v0, Lcom/braze/models/outgoing/AttributionData;->Companion:Lcom/braze/models/outgoing/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/braze/models/outgoing/AttributionData;->network:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/braze/models/outgoing/AttributionData;->campaign:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/braze/models/outgoing/AttributionData;->adGroup:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/braze/models/outgoing/AttributionData;->creative:Ljava/lang/String;

    return-void
.end method

.method private static final forJsonPut$lambda$0(Lorg/json/JSONException;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Caught exception creating AttributionData Json. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/models/outgoing/AttributionData;->forJsonPut()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public forJsonPut()Lorg/json/JSONObject;
    .locals 10

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/braze/models/outgoing/AttributionData;->network:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const-string v1, "source"

    iget-object v2, p0, Lcom/braze/models/outgoing/AttributionData;->network:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/braze/models/outgoing/AttributionData;->campaign:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    const-string v1, "campaign"

    iget-object v2, p0, Lcom/braze/models/outgoing/AttributionData;->campaign:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/braze/models/outgoing/AttributionData;->adGroup:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    const-string v1, "adgroup"

    iget-object v2, p0, Lcom/braze/models/outgoing/AttributionData;->adGroup:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/braze/models/outgoing/AttributionData;->creative:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 14
    :cond_6
    const-string v1, "ad"

    iget-object v2, p0, Lcom/braze/models/outgoing/AttributionData;->creative:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v5, v1

    .line 17
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/models/outgoing/AttributionData$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5}, Lcom/braze/models/outgoing/AttributionData$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONException;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_7
    :goto_3
    return-object v0
.end method

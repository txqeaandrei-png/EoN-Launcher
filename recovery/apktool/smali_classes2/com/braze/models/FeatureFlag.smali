.class public final Lcom/braze/models/FeatureFlag;
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0004\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0012\u0008\u0007\u0018\u0000 02\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u00011B-\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000e\u001a\u0004\u0018\u00010\u00032\u0006\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u0004\u0018\u00010\u00022\u0006\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u0004\u0018\u00010\u00032\u0006\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u000fJ\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\r\u001a\u00020\u0003H\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u0004\u0018\u00010\u00182\u0006\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\u000f\u0010\u001e\u001a\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ!\u0010#\u001a\u0004\u0018\u00010 2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0003H\u0000\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0003H\u0000\u00a2\u0006\u0004\u0008$\u0010%R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\'\u001a\u0004\u0008(\u0010)R\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010*\u001a\u0004\u0008+\u0010,R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010-\u001a\u0004\u0008.\u0010\u000cR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\'\u001a\u0004\u0008/\u0010)\u00a8\u00062"
    }
    d2 = {
        "Lcom/braze/models/FeatureFlag;",
        "Lcom/braze/models/IPutIntoJson;",
        "Lorg/json/JSONObject;",
        "",
        "id",
        "",
        "enabled",
        "properties",
        "trackingString",
        "<init>",
        "(Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;)V",
        "forJsonPut",
        "()Lorg/json/JSONObject;",
        "key",
        "getStringProperty",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "",
        "getNumberProperty",
        "(Ljava/lang/String;)Ljava/lang/Number;",
        "getBooleanProperty",
        "(Ljava/lang/String;)Ljava/lang/Boolean;",
        "getJSONProperty",
        "(Ljava/lang/String;)Lorg/json/JSONObject;",
        "getImageProperty",
        "",
        "getTimestamp",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "getTimestampProperty",
        "deepcopy$android_sdk_base_release",
        "()Lcom/braze/models/FeatureFlag;",
        "deepcopy",
        "expectedPropertyType",
        "",
        "getValue$android_sdk_base_release",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;",
        "getValue",
        "doesKeyExist$android_sdk_base_release",
        "(Ljava/lang/String;)Z",
        "doesKeyExist",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "Z",
        "getEnabled",
        "()Z",
        "Lorg/json/JSONObject;",
        "getProperties",
        "getTrackingString$android_sdk_base_release",
        "Companion",
        "com/braze/models/h",
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
.field public static final Companion:Lcom/braze/models/h;

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final PROPERTIES:Ljava/lang/String; = "properties"

.field public static final PROPERTIES_TYPE:Ljava/lang/String; = "type"

.field public static final PROPERTIES_TYPE_BOOLEAN:Ljava/lang/String; = "boolean"

.field public static final PROPERTIES_TYPE_DATETIME:Ljava/lang/String; = "datetime"

.field public static final PROPERTIES_TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final PROPERTIES_TYPE_JSON:Ljava/lang/String; = "jsonobject"

.field public static final PROPERTIES_TYPE_NUMBER:Ljava/lang/String; = "number"

.field public static final PROPERTIES_TYPE_STRING:Ljava/lang/String; = "string"

.field public static final PROPERTIES_VALUE:Ljava/lang/String; = "value"

.field public static final TRACKING_STRING:Ljava/lang/String; = "fts"


# instance fields
.field private final enabled:Z

.field private final id:Ljava/lang/String;

.field private final properties:Lorg/json/JSONObject;

.field private final trackingString:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$JpMX5UpoDIqpDrmdYr0ZJo9q3Tk(Ljava/lang/String;Lcom/braze/models/FeatureFlag;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/models/FeatureFlag;->doesKeyExist$lambda$2(Ljava/lang/String;Lcom/braze/models/FeatureFlag;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SmNRYJ4Mast_fow1LfgB1pe2Muc()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/models/FeatureFlag;->forJsonPut$lambda$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$ibXMpOeJ9yEzacxdRwZ0RO-SXlw(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/models/FeatureFlag;->getValue$lambda$1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/braze/models/h;

    invoke-direct {v0}, Lcom/braze/models/h;-><init>()V

    sput-object v0, Lcom/braze/models/FeatureFlag;->Companion:Lcom/braze/models/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "properties"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/braze/models/FeatureFlag;->id:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/braze/models/FeatureFlag;->enabled:Z

    .line 4
    iput-object p3, p0, Lcom/braze/models/FeatureFlag;->properties:Lorg/json/JSONObject;

    .line 5
    iput-object p4, p0, Lcom/braze/models/FeatureFlag;->trackingString:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/braze/models/FeatureFlag;-><init>(Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private static final doesKeyExist$lambda$2(Ljava/lang/String;Lcom/braze/models/FeatureFlag;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " does not exist in properties "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/braze/models/FeatureFlag;->properties:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final forJsonPut$lambda$0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Caught exception creating FeatureFlag Json."

    return-object v0
.end method

.method private static final getValue$lambda$1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Property is not of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ". It is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final deepcopy$android_sdk_base_release()Lcom/braze/models/FeatureFlag;
    .locals 5

    .line 1
    new-instance v0, Lcom/braze/models/FeatureFlag;

    iget-object v1, p0, Lcom/braze/models/FeatureFlag;->id:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/braze/models/FeatureFlag;->enabled:Z

    iget-object v3, p0, Lcom/braze/models/FeatureFlag;->properties:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/braze/support/JsonUtils;->deepcopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/braze/models/FeatureFlag;->trackingString:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/braze/models/FeatureFlag;-><init>(Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public final doesKeyExist$android_sdk_base_release(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/braze/models/FeatureFlag;->properties:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/models/FeatureFlag$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1, p0}, Lcom/braze/models/FeatureFlag$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/braze/models/FeatureFlag;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/models/FeatureFlag;->forJsonPut()Lorg/json/JSONObject;

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
    const-string v1, "id"

    iget-object v2, p0, Lcom/braze/models/FeatureFlag;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "enabled"

    iget-boolean v2, p0, Lcom/braze/models/FeatureFlag;->enabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6
    const-string v1, "properties"

    iget-object v2, p0, Lcom/braze/models/FeatureFlag;->properties:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "fts"

    iget-object v2, p0, Lcom/braze/models/FeatureFlag;->trackingString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v1

    .line 9
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/models/FeatureFlag$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/braze/models/FeatureFlag$$ExternalSyntheticLambda0;-><init>()V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "boolean"

    invoke-virtual {p0, p1, v0}, Lcom/braze/models/FeatureFlag;->getValue$android_sdk_base_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/FeatureFlag;->enabled:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/FeatureFlag;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "image"

    invoke-virtual {p0, p1, v0}, Lcom/braze/models/FeatureFlag;->getValue$android_sdk_base_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getJSONProperty(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "jsonobject"

    invoke-virtual {p0, p1, v0}, Lcom/braze/models/FeatureFlag;->getValue$android_sdk_base_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/json/JSONObject;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getNumberProperty(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "number"

    invoke-virtual {p0, p1, v0}, Lcom/braze/models/FeatureFlag;->getValue$android_sdk_base_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/Number;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getProperties()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/FeatureFlag;->properties:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "string"

    invoke-virtual {p0, p1, v0}, Lcom/braze/models/FeatureFlag;->getValue$android_sdk_base_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getTimestamp(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use getTimestampProperty instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "getTimestampProperty(key)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/braze/models/FeatureFlag;->getTimestampProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final getTimestampProperty(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "datetime"

    invoke-virtual {p0, p1, v0}, Lcom/braze/models/FeatureFlag;->getValue$android_sdk_base_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/Long;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getTrackingString$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/FeatureFlag;->trackingString:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue$android_sdk_base_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedPropertyType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/braze/models/FeatureFlag;->doesKeyExist$android_sdk_base_release(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/braze/models/FeatureFlag;->properties:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/json/JSONObject;

    .line 5
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v8, Lcom/braze/models/FeatureFlag$$ExternalSyntheticLambda2;

    invoke-direct {v8, p2, v0}, Lcom/braze/models/FeatureFlag$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v1

    .line 10
    :cond_1
    const-string p2, "value"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/braze/models/BrazeGeofence;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/models/IPutIntoJson;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/braze/models/IPutIntoJson<",
        "Lorg/json/JSONObject;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/braze/models/BrazeGeofence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u0000\n\u0002\u0008!\u0008\u0007\u0018\u0000 @2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0003:\u0001ABi\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u000e\u0012\u0006\u0010\u0013\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0014\u0010\u0015B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0018\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u0000H\u0096\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001a\u0010\"\u001a\u00020\u000e2\u0008\u0010\u001e\u001a\u0004\u0018\u00010!H\u0096\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008$\u0010%R\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010&R\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\'\u001a\u0004\u0008(\u0010\u001bR\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010)\u001a\u0004\u0008*\u0010+R\u0017\u0010\t\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010)\u001a\u0004\u0008,\u0010+R\u0017\u0010\u000b\u001a\u00020\n8G\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010-\u001a\u0004\u0008.\u0010%R\u0017\u0010\u000c\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010-\u001a\u0004\u0008/\u0010%R\u0017\u0010\r\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010-\u001a\u0004\u00080\u0010%R\u0017\u0010\u000f\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u00101\u001a\u0004\u00082\u00103R\u0017\u0010\u0010\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u00101\u001a\u0004\u00084\u00103R\u0017\u0010\u0011\u001a\u00020\u000e8G\u00a2\u0006\u000c\n\u0004\u0008\u0011\u00101\u001a\u0004\u00085\u00103R\u0017\u0010\u0012\u001a\u00020\u000e8G\u00a2\u0006\u000c\n\u0004\u0008\u0012\u00101\u001a\u0004\u00086\u00103R\u0017\u0010\u0013\u001a\u00020\n8G\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010-\u001a\u0004\u00087\u0010%R(\u00108\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u00088\u0010)\u0012\u0004\u0008<\u0010=\u001a\u0004\u00089\u0010+\"\u0004\u0008:\u0010;R\u0011\u0010?\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010+\u00a8\u0006B"
    }
    d2 = {
        "Lcom/braze/models/BrazeGeofence;",
        "Lcom/braze/models/IPutIntoJson;",
        "Lorg/json/JSONObject;",
        "",
        "jsonObject",
        "",
        "id",
        "",
        "latitude",
        "longitude",
        "",
        "radiusMeter",
        "cooldownEnterSeconds",
        "cooldownExitSeconds",
        "",
        "analyticsEnabledEnter",
        "analyticsEnabledExit",
        "enterEvents",
        "exitEvents",
        "notificationResponsivenessMs",
        "<init>",
        "(Lorg/json/JSONObject;Ljava/lang/String;DDIIIZZZZI)V",
        "(Lorg/json/JSONObject;)V",
        "otherGeofence",
        "equivalentServerData",
        "(Lcom/braze/models/BrazeGeofence;)Z",
        "toString",
        "()Ljava/lang/String;",
        "forJsonPut",
        "()Lorg/json/JSONObject;",
        "other",
        "compareTo",
        "(Lcom/braze/models/BrazeGeofence;)I",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "hashCode",
        "()I",
        "Lorg/json/JSONObject;",
        "Ljava/lang/String;",
        "getId",
        "D",
        "getLatitude",
        "()D",
        "getLongitude",
        "I",
        "getRadiusMeter",
        "getCooldownEnterSeconds",
        "getCooldownExitSeconds",
        "Z",
        "getAnalyticsEnabledEnter",
        "()Z",
        "getAnalyticsEnabledExit",
        "getEnterEvents",
        "getExitEvents",
        "getNotificationResponsivenessMs",
        "distanceFromGeofenceRefresh",
        "getDistanceFromGeofenceRefresh",
        "setDistanceFromGeofenceRefresh",
        "(D)V",
        "getDistanceFromGeofenceRefresh$annotations",
        "()V",
        "getRadiusMeters",
        "radiusMeters",
        "Companion",
        "com/braze/models/c",
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
.field private static final ANALYTICS_ENABLED_ENTER:Ljava/lang/String; = "analytics_enabled_enter"

.field private static final ANALYTICS_ENABLED_EXIT:Ljava/lang/String; = "analytics_enabled_exit"

.field private static final COOLDOWN_ENTER_SECONDS:Ljava/lang/String; = "cooldown_enter"

.field private static final COOLDOWN_EXIT_SECONDS:Ljava/lang/String; = "cooldown_exit"

.field public static final Companion:Lcom/braze/models/c;

.field private static final DEFAULT_NOTIFICATION_RESPONSIVENESS_MS:I = 0x7530

.field private static final ENTER_EVENTS:Ljava/lang/String; = "enter_events"

.field private static final EXIT_EVENTS:Ljava/lang/String; = "exit_events"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LATITUDE:Ljava/lang/String; = "latitude"

.field private static final LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final NOTIFICATION_RESPONSIVENESS_MS:Ljava/lang/String; = "notification_responsiveness"

.field private static final RADIUS_METERS:Ljava/lang/String; = "radius"


# instance fields
.field private final analyticsEnabledEnter:Z

.field private final analyticsEnabledExit:Z

.field private final cooldownEnterSeconds:I

.field private final cooldownExitSeconds:I

.field private distanceFromGeofenceRefresh:D

.field private final enterEvents:Z

.field private final exitEvents:Z

.field private final id:Ljava/lang/String;

.field private final jsonObject:Lorg/json/JSONObject;

.field private final latitude:D

.field private final longitude:D

.field private final notificationResponsivenessMs:I

.field private final radiusMeter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/braze/models/c;

    invoke-direct {v0}, Lcom/braze/models/c;-><init>()V

    sput-object v0, Lcom/braze/models/BrazeGeofence;->Companion:Lcom/braze/models/c;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 16

    move-object/from16 v1, p1

    const-string v0, "jsonObject"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const-string v0, "id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const-string v0, "latitude"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 20
    const-string v0, "longitude"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 21
    const-string v0, "radius"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 22
    const-string v0, "cooldown_enter"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 23
    const-string v0, "cooldown_exit"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 24
    const-string v0, "analytics_enabled_enter"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 25
    const-string v0, "analytics_enabled_exit"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 26
    const-string v0, "enter_events"

    const/4 v12, 0x1

    invoke-virtual {v1, v0, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 27
    const-string v0, "exit_events"

    invoke-virtual {v1, v0, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 28
    const-string v0, "notification_responsiveness"

    const/16 v12, 0x7530

    invoke-virtual {v1, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    move v12, v13

    move v13, v14

    move v14, v15

    .line 29
    invoke-direct/range {v0 .. v14}, Lcom/braze/models/BrazeGeofence;-><init>(Lorg/json/JSONObject;Ljava/lang/String;DDIIIZZZZI)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;DDIIIZZZZI)V
    .locals 1

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/braze/models/BrazeGeofence;->jsonObject:Lorg/json/JSONObject;

    .line 3
    iput-object p2, p0, Lcom/braze/models/BrazeGeofence;->id:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/braze/models/BrazeGeofence;->latitude:D

    .line 5
    iput-wide p5, p0, Lcom/braze/models/BrazeGeofence;->longitude:D

    .line 6
    iput p7, p0, Lcom/braze/models/BrazeGeofence;->radiusMeter:I

    .line 7
    iput p8, p0, Lcom/braze/models/BrazeGeofence;->cooldownEnterSeconds:I

    .line 8
    iput p9, p0, Lcom/braze/models/BrazeGeofence;->cooldownExitSeconds:I

    .line 9
    iput-boolean p10, p0, Lcom/braze/models/BrazeGeofence;->analyticsEnabledEnter:Z

    .line 10
    iput-boolean p11, p0, Lcom/braze/models/BrazeGeofence;->analyticsEnabledExit:Z

    .line 11
    iput-boolean p12, p0, Lcom/braze/models/BrazeGeofence;->enterEvents:Z

    .line 12
    iput-boolean p13, p0, Lcom/braze/models/BrazeGeofence;->exitEvents:Z

    .line 13
    iput p14, p0, Lcom/braze/models/BrazeGeofence;->notificationResponsivenessMs:I

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 17
    iput-wide p1, p0, Lcom/braze/models/BrazeGeofence;->distanceFromGeofenceRefresh:D

    return-void
.end method

.method public static synthetic getDistanceFromGeofenceRefresh$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/braze/models/BrazeGeofence;)I
    .locals 6

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/braze/models/BrazeGeofence;->distanceFromGeofenceRefresh:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 5
    :cond_0
    iget-wide v4, p1, Lcom/braze/models/BrazeGeofence;->distanceFromGeofenceRefresh:D

    cmpg-double p1, v0, v4

    if-gez p1, :cond_1

    const/4 v3, -0x1

    :cond_1
    return v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/braze/models/BrazeGeofence;

    invoke-virtual {p0, p1}, Lcom/braze/models/BrazeGeofence;->compareTo(Lcom/braze/models/BrazeGeofence;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/braze/models/BrazeGeofence;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 3
    :cond_2
    const-string v1, "null cannot be cast to non-null type com.braze.models.BrazeGeofence"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/braze/models/BrazeGeofence;

    .line 5
    iget-object v1, p0, Lcom/braze/models/BrazeGeofence;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/braze/models/BrazeGeofence;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    iget-wide v3, p0, Lcom/braze/models/BrazeGeofence;->latitude:D

    iget-wide v5, p1, Lcom/braze/models/BrazeGeofence;->latitude:D

    cmpg-double v1, v3, v5

    if-nez v1, :cond_c

    .line 7
    iget-wide v3, p0, Lcom/braze/models/BrazeGeofence;->longitude:D

    iget-wide v5, p1, Lcom/braze/models/BrazeGeofence;->longitude:D

    cmpg-double v1, v3, v5

    if-nez v1, :cond_c

    .line 8
    iget v1, p0, Lcom/braze/models/BrazeGeofence;->radiusMeter:I

    iget v3, p1, Lcom/braze/models/BrazeGeofence;->radiusMeter:I

    if-eq v1, v3, :cond_4

    return v2

    .line 9
    :cond_4
    iget v1, p0, Lcom/braze/models/BrazeGeofence;->cooldownEnterSeconds:I

    iget v3, p1, Lcom/braze/models/BrazeGeofence;->cooldownEnterSeconds:I

    if-eq v1, v3, :cond_5

    return v2

    .line 10
    :cond_5
    iget v1, p0, Lcom/braze/models/BrazeGeofence;->cooldownExitSeconds:I

    iget v3, p1, Lcom/braze/models/BrazeGeofence;->cooldownExitSeconds:I

    if-eq v1, v3, :cond_6

    return v2

    .line 11
    :cond_6
    iget-boolean v1, p0, Lcom/braze/models/BrazeGeofence;->analyticsEnabledEnter:Z

    iget-boolean v3, p1, Lcom/braze/models/BrazeGeofence;->analyticsEnabledEnter:Z

    if-eq v1, v3, :cond_7

    return v2

    .line 12
    :cond_7
    iget-boolean v1, p0, Lcom/braze/models/BrazeGeofence;->analyticsEnabledExit:Z

    iget-boolean v3, p1, Lcom/braze/models/BrazeGeofence;->analyticsEnabledExit:Z

    if-eq v1, v3, :cond_8

    return v2

    .line 13
    :cond_8
    iget-boolean v1, p0, Lcom/braze/models/BrazeGeofence;->enterEvents:Z

    iget-boolean v3, p1, Lcom/braze/models/BrazeGeofence;->enterEvents:Z

    if-eq v1, v3, :cond_9

    return v2

    .line 14
    :cond_9
    iget-boolean v1, p0, Lcom/braze/models/BrazeGeofence;->exitEvents:Z

    iget-boolean v3, p1, Lcom/braze/models/BrazeGeofence;->exitEvents:Z

    if-eq v1, v3, :cond_a

    return v2

    .line 15
    :cond_a
    iget v1, p0, Lcom/braze/models/BrazeGeofence;->notificationResponsivenessMs:I

    iget p1, p1, Lcom/braze/models/BrazeGeofence;->notificationResponsivenessMs:I

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0

    :cond_c
    return v2
.end method

.method public final equivalentServerData(Lcom/braze/models/BrazeGeofence;)Z
    .locals 1

    const-string v0, "otherGeofence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/models/BrazeGeofence;->forJsonPut()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public forJsonPut()Lorg/json/JSONObject;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/braze/models/BrazeGeofence;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getAnalyticsEnabledEnter()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/BrazeGeofence;->analyticsEnabledEnter:Z

    return v0
.end method

.method public final getAnalyticsEnabledExit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/BrazeGeofence;->analyticsEnabledExit:Z

    return v0
.end method

.method public final getCooldownEnterSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/models/BrazeGeofence;->cooldownEnterSeconds:I

    return v0
.end method

.method public final getCooldownExitSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/models/BrazeGeofence;->cooldownExitSeconds:I

    return v0
.end method

.method public final getDistanceFromGeofenceRefresh()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/braze/models/BrazeGeofence;->distanceFromGeofenceRefresh:D

    return-wide v0
.end method

.method public final getEnterEvents()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/BrazeGeofence;->enterEvents:Z

    return v0
.end method

.method public final getExitEvents()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/BrazeGeofence;->exitEvents:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/BrazeGeofence;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/braze/models/BrazeGeofence;->latitude:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/braze/models/BrazeGeofence;->longitude:D

    return-wide v0
.end method

.method public final getNotificationResponsivenessMs()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/models/BrazeGeofence;->notificationResponsivenessMs:I

    return v0
.end method

.method public final getRadiusMeter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/models/BrazeGeofence;->radiusMeter:I

    return v0
.end method

.method public final getRadiusMeters()D
    .locals 2

    .line 1
    iget v0, p0, Lcom/braze/models/BrazeGeofence;->radiusMeter:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/models/BrazeGeofence;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/braze/models/BrazeGeofence;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-wide v2, p0, Lcom/braze/models/BrazeGeofence;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-wide v1, p0, Lcom/braze/models/BrazeGeofence;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget v0, p0, Lcom/braze/models/BrazeGeofence;->radiusMeter:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget v0, p0, Lcom/braze/models/BrazeGeofence;->cooldownEnterSeconds:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget v0, p0, Lcom/braze/models/BrazeGeofence;->cooldownExitSeconds:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget-boolean v0, p0, Lcom/braze/models/BrazeGeofence;->analyticsEnabledEnter:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-boolean v1, p0, Lcom/braze/models/BrazeGeofence;->analyticsEnabledExit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 10
    iget-boolean v0, p0, Lcom/braze/models/BrazeGeofence;->enterEvents:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-boolean v1, p0, Lcom/braze/models/BrazeGeofence;->exitEvents:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 12
    iget v0, p0, Lcom/braze/models/BrazeGeofence;->notificationResponsivenessMs:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 13
    invoke-virtual {p0}, Lcom/braze/models/BrazeGeofence;->getRadiusMeters()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final setDistanceFromGeofenceRefresh(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/braze/models/BrazeGeofence;->distanceFromGeofenceRefresh:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrazeGeofence{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/braze/models/BrazeGeofence;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \n            |latitude, longitude=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-wide v2, p0, Lcom/braze/models/BrazeGeofence;->latitude:D

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    iget-wide v2, p0, Lcom/braze/models/BrazeGeofence;->longitude:D

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    const-string v2, "),\n            |radiusMeters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    iget v2, p0, Lcom/braze/models/BrazeGeofence;->radiusMeter:I

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    const-string v2, ", \n            |cooldownEnterSeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    iget v2, p0, Lcom/braze/models/BrazeGeofence;->cooldownEnterSeconds:I

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 16
    const-string v2, ", \n            |cooldownExitSeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 20
    iget v2, p0, Lcom/braze/models/BrazeGeofence;->cooldownExitSeconds:I

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 22
    const-string v2, ", \n            |analyticsEnabledEnter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    iget-boolean v2, p0, Lcom/braze/models/BrazeGeofence;->analyticsEnabledEnter:Z

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29
    const-string v2, ", \n            |analyticsEnabledExit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 35
    iget-boolean v2, p0, Lcom/braze/models/BrazeGeofence;->analyticsEnabledExit:Z

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 37
    const-string v2, ", \n            |enterEvents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44
    iget-boolean v2, p0, Lcom/braze/models/BrazeGeofence;->enterEvents:Z

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    const-string v2, ", \n            |exitEvents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    iget-boolean v2, p0, Lcom/braze/models/BrazeGeofence;->exitEvents:Z

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    const-string v2, ", \n            |notificationResponsivenessMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    iget v2, p0, Lcom/braze/models/BrazeGeofence;->notificationResponsivenessMs:I

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    const-string v2, ", \n            |distanceFromGeofenceRefresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-wide v1, p0, Lcom/braze/models/BrazeGeofence;->distanceFromGeofenceRefresh:D

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    const-string v2, " }\n            |\n        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 91
    invoke-static {v0, v1, v2, v1}, Lkotlin/text/StringsKt;->trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

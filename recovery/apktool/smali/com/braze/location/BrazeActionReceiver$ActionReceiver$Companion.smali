.class public final Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/location/BrazeActionReceiver$ActionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrazeActionReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrazeActionReceiver.kt\ncom/braze/location/BrazeActionReceiver$ActionReceiver$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,156:1\n1863#2,2:157\n1863#2,2:159\n*S KotlinDebug\n*F\n+ 1 BrazeActionReceiver.kt\ncom/braze/location/BrazeActionReceiver$ActionReceiver$Companion\n*L\n128#1:157,2\n138#1:159,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;",
        "",
        "<init>",
        "()V",
        "handleSingleLocationUpdate",
        "",
        "applicationContext",
        "Landroid/content/Context;",
        "location",
        "Landroid/location/Location;",
        "handleGeofenceEvent",
        "geofenceEvent",
        "Lcom/google/android/gms/location/GeofencingEvent;",
        "android-sdk-location_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$UTpfi5Y1jyBWWZlV8xzMEZvuwtw(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;->handleGeofenceEvent$lambda$4(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XjDubkIBzF-c9zx4at4JX4kzn1Q()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;->handleSingleLocationUpdate$lambda$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$qahOLzfaOcejHcKxijXViG9TwB8(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;->handleGeofenceEvent$lambda$1(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$handleSingleLocationUpdate(Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;Landroid/content/Context;Landroid/location/Location;)Z
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;->handleSingleLocationUpdate(Landroid/content/Context;Landroid/location/Location;)Z

    move-result p0

    return p0
.end method

.method private static final handleGeofenceEvent$lambda$1(I)Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location Services error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final handleGeofenceEvent$lambda$4(I)Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported transition type received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final handleSingleLocationUpdate(Landroid/content/Context;Landroid/location/Location;)Z
    .locals 8

    .line 101
    :try_start_0
    new-instance v0, Lcom/braze/models/outgoing/BrazeLocation;

    invoke-direct {v0, p2}, Lcom/braze/models/outgoing/BrazeLocation;-><init>(Landroid/location/Location;)V

    check-cast v0, Lcom/braze/models/IBrazeLocation;

    invoke-static {p1, v0}, Lcom/braze/BrazeInternal;->logLocationRecordedEvent(Landroid/content/Context;Lcom/braze/models/IBrazeLocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 103
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    new-instance v5, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion$$ExternalSyntheticLambda0;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method private static final handleSingleLocationUpdate$lambda$0()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, "Exception while processing single location update"

    return-object v0
.end method


# virtual methods
.method public final handleGeofenceEvent(Landroid/content/Context;Lcom/google/android/gms/location/GeofencingEvent;)Z
    .locals 12

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geofenceEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Lcom/google/android/gms/location/GeofencingEvent;->hasError()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p2}, Lcom/google/android/gms/location/GeofencingEvent;->getErrorCode()I

    move-result p1

    .line 120
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v7, p1}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    .line 124
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/location/GeofencingEvent;->getGeofenceTransition()I

    move-result v0

    .line 125
    invoke-virtual {p2}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringGeofences()Ljava/util/List;

    move-result-object p2

    .line 127
    const-string v2, "getRequestId(...)"

    const/4 v3, 0x1

    if-ne v3, v0, :cond_2

    if-eqz p2, :cond_1

    .line 128
    check-cast p2, Ljava/lang/Iterable;

    .line 157
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/Geofence;

    .line 131
    invoke-interface {v0}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget-object v1, Lcom/braze/enums/GeofenceTransitionType;->ENTER:Lcom/braze/enums/GeofenceTransitionType;

    .line 129
    invoke-static {p1, v0, v1}, Lcom/braze/BrazeInternal;->recordGeofenceTransition(Landroid/content/Context;Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    const/4 v4, 0x2

    if-ne v4, v0, :cond_3

    if-eqz p2, :cond_1

    .line 138
    check-cast p2, Ljava/lang/Iterable;

    .line 159
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/Geofence;

    .line 141
    invoke-interface {v0}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v1, Lcom/braze/enums/GeofenceTransitionType;->EXIT:Lcom/braze/enums/GeofenceTransitionType;

    .line 139
    invoke-static {p1, v0, v1}, Lcom/braze/BrazeInternal;->recordGeofenceTransition(Landroid/content/Context;Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)V

    goto :goto_1

    .line 148
    :cond_3
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v9, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v9, v0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion$$ExternalSyntheticLambda2;-><init>(I)V

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_2
    return v1
.end method

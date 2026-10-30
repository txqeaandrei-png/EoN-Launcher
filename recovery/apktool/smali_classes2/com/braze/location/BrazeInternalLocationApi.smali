.class public final Lcom/braze/location/BrazeInternalLocationApi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/location/IBrazeLocationApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/location/BrazeInternalLocationApi$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 $2\u00020\u0001:\u0001$B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u000c\u001a\u00020\rH\u0016J+\u0010\u0014\u001a\u00020\u00152!\u0010\u0016\u001a\u001d\u0012\u0013\u0012\u00110\u0018\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u00120\u0017H\u0016J.\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u0015J\u0012\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u001dH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/braze/location/BrazeInternalLocationApi;",
        "Lcom/braze/location/IBrazeLocationApi;",
        "<init>",
        "()V",
        "context",
        "Landroid/content/Context;",
        "locationManager",
        "Landroid/location/LocationManager;",
        "getLocationManager$android_sdk_location_release",
        "()Landroid/location/LocationManager;",
        "setLocationManager$android_sdk_location_release",
        "(Landroid/location/LocationManager;)V",
        "appConfigurationProvider",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "allowedLocationProviders",
        "Ljava/util/EnumSet;",
        "Lcom/braze/enums/LocationProviderName;",
        "initWithContext",
        "",
        "allowedProviders",
        "requestSingleLocationUpdate",
        "",
        "locationUpdateCallback",
        "Lkotlin/Function1;",
        "Lcom/braze/models/IBrazeLocation;",
        "Lkotlin/ParameterName;",
        "name",
        "location",
        "getSuitableLocationProvider",
        "",
        "hasFinePermission",
        "hasCoarsePermission",
        "getLastKnownGpsLocationIfValid",
        "Landroid/location/Location;",
        "requestSingleUpdateFromLocationManager",
        "provider",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/braze/location/BrazeInternalLocationApi$Companion;

.field public static final LAST_KNOWN_GPS_LOCATION_MAX_AGE_MS:I = 0x927c0


# instance fields
.field private allowedLocationProviders:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/LocationProviderName;",
            ">;"
        }
    .end annotation
.end field

.field private appConfigurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

.field private context:Landroid/content/Context;

.field public locationManager:Landroid/location/LocationManager;


# direct methods
.method public static synthetic $r8$lambda$4QGFqMwnWJmByk1IkVqEKucJi6M(Lcom/braze/location/BrazeInternalLocationApi;Lkotlin/jvm/functions/Function1;Landroid/location/Location;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/location/BrazeInternalLocationApi;->requestSingleLocationUpdate$lambda$5(Lcom/braze/location/BrazeInternalLocationApi;Lkotlin/jvm/functions/Function1;Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$90fainuhDlWSjzZobzZSMvE9-_o(Landroid/location/Location;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/BrazeInternalLocationApi;->getLastKnownGpsLocationIfValid$lambda$9(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EYjrhwJHb36qWIxYM66DFysJknI(Landroid/location/Location;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/BrazeInternalLocationApi;->requestSingleLocationUpdate$lambda$1(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IVmb2TYBnUZanl7TGtoQKH6cVPg()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/BrazeInternalLocationApi;->requestSingleLocationUpdate$lambda$7()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Jocufskx1EHAbLVY_Ok6AVQG08A()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/BrazeInternalLocationApi;->requestSingleLocationUpdate$lambda$2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$LgzvkEGZAHt0uG7W5TnnV46eJ5o(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/location/BrazeInternalLocationApi;->getLastKnownGpsLocationIfValid$lambda$8(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$arKgsQr08YXID6Z9_bNQ7eZL9-w(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/BrazeInternalLocationApi;->requestSingleLocationUpdate$lambda$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bkLMk0V9hJhnciUMVie-oORp5FU()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/BrazeInternalLocationApi;->requestSingleLocationUpdate$lambda$6()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$u5yOdaLChjduPsBHpHYIXKDtFJc(Landroid/location/Location;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/BrazeInternalLocationApi;->requestSingleLocationUpdate$lambda$5$lambda$4(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wtSqCNaCgTFiayN0V7K3kHylcmQ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/BrazeInternalLocationApi;->requestSingleLocationUpdate$lambda$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/location/BrazeInternalLocationApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/location/BrazeInternalLocationApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/location/BrazeInternalLocationApi;->Companion:Lcom/braze/location/BrazeInternalLocationApi$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getLastKnownGpsLocationIfValid$lambda$8(J)Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Last known GPS location is too old and will not be used. Age ms: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getLastKnownGpsLocationIfValid$lambda$9(Landroid/location/Location;)Ljava/lang/String;
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using last known GPS location: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final requestSingleLocationUpdate$lambda$0()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "Did not request single location update. Neither fine nor coarse location permissions found."

    return-object v0
.end method

.method private static final requestSingleLocationUpdate$lambda$1(Landroid/location/Location;)Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting user location to last known GPS location: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final requestSingleLocationUpdate$lambda$2()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "Could not request single location update. Could not find suitable location provider."

    return-object v0
.end method

.method private static final requestSingleLocationUpdate$lambda$3(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requesting single location update with provider: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final requestSingleLocationUpdate$lambda$5(Lcom/braze/location/BrazeInternalLocationApi;Lkotlin/jvm/functions/Function1;Landroid/location/Location;)V
    .locals 8

    .line 95
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2}, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda0;-><init>(Landroid/location/Location;)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 97
    new-instance p0, Lcom/braze/models/outgoing/BrazeLocation;

    invoke-direct {p0, p2}, Lcom/braze/models/outgoing/BrazeLocation;-><init>(Landroid/location/Location;)V

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final requestSingleLocationUpdate$lambda$5$lambda$4(Landroid/location/Location;)Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location manager getCurrentLocation got location: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final requestSingleLocationUpdate$lambda$6()Ljava/lang/String;
    .locals 1

    .line 106
    const-string v0, "Failed to request single location update due to security exception from insufficient permissions."

    return-object v0
.end method

.method private static final requestSingleLocationUpdate$lambda$7()Ljava/lang/String;
    .locals 1

    .line 110
    const-string v0, "Failed to request single location update due to exception."

    return-object v0
.end method

.method private final requestSingleUpdateFromLocationManager(Ljava/lang/String;)V
    .locals 5

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.braze.action.receiver.SINGLE_LOCATION_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/braze/location/BrazeInternalLocationApi;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "context"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    const-class v4, Lcom/braze/location/BrazeActionReceiver;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "setClass(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x8000000

    .line 175
    invoke-static {}, Lcom/braze/support/IntentUtils;->getMutablePendingIntentFlags()I

    move-result v4

    or-int/2addr v1, v4

    .line 177
    iget-object v4, p0, Lcom/braze/location/BrazeInternalLocationApi;->context:Landroid/content/Context;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/braze/location/BrazeInternalLocationApi;->getLocationManager$android_sdk_location_release()Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public final getLastKnownGpsLocationIfValid(Landroid/location/LocationManager;)Landroid/location/Location;
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "locationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 158
    :cond_0
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    .line 161
    :cond_1
    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInMilliseconds()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v1, v4

    const-wide/32 v4, 0x927c0

    cmp-long v4, v1, v4

    if-lez v4, :cond_2

    .line 163
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v7, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v10, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda8;

    invoke-direct {v10, v1, v2}, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda8;-><init>(J)V

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v5 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v3

    .line 166
    :cond_2
    sget-object v13, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v1, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda9;-><init>(Landroid/location/Location;)V

    const/16 v19, 0x7

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v14, p0

    move-object/from16 v18, v1

    invoke-static/range {v13 .. v20}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final getLocationManager$android_sdk_location_release()Landroid/location/LocationManager;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/braze/location/BrazeInternalLocationApi;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "locationManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSuitableLocationProvider(Landroid/location/LocationManager;Ljava/util/EnumSet;ZZ)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationManager;",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/LocationProviderName;",
            ">;ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "locationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowedProviders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 129
    sget-object v0, Lcom/braze/enums/LocationProviderName;->GPS:Lcom/braze/enums/LocationProviderName;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    if-eqz p3, :cond_2

    .line 134
    :cond_1
    sget-object p4, Lcom/braze/enums/LocationProviderName;->NETWORK:Lcom/braze/enums/LocationProviderName;

    invoke-virtual {p2, p4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 135
    const-string v0, "network"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 139
    sget-object p3, Lcom/braze/enums/LocationProviderName;->PASSIVE:Lcom/braze/enums/LocationProviderName;

    invoke-virtual {p2, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 140
    const-string v0, "passive"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public initWithContext(Landroid/content/Context;Ljava/util/EnumSet;Lcom/braze/configuration/BrazeConfigurationProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/LocationProviderName;",
            ">;",
            "Lcom/braze/configuration/BrazeConfigurationProvider;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowedProviders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appConfigurationProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/braze/location/BrazeInternalLocationApi;->context:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/braze/location/BrazeInternalLocationApi;->appConfigurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    .line 48
    iput-object p2, p0, Lcom/braze/location/BrazeInternalLocationApi;->allowedLocationProviders:Ljava/util/EnumSet;

    .line 49
    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/location/LocationManager;

    invoke-virtual {p0, p1}, Lcom/braze/location/BrazeInternalLocationApi;->setLocationManager$android_sdk_location_release(Landroid/location/LocationManager;)V

    return-void
.end method

.method public requestSingleLocationUpdate(Lkotlin/jvm/functions/Function1;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/braze/models/IBrazeLocation;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v1, "locationUpdateCallback"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/braze/location/BrazeInternalLocationApi;->context:Landroid/content/Context;

    const-string v2, "context"

    const/4 v9, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v9

    :cond_0
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v3}, Lcom/braze/support/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 60
    iget-object v3, p0, Lcom/braze/location/BrazeInternalLocationApi;->context:Landroid/content/Context;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v9

    :cond_1
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v2}, Lcom/braze/support/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v10, 0x0

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 63
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda1;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v10

    :cond_2
    const/4 v11, 0x1

    if-eqz v1, :cond_3

    .line 70
    invoke-virtual {p0}, Lcom/braze/location/BrazeInternalLocationApi;->getLocationManager$android_sdk_location_release()Landroid/location/LocationManager;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/braze/location/BrazeInternalLocationApi;->getLastKnownGpsLocationIfValid(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 72
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda2;

    invoke-direct {v6, v12}, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda2;-><init>(Landroid/location/Location;)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 73
    new-instance v1, Lcom/braze/models/outgoing/BrazeLocation;

    invoke-direct {v1, v12}, Lcom/braze/models/outgoing/BrazeLocation;-><init>(Landroid/location/Location;)V

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v11

    .line 78
    :cond_3
    invoke-virtual {p0}, Lcom/braze/location/BrazeInternalLocationApi;->getLocationManager$android_sdk_location_release()Landroid/location/LocationManager;

    move-result-object v3

    .line 79
    iget-object v4, p0, Lcom/braze/location/BrazeInternalLocationApi;->allowedLocationProviders:Ljava/util/EnumSet;

    if-nez v4, :cond_4

    const-string v4, "allowedLocationProviders"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v9

    .line 77
    :cond_4
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/braze/location/BrazeInternalLocationApi;->getSuitableLocationProvider(Landroid/location/LocationManager;Ljava/util/EnumSet;ZZ)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_5

    .line 84
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda3;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v10

    .line 87
    :cond_5
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda4;

    invoke-direct {v6, v12}, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 89
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_6

    .line 90
    invoke-virtual {p0}, Lcom/braze/location/BrazeInternalLocationApi;->getLocationManager$android_sdk_location_release()Landroid/location/LocationManager;

    move-result-object v1

    .line 93
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 90
    new-instance v3, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1}, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda5;-><init>(Lcom/braze/location/BrazeInternalLocationApi;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v12, v9, v2, v3}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 101
    :cond_6
    invoke-direct {p0, v12}, Lcom/braze/location/BrazeInternalLocationApi;->requestSingleUpdateFromLocationManager(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v10, v11

    goto :goto_1

    :catch_0
    move-exception v0

    .line 110
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    new-instance v6, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda7;

    invoke-direct {v6}, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda7;-><init>()V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 105
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    new-instance v6, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda6;-><init>()V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_1
    return v10
.end method

.method public final setLocationManager$android_sdk_location_release(Landroid/location/LocationManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/braze/location/BrazeInternalLocationApi;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

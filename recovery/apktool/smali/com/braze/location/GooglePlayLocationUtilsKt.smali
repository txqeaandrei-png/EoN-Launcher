.class public final Lcom/braze/location/GooglePlayLocationUtilsKt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toGeofence",
        "Lcom/google/android/gms/location/Geofence;",
        "Lcom/braze/models/BrazeGeofence;",
        "android-sdk-location_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toGeofence(Lcom/braze/models/BrazeGeofence;)Lcom/google/android/gms/location/Geofence;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    new-instance v0, Lcom/google/android/gms/location/Geofence$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/Geofence$Builder;-><init>()V

    .line 273
    invoke-virtual {p0}, Lcom/braze/models/BrazeGeofence;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/Geofence$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v2

    .line 274
    invoke-virtual {p0}, Lcom/braze/models/BrazeGeofence;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/braze/models/BrazeGeofence;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/braze/models/BrazeGeofence;->getRadiusMeter()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/location/Geofence$Builder;->setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v1

    .line 275
    invoke-virtual {p0}, Lcom/braze/models/BrazeGeofence;->getNotificationResponsivenessMs()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/Geofence$Builder;->setNotificationResponsiveness(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 276
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/Geofence$Builder;->setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;

    .line 278
    invoke-virtual {p0}, Lcom/braze/models/BrazeGeofence;->getEnterEvents()Z

    move-result v1

    .line 281
    invoke-virtual {p0}, Lcom/braze/models/BrazeGeofence;->getExitEvents()Z

    move-result p0

    if-eqz p0, :cond_0

    or-int/lit8 v1, v1, 0x2

    .line 284
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/Geofence$Builder;->setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;

    .line 285
    invoke-virtual {v0}, Lcom/google/android/gms/location/Geofence$Builder;->build()Lcom/google/android/gms/location/Geofence;

    move-result-object p0

    const-string v0, "build(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

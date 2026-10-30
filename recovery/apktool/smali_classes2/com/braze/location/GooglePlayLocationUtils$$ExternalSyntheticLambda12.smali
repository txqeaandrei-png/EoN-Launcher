.class public final synthetic Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda12;->f$0:Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda12;->f$0:Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/braze/location/GooglePlayLocationUtils;->$r8$lambda$Q4lOOCGYXe0GacugZ1aIXLcI8h8(Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;Landroid/location/Location;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

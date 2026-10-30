.class public final synthetic Lcom/braze/managers/BrazeGeofenceManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/braze/managers/BrazeGeofenceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/managers/BrazeGeofenceManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/managers/BrazeGeofenceManager$$ExternalSyntheticLambda13;->f$0:Lcom/braze/managers/BrazeGeofenceManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager$$ExternalSyntheticLambda13;->f$0:Lcom/braze/managers/BrazeGeofenceManager;

    check-cast p1, Lcom/braze/models/IBrazeLocation;

    invoke-static {v0, p1}, Lcom/braze/managers/BrazeGeofenceManager;->$r8$lambda$GSSUv8-3CVRGWaRhXMtFBJhv0JQ(Lcom/braze/managers/BrazeGeofenceManager;Lcom/braze/models/IBrazeLocation;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda14;->f$0:Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda14;->f$0:Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;

    invoke-static {v0, p1}, Lcom/braze/location/GooglePlayLocationUtils;->$r8$lambda$10O5oIU-O4rV0hV5Dzo02ga-Apk(Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;Ljava/lang/Exception;)V

    return-void
.end method

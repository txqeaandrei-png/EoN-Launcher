.class public Lcom/microsoft/xbox/service/notification/NotificationHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tryParseXboxLiveNotification(Lcom/google/firebase/messaging/RemoteMessage;Landroid/content/Context;)Lcom/microsoft/xbox/service/notification/NotificationResult;
    .locals 1

    .line 15
    new-instance v0, Lcom/microsoft/xbox/service/notification/NotificationResult;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/service/notification/NotificationResult;-><init>(Lcom/google/firebase/messaging/RemoteMessage;Landroid/content/Context;)V

    return-object v0
.end method

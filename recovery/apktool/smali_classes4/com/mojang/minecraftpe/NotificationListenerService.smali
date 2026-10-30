.class public Lcom/mojang/minecraftpe/NotificationListenerService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;


# static fields
.field private static sDeviceRegistrationToken:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    .line 22
    invoke-static {}, Lcom/mojang/minecraftpe/NotificationListenerService;->retrieveDeviceToken()V

    return-void
.end method

.method public static getDeviceRegistrationToken()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/mojang/minecraftpe/NotificationListenerService;->sDeviceRegistrationToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$retrieveDeviceToken$0(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    sput-object p0, Lcom/mojang/minecraftpe/NotificationListenerService;->sDeviceRegistrationToken:Ljava/lang/String;

    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "BlazeLauncher"

    const-string v0, "Unable to get Firebase Messaging token, trying again..."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private static retrieveDeviceToken()V
    .locals 2

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "BlazeLauncher"

    const-string v1, "NotificationListenerService.retrieveDeviceToken() should not run on main thread."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    sget-object v0, Lcom/mojang/minecraftpe/NotificationListenerService;->sDeviceRegistrationToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/mojang/minecraftpe/NotificationListenerService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/mojang/minecraftpe/NotificationListenerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    return-void
.end method


# virtual methods
.method native nativePushNotificationReceived(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 3

    .line 50
    invoke-static {p1, p0}, Lcom/microsoft/xbox/service/notification/NotificationHelper;->tryParseXboxLiveNotification(Lcom/google/firebase/messaging/RemoteMessage;Landroid/content/Context;)Lcom/microsoft/xbox/service/notification/NotificationResult;

    move-result-object p1

    .line 51
    iget-object v0, p1, Lcom/microsoft/xbox/service/notification/NotificationResult;->notificationType:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;->ordinal()I

    move-result v0

    iget-object v1, p1, Lcom/microsoft/xbox/service/notification/NotificationResult;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/microsoft/xbox/service/notification/NotificationResult;->body:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/xbox/service/notification/NotificationResult;->data:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mojang/minecraftpe/NotificationListenerService;->nativePushNotificationReceived(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

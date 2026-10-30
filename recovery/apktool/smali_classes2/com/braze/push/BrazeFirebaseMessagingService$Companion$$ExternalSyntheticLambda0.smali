.class public final synthetic Lcom/braze/push/BrazeFirebaseMessagingService$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/messaging/RemoteMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/push/BrazeFirebaseMessagingService$Companion$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/messaging/RemoteMessage;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/push/BrazeFirebaseMessagingService$Companion$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-static {v0}, Lcom/braze/push/BrazeFirebaseMessagingService$Companion;->$r8$lambda$_ee_l5mhY8-l7OPKrYUb0jbKN04(Lcom/google/firebase/messaging/RemoteMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/braze/location/BrazeActionReceiver$ActionReceiver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/location/BrazeActionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrazeActionReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrazeActionReceiver.kt\ncom/braze/location/BrazeActionReceiver$ActionReceiver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n1#2:157\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010\u000c\u001a\u00020\u000bH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/braze/location/BrazeActionReceiver$ActionReceiver;",
        "",
        "applicationContext",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "<init>",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "action",
        "",
        "run",
        "",
        "performWork",
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
.field public static final Companion:Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;


# instance fields
.field private final action:Ljava/lang/String;

.field private final applicationContext:Landroid/content/Context;

.field private final intent:Landroid/content/Intent;


# direct methods
.method public static synthetic $r8$lambda$2f6OjdXWZLCU91U8GsPi6wijZ18(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->performWork$lambda$1(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$A7HtEaFcO66TIYU-2_NPKLeRVvQ(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->run$lambda$0(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E7sA28mPx187h2yqCTV73G41PRs()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->performWork$lambda$2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$GjD0m1NbrTPAwz19Y2955AxKSOw(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->performWork$lambda$5(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XAmCePp7icXwXXIdXXTFu11p4Us(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->performWork$lambda$3(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ibNyVPrC6MjSPrIaUE8pQHksrXQ(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->performWork$lambda$7(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->Companion:Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->applicationContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->intent:Landroid/content/Intent;

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->action:Ljava/lang/String;

    return-void
.end method

.method private static final performWork$lambda$1(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received intent with action "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final performWork$lambda$2()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "Received intent with null action. Doing nothing."

    return-object v0
.end method

.method private static final performWork$lambda$3(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrazeActionReceiver received intent with geofence transition: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final performWork$lambda$5(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrazeActionReceiver received intent with single location update: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final performWork$lambda$7(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown intent received in BrazeActionReceiver with action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final run$lambda$0(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Caught exception while performing the BrazeActionReceiver work. Action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final performWork()V
    .locals 12

    .line 73
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->action:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 76
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda1;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 78
    :cond_0
    const-string v1, "com.braze.action.receiver.BRAZE_GEOFENCE_UPDATE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v7, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda2;-><init>(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)V

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/location/GeofencingEvent;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/GeofencingEvent;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->Companion:Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;

    iget-object v2, p0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;->handleGeofenceEvent(Landroid/content/Context;Lcom/google/android/gms/location/GeofencingEvent;)Z

    goto :goto_1

    .line 82
    :cond_1
    const-string v1, "com.braze.action.receiver.SINGLE_LOCATION_UPDATE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda3;-><init>(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "location"

    if-lt v0, v1, :cond_2

    .line 85
    iget-object v0, p0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-class v1, Landroid/location/Location;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/location/Location;

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :cond_3
    check-cast v3, Landroid/location/Location;

    :cond_4
    :goto_0
    if-eqz v3, :cond_6

    .line 90
    sget-object v0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->Companion:Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;

    iget-object v1, p0, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->applicationContext:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;->access$handleSingleLocationUpdate(Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;Landroid/content/Context;Landroid/location/Location;)Z

    goto :goto_1

    .line 93
    :cond_5
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v9, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda4;

    invoke-direct {v9, p0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda4;-><init>(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)V

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final run()V
    .locals 9

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver;->performWork()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    new-instance v6, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/braze/location/BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda5;-><init>(Lcom/braze/location/BrazeActionReceiver$ActionReceiver;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

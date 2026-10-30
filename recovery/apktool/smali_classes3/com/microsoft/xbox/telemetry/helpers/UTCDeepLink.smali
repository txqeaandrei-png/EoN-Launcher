.class public Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;
.super Ljava/lang/Object;


# static fields
.field public static final CALLING_APP_KEY:Ljava/lang/String; = "deepLinkCaller"

.field public static final DEEPLINK_KEY_NAME:Ljava/lang/String; = "deepLinkId"

.field public static final INTENDED_ACTION_KEY:Ljava/lang/String; = "intendedAction"

.field public static final TARGET_TITLE_KEY:Ljava/lang/String; = "targetTitleId"

.field public static final TARGET_XUID_KEY:Ljava/lang/String; = "targetXUID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateCorrelationId()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-static {}, Lcom/microsoft/xbox/telemetry/utc/CommonData;->getApplicationSession()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    const-string v1, "deepLinkId"

    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->generateCorrelationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "deepLinkCaller"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic lambda$trackFriendSuggestionsLink$5(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 79
    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 80
    const-string v0, "DeepLink - Friend Suggestions"

    invoke-static {v0, p1, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    .line 81
    const-string p1, "deepLinkId"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$trackGameHubAchievementsLink$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 55
    const-string v0, "targetTitleId"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string p1, "DeepLink - GameHub"

    invoke-static {p1, p2, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    .line 57
    const-string p1, "deepLinkId"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$trackGameHubLink$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 45
    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 46
    const-string v0, "targetXUID"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string p1, "DeepLink - GameHub"

    invoke-static {p1, p2, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    .line 48
    const-string p1, "deepLinkId"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$trackUserProfileLink$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 36
    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "targetXUID"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string p1, "DeepLink - User Profile"

    invoke-static {p1, p2, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    .line 39
    const-string p1, "deepLinkId"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$trackUserSendToStore$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    .line 71
    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 72
    const-string v0, "intendedAction"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string p1, "DeepLink - Store Redirect"

    invoke-static {p1, p2, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$trackUserSettingsLink$3(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 63
    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 64
    const-string v0, "DeepLink - User Settings"

    invoke-static {v0, p1, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    .line 65
    const-string p1, "deepLinkId"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trackFriendSuggestionsLink(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 78
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trackGameHubAchievementsLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 53
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trackGameHubLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trackUserProfileLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trackUserSendToStore(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackUserSettingsLink(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 62
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

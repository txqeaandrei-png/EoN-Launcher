.class public Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;
.super Ljava/lang/Object;


# static fields
.field public static currentActivityTitle:Ljava/lang/CharSequence; = null

.field public static currentXUID:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, ""

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "targetXUID"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic lambda$trackBlock$3(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 65
    const-string v0, "People Hub - Block"

    invoke-static {p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$trackBlockDialogComplete$4(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 74
    const-string v0, "People Hub - Block OK"

    invoke-static {p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$trackMute$1(Ljava/lang/String;ZLjava/lang/CharSequence;)V
    .locals 1

    .line 44
    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 45
    const-string v0, "isMuted"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string p1, "People Hub - Mute"

    invoke-static {p1, p2, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$trackPeopleHubView$0(ZLjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 33
    const-string p0, "People Hub - ME View"

    goto :goto_0

    :cond_0
    const-string p0, "People Hub - You View"

    :goto_0
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$trackReport$5(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 83
    const-string v0, "People Hub - Report"

    invoke-static {p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$trackUnblock$2(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 56
    const-string v0, "People Hub - Unblock"

    invoke-static {p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$trackViewInXboxApp$6(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 92
    const-string v0, "People Hub - View in Xbox App"

    invoke-static {p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$trackViewInXboxAppDialogComplete$7(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 101
    const-string v0, "People Hub - View in Xbox App OK"

    invoke-static {p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method

.method public static trackBlock()V
    .locals 2

    .line 60
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->verifyTrackedDefaults()V

    .line 61
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackBlock(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public static trackBlock(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 65
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda2;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackBlockDialogComplete()V
    .locals 2

    .line 69
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->verifyTrackedDefaults()V

    .line 70
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackBlockDialogComplete(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public static trackBlockDialogComplete(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 74
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda6;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackMute(Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 1

    .line 43
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackMute(Z)V
    .locals 2

    .line 38
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->verifyTrackedDefaults()V

    .line 39
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackMute(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    return-void
.end method

.method public static trackPeopleHubView(Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 0

    .line 32
    new-instance p0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda4;

    invoke-direct {p0, p2, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda4;-><init>(ZLjava/lang/String;)V

    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackReport()V
    .locals 2

    .line 78
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->verifyTrackedDefaults()V

    .line 79
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackReport(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public static trackReport(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 83
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda3;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackUnblock()V
    .locals 2

    .line 51
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->verifyTrackedDefaults()V

    .line 52
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackUnblock(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public static trackUnblock(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 56
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda7;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackViewInXboxApp()V
    .locals 2

    .line 87
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->verifyTrackedDefaults()V

    .line 88
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackViewInXboxApp(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public static trackViewInXboxApp(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 92
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackViewInXboxAppDialogComplete()V
    .locals 2

    .line 96
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->verifyTrackedDefaults()V

    .line 97
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackViewInXboxAppDialogComplete(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public static trackViewInXboxAppDialogComplete(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 101
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$$ExternalSyntheticLambda1;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method private static verifyTrackedDefaults()V
    .locals 3

    .line 21
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Called trackPeopleHubView without set currentXUID"

    invoke-static {v2, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 22
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Called trackPeopleHubView without set activityTitle"

    invoke-static {v1, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    return-void
.end method

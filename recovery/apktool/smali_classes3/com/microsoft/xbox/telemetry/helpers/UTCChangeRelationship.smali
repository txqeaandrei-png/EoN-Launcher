.class public Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;,
        Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;,
        Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;,
        Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;
    }
.end annotation


# static fields
.field public static currentActivityTitle:Ljava/lang/CharSequence; = null

.field public static currentXUID:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, ""

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

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

.method static synthetic lambda$trackChangeRelationshipAction$1(Ljava/lang/String;ZLjava/lang/CharSequence;Z)V
    .locals 7

    .line 46
    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 47
    sget-object p1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->EXISTINGFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->ADDFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "relationship"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string p1, "Change Relationship - Action"

    invoke-static {p1, p2, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    if-eqz p3, :cond_1

    .line 50
    sget-object v3, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->ADDFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    sget-object v4, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGON:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    sget-object v5, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->NOTFAVORITED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    sget-object v6, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;->FACEBOOK:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    move-object v1, p2

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipDone(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$trackChangeRelationshipDone$3(Ljava/lang/String;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;Ljava/lang/CharSequence;)V
    .locals 1

    .line 81
    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 82
    invoke-virtual {p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "relationship"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p2}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "favorite"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {p3}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "realname"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p4}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "gamertype"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string p1, "Change Relationship - Done"

    invoke-static {p1, p5, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$trackChangeRelationshipRemoveFriend$2(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    .line 62
    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 63
    const-string v0, "relationship"

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->REMOVEFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "Change Relationship - Action"

    invoke-static {v0, p1, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$trackChangeRelationshipView$0(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 33
    sput-object p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    .line 34
    sput-object p1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    .line 35
    const-string v0, "Change Relationship - Change Relationship View"

    invoke-static {p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method

.method public static trackChangeRelationshipAction(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V
    .locals 1

    .line 45
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;ZLjava/lang/CharSequence;Z)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackChangeRelationshipAction(ZZ)V
    .locals 2

    .line 40
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->verifyTrackedDefaults()V

    .line 41
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipAction(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static trackChangeRelationshipDone(Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;)V
    .locals 6

    .line 69
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->verifyTrackedDefaults()V

    .line 70
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipDone(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;)V

    return-void
.end method

.method public static trackChangeRelationshipDone(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;)V
    .locals 8

    .line 80
    new-instance v7, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda3;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;Ljava/lang/CharSequence;)V

    invoke-static {v7}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackChangeRelationshipRemoveFriend()V
    .locals 2

    .line 56
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->verifyTrackedDefaults()V

    .line 57
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipRemoveFriend(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public static trackChangeRelationshipRemoveFriend(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackChangeRelationshipView(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 32
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda2;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method private static verifyTrackedDefaults()V
    .locals 3

    .line 21
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Called trackPeopleHubView without set currentXUID"

    invoke-static {v2, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 22
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Called trackPeopleHubView without set activityTitle"

    invoke-static {v1, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    return-void
.end method

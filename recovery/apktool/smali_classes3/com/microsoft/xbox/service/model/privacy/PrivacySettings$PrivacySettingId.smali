.class public final enum Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/privacy/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrivacySettingId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum CanShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum CollectVoiceData:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum CommunicateUsingVideo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum None:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareExerciseInfo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareFriendList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareGameHistory:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareIdentityTransitively:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum SharePresence:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareProfile:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareRecordedGameSessions:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareVideoAndMusicStatus:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareXboxMusicActivity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;


# direct methods
.method private static synthetic $values()[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    .locals 15

    .line 13
    sget-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->None:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareFriendList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareGameHistory:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v4, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->SharePresence:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v5, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareProfile:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v6, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareVideoAndMusicStatus:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v7, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CommunicateUsingVideo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v8, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CollectVoiceData:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v9, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareXboxMusicActivity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v10, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareExerciseInfo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v11, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v12, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareRecordedGameSessions:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v13, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentityTransitively:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v14, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CanShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    filled-new-array/range {v0 .. v14}, [Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->None:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 15
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareFriendList"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareFriendList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 16
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareGameHistory"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareGameHistory:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 17
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "CommunicateUsingTextAndVoice"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 18
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "SharePresence"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->SharePresence:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 19
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareProfile"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareProfile:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 20
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareVideoAndMusicStatus"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareVideoAndMusicStatus:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 21
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "CommunicateUsingVideo"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CommunicateUsingVideo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 22
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "CollectVoiceData"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CollectVoiceData:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 23
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareXboxMusicActivity"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareXboxMusicActivity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 24
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareExerciseInfo"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareExerciseInfo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 25
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareIdentity"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 26
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareRecordedGameSessions"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareRecordedGameSessions:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 27
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareIdentityTransitively"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentityTransitively:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 28
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "CanShareIdentity"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CanShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 13
    invoke-static {}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->$values()[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->$VALUES:[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getPrivacySettingId(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    .locals 5

    .line 31
    invoke-static {}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->values()[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 32
    invoke-virtual {v3}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    sget-object p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->None:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    .locals 1

    .line 13
    const-class v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    .locals 1

    .line 13
    sget-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->$VALUES:[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    return-object v0
.end method

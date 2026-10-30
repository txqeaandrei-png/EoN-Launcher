.class public final enum Lcom/microsoft/xbox/idp/model/Privacy$Key;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Privacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/model/Privacy$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CanShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CollectVoiceData:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CommunicateUsingVideo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum None:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareExerciseInfo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareFriendList:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareGameHistory:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareIdentityTransitively:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum SharePresence:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareProfile:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareRecordedGameSessions:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareVideoAndMusicStatus:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareXboxMusicActivity:Lcom/microsoft/xbox/idp/model/Privacy$Key;


# direct methods
.method private static synthetic $values()[Lcom/microsoft/xbox/idp/model/Privacy$Key;
    .locals 15

    .line 29
    sget-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->None:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareFriendList:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareGameHistory:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v3, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v4, Lcom/microsoft/xbox/idp/model/Privacy$Key;->SharePresence:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v5, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareProfile:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v6, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareVideoAndMusicStatus:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v7, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CommunicateUsingVideo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v8, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CollectVoiceData:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v9, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareXboxMusicActivity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v10, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareExerciseInfo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v11, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v12, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareRecordedGameSessions:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v13, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentityTransitively:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v14, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CanShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    filled-new-array/range {v0 .. v14}, [Lcom/microsoft/xbox/idp/model/Privacy$Key;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->None:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 31
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareFriendList"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareFriendList:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 32
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareGameHistory"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareGameHistory:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 33
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "CommunicateUsingTextAndVoice"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 34
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "SharePresence"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->SharePresence:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 35
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareProfile"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareProfile:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 36
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareVideoAndMusicStatus"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareVideoAndMusicStatus:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 37
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "CommunicateUsingVideo"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CommunicateUsingVideo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 38
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "CollectVoiceData"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CollectVoiceData:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 39
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareXboxMusicActivity"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareXboxMusicActivity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 40
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareExerciseInfo"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareExerciseInfo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 41
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareIdentity"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 42
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareRecordedGameSessions"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareRecordedGameSessions:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 43
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareIdentityTransitively"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentityTransitively:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 44
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "CanShareIdentity"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CanShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 29
    invoke-static {}, Lcom/microsoft/xbox/idp/model/Privacy$Key;->$values()[Lcom/microsoft/xbox/idp/model/Privacy$Key;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->$VALUES:[Lcom/microsoft/xbox/idp/model/Privacy$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/model/Privacy$Key;
    .locals 1

    .line 29
    const-class v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/model/Privacy$Key;
    .locals 1

    .line 29
    sget-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->$VALUES:[Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/model/Privacy$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/model/Privacy$Key;

    return-object v0
.end method

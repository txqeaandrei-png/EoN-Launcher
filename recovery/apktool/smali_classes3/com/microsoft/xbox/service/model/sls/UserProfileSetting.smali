.class public final enum Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum AccountTier:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum AppDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum AppDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Bio:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum GameDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum GameDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Gamerscore:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Gamertag:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Location:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum PreferredColor:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum RealName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum TenureLevel:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Watermarks:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum XboxOneRep:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;


# direct methods
.method private static synthetic $values()[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;
    .locals 14

    .line 9
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->RealName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    sget-object v2, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    sget-object v3, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    sget-object v4, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamerscore:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    sget-object v5, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamertag:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    sget-object v6, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    sget-object v7, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AccountTier:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    sget-object v8, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->TenureLevel:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    sget-object v9, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->XboxOneRep:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    sget-object v10, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->PreferredColor:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    sget-object v11, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Location:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    sget-object v12, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Bio:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    sget-object v13, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Watermarks:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    filled-new-array/range {v0 .. v13}, [Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "RealName"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->RealName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 11
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "GameDisplayName"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 12
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "AppDisplayName"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 13
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "AppDisplayPicRaw"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 14
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "Gamerscore"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamerscore:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 15
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "Gamertag"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamertag:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 16
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "GameDisplayPicRaw"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 17
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "AccountTier"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AccountTier:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 18
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "TenureLevel"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->TenureLevel:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 19
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "XboxOneRep"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->XboxOneRep:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 20
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "PreferredColor"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->PreferredColor:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 21
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "Location"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Location:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 22
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "Bio"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Bio:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 23
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "Watermarks"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Watermarks:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 9
    invoke-static {}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->$values()[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->$VALUES:[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;
    .locals 1

    .line 9
    const-class v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;
    .locals 1

    .line 9
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->$VALUES:[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    return-object v0
.end method

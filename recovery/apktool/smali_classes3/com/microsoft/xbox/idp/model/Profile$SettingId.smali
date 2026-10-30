.class public final enum Lcom/microsoft/xbox/idp/model/Profile$SettingId;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/model/Profile$SettingId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum AccountTier:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum AppDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum AppDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum Background:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum FirstName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum GameDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum GameDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum Gamerscore:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum Gamertag:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum LastName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum PreferredColor:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum PublicGamerpicType:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum RealName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum ShowUserAsAvatar:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum TenureLevel:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum TileTransparency:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum Watermarks:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum XboxOneRep:Lcom/microsoft/xbox/idp/model/Profile$SettingId;


# direct methods
.method private static synthetic $values()[Lcom/microsoft/xbox/idp/model/Profile$SettingId;
    .locals 18

    .line 30
    sget-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->AppDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->GameDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamertag:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v3, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->RealName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v4, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->FirstName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v5, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->LastName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v6, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->AppDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v7, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->GameDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v8, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->AccountTier:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v9, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->TenureLevel:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v10, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamerscore:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v11, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->PreferredColor:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v12, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Watermarks:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v13, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->XboxOneRep:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v14, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Background:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v15, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->PublicGamerpicType:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v16, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->ShowUserAsAvatar:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v17, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->TileTransparency:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    filled-new-array/range {v0 .. v17}, [Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "AppDisplayName"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->AppDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 32
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "GameDisplayName"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->GameDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 33
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "Gamertag"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamertag:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 34
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "RealName"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->RealName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 35
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "FirstName"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->FirstName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 36
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "LastName"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->LastName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 37
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "AppDisplayPicRaw"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->AppDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 38
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "GameDisplayPicRaw"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->GameDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 39
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "AccountTier"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->AccountTier:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 40
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "TenureLevel"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->TenureLevel:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 41
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "Gamerscore"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamerscore:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 42
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "PreferredColor"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->PreferredColor:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 43
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "Watermarks"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Watermarks:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 44
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "XboxOneRep"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->XboxOneRep:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 45
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "Background"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Background:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 46
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "PublicGamerpicType"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->PublicGamerpicType:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 47
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "ShowUserAsAvatar"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->ShowUserAsAvatar:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 48
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "TileTransparency"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->TileTransparency:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 30
    invoke-static {}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->$values()[Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->$VALUES:[Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/model/Profile$SettingId;
    .locals 1

    .line 30
    const-class v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/model/Profile$SettingId;
    .locals 1

    .line 30
    sget-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->$VALUES:[Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/model/Profile$SettingId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    return-object v0
.end method

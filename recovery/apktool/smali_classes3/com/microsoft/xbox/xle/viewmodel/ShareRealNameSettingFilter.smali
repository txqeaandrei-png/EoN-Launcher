.class public final enum Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

.field public static final enum Blocked:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

.field public static final enum Everyone:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

.field public static final enum FriendCategoryShareIdentity:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

.field public static final enum PeopleOnMyList:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;


# direct methods
.method private static synthetic $values()[Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;
    .locals 4

    .line 9
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->Blocked:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    sget-object v1, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->Everyone:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    sget-object v2, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->PeopleOnMyList:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    sget-object v3, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->FriendCategoryShareIdentity:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    filled-new-array {v0, v1, v2, v3}, [Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    const-string v1, "Blocked"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->Blocked:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    .line 11
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    const-string v1, "Everyone"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->Everyone:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    .line 12
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    const-string v1, "PeopleOnMyList"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->PeopleOnMyList:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    .line 13
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    const-string v1, "FriendCategoryShareIdentity"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->FriendCategoryShareIdentity:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    .line 9
    invoke-static {}, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->$values()[Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->$VALUES:[Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;
    .locals 1

    .line 9
    const-class v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;
    .locals 1

    .line 9
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->$VALUES:[Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    return-object v0
.end method

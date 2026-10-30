.class public final enum Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecommendationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum Dummy:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum Follower:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum FriendOfFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum PhoneContact:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum Unknown:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum VIP:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;


# direct methods
.method private static synthetic $values()[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    .locals 7

    .line 16
    sget-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Unknown:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    sget-object v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Dummy:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    sget-object v2, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Follower:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    sget-object v3, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    sget-object v4, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->PhoneContact:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    sget-object v5, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FriendOfFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    sget-object v6, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->VIP:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    filled-new-array/range {v0 .. v6}, [Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Unknown:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 18
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v1, "Dummy"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Dummy:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 19
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v1, "Follower"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Follower:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 20
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v1, "FacebookFriend"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 21
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v1, "PhoneContact"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->PhoneContact:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 22
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v1, "FriendOfFriend"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FriendOfFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 23
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v1, "VIP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->VIP:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 16
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->$values()[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->$VALUES:[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getRecommendationType(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    .locals 5

    .line 26
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->values()[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 27
    invoke-virtual {v3}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_1
    sget-object p0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Unknown:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    .locals 1

    .line 16
    const-class v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    .locals 1

    .line 16
    sget-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->$VALUES:[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    return-object v0
.end method

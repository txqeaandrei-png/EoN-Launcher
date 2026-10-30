.class public final enum Lcom/microsoft/xbox/service/model/FollowersData$DummyType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/FollowersData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DummyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/service/model/FollowersData$DummyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_ERROR:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_FRIENDS_HEADER:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_FRIENDS_WHO_PLAY:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_HEADER:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_LINK_TO_FACEBOOK:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_LOADING:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_NO_DATA:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_VIPS:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum NOT_SET:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;


# direct methods
.method private static synthetic $values()[Lcom/microsoft/xbox/service/model/FollowersData$DummyType;
    .locals 9

    .line 188
    sget-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->NOT_SET:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    sget-object v1, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_HEADER:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    sget-object v2, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_FRIENDS_HEADER:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    sget-object v3, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_LINK_TO_FACEBOOK:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    sget-object v4, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_FRIENDS_WHO_PLAY:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    sget-object v5, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_VIPS:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    sget-object v6, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_ERROR:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    sget-object v7, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_NO_DATA:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    sget-object v8, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_LOADING:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    filled-new-array/range {v0 .. v8}, [Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 189
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "NOT_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->NOT_SET:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 190
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_HEADER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_HEADER:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 191
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_FRIENDS_HEADER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_FRIENDS_HEADER:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 192
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_LINK_TO_FACEBOOK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_LINK_TO_FACEBOOK:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 193
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_FRIENDS_WHO_PLAY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_FRIENDS_WHO_PLAY:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 194
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_VIPS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_VIPS:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 195
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_ERROR:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 196
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_NO_DATA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_NO_DATA:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 197
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_LOADING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_LOADING:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 188
    invoke-static {}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->$values()[Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->$VALUES:[Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/FollowersData$DummyType;
    .locals 1

    .line 188
    const-class v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/FollowersData$DummyType;
    .locals 1

    .line 188
    sget-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->$VALUES:[Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    return-object v0
.end method

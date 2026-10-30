.class public final enum Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/ErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorScreen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

.field public static final enum BAN:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

.field public static final enum CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

.field public static final enum CREATION:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

.field public static final enum OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;


# instance fields
.field public final errorFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/idp/compat/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field public final leftButtonTextId:I

.field public final type:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;


# direct methods
.method private static synthetic $values()[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    .locals 4

    .line 85
    sget-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->BAN:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CREATION:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    sget-object v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    filled-new-array {v0, v1, v2, v3}, [Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 86
    new-instance v6, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    sget-object v3, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->BAN:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-class v4, Lcom/microsoft/xbox/idp/ui/BanErrorFragment;

    sget v5, Lcom/microsoft/xboxtcui/R$string;->xbid_more_info:I

    const-string v1, "BAN"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;-><init>(Ljava/lang/String;ILcom/microsoft/xbox/idp/interop/Interop$ErrorType;Ljava/lang/Class;I)V

    sput-object v6, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->BAN:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    .line 87
    new-instance v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    sget-object v10, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->CREATION:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-class v11, Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;

    sget v12, Lcom/microsoft/xboxtcui/R$string;->xbid_try_again:I

    const-string v8, "CREATION"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;-><init>(Ljava/lang/String;ILcom/microsoft/xbox/idp/interop/Interop$ErrorType;Ljava/lang/Class;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CREATION:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    .line 88
    new-instance v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    sget-object v4, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->OFFLINE:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-class v5, Lcom/microsoft/xbox/idp/ui/OfflineErrorFragment;

    sget v6, Lcom/microsoft/xboxtcui/R$string;->xbid_try_again:I

    const-string v2, "OFFLINE"

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;-><init>(Ljava/lang/String;ILcom/microsoft/xbox/idp/interop/Interop$ErrorType;Ljava/lang/Class;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    .line 89
    new-instance v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    sget-object v10, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->CATCHALL:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-class v11, Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;

    sget v12, Lcom/microsoft/xboxtcui/R$string;->xbid_try_again:I

    const-string v8, "CATCHALL"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;-><init>(Ljava/lang/String;ILcom/microsoft/xbox/idp/interop/Interop$ErrorType;Ljava/lang/Class;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    .line 85
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->$values()[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->$VALUES:[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/microsoft/xbox/idp/interop/Interop$ErrorType;Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/idp/compat/BaseFragment;",
            ">;I)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput-object p3, p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->type:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    .line 97
    iput-object p4, p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->errorFragmentClass:Ljava/lang/Class;

    .line 98
    iput p5, p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->leftButtonTextId:I

    return-void
.end method

.method public static fromId(I)Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    .locals 5

    .line 102
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->values()[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 103
    iget-object v4, v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->type:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    invoke-virtual {v4}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    .locals 1

    .line 85
    const-class v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    .locals 1

    .line 85
    sget-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->$VALUES:[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    return-object v0
.end method

.class public final enum Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

.field public static final enum Always:Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

.field public static final enum OnlyRemote:Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

.field public static final enum UseDeviceSettings:Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;


# direct methods
.method private static synthetic $values()[Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;
    .locals 3

    .line 9
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->Always:Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    sget-object v1, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->OnlyRemote:Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    sget-object v2, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->UseDeviceSettings:Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    filled-new-array {v0, v1, v2}, [Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    const-string v1, "Always"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->Always:Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    .line 11
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    const-string v1, "OnlyRemote"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->OnlyRemote:Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    .line 12
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    const-string v1, "UseDeviceSettings"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->UseDeviceSettings:Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    .line 9
    invoke-static {}, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->$values()[Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->$VALUES:[Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;
    .locals 1

    .line 9
    const-class v0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;
    .locals 1

    .line 9
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->$VALUES:[Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    return-object v0
.end method

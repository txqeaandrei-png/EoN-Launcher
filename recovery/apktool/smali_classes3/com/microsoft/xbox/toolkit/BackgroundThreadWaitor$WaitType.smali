.class public final enum Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WaitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

.field public static final enum ApplicationBar:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

.field public static final enum ListLayout:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

.field public static final enum ListScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

.field public static final enum Navigation:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

.field public static final enum PivotScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;


# direct methods
.method private static synthetic $values()[Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
    .locals 5

    .line 113
    sget-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->Navigation:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    sget-object v1, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ApplicationBar:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    sget-object v2, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ListScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    sget-object v3, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ListLayout:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    sget-object v4, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->PivotScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 114
    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const-string v1, "Navigation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->Navigation:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    .line 115
    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const-string v1, "ApplicationBar"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ApplicationBar:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    .line 116
    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const-string v1, "ListScroll"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ListScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    .line 117
    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const-string v1, "ListLayout"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ListLayout:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    .line 118
    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const-string v1, "PivotScroll"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->PivotScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    .line 113
    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->$values()[Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->$VALUES:[Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
    .locals 1

    .line 113
    const-class v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
    .locals 1

    .line 113
    sget-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->$VALUES:[Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    return-object v0
.end method

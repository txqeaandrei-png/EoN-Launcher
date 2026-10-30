.class public final enum Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum Alpha:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum Height:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum None:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum PositionX:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum PositionY:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum Scale:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;


# direct methods
.method private static synthetic $values()[Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;
    .locals 6

    .line 9
    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->None:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Alpha:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    sget-object v2, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Scale:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    sget-object v3, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->PositionX:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    sget-object v4, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->PositionY:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    sget-object v5, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Height:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    filled-new-array/range {v0 .. v5}, [Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->None:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    .line 11
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v1, "Alpha"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Alpha:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    .line 12
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v1, "Scale"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Scale:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    .line 13
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v1, "PositionX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->PositionX:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    .line 14
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v1, "PositionY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->PositionY:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    .line 15
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v1, "Height"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Height:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    .line 9
    invoke-static {}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->$values()[Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->$VALUES:[Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;
    .locals 1

    .line 9
    const-class v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;
    .locals 1

    .line 9
    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->$VALUES:[Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    return-object v0
.end method

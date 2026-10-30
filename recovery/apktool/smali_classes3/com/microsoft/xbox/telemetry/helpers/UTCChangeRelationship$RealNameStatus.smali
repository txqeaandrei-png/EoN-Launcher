.class public final enum Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RealNameStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public static final enum EXISTINGNOTSHARED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public static final enum EXISTINGSHARED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public static final enum SHARINGOFF:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public static final enum SHARINGON:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public static final enum UNKNOWN:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;
    .locals 5

    .line 127
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->UNKNOWN:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGON:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    sget-object v2, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGOFF:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    sget-object v3, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->EXISTINGSHARED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    sget-object v4, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->EXISTINGNOTSHARED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 128
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->UNKNOWN:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 129
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const-string v1, "SHARINGON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGON:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 130
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const-string v1, "SHARINGOFF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGOFF:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 131
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const-string v1, "EXISTINGSHARED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->EXISTINGSHARED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 132
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const-string v1, "EXISTINGNOTSHARED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->EXISTINGNOTSHARED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 127
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->$values()[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->$VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 137
    iput p3, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;
    .locals 1

    .line 127
    const-class v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;
    .locals 1

    .line 127
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->$VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->value:I

    return v0
.end method

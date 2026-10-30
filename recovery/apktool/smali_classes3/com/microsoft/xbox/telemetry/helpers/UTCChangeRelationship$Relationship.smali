.class public final enum Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Relationship"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

.field public static final enum ADDFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

.field public static final enum EXISTINGFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

.field public static final enum NOTCHANGED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

.field public static final enum REMOVEFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

.field public static final enum UNKNOWN:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;
    .locals 5

    .line 90
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->UNKNOWN:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->ADDFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    sget-object v2, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->REMOVEFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    sget-object v3, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->EXISTINGFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    sget-object v4, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->NOTCHANGED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 91
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->UNKNOWN:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    .line 92
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    const-string v1, "ADDFRIEND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->ADDFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    .line 93
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    const-string v1, "REMOVEFRIEND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->REMOVEFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    .line 94
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    const-string v1, "EXISTINGFRIEND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->EXISTINGFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    .line 95
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    const-string v1, "NOTCHANGED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->NOTCHANGED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    .line 90
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->$values()[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->$VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;
    .locals 1

    .line 90
    const-class v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;
    .locals 1

    .line 90
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->$VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->value:I

    return v0
.end method

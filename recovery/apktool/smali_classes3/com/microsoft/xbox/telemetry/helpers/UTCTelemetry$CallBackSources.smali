.class public final enum Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallBackSources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

.field public static final enum Account:Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

.field public static final enum Ticket:Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;


# direct methods
.method private static synthetic $values()[Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;
    .locals 2

    .line 39
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;->Account:Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;->Ticket:Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    filled-new-array {v0, v1}, [Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    const-string v1, "Account"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;->Account:Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    .line 41
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    const-string v1, "Ticket"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;->Ticket:Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    .line 39
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;->$values()[Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;->$VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;
    .locals 1

    .line 39
    const-class v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;
    .locals 1

    .line 39
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;->$VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    return-object v0
.end method

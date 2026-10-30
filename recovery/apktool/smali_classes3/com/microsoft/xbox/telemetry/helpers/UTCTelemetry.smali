.class public Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;
    }
.end annotation


# static fields
.field public static final UNKNOWNPAGE:Ljava/lang/String; = "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogEvent(Lcom/microsoft/xbox/telemetry/utc/CommonData;)V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/microsoft/xbox/telemetry/utc/CommonData;->ToJson()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry;->WriteEvent(Ljava/lang/String;)V

    return-void
.end method

.method private static native WriteEvent(Ljava/lang/String;)V
.end method

.method public static getErrorScreen(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$1;->$SwitchMap$com$microsoft$xbox$idp$ui$ErrorActivity$ErrorScreen:[I

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 35
    const-string p0, "Unknown"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%sErrorScreen"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 33
    :cond_0
    const-string p0, "Offline error view"

    return-object p0

    .line 31
    :cond_1
    const-string p0, "Create error view"

    return-object p0

    .line 29
    :cond_2
    const-string p0, "Generic error view"

    return-object p0

    .line 27
    :cond_3
    const-string p0, "Banned error view"

    return-object p0
.end method

.class public final synthetic Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda5;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/String;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$$ExternalSyntheticLambda5;->f$1:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->lambda$trackUserSettingsLink$3(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

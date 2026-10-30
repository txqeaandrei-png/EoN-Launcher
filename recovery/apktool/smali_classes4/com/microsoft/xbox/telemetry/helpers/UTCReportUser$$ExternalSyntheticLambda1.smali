.class public final synthetic Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser$$ExternalSyntheticLambda1;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser$$ExternalSyntheticLambda1;->f$2:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser;->lambda$trackReportDialogOK$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

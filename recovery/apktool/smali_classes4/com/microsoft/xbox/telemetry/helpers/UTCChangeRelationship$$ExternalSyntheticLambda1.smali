.class public final synthetic Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/CharSequence;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/CharSequence;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda1;->f$2:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda1;->f$2:Ljava/lang/CharSequence;

    iget-boolean v3, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda1;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->lambda$trackChangeRelationshipAction$1(Ljava/lang/String;ZLjava/lang/CharSequence;Z)V

    return-void
.end method

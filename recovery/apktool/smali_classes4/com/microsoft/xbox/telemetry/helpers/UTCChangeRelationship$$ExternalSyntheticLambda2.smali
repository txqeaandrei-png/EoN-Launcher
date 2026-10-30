.class public final synthetic Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# instance fields
.field public final synthetic f$0:Ljava/lang/CharSequence;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda2;->f$0:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda2;->f$0:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->lambda$trackChangeRelationshipView$0(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.class public final synthetic Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

.field public final synthetic f$2:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

.field public final synthetic f$3:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public final synthetic f$4:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

.field public final synthetic f$5:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda3;->f$1:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    iput-object p3, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda3;->f$2:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    iput-object p4, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda3;->f$3:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    iput-object p5, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda3;->f$4:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    iput-object p6, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda3;->f$5:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda3;->f$1:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    iget-object v2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda3;->f$2:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    iget-object v3, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda3;->f$3:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    iget-object v4, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda3;->f$4:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    iget-object v5, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$$ExternalSyntheticLambda3;->f$5:Ljava/lang/CharSequence;

    invoke-static/range {v0 .. v5}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->lambda$trackChangeRelationshipDone$3(Ljava/lang/String;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;Ljava/lang/CharSequence;)V

    return-void
.end method

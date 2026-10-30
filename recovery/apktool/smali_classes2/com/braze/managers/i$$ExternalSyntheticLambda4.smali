.class public final synthetic Lcom/braze/managers/i$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/braze/enums/GeofenceTransitionType;


# direct methods
.method public synthetic constructor <init>(JILjava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda4;->f$0:J

    iput p3, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda4;->f$1:I

    iput-object p4, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput-object p5, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda4;->f$3:Lcom/braze/enums/GeofenceTransitionType;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 0
    iget-wide v0, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda4;->f$0:J

    iget v2, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda4;->f$1:I

    iget-object v3, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget-object v4, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda4;->f$3:Lcom/braze/enums/GeofenceTransitionType;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/braze/managers/i;->a(JILjava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

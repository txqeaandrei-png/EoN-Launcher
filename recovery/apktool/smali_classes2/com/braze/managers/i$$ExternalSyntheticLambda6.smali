.class public final synthetic Lcom/braze/managers/i$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/braze/enums/GeofenceTransitionType;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda6;->f$1:Lcom/braze/enums/GeofenceTransitionType;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda6;->f$1:Lcom/braze/enums/GeofenceTransitionType;

    invoke-static {v0, v1}, Lcom/braze/managers/i;->a(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

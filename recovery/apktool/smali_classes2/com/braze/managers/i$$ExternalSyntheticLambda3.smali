.class public final synthetic Lcom/braze/managers/i$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lcom/braze/managers/i;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLcom/braze/managers/i;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda3;->f$0:J

    iput-object p3, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda3;->f$1:Lcom/braze/managers/i;

    iput-object p4, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-wide v0, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda3;->f$0:J

    iget-object v2, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda3;->f$1:Lcom/braze/managers/i;

    iget-object v3, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/braze/managers/i;->a(JLcom/braze/managers/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

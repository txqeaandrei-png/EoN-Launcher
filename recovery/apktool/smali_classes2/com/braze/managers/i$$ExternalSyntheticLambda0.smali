.class public final synthetic Lcom/braze/managers/i$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/braze/managers/i;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/managers/i;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda0;->f$0:Lcom/braze/managers/i;

    iput-object p2, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda0;->f$0:Lcom/braze/managers/i;

    iget-object v1, p0, Lcom/braze/managers/i$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/braze/managers/i;->a(Lcom/braze/managers/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

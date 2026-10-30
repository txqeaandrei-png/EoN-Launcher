.class public final synthetic Lcom/braze/Braze$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/Braze$$ExternalSyntheticLambda15;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/braze/Braze$$ExternalSyntheticLambda15;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/Braze$$ExternalSyntheticLambda15;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/braze/Braze$$ExternalSyntheticLambda15;->f$1:Z

    invoke-static {v0, v1}, Lcom/braze/Braze;->$r8$lambda$LBeAZqqA4bF-2ROxRkAvZcS9Q9I(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

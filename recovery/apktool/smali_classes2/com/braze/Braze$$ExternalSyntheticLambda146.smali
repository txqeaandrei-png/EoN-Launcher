.class public final synthetic Lcom/braze/Braze$$ExternalSyntheticLambda146;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Lcom/braze/Braze;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Lcom/braze/Braze;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/Braze$$ExternalSyntheticLambda146;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Lcom/braze/Braze$$ExternalSyntheticLambda146;->f$1:Lcom/braze/Braze;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/Braze$$ExternalSyntheticLambda146;->f$0:Landroid/content/Intent;

    iget-object v1, p0, Lcom/braze/Braze$$ExternalSyntheticLambda146;->f$1:Lcom/braze/Braze;

    invoke-static {v0, v1}, Lcom/braze/Braze;->$r8$lambda$DnjMrv5llpjqkx_0jQHmC01pp3c(Landroid/content/Intent;Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

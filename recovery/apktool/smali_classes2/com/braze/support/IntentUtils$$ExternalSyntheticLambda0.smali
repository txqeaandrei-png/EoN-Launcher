.class public final synthetic Lcom/braze/support/IntentUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/support/IntentUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/braze/support/IntentUtils$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/support/IntentUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/braze/support/IntentUtils$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/braze/support/IntentUtils;->$r8$lambda$5r7PhicoUK04HquEp7kBl0jxkR4(Landroid/content/ComponentName;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

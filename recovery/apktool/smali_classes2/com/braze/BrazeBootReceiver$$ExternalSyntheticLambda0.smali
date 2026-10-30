.class public final synthetic Lcom/braze/BrazeBootReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/BrazeBootReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/BrazeBootReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    invoke-static {v0}, Lcom/braze/BrazeBootReceiver;->$r8$lambda$bdldJQJZuyWL9zb_lMC8Pm4C2q8(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

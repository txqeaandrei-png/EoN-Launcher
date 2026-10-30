.class public final synthetic Lcom/braze/ui/actions/brazeactions/BrazeActionParser$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/braze/enums/Channel;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/enums/Channel;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$$ExternalSyntheticLambda5;->f$0:Lcom/braze/enums/Channel;

    iput-object p2, p0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$$ExternalSyntheticLambda5;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$$ExternalSyntheticLambda5;->f$0:Lcom/braze/enums/Channel;

    iget-object v1, p0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$$ExternalSyntheticLambda5;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser;->$r8$lambda$zCgP5h6gmY_4iWu5QdFkjTpdf20(Lcom/braze/enums/Channel;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

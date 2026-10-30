.class public final synthetic Lcom/braze/ui/actions/UriAction$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/actions/UriAction$$ExternalSyntheticLambda3;->f$0:Landroid/net/Uri;

    iput-object p2, p0, Lcom/braze/ui/actions/UriAction$$ExternalSyntheticLambda3;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/ui/actions/UriAction$$ExternalSyntheticLambda3;->f$0:Landroid/net/Uri;

    iget-object v1, p0, Lcom/braze/ui/actions/UriAction$$ExternalSyntheticLambda3;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/braze/ui/actions/UriAction;->$r8$lambda$UFDNrOQ8nHY4g7fsG7lLs73Cv9g(Landroid/net/Uri;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

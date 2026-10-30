.class public final synthetic Lcom/braze/ui/actions/UriAction$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/actions/UriAction$$ExternalSyntheticLambda7;->f$0:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/ui/actions/UriAction$$ExternalSyntheticLambda7;->f$0:Landroid/net/Uri;

    invoke-static {v0}, Lcom/braze/ui/actions/UriAction;->$r8$lambda$Zqy_2k_akxf59iGs_IAjBS5TUV8(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

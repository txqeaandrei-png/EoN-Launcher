.class public final synthetic Lcom/braze/triggers/managers/b$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/triggers/managers/b$$ExternalSyntheticLambda7;->f$0:Landroid/net/Uri;

    iput-object p2, p0, Lcom/braze/triggers/managers/b$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/triggers/managers/b$$ExternalSyntheticLambda7;->f$0:Landroid/net/Uri;

    iget-object v1, p0, Lcom/braze/triggers/managers/b$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/braze/triggers/managers/b;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final synthetic Lcom/braze/images/DefaultBrazeImageLoader$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/util/Map$Entry;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/images/DefaultBrazeImageLoader$$ExternalSyntheticLambda15;->f$0:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/braze/images/DefaultBrazeImageLoader$$ExternalSyntheticLambda15;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/images/DefaultBrazeImageLoader$$ExternalSyntheticLambda15;->f$0:Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/braze/images/DefaultBrazeImageLoader$$ExternalSyntheticLambda15;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/braze/images/DefaultBrazeImageLoader;->$r8$lambda$D6M_kWXwdHilBSqS5tpe6L8ODaM(Ljava/util/Map$Entry;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

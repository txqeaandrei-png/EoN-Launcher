.class public final synthetic Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;

.field public final synthetic f$1:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda20;->f$0:Landroid/net/Uri;

    iput-object p2, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda20;->f$1:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda20;->f$0:Landroid/net/Uri;

    iget-object v1, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda20;->f$1:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1}, Lcom/braze/support/BrazeImageUtils;->$r8$lambda$3bfGcT2p4ZGM4gZpwFH5Opw7yKU(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

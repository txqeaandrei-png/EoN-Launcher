.class public final synthetic Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/net/URL;

.field public final synthetic f$1:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public synthetic constructor <init>(Ljava/net/URL;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda12;->f$0:Ljava/net/URL;

    iput-object p2, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda12;->f$1:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda12;->f$0:Ljava/net/URL;

    iget-object v1, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda12;->f$1:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1}, Lcom/braze/support/BrazeImageUtils;->$r8$lambda$fefx1M5td0MgMjwnCv2qwTPJSD0(Ljava/net/URL;Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

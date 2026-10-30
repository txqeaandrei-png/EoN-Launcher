.class public final synthetic Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/graphics/BitmapFactory$Options;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/BitmapFactory$Options;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/BitmapFactory$Options;

    iput p2, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/BitmapFactory$Options;

    iget v1, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/braze/support/BrazeImageUtils;->$r8$lambda$adXwcHy22F4wWpQh09YTmMFIxyE(Landroid/graphics/BitmapFactory$Options;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

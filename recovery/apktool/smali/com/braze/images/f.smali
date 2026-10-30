.class public final Lcom/braze/images/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lcom/braze/enums/BrazeViewBounds;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/braze/enums/BrazeViewBounds;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/braze/images/f;->a:Lcom/braze/enums/BrazeViewBounds;

    iput-object p2, p0, Lcom/braze/images/f;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/braze/images/f;->c:Landroid/graphics/Bitmap;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/braze/support/BrazeImageUtils;->resizeImageViewToBitmapDimensions(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "v"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/braze/images/f;->a:Lcom/braze/enums/BrazeViewBounds;

    sget-object p3, Lcom/braze/enums/BrazeViewBounds;->BASE_CARD_VIEW:Lcom/braze/enums/BrazeViewBounds;

    if-ne p2, p3, :cond_0

    .line 2
    iget-object p2, p0, Lcom/braze/images/f;->b:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/braze/images/f;->c:Landroid/graphics/Bitmap;

    new-instance p4, Lcom/braze/images/f$$ExternalSyntheticLambda0;

    invoke-direct {p4, p3, p2}, Lcom/braze/images/f$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

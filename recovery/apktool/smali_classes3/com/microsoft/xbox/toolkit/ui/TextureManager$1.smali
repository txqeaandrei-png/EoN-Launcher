.class Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setXLEImageView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

.field final synthetic val$alpha:F

.field final synthetic val$xLEBitmap:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

.field final synthetic val$xLEImageView:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;F)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$xLEImageView:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$xLEBitmap:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    iput p4, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$alpha:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 328
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$xLEImageView:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->setFinal(Z)V

    .line 329
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$xLEImageView:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$xLEBitmap:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    invoke-virtual {p1, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setImage(Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    .line 330
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$xLEImageView:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$alpha:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.class public final synthetic Lcom/braze/images/f$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;

.field public final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/images/f$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/braze/images/f$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/images/f$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/braze/images/f$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/braze/images/f;->a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method

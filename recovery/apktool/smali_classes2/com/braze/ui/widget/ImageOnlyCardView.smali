.class public Lcom/braze/ui/widget/ImageOnlyCardView;
.super Lcom/braze/ui/feed/view/BaseFeedCardView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/braze/ui/feed/view/BaseFeedCardView<",
        "Lcom/braze/models/cards/ImageOnlyCard;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAspectRatio:F

.field private mCardAction:Lcom/braze/ui/actions/IAction;

.field private final mImage:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/braze/ui/widget/ImageOnlyCardView;

    invoke-static {v0}, Lcom/braze/support/BrazeLogger;->getBrazeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/braze/ui/widget/ImageOnlyCardView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/braze/ui/widget/ImageOnlyCardView;-><init>(Landroid/content/Context;Lcom/braze/models/cards/ImageOnlyCard;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/braze/models/cards/ImageOnlyCard;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/braze/ui/feed/view/BaseFeedCardView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x40c00000    # 6.0f

    .line 19
    iput p1, p0, Lcom/braze/ui/widget/ImageOnlyCardView;->mAspectRatio:F

    .line 27
    sget p1, Lcom/braze/ui/R$id;->com_braze_image_only_card_imageview_stub:I

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/ImageOnlyCardView;->getProperViewFromInflatedStub(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/braze/ui/widget/ImageOnlyCardView;->mImage:Landroid/widget/ImageView;

    .line 28
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p0, p2}, Lcom/braze/ui/widget/ImageOnlyCardView;->setCard(Lcom/braze/models/cards/Card;)V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/braze/ui/widget/ImageOnlyCardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/braze/ui/R$drawable;->com_braze_card_background:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/ImageOnlyCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResource()I
    .locals 1

    .line 40
    sget v0, Lcom/braze/ui/R$layout;->com_braze_image_only_card:I

    return v0
.end method

.method synthetic lambda$onSetCard$0$com-braze-ui-widget-ImageOnlyCardView(Lcom/braze/models/cards/ImageOnlyCard;Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object p2, p0, Lcom/braze/ui/widget/ImageOnlyCardView;->applicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/braze/ui/widget/ImageOnlyCardView;->mCardAction:Lcom/braze/ui/actions/IAction;

    invoke-virtual {p0, p2, p1, v0}, Lcom/braze/ui/widget/ImageOnlyCardView;->handleCardClick(Landroid/content/Context;Lcom/braze/models/cards/Card;Lcom/braze/ui/actions/IAction;)V

    return-void
.end method

.method public bridge synthetic onSetCard(Lcom/braze/models/cards/Card;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/braze/models/cards/ImageOnlyCard;

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/ImageOnlyCardView;->onSetCard(Lcom/braze/models/cards/ImageOnlyCard;)V

    return-void
.end method

.method public onSetCard(Lcom/braze/models/cards/ImageOnlyCard;)V
    .locals 3

    .line 45
    invoke-virtual {p1}, Lcom/braze/models/cards/ImageOnlyCard;->getAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/braze/models/cards/ImageOnlyCard;->getAspectRatio()F

    move-result v0

    iput v0, p0, Lcom/braze/ui/widget/ImageOnlyCardView;->mAspectRatio:F

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/braze/ui/widget/ImageOnlyCardView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/braze/models/cards/ImageOnlyCard;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/braze/ui/widget/ImageOnlyCardView;->mAspectRatio:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/braze/ui/widget/ImageOnlyCardView;->setImageViewToUrl(Landroid/widget/ImageView;Ljava/lang/String;FLcom/braze/models/cards/Card;)V

    .line 50
    invoke-static {p1}, Lcom/braze/ui/widget/ImageOnlyCardView;->getUriActionForCard(Lcom/braze/models/cards/Card;)Lcom/braze/ui/actions/UriAction;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/ui/widget/ImageOnlyCardView;->mCardAction:Lcom/braze/ui/actions/IAction;

    .line 51
    new-instance v0, Lcom/braze/ui/widget/ImageOnlyCardView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/braze/ui/widget/ImageOnlyCardView$$ExternalSyntheticLambda0;-><init>(Lcom/braze/ui/widget/ImageOnlyCardView;Lcom/braze/models/cards/ImageOnlyCard;)V

    invoke-virtual {p0, v0}, Lcom/braze/ui/widget/ImageOnlyCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.class public Lcom/braze/ui/contentcards/view/ImageOnlyContentCardView;
.super Lcom/braze/ui/contentcards/view/BaseContentCardView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/contentcards/view/ImageOnlyContentCardView$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/braze/ui/contentcards/view/BaseContentCardView<",
        "Lcom/braze/models/cards/ImageOnlyCard;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/braze/ui/contentcards/view/ImageOnlyContentCardView;",
        "Lcom/braze/ui/contentcards/view/BaseContentCardView;",
        "Lcom/braze/models/cards/ImageOnlyCard;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "createViewHolder",
        "Lcom/braze/ui/contentcards/view/ContentCardViewHolder;",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "bindViewHolder",
        "",
        "viewHolder",
        "card",
        "Lcom/braze/models/cards/Card;",
        "ViewHolder",
        "android-sdk-ui_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/braze/ui/contentcards/view/BaseContentCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindViewHolder(Lcom/braze/ui/contentcards/view/ContentCardViewHolder;Lcom/braze/models/cards/Card;)V
    .locals 2

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    instance-of v0, p2, Lcom/braze/models/cards/ImageOnlyCard;

    if-eqz v0, :cond_0

    .line 29
    invoke-super {p0, p1, p2}, Lcom/braze/ui/contentcards/view/BaseContentCardView;->bindViewHolder(Lcom/braze/ui/contentcards/view/ContentCardViewHolder;Lcom/braze/models/cards/Card;)V

    .line 30
    check-cast p1, Lcom/braze/ui/contentcards/view/ImageOnlyContentCardView$ViewHolder;

    .line 32
    invoke-virtual {p1}, Lcom/braze/ui/contentcards/view/ImageOnlyContentCardView$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    .line 33
    move-object v0, p2

    check-cast v0, Lcom/braze/models/cards/ImageOnlyCard;

    invoke-virtual {v0}, Lcom/braze/models/cards/ImageOnlyCard;->getAspectRatio()F

    move-result v1

    .line 34
    invoke-virtual {v0}, Lcom/braze/models/cards/ImageOnlyCard;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/braze/ui/contentcards/view/ImageOnlyContentCardView;->setOptionalCardImage(Landroid/widget/ImageView;FLjava/lang/String;Lcom/braze/models/cards/Card;)V

    :cond_0
    return-void
.end method

.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/braze/ui/contentcards/view/ContentCardViewHolder;
    .locals 3

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 22
    sget v1, Lcom/braze/ui/R$layout;->com_braze_image_only_content_card:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/braze/ui/contentcards/view/ImageOnlyContentCardView;->setViewBackground(Landroid/view/View;)V

    .line 24
    new-instance v0, Lcom/braze/ui/contentcards/view/ImageOnlyContentCardView$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/braze/ui/contentcards/view/ImageOnlyContentCardView$ViewHolder;-><init>(Lcom/braze/ui/contentcards/view/ImageOnlyContentCardView;Landroid/view/View;)V

    check-cast v0, Lcom/braze/ui/contentcards/view/ContentCardViewHolder;

    return-object v0
.end method

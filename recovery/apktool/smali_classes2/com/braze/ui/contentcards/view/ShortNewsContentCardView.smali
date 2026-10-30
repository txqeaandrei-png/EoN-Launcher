.class public Lcom/braze/ui/contentcards/view/ShortNewsContentCardView;
.super Lcom/braze/ui/contentcards/view/BaseContentCardView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/contentcards/view/ShortNewsContentCardView$Companion;,
        Lcom/braze/ui/contentcards/view/ShortNewsContentCardView$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/braze/ui/contentcards/view/BaseContentCardView<",
        "Lcom/braze/models/cards/ShortNewsCard;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShortNewsContentCardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortNewsContentCardView.kt\ncom/braze/ui/contentcards/view/ShortNewsContentCardView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,55:1\n1#2:56\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/braze/ui/contentcards/view/ShortNewsContentCardView;",
        "Lcom/braze/ui/contentcards/view/BaseContentCardView;",
        "Lcom/braze/models/cards/ShortNewsCard;",
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
        "Companion",
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


# static fields
.field private static final ASPECT_RATIO:F = 1.0f

.field public static final Companion:Lcom/braze/ui/contentcards/view/ShortNewsContentCardView$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView;->Companion:Lcom/braze/ui/contentcards/view/ShortNewsContentCardView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/braze/ui/contentcards/view/BaseContentCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindViewHolder(Lcom/braze/ui/contentcards/view/ContentCardViewHolder;Lcom/braze/models/cards/Card;)V
    .locals 5

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p2, Lcom/braze/models/cards/ShortNewsCard;

    if-eqz v0, :cond_5

    .line 32
    invoke-super {p0, p1, p2}, Lcom/braze/ui/contentcards/view/BaseContentCardView;->bindViewHolder(Lcom/braze/ui/contentcards/view/ContentCardViewHolder;Lcom/braze/models/cards/Card;)V

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView$ViewHolder;

    .line 34
    invoke-virtual {v0}, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/braze/models/cards/ShortNewsCard;

    invoke-virtual {v2}, Lcom/braze/models/cards/ShortNewsCard;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView;->setOptionalTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView$ViewHolder;->getDescription()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p2

    check-cast v2, Lcom/braze/models/cards/ShortNewsCard;

    invoke-virtual {v2}, Lcom/braze/models/cards/ShortNewsCard;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView;->setOptionalTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 36
    :cond_1
    move-object v1, p2

    check-cast v1, Lcom/braze/models/cards/ShortNewsCard;

    invoke-virtual {v1}, Lcom/braze/models/cards/ShortNewsCard;->getDomain()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/braze/models/cards/ShortNewsCard;->getDomain()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/braze/models/cards/ShortNewsCard;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_4

    .line 37
    invoke-virtual {v0, v2}, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView$ViewHolder;->setActionHintText(Ljava/lang/String;)V

    .line 40
    :cond_4
    invoke-virtual {v0}, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 42
    invoke-virtual {v1}, Lcom/braze/models/cards/ShortNewsCard;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual {p0, v2, v3, v4, p2}, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView;->setOptionalCardImage(Landroid/widget/ImageView;FLjava/lang/String;Lcom/braze/models/cards/Card;)V

    .line 45
    invoke-virtual {v0}, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView;->safeSetClipToOutline(Landroid/widget/ImageView;)V

    .line 46
    iget-object p1, p1, Lcom/braze/ui/contentcards/view/ContentCardViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/braze/models/cards/ShortNewsCard;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " . "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v1}, Lcom/braze/models/cards/ShortNewsCard;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/braze/ui/contentcards/view/ContentCardViewHolder;
    .locals 3

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 25
    sget v1, Lcom/braze/ui/R$layout;->com_braze_short_news_content_card:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView;->setViewBackground(Landroid/view/View;)V

    .line 27
    new-instance v0, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView$ViewHolder;-><init>(Lcom/braze/ui/contentcards/view/ShortNewsContentCardView;Landroid/view/View;)V

    check-cast v0, Lcom/braze/ui/contentcards/view/ContentCardViewHolder;

    return-object v0
.end method

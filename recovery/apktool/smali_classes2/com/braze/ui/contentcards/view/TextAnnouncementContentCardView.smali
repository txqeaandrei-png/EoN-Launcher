.class public Lcom/braze/ui/contentcards/view/TextAnnouncementContentCardView;
.super Lcom/braze/ui/contentcards/view/BaseContentCardView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/contentcards/view/TextAnnouncementContentCardView$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/braze/ui/contentcards/view/BaseContentCardView<",
        "Lcom/braze/models/cards/TextAnnouncementCard;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextAnnouncementContentCardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextAnnouncementContentCardView.kt\ncom/braze/ui/contentcards/view/TextAnnouncementContentCardView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,46:1\n1#2:47\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/braze/ui/contentcards/view/TextAnnouncementContentCardView;",
        "Lcom/braze/ui/contentcards/view/BaseContentCardView;",
        "Lcom/braze/models/cards/TextAnnouncementCard;",
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

    .line 13
    invoke-direct {p0, p1}, Lcom/braze/ui/contentcards/view/BaseContentCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindViewHolder(Lcom/braze/ui/contentcards/view/ContentCardViewHolder;Lcom/braze/models/cards/Card;)V
    .locals 3

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    instance-of v0, p2, Lcom/braze/models/cards/TextAnnouncementCard;

    if-eqz v0, :cond_5

    .line 31
    invoke-super {p0, p1, p2}, Lcom/braze/ui/contentcards/view/BaseContentCardView;->bindViewHolder(Lcom/braze/ui/contentcards/view/ContentCardViewHolder;Lcom/braze/models/cards/Card;)V

    .line 32
    move-object v0, p1

    check-cast v0, Lcom/braze/ui/contentcards/view/TextAnnouncementContentCardView$ViewHolder;

    .line 33
    invoke-virtual {v0}, Lcom/braze/ui/contentcards/view/TextAnnouncementContentCardView$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/braze/models/cards/TextAnnouncementCard;

    invoke-virtual {v2}, Lcom/braze/models/cards/TextAnnouncementCard;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/braze/ui/contentcards/view/TextAnnouncementContentCardView;->setOptionalTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-virtual {v0}, Lcom/braze/ui/contentcards/view/TextAnnouncementContentCardView$ViewHolder;->getDescription()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 37
    move-object v2, p2

    check-cast v2, Lcom/braze/models/cards/TextAnnouncementCard;

    invoke-virtual {v2}, Lcom/braze/models/cards/TextAnnouncementCard;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p0, v1, v2}, Lcom/braze/ui/contentcards/view/TextAnnouncementContentCardView;->setOptionalTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 40
    :cond_1
    check-cast p2, Lcom/braze/models/cards/TextAnnouncementCard;

    invoke-virtual {p2}, Lcom/braze/models/cards/TextAnnouncementCard;->getDomain()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/braze/models/cards/TextAnnouncementCard;->getDomain()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/braze/models/cards/TextAnnouncementCard;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    .line 41
    invoke-virtual {v0, v1}, Lcom/braze/ui/contentcards/view/TextAnnouncementContentCardView$ViewHolder;->setActionHintText(Ljava/lang/String;)V

    .line 42
    :cond_4
    iget-object p1, p1, Lcom/braze/ui/contentcards/view/ContentCardViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/braze/models/cards/TextAnnouncementCard;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " . "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/braze/models/cards/TextAnnouncementCard;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 24
    sget v1, Lcom/braze/ui/R$layout;->com_braze_text_announcement_content_card:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/braze/ui/contentcards/view/TextAnnouncementContentCardView;->setViewBackground(Landroid/view/View;)V

    .line 26
    new-instance v0, Lcom/braze/ui/contentcards/view/TextAnnouncementContentCardView$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/braze/ui/contentcards/view/TextAnnouncementContentCardView$ViewHolder;-><init>(Lcom/braze/ui/contentcards/view/TextAnnouncementContentCardView;Landroid/view/View;)V

    check-cast v0, Lcom/braze/ui/contentcards/view/ContentCardViewHolder;

    return-object v0
.end method

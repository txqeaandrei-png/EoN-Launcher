.class public final Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/models/push/BrazeNotificationPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PushStoryPage"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u001d\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010)\u001a\u00020\rH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000f\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\t\"\u0004\u0008\u0016\u0010\u000bR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000f\"\u0004\u0008\u0019\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\t\"\u0004\u0008\u001c\u0010\u000bR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u000f\"\u0004\u0008\u001f\u0010\u0013R\u001c\u0010 \u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u000f\"\u0004\u0008\"\u0010\u0013R\u001c\u0010#\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u000f\"\u0004\u0008%\u0010\u0013R\u001c\u0010&\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u000f\"\u0004\u0008(\u0010\u0013\u00a8\u0006*"
    }
    d2 = {
        "Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;",
        "",
        "notificationExtras",
        "Landroid/os/Bundle;",
        "actionIndex",
        "",
        "<init>",
        "(Landroid/os/Bundle;I)V",
        "getActionIndex",
        "()I",
        "setActionIndex",
        "(I)V",
        "campaignId",
        "",
        "getCampaignId",
        "()Ljava/lang/String;",
        "title",
        "getTitle",
        "setTitle",
        "(Ljava/lang/String;)V",
        "titleGravity",
        "getTitleGravity",
        "setTitleGravity",
        "subtitle",
        "getSubtitle",
        "setSubtitle",
        "subtitleGravity",
        "getSubtitleGravity",
        "setSubtitleGravity",
        "bitmapUrl",
        "getBitmapUrl",
        "setBitmapUrl",
        "storyPageId",
        "getStoryPageId",
        "setStoryPageId",
        "deeplink",
        "getDeeplink",
        "setDeeplink",
        "useWebview",
        "getUseWebview",
        "setUseWebview",
        "toString",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private actionIndex:I

.field private bitmapUrl:Ljava/lang/String;

.field private final campaignId:Ljava/lang/String;

.field private deeplink:Ljava/lang/String;

.field private storyPageId:Ljava/lang/String;

.field private subtitle:Ljava/lang/String;

.field private subtitleGravity:I

.field private title:Ljava/lang/String;

.field private titleGravity:I

.field private useWebview:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;I)V
    .locals 3

    const-string v0, "notificationExtras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->actionIndex:I

    .line 2
    sget-object p2, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    const-string v0, "cid"

    invoke-virtual {p2, p1, v0}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->campaignId:Ljava/lang/String;

    .line 4
    iget v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->actionIndex:I

    const-string v1, "ab_c*_t"

    invoke-virtual {p2, v0, p1, v1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->title:Ljava/lang/String;

    .line 6
    iget v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->actionIndex:I

    .line 7
    const-string v1, "ab_c*_t_j"

    invoke-virtual {p2, v0, p1, v1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getPushStoryGravityAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->titleGravity:I

    .line 13
    iget v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->actionIndex:I

    .line 14
    const-string v1, "ab_c*_st"

    invoke-virtual {p2, v0, p1, v1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->subtitle:Ljava/lang/String;

    .line 20
    iget v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->actionIndex:I

    .line 21
    const-string v1, "ab_c*_st_j"

    invoke-virtual {p2, v0, p1, v1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getPushStoryGravityAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->subtitleGravity:I

    .line 27
    iget v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->actionIndex:I

    const-string v1, "ab_c*_i"

    invoke-virtual {p2, v0, p1, v1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->bitmapUrl:Ljava/lang/String;

    .line 29
    iget v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->actionIndex:I

    .line 30
    const-string v1, "ab_c*_id"

    const-string v2, ""

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->storyPageId:Ljava/lang/String;

    .line 37
    iget v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->actionIndex:I

    .line 38
    const-string v1, "ab_c*_uri"

    invoke-virtual {p2, v0, p1, v1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->deeplink:Ljava/lang/String;

    .line 44
    iget v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->actionIndex:I

    .line 45
    const-string v1, "ab_c*_use_webview"

    invoke-virtual {p2, v0, p1, v1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->useWebview:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getActionIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->actionIndex:I

    return v0
.end method

.method public final getBitmapUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->bitmapUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getCampaignId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->campaignId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeeplink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->deeplink:Ljava/lang/String;

    return-object v0
.end method

.method public final getStoryPageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->storyPageId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitleGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->subtitleGravity:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->titleGravity:I

    return v0
.end method

.method public final getUseWebview()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->useWebview:Ljava/lang/String;

    return-object v0
.end method

.method public final setActionIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->actionIndex:I

    return-void
.end method

.method public final setBitmapUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->bitmapUrl:Ljava/lang/String;

    return-void
.end method

.method public final setDeeplink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->deeplink:Ljava/lang/String;

    return-void
.end method

.method public final setStoryPageId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->storyPageId:Ljava/lang/String;

    return-void
.end method

.method public final setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public final setSubtitleGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->subtitleGravity:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->title:Ljava/lang/String;

    return-void
.end method

.method public final setTitleGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->titleGravity:I

    return-void
.end method

.method public final setUseWebview(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->useWebview:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    iget v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->actionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ActionIndex"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->campaignId:Ljava/lang/String;

    const-string v3, "CampaignId"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->title:Ljava/lang/String;

    const-string v3, "Title"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    iget v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->titleGravity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TitleGravity"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->subtitle:Ljava/lang/String;

    const-string v3, "Subtitle"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    iget v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->subtitleGravity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SubtitleGravity="

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->bitmapUrl:Ljava/lang/String;

    const-string v3, "BitmapUrl"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 35
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->storyPageId:Ljava/lang/String;

    const-string v3, "StoryPageId"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->deeplink:Ljava/lang/String;

    const-string v3, "Deeplink"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->useWebview:Ljava/lang/String;

    const-string v3, "UseWebview"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

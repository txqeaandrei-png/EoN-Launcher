.class public Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageSlideupViewFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultInAppMessageSlideupViewFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultInAppMessageSlideupViewFactory.kt\ncom/braze/ui/inappmessage/factories/DefaultInAppMessageSlideupViewFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1#2:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageSlideupViewFactory;",
        "Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;",
        "<init>",
        "()V",
        "createInAppMessageView",
        "Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;",
        "activity",
        "Landroid/app/Activity;",
        "inAppMessage",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
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
.method public static synthetic $r8$lambda$4Ey0xzRjb9vTolCNosMnfar_p1k()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageSlideupViewFactory;->createInAppMessageView$lambda$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final createInAppMessageView$lambda$0()Ljava/lang/String;
    .locals 1

    .line 27
    const-string v0, "The device is not currently in touch mode. This message requires user touch interaction to display properly."

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createInAppMessageView(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessage;)Landroid/view/View;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageSlideupViewFactory;->createInAppMessageView(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createInAppMessageView(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;
    .locals 11

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inAppMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 22
    sget v1, Lcom/braze/ui/R$layout;->com_braze_inappmessage_slideup:I

    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.braze.ui.inappmessage.views.InAppMessageSlideupView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;

    .line 25
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/braze/ui/support/ViewUtils;->isDeviceNotInTouchMode(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v8, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageSlideupViewFactory$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageSlideupViewFactory$$ExternalSyntheticLambda0;-><init>()V

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v2

    .line 31
    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/braze/models/inappmessage/InAppMessageSlideup;

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 33
    invoke-virtual {v0, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->applyInAppMessageParameters(Lcom/braze/models/inappmessage/IInAppMessage;)V

    .line 34
    sget-object p1, Lcom/braze/ui/inappmessage/views/InAppMessageBaseView;->Companion:Lcom/braze/ui/inappmessage/views/InAppMessageBaseView$Companion;

    move-object v2, v1

    check-cast v2, Lcom/braze/models/inappmessage/IInAppMessageWithImage;

    invoke-virtual {p1, v2}, Lcom/braze/ui/inappmessage/views/InAppMessageBaseView$Companion;->getAppropriateImageUrl(Lcom/braze/models/inappmessage/IInAppMessageWithImage;)Ljava/lang/String;

    move-result-object v5

    .line 35
    move-object p1, v5

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    sget-object p1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object p1

    invoke-virtual {p1}, Lcom/braze/Braze;->getImageLoader()Lcom/braze/images/IBrazeImageLoader;

    move-result-object v2

    .line 37
    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->getMessageImageView()Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 43
    sget-object v7, Lcom/braze/enums/BrazeViewBounds;->IN_APP_MESSAGE_SLIDEUP:Lcom/braze/enums/BrazeViewBounds;

    move-object v4, p2

    .line 38
    invoke-interface/range {v2 .. v7}, Lcom/braze/images/IBrazeImageLoader;->renderUrlIntoInAppMessageView(Landroid/content/Context;Lcom/braze/models/inappmessage/IInAppMessage;Ljava/lang/String;Landroid/widget/ImageView;Lcom/braze/enums/BrazeViewBounds;)V

    .line 47
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/braze/models/inappmessage/InAppMessageSlideup;->getBackgroundColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->setMessageBackgroundColor(I)V

    .line 48
    invoke-virtual {v1}, Lcom/braze/models/inappmessage/InAppMessageSlideup;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->setMessage(Ljava/lang/String;)V

    .line 49
    :cond_3
    invoke-virtual {v1}, Lcom/braze/models/inappmessage/InAppMessageSlideup;->getMessageTextColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->setMessageTextColor(I)V

    .line 50
    invoke-virtual {v1}, Lcom/braze/models/inappmessage/InAppMessageSlideup;->getMessageTextAlign()Lcom/braze/enums/inappmessage/TextAlign;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->setMessageTextAlign(Lcom/braze/enums/inappmessage/TextAlign;)V

    .line 51
    invoke-virtual {v1}, Lcom/braze/models/inappmessage/InAppMessageSlideup;->getIcon()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 54
    invoke-virtual {v1}, Lcom/braze/models/inappmessage/InAppMessageSlideup;->getIconColor()I

    move-result p2

    .line 55
    invoke-virtual {v1}, Lcom/braze/models/inappmessage/InAppMessageSlideup;->getIconBackgroundColor()I

    move-result v2

    .line 52
    invoke-virtual {v0, p1, p2, v2}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->setMessageIcon(Ljava/lang/String;II)V

    .line 58
    :cond_4
    invoke-virtual {v1}, Lcom/braze/models/inappmessage/InAppMessageSlideup;->getChevronColor()I

    move-result p1

    invoke-virtual {v1}, Lcom/braze/models/inappmessage/InAppMessageSlideup;->getClickAction()Lcom/braze/enums/inappmessage/ClickAction;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->setMessageChevron(ILcom/braze/enums/inappmessage/ClickAction;)V

    .line 59
    invoke-virtual {v1}, Lcom/braze/models/inappmessage/InAppMessageSlideup;->getImageDownloadSuccessful()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->resetMessageMargins(Z)V

    return-object v0
.end method

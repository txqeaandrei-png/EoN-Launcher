.class public final Lcom/braze/push/BrazeNotificationStyleFactory$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/push/BrazeNotificationStyleFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ \u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\"\u0010 \u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020\u0005H\u0002J \u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0018\u0010(\u001a\u00020\n2\u0006\u0010)\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010*\u001a\u00020%2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/braze/push/BrazeNotificationStyleFactory$Companion;",
        "",
        "<init>",
        "()V",
        "BIG_PICTURE_STYLE_IMAGE_HEIGHT",
        "",
        "STORY_SET_GRAVITY",
        "",
        "STORY_SET_VISIBILITY",
        "setStyleIfSupported",
        "",
        "notificationBuilder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "payload",
        "Lcom/braze/models/push/BrazeNotificationPayload;",
        "getNotificationStyle",
        "Landroidx/core/app/NotificationCompat$Style;",
        "getBigTextNotificationStyle",
        "Landroidx/core/app/NotificationCompat$BigTextStyle;",
        "getStoryStyle",
        "Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;",
        "getInlineImageStyle",
        "getBigPictureNotificationStyle",
        "Landroidx/core/app/NotificationCompat$BigPictureStyle;",
        "getConversationalPushStyle",
        "Landroidx/core/app/NotificationCompat$MessagingStyle;",
        "createStoryPageClickedPendingIntent",
        "Landroid/app/PendingIntent;",
        "context",
        "Landroid/content/Context;",
        "pushStoryPage",
        "Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;",
        "createStoryTraversedPendingIntent",
        "notificationExtras",
        "Landroid/os/Bundle;",
        "pageIndex",
        "populatePushStoryPage",
        "",
        "view",
        "Landroid/widget/RemoteViews;",
        "setBigPictureSummaryAndTitle",
        "bigPictureNotificationStyle",
        "isRemoteViewNotificationAvailableSpaceConstrained",
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
.method public static synthetic $r8$lambda$9xQoe2j_8TvDxBk3y8KmjLcAESA()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->populatePushStoryPage$lambda$25()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$BSPC2UfHwZ6W0PdOodCgbKelSQU()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->populatePushStoryPage$lambda$26()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Bwu0eAsW_c2I5nepduBlBhhsSGs()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getNotificationStyle$lambda$4()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$C5OAjR1nO6BQbl0Q6_HZhfasdZ8()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getConversationalPushStyle$lambda$23()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$HhaHckp_Yp2DZCbKlkc5KYcIo6o()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getInlineImageStyle$lambda$11()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$I7cUxL8yKgOECZdkSyh4R8lXpco()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getNotificationStyle$lambda$3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$I9sQwlCe1YKFNpvuonVOY0hIA3c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getNotificationStyle$lambda$5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$KztS3DWVbi2CfCajk7qEAYISApE()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getInlineImageStyle$lambda$12()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$LTFP60mfMuriDVPyL7XLAn7hgrk()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getNotificationStyle$lambda$2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$MhpcjiFPKqDzwPKYC3pGXsGf7oc()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getStoryStyle$lambda$10()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$MwMagLfuRFmi3yI1kVdHpXrcH04()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getInlineImageStyle$lambda$13()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$P02SivNglhl2Rz60SepRur8kD_Y()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getConversationalPushStyle$lambda$21()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$RodNYKuh_b8q1__TTs0DTyKzl9k()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getBigPictureNotificationStyle$lambda$19()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$a3UddEDb-CDYSj6gi-cCym8Dq8s(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getBigPictureNotificationStyle$lambda$18(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hcXrdBm2-vEyMUE2tWCWV0IuTbg()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getStoryStyle$lambda$9()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$j8L2f_x0mcedBixkN5lzpuhUjUg()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->populatePushStoryPage$lambda$27()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$kFCZs2YnqK-UpiDioNMa2QrouZM()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getInlineImageStyle$lambda$15()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$rcYqBf-F72RoB_lVxt1BXdyHeUk(Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getConversationalPushStyle$lambda$22(Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sltIPiGJVVPhbuJO9BTkcUoy0rM()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->setStyleIfSupported$lambda$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$us13Raht3l6rpQQeB31LKCdhW6w()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getBigPictureNotificationStyle$lambda$20()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$x-AO-AlbTkj3YEh3SZKIXW-JV04()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getNotificationStyle$lambda$1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;-><init>()V

    return-void
.end method

.method private final createStoryPageClickedPendingIntent(Landroid/content/Context;Lcom/braze/models/push/BrazeNotificationPayload;Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;)Landroid/app/PendingIntent;
    .locals 4

    .line 414
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.braze.action.BRAZE_STORY_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    const-class v1, Lcom/braze/push/NotificationTrampolineActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "setClass(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    sget-object v2, Lcom/braze/ui/BrazeDeeplinkHandler;->Companion:Lcom/braze/ui/BrazeDeeplinkHandler$Companion;

    invoke-virtual {v2}, Lcom/braze/ui/BrazeDeeplinkHandler$Companion;->getInstance()Lcom/braze/IBrazeDeeplinkHandler;

    move-result-object v2

    sget-object v3, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->NOTIFICATION_PUSH_STORY_PAGE_CLICK:Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;

    invoke-interface {v2, v3}, Lcom/braze/IBrazeDeeplinkHandler;->getIntentFlags(Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;)I

    move-result v2

    or-int/2addr v1, v2

    .line 416
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 418
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 419
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 421
    const-string v1, "braze_action_uri"

    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getDeeplink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string v1, "braze_action_use_webview"

    .line 424
    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getUseWebview()Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v1, "braze_story_page_id"

    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getStoryPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v1, "braze_campaign_id"

    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getCampaignId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    invoke-static {p2}, Lcom/braze/push/BrazeNotificationUtils;->getNotificationId(Lcom/braze/models/push/BrazeNotificationPayload;)I

    move-result p2

    .line 429
    const-string p3, "nid"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    invoke-static {}, Lcom/braze/support/IntentUtils;->getRequestCode()I

    move-result p2

    .line 434
    invoke-static {}, Lcom/braze/support/IntentUtils;->getImmutablePendingIntentFlags()I

    move-result p3

    .line 430
    invoke-static {p1, p2, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getActivity(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createStoryTraversedPendingIntent(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/PendingIntent;
    .locals 2

    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.braze.action.STORY_TRAVERSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/braze/push/BrazeNotificationUtils;->getNotificationReceiverClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "setClass(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 446
    const-string v1, "braze_story_index"

    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/high16 p2, 0x40000000    # 2.0f

    .line 449
    invoke-static {}, Lcom/braze/support/IntentUtils;->getImmutablePendingIntentFlags()I

    move-result p3

    or-int/2addr p2, p3

    .line 452
    invoke-static {}, Lcom/braze/support/IntentUtils;->getRequestCode()I

    move-result p3

    .line 450
    invoke-static {p1, p3, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getBroadcast(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getBigPictureNotificationStyle$lambda$18(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to download image bitmap for big picture notification style. Url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getBigPictureNotificationStyle$lambda$19()Ljava/lang/String;
    .locals 1

    .line 365
    const-string v0, "Failed to scale image bitmap, using original."

    return-object v0
.end method

.method private static final getBigPictureNotificationStyle$lambda$20()Ljava/lang/String;
    .locals 1

    .line 373
    const-string v0, "Failed to create Big Picture Style."

    return-object v0
.end method

.method private static final getConversationalPushStyle$lambda$21()Ljava/lang/String;
    .locals 1

    .line 386
    const-string v0, "Reply person does not exist in mapping. Not rendering a style"

    return-object v0
.end method

.method private static final getConversationalPushStyle$lambda$22(Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;)Ljava/lang/String;
    .locals 2

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message person does not exist in mapping. Not rendering a style. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getConversationalPushStyle$lambda$23()Ljava/lang/String;
    .locals 1

    .line 404
    const-string v0, "Failed to create conversation push style. Returning null."

    return-object v0
.end method

.method private static final getInlineImageStyle$lambda$11()Ljava/lang/String;
    .locals 1

    .line 214
    const-string v0, "Inline Image Push cannot render without a context"

    return-object v0
.end method

.method private static final getInlineImageStyle$lambda$12()Ljava/lang/String;
    .locals 1

    .line 219
    const-string v0, "Inline Image Push image url invalid"

    return-object v0
.end method

.method private static final getInlineImageStyle$lambda$13()Ljava/lang/String;
    .locals 1

    .line 233
    const-string v0, "Inline Image Push failed to get image bitmap"

    return-object v0
.end method

.method private static final getInlineImageStyle$lambda$15()Ljava/lang/String;
    .locals 1

    .line 264
    const-string v0, "Inline Image Push application info was null"

    return-object v0
.end method

.method private static final getNotificationStyle$lambda$1()Ljava/lang/String;
    .locals 1

    .line 88
    const-string v0, "Rendering push notification with DecoratedCustomViewStyle (Story)"

    return-object v0
.end method

.method private static final getNotificationStyle$lambda$2()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "Rendering conversational push"

    return-object v0
.end method

.method private static final getNotificationStyle$lambda$3()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "Rendering push notification with custom inline image style"

    return-object v0
.end method

.method private static final getNotificationStyle$lambda$4()Ljava/lang/String;
    .locals 1

    .line 99
    const-string v0, "Rendering push notification with BigPictureStyle"

    return-object v0
.end method

.method private static final getNotificationStyle$lambda$5()Ljava/lang/String;
    .locals 1

    .line 106
    const-string v0, "Rendering push notification with BigTextStyle"

    return-object v0
.end method

.method private static final getStoryStyle$lambda$10()Ljava/lang/String;
    .locals 1

    .line 167
    const-string v0, "Push story page was not populated correctly. Not using DecoratedCustomViewStyle."

    return-object v0
.end method

.method private static final getStoryStyle$lambda$9()Ljava/lang/String;
    .locals 1

    .line 158
    const-string v0, "Push story page cannot render without a context"

    return-object v0
.end method

.method private final isRemoteViewNotificationAvailableSpaceConstrained(Landroid/content/Context;)Z
    .locals 2

    .line 598
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 599
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final populatePushStoryPage(Landroid/widget/RemoteViews;Lcom/braze/models/push/BrazeNotificationPayload;Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;)Z
    .locals 11

    .line 472
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 474
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v7, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda9;

    invoke-direct {v7}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda9;-><init>()V

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    .line 477
    :cond_0
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getConfigurationProvider()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v2

    if-nez v2, :cond_1

    .line 479
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v8, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda10;

    invoke-direct {v8}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda10;-><init>()V

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    .line 482
    :cond_1
    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getBitmapUrl()Ljava/lang/String;

    move-result-object v3

    .line 483
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    .line 487
    :cond_2
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 490
    sget-object v5, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v5, v0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v5

    invoke-virtual {v5}, Lcom/braze/Braze;->getImageLoader()Lcom/braze/images/IBrazeImageLoader;

    move-result-object v5

    .line 495
    sget-object v6, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_ONE_IMAGE_STORY:Lcom/braze/enums/BrazeViewBounds;

    .line 491
    invoke-interface {v5, v0, v4, v3, v6}, Lcom/braze/images/IBrazeImageLoader;->getPushBitmapFromUrl(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_3

    return v1

    .line 498
    :cond_3
    sget v1, Lcom/braze/ui/R$id;->com_braze_story_image_view:I

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 501
    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 504
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "setGravity"

    const/16 v5, 0x8

    const-string v6, "setVisibility"

    if-eqz v3, :cond_5

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 505
    :cond_4
    invoke-static {v1, v2}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 506
    sget v3, Lcom/braze/ui/R$id;->com_braze_story_text_view:I

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 507
    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getTitleGravity()I

    move-result v1

    .line 509
    sget v3, Lcom/braze/ui/R$id;->com_braze_story_text_view_container:I

    .line 508
    invoke-virtual {p1, v3, v4, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1

    .line 515
    :cond_5
    :goto_0
    sget v1, Lcom/braze/ui/R$id;->com_braze_story_text_view_container:I

    .line 514
    invoke-virtual {p1, v1, v6, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 522
    :goto_1
    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    .line 525
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 527
    :cond_6
    invoke-static {v1, v2}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 528
    sget v2, Lcom/braze/ui/R$id;->com_braze_story_text_view_small:I

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 529
    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getSubtitleGravity()I

    move-result v1

    .line 531
    sget v2, Lcom/braze/ui/R$id;->com_braze_story_text_view_small_container:I

    .line 530
    invoke-virtual {p1, v2, v4, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_3

    .line 537
    :cond_7
    :goto_2
    sget v1, Lcom/braze/ui/R$id;->com_braze_story_text_view_small_container:I

    .line 536
    invoke-virtual {p1, v1, v6, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 545
    :goto_3
    invoke-direct {p0, v0, p2, p3}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->createStoryPageClickedPendingIntent(Landroid/content/Context;Lcom/braze/models/push/BrazeNotificationPayload;Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 547
    sget p3, Lcom/braze/ui/R$id;->com_braze_story_relative_layout:I

    .line 546
    invoke-virtual {p1, p3, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 p1, 0x1

    return p1

    .line 484
    :cond_8
    :goto_4
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v7, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda12;

    invoke-direct {v7}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda12;-><init>()V

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1
.end method

.method private static final populatePushStoryPage$lambda$25()Ljava/lang/String;
    .locals 1

    .line 474
    const-string v0, "Push story page cannot render without a context"

    return-object v0
.end method

.method private static final populatePushStoryPage$lambda$26()Ljava/lang/String;
    .locals 1

    .line 479
    const-string v0, "Push story page cannot render without a configuration provider"

    return-object v0
.end method

.method private static final populatePushStoryPage$lambda$27()Ljava/lang/String;
    .locals 1

    .line 484
    const-string v0, "Push story page image url invalid"

    return-object v0
.end method

.method private static final setStyleIfSupported$lambda$0()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "Setting style for notification"

    return-object v0
.end method


# virtual methods
.method public final getBigPictureNotificationStyle(Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .locals 12

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 323
    :cond_0
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getBigImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 324
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    .line 327
    :cond_1
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 328
    sget-object v4, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v4, v0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v4

    invoke-virtual {v4}, Lcom/braze/Braze;->getImageLoader()Lcom/braze/images/IBrazeImageLoader;

    move-result-object v4

    .line 333
    sget-object v5, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_EXPANDED_IMAGE:Lcom/braze/enums/BrazeViewBounds;

    .line 329
    invoke-interface {v4, v0, v3, v2, v5}, Lcom/braze/images/IBrazeImageLoader;->getPushBitmapFromUrl(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    .line 336
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v9, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v9, v2}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v1

    .line 346
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v2, v4, :cond_4

    .line 348
    invoke-static {v0}, Lcom/braze/support/BrazeImageUtils;->getDensityDpi(Landroid/content/Context;)I

    move-result v2

    const/16 v4, 0xc0

    .line 347
    invoke-static {v2, v4}, Lcom/braze/support/BrazeImageUtils;->getPixelsFromDensityAndDp(II)I

    move-result v2

    mul-int/lit8 v4, v2, 0x2

    .line 353
    invoke-static {v0}, Lcom/braze/support/BrazeImageUtils;->getDisplayWidthPixels(Landroid/content/Context;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-le v4, v0, :cond_3

    move v4, v0

    :cond_3
    const/4 v0, 0x1

    .line 358
    :try_start_1
    invoke-static {v3, v4, v2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 365
    :try_start_2
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    move-object v7, v0

    check-cast v7, Ljava/lang/Throwable;

    new-instance v9, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda11;

    invoke-direct {v9}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda11;-><init>()V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 368
    :cond_4
    :goto_0
    new-instance v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 369
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 370
    invoke-virtual {p0, v0, p1}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->setBigPictureSummaryAndTitle(Landroidx/core/app/NotificationCompat$BigPictureStyle;Lcom/braze/models/push/BrazeNotificationPayload;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 373
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    move-object v5, p1

    check-cast v5, Ljava/lang/Throwable;

    new-instance v7, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda13;

    invoke-direct {v7}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda13;-><init>()V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_5
    :goto_1
    return-object v1
.end method

.method public final getBigTextNotificationStyle(Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$BigTextStyle;
    .locals 3

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 121
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getConfigurationProvider()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getContentText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2, v1}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 124
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 127
    :cond_1
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getBigSummaryText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 129
    invoke-static {v2, v1}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 128
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 135
    :cond_2
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getBigTitleText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 137
    invoke-static {p1, v1}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 136
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    :cond_3
    return-object v0
.end method

.method public final getConversationalPushStyle(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "notificationBuilder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "payload"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 383
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getConversationPersonMap()Ljava/util/Map;

    move-result-object v3

    .line 384
    invoke-virtual/range {p2 .. p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getConversationReplyPersonId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;

    if-nez v4, :cond_0

    .line 386
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v10, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda14;

    invoke-direct {v10}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda14;-><init>()V

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v5 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v1

    .line 389
    :cond_0
    new-instance v5, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-virtual {v4}, Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;->getPerson()Landroidx/core/app/Person;

    move-result-object v4

    invoke-direct {v5, v4}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>(Landroidx/core/app/Person;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getConversationMessages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;

    .line 391
    invoke-virtual {v6}, Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;->getPersonId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;

    if-nez v7, :cond_1

    .line 393
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v13, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda15;

    invoke-direct {v13, v6}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda15;-><init>(Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;)V

    const/4 v14, 0x7

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p0

    invoke-static/range {v8 .. v15}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v1

    .line 398
    :cond_1
    invoke-virtual {v6}, Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;->getMessage()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6}, Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;->getTimestamp()J

    move-result-wide v9

    invoke-virtual {v7}, Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;->getPerson()Landroidx/core/app/Person;

    move-result-object v6

    invoke-virtual {v5, v8, v9, v10, v6}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    goto :goto_0

    .line 400
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setGroupConversation(Z)Landroidx/core/app/NotificationCompat$MessagingStyle;

    .line 401
    invoke-virtual/range {p2 .. p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getConversationShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShortcutId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    goto :goto_2

    :catch_0
    move-exception v0

    .line 404
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    new-instance v7, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda16;

    invoke-direct {v7}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda16;-><init>()V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_2
    return-object v1
.end method

.method public final getInlineImageStyle(Lcom/braze/models/push/BrazeNotificationPayload;Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Style;
    .locals 22

    move-object/from16 v0, p2

    const-string v1, "payload"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "notificationBuilder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 214
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v9, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda2;-><init>()V

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v3

    .line 217
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getBigImageUrl()Ljava/lang/String;

    move-result-object v4

    .line 218
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_9

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_3

    .line 222
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 225
    sget-object v6, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v6, v1}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v6

    invoke-virtual {v6}, Lcom/braze/Braze;->getImageLoader()Lcom/braze/images/IBrazeImageLoader;

    move-result-object v6

    .line 230
    sget-object v7, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_INLINE_PUSH_IMAGE:Lcom/braze/enums/BrazeViewBounds;

    .line 226
    invoke-interface {v6, v1, v5, v4, v7}, Lcom/braze/images/IBrazeImageLoader;->getPushBitmapFromUrl(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    .line 233
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v11, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda4;

    invoke-direct {v11}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda4;-><init>()V

    const/4 v12, 0x7

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p0

    invoke-static/range {v6 .. v13}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v3

    :cond_2
    move-object/from16 v6, p0

    .line 237
    invoke-direct {v6, v1}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->isRemoteViewNotificationAvailableSpaceConstrained(Landroid/content/Context;)Z

    move-result v7

    .line 238
    new-instance v8, Landroid/widget/RemoteViews;

    .line 239
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_3

    .line 240
    sget v10, Lcom/braze/ui/R$layout;->com_braze_push_inline_image_constrained:I

    goto :goto_0

    :cond_3
    sget v10, Lcom/braze/ui/R$layout;->com_braze_notification_inline_image:I

    .line 238
    :goto_0
    invoke-direct {v8, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 242
    sget-object v9, Lcom/braze/BrazeInternal;->INSTANCE:Lcom/braze/BrazeInternal;

    invoke-virtual {v9, v1}, Lcom/braze/BrazeInternal;->getConfigurationProvider(Landroid/content/Context;)Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v9

    .line 247
    invoke-virtual {v9}, Lcom/braze/configuration/BrazeConfigurationProvider;->getSmallNotificationIconResourceId()I

    move-result v10

    .line 245
    invoke-static {v1, v10}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v10

    const-string v11, "createWithResource(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getAccentColor()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 251
    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 253
    :cond_4
    sget v2, Lcom/braze/ui/R$id;->com_braze_inline_image_push_app_icon:I

    invoke-virtual {v8, v2, v10}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 256
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 258
    :try_start_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x21

    if-lt v10, v11, :cond_5

    .line 259
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v10

    invoke-virtual {v2, v1, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    goto :goto_1

    .line 261
    :cond_5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    .line 269
    invoke-static {v1, v9}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 271
    sget v2, Lcom/braze/ui/R$id;->com_braze_inline_image_push_app_name_text:I

    .line 270
    invoke-virtual {v8, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 277
    sget v1, Lcom/braze/ui/R$id;->com_braze_inline_image_push_time_text:I

    .line 278
    sget-object v2, Lcom/braze/enums/BrazeDateFormat;->CLOCK_12_HOUR:Lcom/braze/enums/BrazeDateFormat;

    invoke-static {v2}, Lcom/braze/support/DateTimeUtils;->formatDateNow(Lcom/braze/enums/BrazeDateFormat;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 276
    invoke-virtual {v8, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 282
    const-string v1, "t"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 284
    sget v2, Lcom/braze/ui/R$id;->com_braze_inline_image_push_title_text:I

    .line 285
    invoke-static {v1, v9}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 283
    invoke-virtual {v8, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 290
    :cond_6
    const-string v1, "a"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 292
    sget v2, Lcom/braze/ui/R$id;->com_braze_inline_image_push_content_text:I

    .line 293
    invoke-static {v1, v9}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 291
    invoke-virtual {v8, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 296
    :cond_7
    invoke-virtual {v0, v8}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v7, :cond_8

    .line 300
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 301
    new-instance v0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    check-cast v0, Landroidx/core/app/NotificationCompat$Style;

    goto :goto_2

    .line 304
    :cond_8
    sget v0, Lcom/braze/ui/R$id;->com_braze_inline_image_push_side_image:I

    .line 303
    invoke-virtual {v8, v0, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 309
    new-instance v0, Lcom/braze/push/BrazeNotificationStyleFactory$NoOpSentinelStyle;

    invoke-direct {v0}, Lcom/braze/push/BrazeNotificationStyleFactory$NoOpSentinelStyle;-><init>()V

    check-cast v0, Landroidx/core/app/NotificationCompat$Style;

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    .line 264
    sget-object v14, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v16, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Throwable;

    new-instance v19, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda5;

    invoke-direct/range {v19 .. v19}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda5;-><init>()V

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v15, p0

    invoke-static/range {v14 .. v21}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v3

    :cond_9
    :goto_3
    move-object/from16 v6, p0

    .line 219
    sget-object v14, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v19, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda3;

    invoke-direct/range {v19 .. v19}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda3;-><init>()V

    const/16 v20, 0x7

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v15, p0

    invoke-static/range {v14 .. v21}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v3
.end method

.method public final getNotificationStyle(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$Style;
    .locals 10

    const-string v0, "notificationBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->isPushStory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda17;

    invoke-direct {v6}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda17;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getStoryStyle(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    move-result-object p1

    check-cast p1, Landroidx/core/app/NotificationCompat$Style;

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->isConversationalPush()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1

    .line 91
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v7, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda18;

    invoke-direct {v7}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda18;-><init>()V

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getConversationalPushStyle(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    move-result-object p1

    check-cast p1, Landroidx/core/app/NotificationCompat$Style;

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getBigImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->isInlineImagePush()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda19;

    invoke-direct {v6}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda19;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 97
    invoke-virtual {p0, p2, p1}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getInlineImageStyle(Lcom/braze/models/push/BrazeNotificationPayload;Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object p1

    goto :goto_0

    .line 99
    :cond_2
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda20;

    invoke-direct {v5}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda20;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 100
    invoke-virtual {p0, p2}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getBigPictureNotificationStyle(Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object p1

    check-cast p1, Landroidx/core/app/NotificationCompat$Style;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    .line 106
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda1;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 107
    invoke-virtual {p0, p2}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getBigTextNotificationStyle(Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    check-cast p1, Landroidx/core/app/NotificationCompat$Style;

    :cond_4
    return-object p1
.end method

.method public final getStoryStyle(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    .locals 10

    const-string v2, "notificationBuilder"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "payload"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v8, 0x0

    if-nez v2, :cond_0

    .line 158
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda7;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v8

    .line 161
    :cond_0
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getPushStoryPages()Ljava/util/List;

    move-result-object v3

    .line 162
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getPushStoryPageIndex()I

    move-result v4

    .line 163
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;

    .line 165
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sget v9, Lcom/braze/ui/R$layout;->com_braze_push_story_one_image:I

    invoke-direct {v6, v7, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 166
    invoke-direct {p0, v6, p2, v5}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->populatePushStoryPage(Landroid/widget/RemoteViews;Lcom/braze/models/push/BrazeNotificationPayload;Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 167
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda8;

    invoke-direct {v5}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda8;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v8

    .line 170
    :cond_1
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 171
    new-instance v5, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v5}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 172
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v7, v4, -0x1

    add-int/2addr v7, v3

    .line 176
    rem-int/2addr v7, v3

    .line 173
    invoke-direct {p0, v2, v1, v7}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->createStoryTraversedPendingIntent(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 179
    sget v8, Lcom/braze/ui/R$id;->com_braze_story_button_previous:I

    .line 178
    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v7, 0x1

    add-int/2addr v4, v7

    .line 185
    rem-int/2addr v4, v3

    .line 182
    invoke-direct {p0, v2, v1, v4}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->createStoryTraversedPendingIntent(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 188
    sget v2, Lcom/braze/ui/R$id;->com_braze_story_button_next:I

    .line 187
    invoke-virtual {v6, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 191
    invoke-virtual {p1, v6}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 194
    invoke-virtual {p1, v7}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object v5
.end method

.method public final setBigPictureSummaryAndTitle(Landroidx/core/app/NotificationCompat$BigPictureStyle;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bigPictureNotificationStyle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getConfigurationProvider()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 560
    :cond_0
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getBigSummaryText()Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getBigTitleText()Ljava/lang/String;

    move-result-object v2

    .line 562
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getSummaryText()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 566
    invoke-static {v1, v0}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 565
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    :cond_1
    if-eqz v2, :cond_2

    .line 573
    invoke-static {v2, v0}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 572
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    :cond_2
    if-nez v3, :cond_3

    if-nez v1, :cond_3

    .line 582
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getContentText()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 584
    invoke-static {p2, v0}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 583
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    :cond_3
    return-void
.end method

.method public final setStyleIfSupported(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "notificationBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getNotificationStyle(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object p2

    .line 72
    instance-of v0, p2, Lcom/braze/push/BrazeNotificationStyleFactory$NoOpSentinelStyle;

    if-nez v0, :cond_0

    .line 73
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$$ExternalSyntheticLambda6;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 74
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.class public final Lcom/braze/models/push/BrazeNotificationPayload;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;,
        Lcom/braze/models/push/BrazeNotificationPayload$Companion;,
        Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;,
        Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;,
        Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u001c\n\u0002\u0010\t\n\u0002\u0008V\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \u00c6\u00012\u00020\u0001:\n\u00c2\u0001\u00c3\u0001\u00c4\u0001\u00c5\u0001\u00c6\u0001B7\u0008\u0007\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\u00bc\u0001\u001a\u00030\u00bd\u00012\u000f\u0010\u009d\u0001\u001a\n\u0012\u0005\u0012\u00030\u009c\u00010\u009b\u0001J\u0019\u0010\u00be\u0001\u001a\u00030\u00bd\u00012\u000f\u0010\u00a8\u0001\u001a\n\u0012\u0005\u0012\u00030\u00a7\u00010\u009b\u0001J\u0010\u0010\u00bf\u0001\u001a\u00030\u00bd\u00012\u0006\u0010+\u001a\u00020\'J\n\u0010\u00c0\u0001\u001a\u00030\u00bd\u0001H\u0002J\t\u0010\u00c1\u0001\u001a\u00020\u0016H\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010\"\u0004\u0008\u0012\u0010\u0013R&\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001e\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010%\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010&\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010(\"\u0004\u0008,\u0010*R\u001a\u0010-\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010(\"\u0004\u0008.\u0010*R\u001c\u0010/\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001c\u00104\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00101\"\u0004\u00086\u00103R\u001c\u00107\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00101\"\u0004\u00089\u00103R\u001e\u0010:\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010%\u001a\u0004\u0008;\u0010\"\"\u0004\u0008<\u0010$R\u001e\u0010=\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010%\u001a\u0004\u0008>\u0010\"\"\u0004\u0008?\u0010$R\u001e\u0010@\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010%\u001a\u0004\u0008A\u0010\"\"\u0004\u0008B\u0010$R\u001e\u0010C\u001a\u0004\u0018\u00010DX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010I\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\u001e\u0010J\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010%\u001a\u0004\u0008K\u0010\"\"\u0004\u0008L\u0010$R\u001a\u0010M\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010(\"\u0004\u0008O\u0010*R\u001a\u0010P\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010(\"\u0004\u0008R\u0010*R\u001a\u0010S\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010(\"\u0004\u0008U\u0010*R\u001a\u0010V\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010(\"\u0004\u0008X\u0010*R\u001a\u0010Y\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010(\"\u0004\u0008Z\u0010*R\u001c\u0010[\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u00101\"\u0004\u0008]\u00103R\u001c\u0010^\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008_\u00101\"\u0004\u0008`\u00103R\u001e\u0010a\u001a\u0004\u0018\u00010\'X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010f\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR\u001c\u0010g\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008h\u00101\"\u0004\u0008i\u00103R\u001c\u0010j\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008k\u00101\"\u0004\u0008l\u00103R\u001c\u0010m\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u00101\"\u0004\u0008o\u00103R\u001c\u0010p\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008q\u00101\"\u0004\u0008r\u00103R\u001c\u0010s\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008t\u00101\"\u0004\u0008u\u00103R\u001c\u0010v\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008w\u00101\"\u0004\u0008x\u00103R\u001c\u0010y\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008z\u00101\"\u0004\u0008{\u00103R \u0010|\u001a\u0004\u0018\u00010 8GX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010%\u001a\u0004\u0008}\u0010\"\"\u0004\u0008~\u0010$R\u001e\u0010\u007f\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0080\u0001\u00101\"\u0005\u0008\u0081\u0001\u00103R\u001f\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0083\u0001\u00101\"\u0005\u0008\u0084\u0001\u00103R)\u0010\u0085\u0001\u001a\u00020\'8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0000\u0012\u0006\u0008\u0086\u0001\u0010\u0087\u0001\u001a\u0005\u0008\u0085\u0001\u0010(\"\u0005\u0008\u0088\u0001\u0010*R+\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0000\u0012\u0006\u0008\u008a\u0001\u0010\u0087\u0001\u001a\u0005\u0008\u008b\u0001\u00101\"\u0005\u0008\u008c\u0001\u00103R+\u0010\u008d\u0001\u001a\u00020D8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u001a\n\u0000\u0012\u0006\u0008\u008e\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u008f\u0001\u0010\u0090\u0001\"\u0006\u0008\u0091\u0001\u0010\u0092\u0001R+\u0010\u0093\u0001\u001a\u00020D8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u001a\n\u0000\u0012\u0006\u0008\u0094\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u0095\u0001\u0010\u0090\u0001\"\u0006\u0008\u0096\u0001\u0010\u0092\u0001R\u001f\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0098\u0001\u00101\"\u0005\u0008\u0099\u0001\u00103R\u0017\u0010\u009a\u0001\u001a\n\u0012\u0005\u0012\u00030\u009c\u00010\u009b\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u009d\u0001\u001a\n\u0012\u0005\u0012\u00030\u009c\u00010\u009e\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R\u001f\u0010\u00a1\u0001\u001a\u00020 X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001\"\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\u0017\u0010\u00a6\u0001\u001a\n\u0012\u0005\u0012\u00030\u00a7\u00010\u009b\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u00a8\u0001\u001a\n\u0012\u0005\u0012\u00030\u00a7\u00010\u009e\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u00a9\u0001\u0010\u00a0\u0001R\u001d\u0010\u00aa\u0001\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00aa\u0001\u0010(\"\u0005\u0008\u00ab\u0001\u0010*R\u0017\u0010\u00ac\u0001\u001a\n\u0012\u0005\u0012\u00030\u00ad\u00010\u009b\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u00ae\u0001\u001a\n\u0012\u0005\u0012\u00030\u00ad\u00010\u009e\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u00af\u0001\u0010\u00a0\u0001R\u001f\u0010\u00b0\u0001\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0005\u0012\u00030\u00b2\u00010\u00b1\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u00b3\u0001\u001a\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0005\u0012\u00030\u00b2\u00010\u00158F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b4\u0001\u0010\u0018R\u001f\u0010\u00b5\u0001\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00b6\u0001\u00101\"\u0005\u0008\u00b7\u0001\u00103R%\u0010\u00b9\u0001\u001a\u0004\u0018\u00010\u00162\t\u0010\u00b8\u0001\u001a\u0004\u0018\u00010\u0016@BX\u0086\u000e\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u00ba\u0001\u00101R\u0013\u0010\u00bb\u0001\u001a\u00020\'8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00bb\u0001\u0010(\u00a8\u0006\u00c7\u0001"
    }
    d2 = {
        "Lcom/braze/models/push/BrazeNotificationPayload;",
        "",
        "notificationExtras",
        "Landroid/os/Bundle;",
        "brazeExtras",
        "context",
        "Landroid/content/Context;",
        "configurationProvider",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "<init>",
        "(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;)V",
        "getConfigurationProvider",
        "()Lcom/braze/configuration/BrazeConfigurationProvider;",
        "setConfigurationProvider",
        "(Lcom/braze/configuration/BrazeConfigurationProvider;)V",
        "getNotificationExtras",
        "()Landroid/os/Bundle;",
        "getBrazeExtras",
        "setBrazeExtras",
        "(Landroid/os/Bundle;)V",
        "extras",
        "",
        "",
        "getExtras",
        "()Ljava/util/Map;",
        "setExtras",
        "(Ljava/util/Map;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "pushDuration",
        "",
        "getPushDuration",
        "()Ljava/lang/Integer;",
        "setPushDuration",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "isPushStory",
        "",
        "()Z",
        "setPushStory",
        "(Z)V",
        "isInlineImagePush",
        "setInlineImagePush",
        "isConversationalPush",
        "setConversationalPush",
        "publicNotificationExtras",
        "getPublicNotificationExtras",
        "()Ljava/lang/String;",
        "setPublicNotificationExtras",
        "(Ljava/lang/String;)V",
        "notificationChannelId",
        "getNotificationChannelId",
        "setNotificationChannelId",
        "notificationCategory",
        "getNotificationCategory",
        "setNotificationCategory",
        "notificationVisibility",
        "getNotificationVisibility",
        "setNotificationVisibility",
        "notificationBadgeNumber",
        "getNotificationBadgeNumber",
        "setNotificationBadgeNumber",
        "customNotificationId",
        "getCustomNotificationId",
        "setCustomNotificationId",
        "notificationReceivedTimestampMillis",
        "",
        "getNotificationReceivedTimestampMillis",
        "()Ljava/lang/Long;",
        "setNotificationReceivedTimestampMillis",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "notificationPriorityInt",
        "getNotificationPriorityInt",
        "setNotificationPriorityInt",
        "shouldFetchTestTriggers",
        "getShouldFetchTestTriggers",
        "setShouldFetchTestTriggers",
        "shouldSyncGeofences",
        "getShouldSyncGeofences",
        "setShouldSyncGeofences",
        "shouldRefreshFeatureFlags",
        "getShouldRefreshFeatureFlags",
        "setShouldRefreshFeatureFlags",
        "shouldRefreshBanners",
        "getShouldRefreshBanners",
        "setShouldRefreshBanners",
        "isUninstallTrackingPush",
        "setUninstallTrackingPush",
        "deeplink",
        "getDeeplink",
        "setDeeplink",
        "pushUniqueId",
        "getPushUniqueId",
        "setPushUniqueId",
        "useWebView",
        "getUseWebView",
        "()Ljava/lang/Boolean;",
        "setUseWebView",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "contentCardSyncData",
        "getContentCardSyncData",
        "setContentCardSyncData",
        "contentCardSyncUserId",
        "getContentCardSyncUserId",
        "setContentCardSyncUserId",
        "titleText",
        "getTitleText",
        "setTitleText",
        "contentText",
        "getContentText",
        "setContentText",
        "largeIcon",
        "getLargeIcon",
        "setLargeIcon",
        "notificationSound",
        "getNotificationSound",
        "setNotificationSound",
        "summaryText",
        "getSummaryText",
        "setSummaryText",
        "accentColor",
        "getAccentColor",
        "setAccentColor",
        "bigSummaryText",
        "getBigSummaryText",
        "setBigSummaryText",
        "bigTitleText",
        "getBigTitleText",
        "setBigTitleText",
        "isPushDeliveryEnabled",
        "isPushDeliveryEnabled$annotations",
        "()V",
        "setPushDeliveryEnabled",
        "campaignId",
        "getCampaignId$annotations",
        "getCampaignId",
        "setCampaignId",
        "flushMinMinutes",
        "getFlushMinMinutes$annotations",
        "getFlushMinMinutes",
        "()J",
        "setFlushMinMinutes",
        "(J)V",
        "flushMaxMinutes",
        "getFlushMaxMinutes$annotations",
        "getFlushMaxMinutes",
        "setFlushMaxMinutes",
        "bigImageUrl",
        "getBigImageUrl",
        "setBigImageUrl",
        "actionButtonsInternal",
        "",
        "Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;",
        "actionButtons",
        "",
        "getActionButtons",
        "()Ljava/util/List;",
        "pushStoryPageIndex",
        "getPushStoryPageIndex",
        "()I",
        "setPushStoryPageIndex",
        "(I)V",
        "pushStoryPagesInternal",
        "Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;",
        "pushStoryPages",
        "getPushStoryPages",
        "isNewlyReceivedPushStory",
        "setNewlyReceivedPushStory",
        "conversationMessagesInternal",
        "Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;",
        "conversationMessages",
        "getConversationMessages",
        "conversationPersonMapInternal",
        "",
        "Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;",
        "conversationPersonMap",
        "getConversationPersonMap",
        "conversationShortcutId",
        "getConversationShortcutId",
        "setConversationShortcutId",
        "value",
        "conversationReplyPersonId",
        "getConversationReplyPersonId",
        "isSilentPush",
        "setActionButtons",
        "",
        "setPushStoryPages",
        "setIsInlineImagePush",
        "parsePayloadFieldsFromBundle",
        "toString",
        "ActionButton",
        "PushStoryPage",
        "ConversationMessage",
        "ConversationPerson",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

.field public static final DEFAULT_PUSH_DELIVERY_MAX_FLUSH:J = 0x78L

.field public static final DEFAULT_PUSH_DELIVERY_MIN_FLUSH:J = 0x5L


# instance fields
.field private accentColor:Ljava/lang/Integer;

.field private actionButtonsInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private bigImageUrl:Ljava/lang/String;

.field private bigSummaryText:Ljava/lang/String;

.field private bigTitleText:Ljava/lang/String;

.field private brazeExtras:Landroid/os/Bundle;

.field private campaignId:Ljava/lang/String;

.field private configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

.field private contentCardSyncData:Ljava/lang/String;

.field private contentCardSyncUserId:Ljava/lang/String;

.field private contentText:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private final conversationMessagesInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final conversationPersonMapInternal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;",
            ">;"
        }
    .end annotation
.end field

.field private conversationReplyPersonId:Ljava/lang/String;

.field private conversationShortcutId:Ljava/lang/String;

.field private customNotificationId:Ljava/lang/Integer;

.field private deeplink:Ljava/lang/String;

.field private extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private flushMaxMinutes:J

.field private flushMinMinutes:J

.field private isConversationalPush:Z

.field private isInlineImagePush:Z

.field private isNewlyReceivedPushStory:Z

.field private isPushDeliveryEnabled:Z

.field private isPushStory:Z

.field private isUninstallTrackingPush:Z

.field private largeIcon:Ljava/lang/String;

.field private notificationBadgeNumber:Ljava/lang/Integer;

.field private notificationCategory:Ljava/lang/String;

.field private notificationChannelId:Ljava/lang/String;

.field private final notificationExtras:Landroid/os/Bundle;

.field private notificationPriorityInt:Ljava/lang/Integer;

.field private notificationReceivedTimestampMillis:Ljava/lang/Long;

.field private notificationSound:Ljava/lang/String;

.field private notificationVisibility:Ljava/lang/Integer;

.field private publicNotificationExtras:Ljava/lang/String;

.field private pushDuration:Ljava/lang/Integer;

.field private pushStoryPageIndex:I

.field private pushStoryPagesInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;",
            ">;"
        }
    .end annotation
.end field

.field private pushUniqueId:Ljava/lang/String;

.field private shouldFetchTestTriggers:Z

.field private shouldRefreshBanners:Z

.field private shouldRefreshFeatureFlags:Z

.field private shouldSyncGeofences:Z

.field private summaryText:Ljava/lang/String;

.field private titleText:Ljava/lang/String;

.field private useWebView:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 7

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/braze/models/push/BrazeNotificationPayload;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/braze/models/push/BrazeNotificationPayload;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/braze/models/push/BrazeNotificationPayload;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p4, p0, Lcom/braze/models/push/BrazeNotificationPayload;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    if-nez p1, :cond_0

    .line 12
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    if-nez p2, :cond_1

    .line 13
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->brazeExtras:Landroid/os/Bundle;

    .line 18
    invoke-static {p2}, Lcom/braze/support/BundleUtils;->toStringMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->extras:Ljava/util/Map;

    if-eqz p3, :cond_2

    .line 19
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->context:Landroid/content/Context;

    const-wide/16 p1, 0x5

    .line 71
    iput-wide p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->flushMinMinutes:J

    const-wide/16 p1, 0x78

    .line 73
    iput-wide p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->flushMaxMinutes:J

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->actionButtonsInternal:Ljava/util/List;

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushStoryPagesInternal:Ljava/util/List;

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationMessagesInternal:Ljava/util/List;

    .line 103
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationPersonMapInternal:Ljava/util/Map;

    .line 119
    invoke-direct {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->parsePayloadFieldsFromBundle()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 120
    sget-object p2, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {p2, p1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getAttachedBrazeExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 121
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/braze/models/push/BrazeNotificationPayload;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;)V

    return-void
.end method

.method public static final getAttachedBrazeExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getAttachedBrazeExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCampaignId$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getFlushMaxMinutes$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getFlushMinMinutes$annotations()V
    .locals 0

    return-void
.end method

.method public static final getPushStoryGravityAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getPushStoryGravityAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;J)J
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 3
    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;Z)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 4
    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic isPushDeliveryEnabled$annotations()V
    .locals 0

    return-void
.end method

.method public static final parseLong(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseLong(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final parseNonBlankString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseNonBlankString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final parseObjectAsInteger(Landroid/os/Bundle;Ljava/lang/String;I)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseObjectAsInteger(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private final parsePayloadFieldsFromBundle()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->parsePayloadFieldsFromBundle$parseNotificationMetadata(Lcom/braze/models/push/BrazeNotificationPayload;)V

    .line 2
    invoke-static {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->parsePayloadFieldsFromBundle$parseContentCardData(Lcom/braze/models/push/BrazeNotificationPayload;)V

    .line 3
    invoke-static {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->parsePayloadFieldsFromBundle$parseVisibleContent(Lcom/braze/models/push/BrazeNotificationPayload;)V

    .line 4
    invoke-static {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->parsePayloadFieldsFromBundle$parseBigTextStyle(Lcom/braze/models/push/BrazeNotificationPayload;)V

    .line 5
    invoke-static {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->parsePayloadFieldsFromBundle$parseBigImageStyle(Lcom/braze/models/push/BrazeNotificationPayload;)V

    .line 6
    invoke-static {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->parsePayloadFieldsFromBundle$parseActionButtons(Lcom/braze/models/push/BrazeNotificationPayload;)V

    .line 7
    invoke-static {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->parsePayloadFieldsFromBundle$parsePushStoryData(Lcom/braze/models/push/BrazeNotificationPayload;)V

    .line 8
    invoke-static {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->parsePayloadFieldsFromBundle$parseConversationPushData(Lcom/braze/models/push/BrazeNotificationPayload;)V

    .line 9
    invoke-static {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->parsePayloadFieldsFromBundle$parsePushDeliveryEventData(Lcom/braze/models/push/BrazeNotificationPayload;)V

    return-void
.end method

.method private static final parsePayloadFieldsFromBundle$parseActionButtons(Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->actionButtonsInternal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    .line 5
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    .line 6
    const-string v3, "ab_a*_a"

    invoke-virtual {v1, v0, v2, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    new-instance v1, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;

    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2, v0}, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;-><init>(Landroid/os/Bundle;I)V

    .line 13
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload;->actionButtonsInternal:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static final parsePayloadFieldsFromBundle$parseBigImageStyle(Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_iu"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseNonBlankString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->bigImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->extras:Ljava/util/Map;

    const-string v1, "appboy_image_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iput-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->bigImageUrl:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method private static final parsePayloadFieldsFromBundle$parseBigTextStyle(Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_bs"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->bigSummaryText:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_bt"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->bigTitleText:Ljava/lang/String;

    return-void
.end method

.method private static final parsePayloadFieldsFromBundle$parseContentCardData(Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_cd"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->contentCardSyncData:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_cd_uid"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->contentCardSyncUserId:Ljava/lang/String;

    return-void
.end method

.method private static final parsePayloadFieldsFromBundle$parseConversationPushData(Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_c_si"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationShortcutId:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_c_rpi"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationReplyPersonId:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationMessagesInternal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationPersonMapInternal:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 13
    :goto_0
    sget-object v2, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    .line 15
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    .line 16
    const-string v4, "ab_c_mt*"

    invoke-virtual {v2, v1, v3, v4}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 20
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    new-instance v2, Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;

    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3, v1}, Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;-><init>(Landroid/os/Bundle;I)V

    .line 23
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationMessagesInternal:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    sget-object v1, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    .line 31
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    .line 32
    const-string v3, "ab_c_pi*"

    invoke-virtual {v1, v0, v2, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 36
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 38
    :cond_2
    new-instance v1, Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;

    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2, v0}, Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;-><init>(Landroid/os/Bundle;I)V

    .line 39
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationPersonMapInternal:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;->getPersonId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private static final parsePayloadFieldsFromBundle$parseNotificationMetadata(Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "nd"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsInteger(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushDuration:Ljava/lang/Integer;

    .line 2
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_c"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isPushStory:Z

    .line 3
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_ct"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationCategory:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_vs"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsInteger(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationVisibility:Ljava/lang/Integer;

    .line 6
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_bc"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsInteger(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 7
    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationBadgeNumber:Ljava/lang/Integer;

    .line 9
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_pn"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->publicNotificationExtras:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "n"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsInteger(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->customNotificationId:Ljava/lang/Integer;

    .line 12
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "braze_push_received_timestamp"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseLong(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationReceivedTimestampMillis:Ljava/lang/Long;

    .line 15
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_iip"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isInlineImagePush:Z

    .line 16
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_cp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isConversationalPush:Z

    .line 17
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "p"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsInteger(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationPriorityInt:Ljava/lang/Integer;

    .line 18
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_push_fetch_test_triggers_key"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->shouldFetchTestTriggers:Z

    .line 19
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_sync_geos"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->shouldSyncGeofences:Z

    .line 20
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "br_ffr"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->shouldRefreshFeatureFlags:Z

    .line 21
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "br_br"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->shouldRefreshBanners:Z

    .line 22
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "appboy_uninstall_tracking"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->brazeExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 24
    :goto_1
    iput-boolean v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isUninstallTrackingPush:Z

    .line 26
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "uri"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->deeplink:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "cid"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->campaignId:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "br_p_id"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushUniqueId:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_use_webview"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->useWebView:Ljava/lang/Boolean;

    return-void
.end method

.method private static final parsePayloadFieldsFromBundle$parsePushDeliveryEventData(Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "bz_p_e"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsInteger(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isPushDeliveryEnabled:Z

    .line 2
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "bz_p_fn"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsLong(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x5

    :goto_1
    iput-wide v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->flushMinMinutes:J

    .line 3
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "bz_p_fx"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsLong(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x78

    :goto_2
    iput-wide v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->flushMaxMinutes:J

    return-void
.end method

.method private static final parsePayloadFieldsFromBundle$parsePushStoryData(Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "braze_story_index"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseObjectAsInteger(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushStoryPageIndex:I

    move v0, v3

    .line 3
    :goto_0
    sget-object v1, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    .line 5
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    .line 6
    const-string v4, "ab_c*_i"

    invoke-virtual {v1, v0, v2, v4}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    new-instance v1, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;

    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2, v0}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;-><init>(Landroid/os/Bundle;I)V

    .line 13
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushStoryPagesInternal:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v1, "braze_story_newly_received"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isNewlyReceivedPushStory:Z

    return-void
.end method

.method private static final parsePayloadFieldsFromBundle$parseVisibleContent(Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_nc"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseNonBlankString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationChannelId:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "t"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->titleText:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->contentText:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ab_li"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->largeIcon:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "sd"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationSound:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "s"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->summaryText:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    const-string v2, "ac"

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsColorInt(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->accentColor:Ljava/lang/Integer;

    return-void
.end method

.method public static final parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final parseStringAsBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final parseStringAsColorInt(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsColorInt(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final parseStringAsInteger(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsInteger(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final parseStringAsLong(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->parseStringAsLong(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAccentColor()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->accentColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getActionButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->actionButtonsInternal:Ljava/util/List;

    return-object v0
.end method

.method public final getBigImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->bigImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBigSummaryText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->bigSummaryText:Ljava/lang/String;

    return-object v0
.end method

.method public final getBigTitleText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->bigTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public final getBrazeExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->brazeExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getCampaignId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->campaignId:Ljava/lang/String;

    return-object v0
.end method

.method public final getConfigurationProvider()Lcom/braze/configuration/BrazeConfigurationProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    return-object v0
.end method

.method public final getContentCardSyncData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->contentCardSyncData:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentCardSyncUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->contentCardSyncUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->contentText:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getConversationMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationMessagesInternal:Ljava/util/List;

    return-object v0
.end method

.method public final getConversationPersonMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationPersonMapInternal:Ljava/util/Map;

    return-object v0
.end method

.method public final getConversationReplyPersonId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationReplyPersonId:Ljava/lang/String;

    return-object v0
.end method

.method public final getConversationShortcutId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomNotificationId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->customNotificationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDeeplink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->deeplink:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public final getFlushMaxMinutes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->flushMaxMinutes:J

    return-wide v0
.end method

.method public final getFlushMinMinutes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->flushMinMinutes:J

    return-wide v0
.end method

.method public final getLargeIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->largeIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotificationBadgeNumber()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationBadgeNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getNotificationCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotificationChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotificationExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getNotificationPriorityInt()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationPriorityInt:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getNotificationReceivedTimestampMillis()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationReceivedTimestampMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getNotificationSound()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationSound:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotificationVisibility()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationVisibility:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPublicNotificationExtras()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->publicNotificationExtras:Ljava/lang/String;

    return-object v0
.end method

.method public final getPushDuration()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPushStoryPageIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushStoryPageIndex:I

    return v0
.end method

.method public final getPushStoryPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushStoryPagesInternal:Ljava/util/List;

    return-object v0
.end method

.method public final getPushUniqueId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldFetchTestTriggers()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->shouldFetchTestTriggers:Z

    return v0
.end method

.method public final getShouldRefreshBanners()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->shouldRefreshBanners:Z

    return v0
.end method

.method public final getShouldRefreshFeatureFlags()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->shouldRefreshFeatureFlags:Z

    return v0
.end method

.method public final getShouldSyncGeofences()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->shouldSyncGeofences:Z

    return v0
.end method

.method public final getSummaryText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->summaryText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->titleText:Ljava/lang/String;

    return-object v0
.end method

.method public final getUseWebView()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->useWebView:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isConversationalPush()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isConversationalPush:Z

    return v0
.end method

.method public final isInlineImagePush()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isInlineImagePush:Z

    return v0
.end method

.method public final isNewlyReceivedPushStory()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isNewlyReceivedPushStory:Z

    return v0
.end method

.method public final isPushDeliveryEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isPushDeliveryEnabled:Z

    return v0
.end method

.method public final isPushStory()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isPushStory:Z

    return v0
.end method

.method public final isSilentPush()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->titleText:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->contentText:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUninstallTrackingPush()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isUninstallTrackingPush:Z

    return v0
.end method

.method public final setAccentColor(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->accentColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setActionButtons(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;",
            ">;)V"
        }
    .end annotation

    const-string v0, "actionButtons"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->actionButtonsInternal:Ljava/util/List;

    return-void
.end method

.method public final setBigImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->bigImageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setBigSummaryText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->bigSummaryText:Ljava/lang/String;

    return-void
.end method

.method public final setBigTitleText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->bigTitleText:Ljava/lang/String;

    return-void
.end method

.method public final setBrazeExtras(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->brazeExtras:Landroid/os/Bundle;

    return-void
.end method

.method public final setCampaignId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->campaignId:Ljava/lang/String;

    return-void
.end method

.method public final setConfigurationProvider(Lcom/braze/configuration/BrazeConfigurationProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    return-void
.end method

.method public final setContentCardSyncData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->contentCardSyncData:Ljava/lang/String;

    return-void
.end method

.method public final setContentCardSyncUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->contentCardSyncUserId:Ljava/lang/String;

    return-void
.end method

.method public final setContentText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->contentText:Ljava/lang/String;

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->context:Landroid/content/Context;

    return-void
.end method

.method public final setConversationShortcutId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationShortcutId:Ljava/lang/String;

    return-void
.end method

.method public final setConversationalPush(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isConversationalPush:Z

    return-void
.end method

.method public final setCustomNotificationId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->customNotificationId:Ljava/lang/Integer;

    return-void
.end method

.method public final setDeeplink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->deeplink:Ljava/lang/String;

    return-void
.end method

.method public final setExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->extras:Ljava/util/Map;

    return-void
.end method

.method public final setFlushMaxMinutes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->flushMaxMinutes:J

    return-void
.end method

.method public final setFlushMinMinutes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->flushMinMinutes:J

    return-void
.end method

.method public final setInlineImagePush(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isInlineImagePush:Z

    return-void
.end method

.method public final setIsInlineImagePush(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isInlineImagePush:Z

    return-void
.end method

.method public final setLargeIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->largeIcon:Ljava/lang/String;

    return-void
.end method

.method public final setNewlyReceivedPushStory(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isNewlyReceivedPushStory:Z

    return-void
.end method

.method public final setNotificationBadgeNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationBadgeNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setNotificationCategory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationCategory:Ljava/lang/String;

    return-void
.end method

.method public final setNotificationChannelId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationChannelId:Ljava/lang/String;

    return-void
.end method

.method public final setNotificationPriorityInt(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationPriorityInt:Ljava/lang/Integer;

    return-void
.end method

.method public final setNotificationReceivedTimestampMillis(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationReceivedTimestampMillis:Ljava/lang/Long;

    return-void
.end method

.method public final setNotificationSound(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationSound:Ljava/lang/String;

    return-void
.end method

.method public final setNotificationVisibility(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationVisibility:Ljava/lang/Integer;

    return-void
.end method

.method public final setPublicNotificationExtras(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->publicNotificationExtras:Ljava/lang/String;

    return-void
.end method

.method public final setPushDeliveryEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isPushDeliveryEnabled:Z

    return-void
.end method

.method public final setPushDuration(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushDuration:Ljava/lang/Integer;

    return-void
.end method

.method public final setPushStory(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isPushStory:Z

    return-void
.end method

.method public final setPushStoryPageIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushStoryPageIndex:I

    return-void
.end method

.method public final setPushStoryPages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pushStoryPages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushStoryPagesInternal:Ljava/util/List;

    return-void
.end method

.method public final setPushUniqueId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushUniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setShouldFetchTestTriggers(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->shouldFetchTestTriggers:Z

    return-void
.end method

.method public final setShouldRefreshBanners(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->shouldRefreshBanners:Z

    return-void
.end method

.method public final setShouldRefreshFeatureFlags(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->shouldRefreshFeatureFlags:Z

    return-void
.end method

.method public final setShouldSyncGeofences(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->shouldSyncGeofences:Z

    return-void
.end method

.method public final setSummaryText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->summaryText:Ljava/lang/String;

    return-void
.end method

.method public final setTitleText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->titleText:Ljava/lang/String;

    return-void
.end method

.method public final setUninstallTrackingPush(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isUninstallTrackingPush:Z

    return-void
.end method

.method public final setUseWebView(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload;->useWebView:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushDuration:Ljava/lang/Integer;

    const-string v3, "PushDuration"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    iget-boolean v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isPushStory:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "IsPushStory"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5
    iget-boolean v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isInlineImagePush:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "IsInlineImagePush"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9
    iget-boolean v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isConversationalPush:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "IsConversationalPush"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->publicNotificationExtras:Ljava/lang/String;

    const-string v4, "PublicNotificationExtras"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationChannelId:Ljava/lang/String;

    const-string v4, "NotificationChannelId"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationCategory:Ljava/lang/String;

    const-string v4, "NotificationCategory"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationVisibility:Ljava/lang/Integer;

    const-string v4, "NotificationVisibility"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationBadgeNumber:Ljava/lang/Integer;

    const-string v4, "NotificationBadgeNumber"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->customNotificationId:Ljava/lang/Integer;

    const-string v4, "CustomNotificationId"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationReceivedTimestampMillis:Ljava/lang/Long;

    const-string v4, "NotificationReceivedTimestampMillis"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->contentCardSyncData:Ljava/lang/String;

    const-string v4, "ContentCardSyncData"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->contentCardSyncUserId:Ljava/lang/String;

    const-string v4, "ContentCardSyncUserId"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->titleText:Ljava/lang/String;

    const-string v4, "TitleText"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 119
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->contentText:Ljava/lang/String;

    const-string v4, "ContentText"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->largeIcon:Ljava/lang/String;

    const-string v4, "LargeIcon"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 152
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->notificationSound:Ljava/lang/String;

    const-string v4, "NotificationSound"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 170
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->summaryText:Ljava/lang/String;

    const-string v4, "SummaryText"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 189
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->accentColor:Ljava/lang/Integer;

    const-string v4, "AccentColor"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->bigSummaryText:Ljava/lang/String;

    const-string v4, "BigSummaryText"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->bigTitleText:Ljava/lang/String;

    const-string v4, "BigTitleText"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 252
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->bigImageUrl:Ljava/lang/String;

    const-string v4, "BigImageUrl"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 275
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getActionButtons()Ljava/util/List;

    move-result-object v3

    const-string v4, "ActionButtons"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget v2, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushStoryPageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PushStoryPageIndex"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushStoryPagesInternal:Ljava/util/List;

    const-string v4, "PushStoryPages"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 350
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationMessagesInternal:Ljava/util/List;

    const-string v4, "ConversationMessages"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 377
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationPersonMapInternal:Ljava/util/Map;

    const-string v4, "ConversationPersonMap"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 405
    iget-boolean v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->isPushDeliveryEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "PushDeliveryEnabled"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 434
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->pushUniqueId:Ljava/lang/String;

    const-string v4, "PushUniqueId"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 464
    iget-object v3, p0, Lcom/braze/models/push/BrazeNotificationPayload;->conversationShortcutId:Ljava/lang/String;

    const-string v4, "ConversationShortcutId"

    invoke-static {v1, v4, v3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

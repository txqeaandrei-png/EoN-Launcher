package com.braze.models.push;

import android.content.Context;
import android.os.Bundle;
import androidx.core.app.Person;
import androidx.core.view.GravityCompat;
import androidx.webkit.ProxyConfig;
import com.braze.Constants;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.models.inappmessage.InAppMessageBase;
import com.braze.support.BrazeLogger;
import com.braze.support.BundleUtils;
import com.braze.support.JsonUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.spongycastle.i18n.MessageBundle;
import org.spongycastle.i18n.TextBundle;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u001c\n\u0002\u0010\t\n\u0002\bV\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\n\b\u0007\u0018\u0000 Æ\u00012\u00020\u0001:\nÂ\u0001Ã\u0001Ä\u0001Å\u0001Æ\u0001B7\b\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010¼\u0001\u001a\u00030½\u00012\u000f\u0010\u009d\u0001\u001a\n\u0012\u0005\u0012\u00030\u009c\u00010\u009b\u0001J\u0019\u0010¾\u0001\u001a\u00030½\u00012\u000f\u0010¨\u0001\u001a\n\u0012\u0005\u0012\u00030§\u00010\u009b\u0001J\u0010\u0010¿\u0001\u001a\u00030½\u00012\u0006\u0010+\u001a\u00020'J\n\u0010À\u0001\u001a\u00030½\u0001H\u0002J\t\u0010Á\u0001\u001a\u00020\u0016H\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0010\"\u0004\b\u0012\u0010\u0013R&\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001e\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001a\u0010&\u001a\u00020'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010(\"\u0004\b)\u0010*R\u001a\u0010+\u001a\u00020'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010(\"\u0004\b,\u0010*R\u001a\u0010-\u001a\u00020'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010(\"\u0004\b.\u0010*R\u001c\u0010/\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001c\u00104\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00101\"\u0004\b6\u00103R\u001c\u00107\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00101\"\u0004\b9\u00103R\u001e\u0010:\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\b;\u0010\"\"\u0004\b<\u0010$R\u001e\u0010=\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\b>\u0010\"\"\u0004\b?\u0010$R\u001e\u0010@\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\bA\u0010\"\"\u0004\bB\u0010$R\u001e\u0010C\u001a\u0004\u0018\u00010DX\u0086\u000e¢\u0006\u0010\n\u0002\u0010I\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\u001e\u0010J\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\bK\u0010\"\"\u0004\bL\u0010$R\u001a\u0010M\u001a\u00020'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u0010(\"\u0004\bO\u0010*R\u001a\u0010P\u001a\u00020'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010(\"\u0004\bR\u0010*R\u001a\u0010S\u001a\u00020'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bT\u0010(\"\u0004\bU\u0010*R\u001a\u0010V\u001a\u00020'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010(\"\u0004\bX\u0010*R\u001a\u0010Y\u001a\u00020'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bY\u0010(\"\u0004\bZ\u0010*R\u001c\u0010[\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u00101\"\u0004\b]\u00103R\u001c\u0010^\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b_\u00101\"\u0004\b`\u00103R\u001e\u0010a\u001a\u0004\u0018\u00010'X\u0086\u000e¢\u0006\u0010\n\u0002\u0010f\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR\u001c\u0010g\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bh\u00101\"\u0004\bi\u00103R\u001c\u0010j\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bk\u00101\"\u0004\bl\u00103R\u001c\u0010m\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bn\u00101\"\u0004\bo\u00103R\u001c\u0010p\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bq\u00101\"\u0004\br\u00103R\u001c\u0010s\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bt\u00101\"\u0004\bu\u00103R\u001c\u0010v\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bw\u00101\"\u0004\bx\u00103R\u001c\u0010y\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bz\u00101\"\u0004\b{\u00103R \u0010|\u001a\u0004\u0018\u00010 8GX\u0086\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\b}\u0010\"\"\u0004\b~\u0010$R\u001e\u0010\u007f\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0080\u0001\u00101\"\u0005\b\u0081\u0001\u00103R\u001f\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0083\u0001\u00101\"\u0005\b\u0084\u0001\u00103R)\u0010\u0085\u0001\u001a\u00020'8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0000\u0012\u0006\b\u0086\u0001\u0010\u0087\u0001\u001a\u0005\b\u0085\u0001\u0010(\"\u0005\b\u0088\u0001\u0010*R+\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0000\u0012\u0006\b\u008a\u0001\u0010\u0087\u0001\u001a\u0005\b\u008b\u0001\u00101\"\u0005\b\u008c\u0001\u00103R+\u0010\u008d\u0001\u001a\u00020D8\u0006@\u0006X\u0087\u000e¢\u0006\u001a\n\u0000\u0012\u0006\b\u008e\u0001\u0010\u0087\u0001\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001\"\u0006\b\u0091\u0001\u0010\u0092\u0001R+\u0010\u0093\u0001\u001a\u00020D8\u0006@\u0006X\u0087\u000e¢\u0006\u001a\n\u0000\u0012\u0006\b\u0094\u0001\u0010\u0087\u0001\u001a\u0006\b\u0095\u0001\u0010\u0090\u0001\"\u0006\b\u0096\u0001\u0010\u0092\u0001R\u001f\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0098\u0001\u00101\"\u0005\b\u0099\u0001\u00103R\u0017\u0010\u009a\u0001\u001a\n\u0012\u0005\u0012\u00030\u009c\u00010\u009b\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u009d\u0001\u001a\n\u0012\u0005\u0012\u00030\u009c\u00010\u009e\u00018F¢\u0006\b\u001a\u0006\b\u009f\u0001\u0010 \u0001R\u001f\u0010¡\u0001\u001a\u00020 X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b¢\u0001\u0010£\u0001\"\u0006\b¤\u0001\u0010¥\u0001R\u0017\u0010¦\u0001\u001a\n\u0012\u0005\u0012\u00030§\u00010\u009b\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010¨\u0001\u001a\n\u0012\u0005\u0012\u00030§\u00010\u009e\u00018F¢\u0006\b\u001a\u0006\b©\u0001\u0010 \u0001R\u001d\u0010ª\u0001\u001a\u00020'X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\bª\u0001\u0010(\"\u0005\b«\u0001\u0010*R\u0017\u0010¬\u0001\u001a\n\u0012\u0005\u0012\u00030\u00ad\u00010\u009b\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010®\u0001\u001a\n\u0012\u0005\u0012\u00030\u00ad\u00010\u009e\u00018F¢\u0006\b\u001a\u0006\b¯\u0001\u0010 \u0001R\u001f\u0010°\u0001\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0005\u0012\u00030²\u00010±\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010³\u0001\u001a\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0005\u0012\u00030²\u00010\u00158F¢\u0006\u0007\u001a\u0005\b´\u0001\u0010\u0018R\u001f\u0010µ\u0001\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b¶\u0001\u00101\"\u0005\b·\u0001\u00103R%\u0010¹\u0001\u001a\u0004\u0018\u00010\u00162\t\u0010¸\u0001\u001a\u0004\u0018\u00010\u0016@BX\u0086\u000e¢\u0006\t\n\u0000\u001a\u0005\bº\u0001\u00101R\u0013\u0010»\u0001\u001a\u00020'8F¢\u0006\u0007\u001a\u0005\b»\u0001\u0010(¨\u0006Ç\u0001"}, d2 = {"Lcom/braze/models/push/BrazeNotificationPayload;", "", "notificationExtras", "Landroid/os/Bundle;", "brazeExtras", "context", "Landroid/content/Context;", "configurationProvider", "Lcom/braze/configuration/BrazeConfigurationProvider;", "<init>", "(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;)V", "getConfigurationProvider", "()Lcom/braze/configuration/BrazeConfigurationProvider;", "setConfigurationProvider", "(Lcom/braze/configuration/BrazeConfigurationProvider;)V", "getNotificationExtras", "()Landroid/os/Bundle;", "getBrazeExtras", "setBrazeExtras", "(Landroid/os/Bundle;)V", InAppMessageBase.EXTRAS, "", "", "getExtras", "()Ljava/util/Map;", "setExtras", "(Ljava/util/Map;)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "pushDuration", "", "getPushDuration", "()Ljava/lang/Integer;", "setPushDuration", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "isPushStory", "", "()Z", "setPushStory", "(Z)V", "isInlineImagePush", "setInlineImagePush", "isConversationalPush", "setConversationalPush", "publicNotificationExtras", "getPublicNotificationExtras", "()Ljava/lang/String;", "setPublicNotificationExtras", "(Ljava/lang/String;)V", "notificationChannelId", "getNotificationChannelId", "setNotificationChannelId", "notificationCategory", "getNotificationCategory", "setNotificationCategory", "notificationVisibility", "getNotificationVisibility", "setNotificationVisibility", "notificationBadgeNumber", "getNotificationBadgeNumber", "setNotificationBadgeNumber", "customNotificationId", "getCustomNotificationId", "setCustomNotificationId", "notificationReceivedTimestampMillis", "", "getNotificationReceivedTimestampMillis", "()Ljava/lang/Long;", "setNotificationReceivedTimestampMillis", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "notificationPriorityInt", "getNotificationPriorityInt", "setNotificationPriorityInt", "shouldFetchTestTriggers", "getShouldFetchTestTriggers", "setShouldFetchTestTriggers", "shouldSyncGeofences", "getShouldSyncGeofences", "setShouldSyncGeofences", "shouldRefreshFeatureFlags", "getShouldRefreshFeatureFlags", "setShouldRefreshFeatureFlags", "shouldRefreshBanners", "getShouldRefreshBanners", "setShouldRefreshBanners", "isUninstallTrackingPush", "setUninstallTrackingPush", "deeplink", "getDeeplink", "setDeeplink", "pushUniqueId", "getPushUniqueId", "setPushUniqueId", "useWebView", "getUseWebView", "()Ljava/lang/Boolean;", "setUseWebView", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "contentCardSyncData", "getContentCardSyncData", "setContentCardSyncData", "contentCardSyncUserId", "getContentCardSyncUserId", "setContentCardSyncUserId", "titleText", "getTitleText", "setTitleText", "contentText", "getContentText", "setContentText", "largeIcon", "getLargeIcon", "setLargeIcon", "notificationSound", "getNotificationSound", "setNotificationSound", "summaryText", "getSummaryText", "setSummaryText", "accentColor", "getAccentColor", "setAccentColor", "bigSummaryText", "getBigSummaryText", "setBigSummaryText", "bigTitleText", "getBigTitleText", "setBigTitleText", "isPushDeliveryEnabled", "isPushDeliveryEnabled$annotations", "()V", "setPushDeliveryEnabled", "campaignId", "getCampaignId$annotations", "getCampaignId", "setCampaignId", "flushMinMinutes", "getFlushMinMinutes$annotations", "getFlushMinMinutes", "()J", "setFlushMinMinutes", "(J)V", "flushMaxMinutes", "getFlushMaxMinutes$annotations", "getFlushMaxMinutes", "setFlushMaxMinutes", "bigImageUrl", "getBigImageUrl", "setBigImageUrl", "actionButtonsInternal", "", "Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;", "actionButtons", "", "getActionButtons", "()Ljava/util/List;", "pushStoryPageIndex", "getPushStoryPageIndex", "()I", "setPushStoryPageIndex", "(I)V", "pushStoryPagesInternal", "Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;", "pushStoryPages", "getPushStoryPages", "isNewlyReceivedPushStory", "setNewlyReceivedPushStory", "conversationMessagesInternal", "Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;", "conversationMessages", "getConversationMessages", "conversationPersonMapInternal", "", "Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;", "conversationPersonMap", "getConversationPersonMap", "conversationShortcutId", "getConversationShortcutId", "setConversationShortcutId", "value", "conversationReplyPersonId", "getConversationReplyPersonId", "isSilentPush", "setActionButtons", "", "setPushStoryPages", "setIsInlineImagePush", "parsePayloadFieldsFromBundle", "toString", "ActionButton", "PushStoryPage", "ConversationMessage", "ConversationPerson", "Companion", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeNotificationPayload {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final long DEFAULT_PUSH_DELIVERY_MAX_FLUSH = 120;
    public static final long DEFAULT_PUSH_DELIVERY_MIN_FLUSH = 5;
    private Integer accentColor;
    private List<ActionButton> actionButtonsInternal;
    private String bigImageUrl;
    private String bigSummaryText;
    private String bigTitleText;
    private Bundle brazeExtras;
    private String campaignId;
    private BrazeConfigurationProvider configurationProvider;
    private String contentCardSyncData;
    private String contentCardSyncUserId;
    private String contentText;
    private Context context;
    private final List<ConversationMessage> conversationMessagesInternal;
    private final Map<String, ConversationPerson> conversationPersonMapInternal;
    private String conversationReplyPersonId;
    private String conversationShortcutId;
    private Integer customNotificationId;
    private String deeplink;
    private Map<String, String> extras;
    private long flushMaxMinutes;
    private long flushMinMinutes;
    private boolean isConversationalPush;
    private boolean isInlineImagePush;
    private boolean isNewlyReceivedPushStory;
    private boolean isPushDeliveryEnabled;
    private boolean isPushStory;
    private boolean isUninstallTrackingPush;
    private String largeIcon;
    private Integer notificationBadgeNumber;
    private String notificationCategory;
    private String notificationChannelId;
    private final Bundle notificationExtras;
    private Integer notificationPriorityInt;
    private Long notificationReceivedTimestampMillis;
    private String notificationSound;
    private Integer notificationVisibility;
    private String publicNotificationExtras;
    private Integer pushDuration;
    private int pushStoryPageIndex;
    private List<PushStoryPage> pushStoryPagesInternal;
    private String pushUniqueId;
    private boolean shouldFetchTestTriggers;
    private boolean shouldRefreshBanners;
    private boolean shouldRefreshFeatureFlags;
    private boolean shouldSyncGeofences;
    private String summaryText;
    private String titleText;
    private Boolean useWebView;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0003J\b\u0010!\u001a\u00020\rH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u000f\"\u0004\b\u001a\u0010\u0011R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u000f\"\u0004\b\u001d\u0010\u0011¨\u0006\""}, d2 = {"Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;", "", "notificationExtras", "Landroid/os/Bundle;", "actionIndex", "", "<init>", "(Landroid/os/Bundle;I)V", "getActionIndex", "()I", "setActionIndex", "(I)V", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "actionId", "getActionId", "setActionId", "uri", "getUri", "setUri", "useWebview", "getUseWebview", "setUseWebview", TextBundle.TEXT_ENTRY, "getText", "setText", "putIntoBundle", "", "destination", "toString", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ActionButton {
        private String actionId;
        private int actionIndex;
        private String text;
        private String type;
        private String uri;
        private String useWebview;

        public ActionButton(Bundle notificationExtras, int i) {
            Intrinsics.checkNotNullParameter(notificationExtras, "notificationExtras");
            this.actionIndex = i;
            Companion companion = BrazeNotificationPayload.INSTANCE;
            this.type = companion.getTemplateFieldAtIndex(i, notificationExtras, Constants.BRAZE_PUSH_ACTION_TYPE_KEY_TEMPLATE);
            this.actionId = companion.getTemplateFieldAtIndex(this.actionIndex, notificationExtras, Constants.BRAZE_PUSH_ACTION_ID_KEY_TEMPLATE);
            this.uri = companion.getTemplateFieldAtIndex(this.actionIndex, notificationExtras, Constants.BRAZE_PUSH_ACTION_URI_KEY_TEMPLATE);
            this.useWebview = companion.getTemplateFieldAtIndex(this.actionIndex, notificationExtras, Constants.BRAZE_PUSH_ACTION_USE_WEBVIEW_KEY_TEMPLATE);
            this.text = companion.getTemplateFieldAtIndex(this.actionIndex, notificationExtras, Constants.BRAZE_PUSH_ACTION_TEXT_KEY_TEMPLATE);
        }

        public final String getActionId() {
            return this.actionId;
        }

        public final int getActionIndex() {
            return this.actionIndex;
        }

        public final String getText() {
            return this.text;
        }

        public final String getType() {
            return this.type;
        }

        public final String getUri() {
            return this.uri;
        }

        public final String getUseWebview() {
            return this.useWebview;
        }

        public final void putIntoBundle(Bundle destination) {
            Intrinsics.checkNotNullParameter(destination, "destination");
            destination.putInt(Constants.BRAZE_ACTION_INDEX_KEY, this.actionIndex);
            destination.putString(Constants.BRAZE_ACTION_TYPE_KEY, this.type);
            destination.putString(Constants.BRAZE_ACTION_ID_KEY, this.actionId);
            destination.putString(Constants.BRAZE_ACTION_URI_KEY, this.uri);
            destination.putString(Constants.BRAZE_ACTION_USE_WEBVIEW_KEY, this.useWebview);
        }

        public final void setActionId(String str) {
            this.actionId = str;
        }

        public final void setActionIndex(int i) {
            this.actionIndex = i;
        }

        public final void setText(String str) {
            this.text = str;
        }

        public final void setType(String str) {
            this.type = str;
        }

        public final void setUri(String str) {
            this.uri = str;
        }

        public final void setUseWebview(String str) {
            this.useWebview = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Companion companion = BrazeNotificationPayload.INSTANCE;
            return sb.append(companion.stringAndKey("ActionIndex", Integer.valueOf(this.actionIndex))).append(companion.stringAndKey("Type", this.type)).append(companion.stringAndKey("Id", this.actionId)).append(companion.stringAndKey("Uri", this.uri)).append(companion.stringAndKey("UseWebview", this.useWebview)).append(companion.stringAndKey("Text", this.text)).toString();
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0007J\"\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\rH\u0007J,\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\rH\u0007J(\u0010\f\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J(\u0010\f\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0005H\u0007J \u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\rH\u0007J\u001f\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\rH\u0007¢\u0006\u0002\u0010\u0018J \u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000fH\u0007J\u001f\u0010\u001a\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\rH\u0007¢\u0006\u0002\u0010\u001bJ\u0018\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\rH\u0007J\u001f\u0010\u001d\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\rH\u0007¢\u0006\u0002\u0010\u001bJ\u001a\u0010\u001e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\rH\u0007J\u001f\u0010\u001f\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\rH\u0007¢\u0006\u0002\u0010\u0018J\u001a\u0010 \u001a\u0004\u0018\u00010\r2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\rH\u0007J\u001a\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\r2\b\u0010#\u001a\u0004\u0018\u00010\u0001H\u0002R\u0016\u0010\u0004\u001a\u00020\u00058\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0003R\u0016\u0010\u0007\u001a\u00020\u00058\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\u0003¨\u0006$"}, d2 = {"Lcom/braze/models/push/BrazeNotificationPayload$Companion;", "", "<init>", "()V", "DEFAULT_PUSH_DELIVERY_MIN_FLUSH", "", "getDEFAULT_PUSH_DELIVERY_MIN_FLUSH$android_sdk_base_release$annotations", "DEFAULT_PUSH_DELIVERY_MAX_FLUSH", "getDEFAULT_PUSH_DELIVERY_MAX_FLUSH$android_sdk_base_release$annotations", "getAttachedBrazeExtras", "Landroid/os/Bundle;", "notificationExtras", "getTemplateFieldAtIndex", "", "index", "", "actionFieldKeyTemplate", "defaultValue", "", "actionIndex", "getPushStoryGravityAtIndex", "parseStringAsInteger", "bundle", "key", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;", "parseObjectAsInteger", "parseStringAsLong", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Long;", "parseStringAsBoolean", "parseLong", "parseString", "parseStringAsColorInt", "parseNonBlankString", "stringAndKey", "prefix", "value", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getDEFAULT_PUSH_DELIVERY_MAX_FLUSH$android_sdk_base_release$annotations() {
        }

        public static /* synthetic */ void getDEFAULT_PUSH_DELIVERY_MIN_FLUSH$android_sdk_base_release$annotations() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getTemplateFieldAtIndex$lambda$0() {
            return "Failed to parse action field boolean. Returning default.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getTemplateFieldAtIndex$lambda$1() {
            return "Failed to parse action field long. Returning default.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String parseLong$lambda$10(String str, Bundle bundle) {
            return "Failed to parse long with key " + str + " and bundle: " + bundle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String parseNonBlankString$lambda$14(String str, Bundle bundle) {
            return "Failed to parse non blank string with key " + str + " and bundle: " + bundle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String parseObjectAsInteger$lambda$5(String str, Bundle bundle) {
            return "Failed to parse string as int with key " + str + " and bundle: " + bundle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String parseString$lambda$11(String str, Bundle bundle) {
            return "Failed to parse string with key " + str + " and bundle: " + bundle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String parseStringAsBoolean$lambda$9(String str, Bundle bundle) {
            return "Failed to parse string as boolean with key " + str + " and bundle: " + bundle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String parseStringAsColorInt$lambda$13(String str, Bundle bundle) {
            return "Failed to parse string as color int with key " + str + " and bundle: " + bundle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String parseStringAsInteger$lambda$3(String str, Bundle bundle) {
            return "Failed to parse string as int with key " + str + " and bundle: " + bundle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String parseStringAsLong$lambda$7(String str, Bundle bundle) {
            return "Failed to parse string as long with key " + str + " and bundle: " + bundle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String stringAndKey(String prefix, Object value) {
            return value != null ? "\n" + prefix + " = " + value : "";
        }

        @JvmStatic
        public final Bundle getAttachedBrazeExtras(Bundle notificationExtras) {
            if (notificationExtras == null) {
                return new Bundle();
            }
            if (notificationExtras.containsKey(Constants.BRAZE_PUSH_STORY_IS_NEWLY_RECEIVED) && !notificationExtras.getBoolean(Constants.BRAZE_PUSH_STORY_IS_NEWLY_RECEIVED)) {
                Bundle bundle = notificationExtras.getBundle(Constants.BRAZE_PUSH_EXTRAS_KEY);
                return bundle == null ? new Bundle() : bundle;
            }
            if (Constants.isAmazonDevice()) {
                return new Bundle(notificationExtras);
            }
            Object obj = notificationExtras.get(Constants.BRAZE_PUSH_EXTRAS_KEY);
            if (obj instanceof String) {
                return JsonUtils.parseJsonObjectIntoBundle((String) obj);
            }
            return obj instanceof Bundle ? (Bundle) obj : new Bundle();
        }

        @JvmStatic
        public final int getPushStoryGravityAtIndex(int actionIndex, Bundle notificationExtras, String actionFieldKeyTemplate) {
            Intrinsics.checkNotNullParameter(notificationExtras, "notificationExtras");
            Intrinsics.checkNotNullParameter(actionFieldKeyTemplate, "actionFieldKeyTemplate");
            String string = notificationExtras.getString(StringsKt.replace$default(actionFieldKeyTemplate, ProxyConfig.MATCH_ALL_SCHEMES, String.valueOf(actionIndex), false, 4, (Object) null));
            if (string != null && !StringsKt.isBlank(string) && string != null) {
                int iHashCode = string.hashCode();
                if (iHashCode == -1364013995) {
                    string.equals("center");
                } else if (iHashCode != 100571) {
                    if (iHashCode == 109757538 && string.equals("start")) {
                        return GravityCompat.START;
                    }
                } else if (string.equals("end")) {
                    return GravityCompat.END;
                }
            }
            return 17;
        }

        @JvmStatic
        public final String getTemplateFieldAtIndex(int index, Bundle notificationExtras, String actionFieldKeyTemplate) {
            Intrinsics.checkNotNullParameter(notificationExtras, "notificationExtras");
            Intrinsics.checkNotNullParameter(actionFieldKeyTemplate, "actionFieldKeyTemplate");
            return getTemplateFieldAtIndex(index, notificationExtras, actionFieldKeyTemplate, "");
        }

        @JvmStatic
        public final Long parseLong(final Bundle bundle, final String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            try {
                if (bundle.containsKey(key)) {
                    return Long.valueOf(bundle.getLong(key));
                }
                return null;
            } catch (Exception unused) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.push.BrazeNotificationPayload$Companion$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationPayload.Companion.parseLong$lambda$10(key, bundle);
                    }
                }, 7, (Object) null);
                return null;
            }
        }

        @JvmStatic
        public final String parseNonBlankString(final Bundle bundle, final String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            try {
                String string = parseString(bundle, key);
                if (string == null || StringsKt.isBlank(string)) {
                    return null;
                }
                return string;
            } catch (Exception unused) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.push.BrazeNotificationPayload$Companion$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationPayload.Companion.parseNonBlankString$lambda$14(key, bundle);
                    }
                }, 7, (Object) null);
                return null;
            }
        }

        @JvmStatic
        public final int parseObjectAsInteger(final Bundle bundle, final String key, int defaultValue) {
            Object obj;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            try {
                if (bundle.containsKey(key) && (obj = bundle.get(key)) != null) {
                    return Integer.parseInt(obj.toString());
                }
            } catch (Exception unused) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.push.BrazeNotificationPayload$Companion$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationPayload.Companion.parseObjectAsInteger$lambda$5(key, bundle);
                    }
                }, 7, (Object) null);
            }
            return defaultValue;
        }

        @JvmStatic
        public final String parseString(final Bundle bundle, final String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            try {
                if (bundle.containsKey(key)) {
                    return bundle.getString(key);
                }
                return null;
            } catch (Exception unused) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.push.BrazeNotificationPayload$Companion$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationPayload.Companion.parseString$lambda$11(key, bundle);
                    }
                }, 7, (Object) null);
                return null;
            }
        }

        @JvmStatic
        public final boolean parseStringAsBoolean(final Bundle bundle, final String key) {
            String string;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            try {
                if (!bundle.containsKey(key) || (string = bundle.getString(key)) == null) {
                    return false;
                }
                return Boolean.parseBoolean(string);
            } catch (Exception unused) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.push.BrazeNotificationPayload$Companion$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationPayload.Companion.parseStringAsBoolean$lambda$9(key, bundle);
                    }
                }, 7, (Object) null);
                return false;
            }
        }

        @JvmStatic
        public final Integer parseStringAsColorInt(final Bundle bundle, final String key) {
            String string;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            try {
                if (!bundle.containsKey(key) || (string = bundle.getString(key)) == null) {
                    return null;
                }
                return Integer.valueOf((int) Long.parseLong(string));
            } catch (Exception unused) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.push.BrazeNotificationPayload$Companion$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationPayload.Companion.parseStringAsColorInt$lambda$13(key, bundle);
                    }
                }, 7, (Object) null);
                return null;
            }
        }

        @JvmStatic
        public final Integer parseStringAsInteger(final Bundle bundle, final String key) {
            String string;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            try {
                if (!bundle.containsKey(key) || (string = bundle.getString(key)) == null) {
                    return null;
                }
                return Integer.valueOf(Integer.parseInt(string));
            } catch (Exception unused) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.push.BrazeNotificationPayload$Companion$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationPayload.Companion.parseStringAsInteger$lambda$3(key, bundle);
                    }
                }, 7, (Object) null);
                return null;
            }
        }

        @JvmStatic
        public final Long parseStringAsLong(final Bundle bundle, final String key) {
            String string;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            try {
                if (!bundle.containsKey(key) || (string = bundle.getString(key)) == null) {
                    return null;
                }
                return Long.valueOf(Long.parseLong(string));
            } catch (Exception unused) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.push.BrazeNotificationPayload$Companion$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationPayload.Companion.parseStringAsLong$lambda$7(key, bundle);
                    }
                }, 7, (Object) null);
                return null;
            }
        }

        private Companion() {
        }

        @JvmStatic
        public final String getTemplateFieldAtIndex(int index, Bundle notificationExtras, String actionFieldKeyTemplate, String defaultValue) {
            Intrinsics.checkNotNullParameter(notificationExtras, "notificationExtras");
            Intrinsics.checkNotNullParameter(actionFieldKeyTemplate, "actionFieldKeyTemplate");
            String string = notificationExtras.getString(StringsKt.replace$default(actionFieldKeyTemplate, ProxyConfig.MATCH_ALL_SCHEMES, String.valueOf(index), false, 4, (Object) null));
            return string == null ? defaultValue : string;
        }

        @JvmStatic
        public final boolean getTemplateFieldAtIndex(int actionIndex, Bundle notificationExtras, String actionFieldKeyTemplate, boolean defaultValue) {
            Intrinsics.checkNotNullParameter(notificationExtras, "notificationExtras");
            Intrinsics.checkNotNullParameter(actionFieldKeyTemplate, "actionFieldKeyTemplate");
            String string = notificationExtras.getString(StringsKt.replace$default(actionFieldKeyTemplate, ProxyConfig.MATCH_ALL_SCHEMES, String.valueOf(actionIndex), false, 4, (Object) null));
            if (string == null) {
                return defaultValue;
            }
            try {
                return Boolean.parseBoolean(string);
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.push.BrazeNotificationPayload$Companion$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationPayload.Companion.getTemplateFieldAtIndex$lambda$0();
                    }
                }, 4, (Object) null);
                return defaultValue;
            }
        }

        @JvmStatic
        public final long getTemplateFieldAtIndex(int actionIndex, Bundle notificationExtras, String actionFieldKeyTemplate, long defaultValue) {
            Intrinsics.checkNotNullParameter(notificationExtras, "notificationExtras");
            Intrinsics.checkNotNullParameter(actionFieldKeyTemplate, "actionFieldKeyTemplate");
            String string = notificationExtras.getString(StringsKt.replace$default(actionFieldKeyTemplate, ProxyConfig.MATCH_ALL_SCHEMES, String.valueOf(actionIndex), false, 4, (Object) null));
            if (string == null) {
                return defaultValue;
            }
            try {
                return Long.parseLong(string);
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.push.BrazeNotificationPayload$Companion$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeNotificationPayload.Companion.getTemplateFieldAtIndex$lambda$1();
                    }
                }, 4, (Object) null);
                return defaultValue;
            }
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u0012\u001a\u00020\tH\u0016R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;", "", "notificationExtras", "Landroid/os/Bundle;", "index", "", "<init>", "(Landroid/os/Bundle;I)V", InAppMessageBase.MESSAGE, "", "getMessage", "()Ljava/lang/String;", "timestamp", "", "getTimestamp", "()J", "personId", "getPersonId", "toString", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ConversationMessage {
        private final String message;
        private final String personId;
        private final long timestamp;

        public ConversationMessage(Bundle notificationExtras, int i) {
            Intrinsics.checkNotNullParameter(notificationExtras, "notificationExtras");
            Companion companion = BrazeNotificationPayload.INSTANCE;
            this.message = companion.getTemplateFieldAtIndex(i, notificationExtras, Constants.BRAZE_CONVERSATIONAL_PUSH_MESSAGE_TEXT_TEMPLATE);
            this.timestamp = companion.getTemplateFieldAtIndex(i, notificationExtras, Constants.BRAZE_CONVERSATIONAL_PUSH_MESSAGE_TIMESTAMP_TEMPLATE, 0L);
            this.personId = companion.getTemplateFieldAtIndex(i, notificationExtras, Constants.BRAZE_CONVERSATIONAL_PUSH_MESSAGE_PERSON_ID_TEMPLATE);
        }

        public final String getMessage() {
            return this.message;
        }

        public final String getPersonId() {
            return this.personId;
        }

        public final long getTimestamp() {
            return this.timestamp;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Companion companion = BrazeNotificationPayload.INSTANCE;
            return sb.append(companion.stringAndKey("Message", this.message)).append(companion.stringAndKey("Timestamp", Long.valueOf(this.timestamp))).append(companion.stringAndKey("PersonId", this.personId)).toString();
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u0018\u001a\u00020\tH\u0016R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\f\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0014\u001a\u00020\u00158F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;", "", "notificationExtras", "Landroid/os/Bundle;", "index", "", "<init>", "(Landroid/os/Bundle;I)V", "personId", "", "getPersonId", "()Ljava/lang/String;", "name", "getName", "uri", "getUri", "isImportant", "", "()Z", "isBot", "person", "Landroidx/core/app/Person;", "getPerson", "()Landroidx/core/app/Person;", "toString", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ConversationPerson {
        private final boolean isBot;
        private final boolean isImportant;
        private final String name;
        private final String personId;
        private final String uri;

        public ConversationPerson(Bundle notificationExtras, int i) {
            Intrinsics.checkNotNullParameter(notificationExtras, "notificationExtras");
            Companion companion = BrazeNotificationPayload.INSTANCE;
            this.personId = companion.getTemplateFieldAtIndex(i, notificationExtras, Constants.BRAZE_CONVERSATIONAL_PUSH_PERSON_ID_TEMPLATE);
            this.name = companion.getTemplateFieldAtIndex(i, notificationExtras, Constants.BRAZE_CONVERSATIONAL_PUSH_PERSON_NAME_TEMPLATE);
            this.uri = companion.getTemplateFieldAtIndex(i, notificationExtras, Constants.BRAZE_CONVERSATIONAL_PUSH_PERSON_URI_TEMPLATE, (String) null);
            this.isImportant = companion.getTemplateFieldAtIndex(i, notificationExtras, Constants.BRAZE_CONVERSATIONAL_PUSH_PERSON_IS_IMPORTANT_TEMPLATE, false);
            this.isBot = companion.getTemplateFieldAtIndex(i, notificationExtras, Constants.BRAZE_CONVERSATIONAL_PUSH_PERSON_IS_BOT_TEMPLATE, false);
        }

        public final String getName() {
            return this.name;
        }

        public final Person getPerson() {
            Person personBuild = new Person.Builder().setKey(this.personId).setName(this.name).setUri(this.uri).setBot(this.isBot).setImportant(this.isImportant).build();
            Intrinsics.checkNotNullExpressionValue(personBuild, "build(...)");
            return personBuild;
        }

        public final String getPersonId() {
            return this.personId;
        }

        public final String getUri() {
            return this.uri;
        }

        /* JADX INFO: renamed from: isBot, reason: from getter */
        public final boolean getIsBot() {
            return this.isBot;
        }

        /* JADX INFO: renamed from: isImportant, reason: from getter */
        public final boolean getIsImportant() {
            return this.isImportant;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Companion companion = BrazeNotificationPayload.INSTANCE;
            return sb.append(companion.stringAndKey("PersonId", this.personId)).append(companion.stringAndKey("Name", this.name)).append(companion.stringAndKey("Uri", this.uri)).append(companion.stringAndKey("IsImportant", Boolean.valueOf(this.isImportant))).append(companion.stringAndKey("IsBot", Boolean.valueOf(this.isBot))).toString();
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u001d\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010)\u001a\u00020\rH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000f\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\t\"\u0004\b\u0016\u0010\u000bR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000f\"\u0004\b\u0019\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\t\"\u0004\b\u001c\u0010\u000bR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u000f\"\u0004\b\u001f\u0010\u0013R\u001c\u0010 \u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u000f\"\u0004\b\"\u0010\u0013R\u001c\u0010#\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u000f\"\u0004\b%\u0010\u0013R\u001c\u0010&\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u000f\"\u0004\b(\u0010\u0013¨\u0006*"}, d2 = {"Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;", "", "notificationExtras", "Landroid/os/Bundle;", "actionIndex", "", "<init>", "(Landroid/os/Bundle;I)V", "getActionIndex", "()I", "setActionIndex", "(I)V", "campaignId", "", "getCampaignId", "()Ljava/lang/String;", MessageBundle.TITLE_ENTRY, "getTitle", "setTitle", "(Ljava/lang/String;)V", "titleGravity", "getTitleGravity", "setTitleGravity", "subtitle", "getSubtitle", "setSubtitle", "subtitleGravity", "getSubtitleGravity", "setSubtitleGravity", "bitmapUrl", "getBitmapUrl", "setBitmapUrl", "storyPageId", "getStoryPageId", "setStoryPageId", "deeplink", "getDeeplink", "setDeeplink", "useWebview", "getUseWebview", "setUseWebview", "toString", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PushStoryPage {
        private int actionIndex;
        private String bitmapUrl;
        private final String campaignId;
        private String deeplink;
        private String storyPageId;
        private String subtitle;
        private int subtitleGravity;
        private String title;
        private int titleGravity;
        private String useWebview;

        public PushStoryPage(Bundle notificationExtras, int i) {
            Intrinsics.checkNotNullParameter(notificationExtras, "notificationExtras");
            this.actionIndex = i;
            Companion companion = BrazeNotificationPayload.INSTANCE;
            this.campaignId = companion.parseString(notificationExtras, Constants.BRAZE_PUSH_CAMPAIGN_ID_KEY);
            this.title = companion.getTemplateFieldAtIndex(this.actionIndex, notificationExtras, Constants.BRAZE_PUSH_STORY_TITLE_KEY_TEMPLATE);
            this.titleGravity = companion.getPushStoryGravityAtIndex(this.actionIndex, notificationExtras, Constants.BRAZE_PUSH_STORY_TITLE_JUSTIFICATION_KEY_TEMPLATE);
            this.subtitle = companion.getTemplateFieldAtIndex(this.actionIndex, notificationExtras, Constants.BRAZE_PUSH_STORY_SUBTITLE_KEY_TEMPLATE);
            this.subtitleGravity = companion.getPushStoryGravityAtIndex(this.actionIndex, notificationExtras, Constants.BRAZE_PUSH_STORY_SUBTITLE_JUSTIFICATION_KEY_TEMPLATE);
            this.bitmapUrl = companion.getTemplateFieldAtIndex(this.actionIndex, notificationExtras, Constants.BRAZE_PUSH_STORY_IMAGE_KEY_TEMPLATE);
            this.storyPageId = companion.getTemplateFieldAtIndex(this.actionIndex, notificationExtras, Constants.BRAZE_PUSH_STORY_ID_KEY_TEMPLATE, "");
            this.deeplink = companion.getTemplateFieldAtIndex(this.actionIndex, notificationExtras, Constants.BRAZE_PUSH_STORY_DEEP_LINK_KEY_TEMPLATE);
            this.useWebview = companion.getTemplateFieldAtIndex(this.actionIndex, notificationExtras, Constants.BRAZE_PUSH_STORY_USE_WEBVIEW_KEY_TEMPLATE);
        }

        public final int getActionIndex() {
            return this.actionIndex;
        }

        public final String getBitmapUrl() {
            return this.bitmapUrl;
        }

        public final String getCampaignId() {
            return this.campaignId;
        }

        public final String getDeeplink() {
            return this.deeplink;
        }

        public final String getStoryPageId() {
            return this.storyPageId;
        }

        public final String getSubtitle() {
            return this.subtitle;
        }

        public final int getSubtitleGravity() {
            return this.subtitleGravity;
        }

        public final String getTitle() {
            return this.title;
        }

        public final int getTitleGravity() {
            return this.titleGravity;
        }

        public final String getUseWebview() {
            return this.useWebview;
        }

        public final void setActionIndex(int i) {
            this.actionIndex = i;
        }

        public final void setBitmapUrl(String str) {
            this.bitmapUrl = str;
        }

        public final void setDeeplink(String str) {
            this.deeplink = str;
        }

        public final void setStoryPageId(String str) {
            this.storyPageId = str;
        }

        public final void setSubtitle(String str) {
            this.subtitle = str;
        }

        public final void setSubtitleGravity(int i) {
            this.subtitleGravity = i;
        }

        public final void setTitle(String str) {
            this.title = str;
        }

        public final void setTitleGravity(int i) {
            this.titleGravity = i;
        }

        public final void setUseWebview(String str) {
            this.useWebview = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Companion companion = BrazeNotificationPayload.INSTANCE;
            return sb.append(companion.stringAndKey("ActionIndex", Integer.valueOf(this.actionIndex))).append(companion.stringAndKey("CampaignId", this.campaignId)).append(companion.stringAndKey("Title", this.title)).append(companion.stringAndKey("TitleGravity", Integer.valueOf(this.titleGravity))).append(companion.stringAndKey("Subtitle", this.subtitle)).append(companion.stringAndKey("SubtitleGravity=", Integer.valueOf(this.subtitleGravity))).append(companion.stringAndKey("BitmapUrl", this.bitmapUrl)).append(companion.stringAndKey("StoryPageId", this.storyPageId)).append(companion.stringAndKey("Deeplink", this.deeplink)).append(companion.stringAndKey("UseWebview", this.useWebview)).toString();
        }
    }

    public BrazeNotificationPayload(Bundle bundle) {
        this(bundle, null, null, null, 14, null);
    }

    @JvmStatic
    public static final Bundle getAttachedBrazeExtras(Bundle bundle) {
        return INSTANCE.getAttachedBrazeExtras(bundle);
    }

    public static /* synthetic */ void getCampaignId$annotations() {
    }

    public static /* synthetic */ void getFlushMaxMinutes$annotations() {
    }

    public static /* synthetic */ void getFlushMinMinutes$annotations() {
    }

    @JvmStatic
    public static final int getPushStoryGravityAtIndex(int i, Bundle bundle, String str) {
        return INSTANCE.getPushStoryGravityAtIndex(i, bundle, str);
    }

    @JvmStatic
    public static final long getTemplateFieldAtIndex(int i, Bundle bundle, String str, long j) {
        return INSTANCE.getTemplateFieldAtIndex(i, bundle, str, j);
    }

    public static /* synthetic */ void isPushDeliveryEnabled$annotations() {
    }

    @JvmStatic
    public static final Long parseLong(Bundle bundle, String str) {
        return INSTANCE.parseLong(bundle, str);
    }

    @JvmStatic
    public static final String parseNonBlankString(Bundle bundle, String str) {
        return INSTANCE.parseNonBlankString(bundle, str);
    }

    @JvmStatic
    public static final int parseObjectAsInteger(Bundle bundle, String str, int i) {
        return INSTANCE.parseObjectAsInteger(bundle, str, i);
    }

    private final void parsePayloadFieldsFromBundle() {
        parsePayloadFieldsFromBundle$parseNotificationMetadata(this);
        parsePayloadFieldsFromBundle$parseContentCardData(this);
        parsePayloadFieldsFromBundle$parseVisibleContent(this);
        parsePayloadFieldsFromBundle$parseBigTextStyle(this);
        parsePayloadFieldsFromBundle$parseBigImageStyle(this);
        parsePayloadFieldsFromBundle$parseActionButtons(this);
        parsePayloadFieldsFromBundle$parsePushStoryData(this);
        parsePayloadFieldsFromBundle$parseConversationPushData(this);
        parsePayloadFieldsFromBundle$parsePushDeliveryEventData(this);
    }

    private static final void parsePayloadFieldsFromBundle$parseActionButtons(BrazeNotificationPayload brazeNotificationPayload) {
        brazeNotificationPayload.actionButtonsInternal.clear();
        int i = 0;
        while (true) {
            String templateFieldAtIndex = INSTANCE.getTemplateFieldAtIndex(i, brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_ACTION_TYPE_KEY_TEMPLATE);
            if (templateFieldAtIndex == null || StringsKt.isBlank(templateFieldAtIndex)) {
                return;
            }
            brazeNotificationPayload.actionButtonsInternal.add(new ActionButton(brazeNotificationPayload.notificationExtras, i));
            i++;
        }
    }

    private static final void parsePayloadFieldsFromBundle$parseBigImageStyle(BrazeNotificationPayload brazeNotificationPayload) {
        String str;
        String nonBlankString = INSTANCE.parseNonBlankString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_BIG_IMAGE_URL_TOP_LEVEL_KEY);
        brazeNotificationPayload.bigImageUrl = nonBlankString;
        if ((nonBlankString != null && !StringsKt.isBlank(nonBlankString)) || (str = brazeNotificationPayload.extras.get(Constants.BRAZE_PUSH_BIG_IMAGE_URL_KEY)) == null || StringsKt.isBlank(str)) {
            return;
        }
        brazeNotificationPayload.bigImageUrl = str;
    }

    private static final void parsePayloadFieldsFromBundle$parseBigTextStyle(BrazeNotificationPayload brazeNotificationPayload) {
        Companion companion = INSTANCE;
        brazeNotificationPayload.bigSummaryText = companion.parseString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_BIG_SUMMARY_TEXT_KEY);
        brazeNotificationPayload.bigTitleText = companion.parseString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_BIG_TITLE_TEXT_KEY);
    }

    private static final void parsePayloadFieldsFromBundle$parseContentCardData(BrazeNotificationPayload brazeNotificationPayload) {
        Companion companion = INSTANCE;
        brazeNotificationPayload.contentCardSyncData = companion.parseString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_CONTENT_CARD_SYNC_DATA_KEY);
        brazeNotificationPayload.contentCardSyncUserId = companion.parseString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_CONTENT_CARD_SYNC_USER_ID_KEY);
    }

    private static final void parsePayloadFieldsFromBundle$parseConversationPushData(BrazeNotificationPayload brazeNotificationPayload) {
        Companion companion = INSTANCE;
        brazeNotificationPayload.conversationShortcutId = companion.parseString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_CONVERSATIONAL_PUSH_SHORTCUT_ID_KEY);
        brazeNotificationPayload.conversationReplyPersonId = companion.parseString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_CONVERSATIONAL_PUSH_REPLY_PERSON_ID_KEY);
        brazeNotificationPayload.conversationMessagesInternal.clear();
        brazeNotificationPayload.conversationPersonMapInternal.clear();
        int i = 0;
        int i2 = 0;
        while (true) {
            String templateFieldAtIndex = INSTANCE.getTemplateFieldAtIndex(i2, brazeNotificationPayload.notificationExtras, Constants.BRAZE_CONVERSATIONAL_PUSH_MESSAGE_TEXT_TEMPLATE);
            if (templateFieldAtIndex == null || StringsKt.isBlank(templateFieldAtIndex)) {
                break;
            }
            brazeNotificationPayload.conversationMessagesInternal.add(new ConversationMessage(brazeNotificationPayload.notificationExtras, i2));
            i2++;
        }
        while (true) {
            String templateFieldAtIndex2 = INSTANCE.getTemplateFieldAtIndex(i, brazeNotificationPayload.notificationExtras, Constants.BRAZE_CONVERSATIONAL_PUSH_PERSON_ID_TEMPLATE);
            if (templateFieldAtIndex2 == null || StringsKt.isBlank(templateFieldAtIndex2)) {
                return;
            }
            ConversationPerson conversationPerson = new ConversationPerson(brazeNotificationPayload.notificationExtras, i);
            brazeNotificationPayload.conversationPersonMapInternal.put(conversationPerson.getPersonId(), conversationPerson);
            i++;
        }
    }

    private static final void parsePayloadFieldsFromBundle$parseNotificationMetadata(BrazeNotificationPayload brazeNotificationPayload) {
        Companion companion = INSTANCE;
        brazeNotificationPayload.pushDuration = companion.parseStringAsInteger(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_NOTIFICATION_DURATION_KEY);
        brazeNotificationPayload.isPushStory = brazeNotificationPayload.notificationExtras.containsKey(Constants.BRAZE_PUSH_STORY_KEY);
        brazeNotificationPayload.notificationCategory = companion.parseString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_CATEGORY_KEY);
        brazeNotificationPayload.notificationVisibility = companion.parseStringAsInteger(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_VISIBILITY_KEY);
        brazeNotificationPayload.notificationBadgeNumber = companion.parseStringAsInteger(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_NOTIFICATION_BADGE_COUNT_KEY);
        brazeNotificationPayload.publicNotificationExtras = companion.parseString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_PUBLIC_NOTIFICATION_KEY);
        brazeNotificationPayload.customNotificationId = companion.parseStringAsInteger(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_CUSTOM_NOTIFICATION_ID);
        brazeNotificationPayload.notificationReceivedTimestampMillis = companion.parseLong(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_RECEIVED_TIMESTAMP_MILLIS);
        brazeNotificationPayload.isInlineImagePush = brazeNotificationPayload.notificationExtras.containsKey(Constants.BRAZE_PUSH_INLINE_IMAGE_STYLE_KEY);
        brazeNotificationPayload.isConversationalPush = brazeNotificationPayload.notificationExtras.containsKey(Constants.BRAZE_CONVERSATIONAL_PUSH_STYLE_KEY);
        brazeNotificationPayload.notificationPriorityInt = companion.parseStringAsInteger(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_PRIORITY_KEY);
        brazeNotificationPayload.shouldFetchTestTriggers = companion.parseStringAsBoolean(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_FETCH_TEST_TRIGGERS_KEY);
        brazeNotificationPayload.shouldSyncGeofences = companion.parseStringAsBoolean(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_SYNC_GEOFENCES_KEY);
        brazeNotificationPayload.shouldRefreshFeatureFlags = companion.parseStringAsBoolean(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_REFRESH_FEATURE_FLAGS);
        brazeNotificationPayload.shouldRefreshBanners = companion.parseStringAsBoolean(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_REFRESH_BANNERS);
        brazeNotificationPayload.isUninstallTrackingPush = brazeNotificationPayload.notificationExtras.containsKey(Constants.BRAZE_PUSH_UNINSTALL_TRACKING_KEY) || brazeNotificationPayload.brazeExtras.containsKey(Constants.BRAZE_PUSH_UNINSTALL_TRACKING_KEY);
        brazeNotificationPayload.deeplink = companion.parseString(brazeNotificationPayload.notificationExtras, "uri");
        brazeNotificationPayload.campaignId = companion.parseString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_CAMPAIGN_ID_KEY);
        brazeNotificationPayload.pushUniqueId = companion.parseString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_UNIQUE_ID);
        brazeNotificationPayload.useWebView = Boolean.valueOf(companion.parseStringAsBoolean(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_OPEN_URI_IN_WEBVIEW_KEY));
    }

    private static final void parsePayloadFieldsFromBundle$parsePushDeliveryEventData(BrazeNotificationPayload brazeNotificationPayload) {
        Companion companion = INSTANCE;
        Integer stringAsInteger = companion.parseStringAsInteger(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_DELIVERY_ENABLED_KEY);
        brazeNotificationPayload.isPushDeliveryEnabled = (stringAsInteger != null ? stringAsInteger.intValue() : 0) == 1;
        Long stringAsLong = companion.parseStringAsLong(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_DELIVERY_FLUSH_MIN_KEY);
        brazeNotificationPayload.flushMinMinutes = stringAsLong != null ? stringAsLong.longValue() : 5L;
        Long stringAsLong2 = companion.parseStringAsLong(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_DELIVERY_FLUSH_MAX_KEY);
        brazeNotificationPayload.flushMaxMinutes = stringAsLong2 != null ? stringAsLong2.longValue() : 120L;
    }

    private static final void parsePayloadFieldsFromBundle$parsePushStoryData(BrazeNotificationPayload brazeNotificationPayload) {
        brazeNotificationPayload.pushStoryPageIndex = INSTANCE.parseObjectAsInteger(brazeNotificationPayload.notificationExtras, Constants.BRAZE_STORY_INDEX_KEY, 0);
        int i = 0;
        while (true) {
            String templateFieldAtIndex = INSTANCE.getTemplateFieldAtIndex(i, brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_STORY_IMAGE_KEY_TEMPLATE);
            if (templateFieldAtIndex == null || StringsKt.isBlank(templateFieldAtIndex)) {
                break;
            }
            brazeNotificationPayload.pushStoryPagesInternal.add(new PushStoryPage(brazeNotificationPayload.notificationExtras, i));
            i++;
        }
        brazeNotificationPayload.isNewlyReceivedPushStory = brazeNotificationPayload.notificationExtras.getBoolean(Constants.BRAZE_PUSH_STORY_IS_NEWLY_RECEIVED, false);
    }

    private static final void parsePayloadFieldsFromBundle$parseVisibleContent(BrazeNotificationPayload brazeNotificationPayload) {
        Companion companion = INSTANCE;
        brazeNotificationPayload.notificationChannelId = companion.parseNonBlankString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_NOTIFICATION_CHANNEL_ID_KEY);
        brazeNotificationPayload.titleText = companion.parseString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_TITLE_KEY);
        brazeNotificationPayload.contentText = companion.parseString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_CONTENT_KEY);
        brazeNotificationPayload.largeIcon = companion.parseString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_LARGE_ICON_KEY);
        brazeNotificationPayload.notificationSound = companion.parseString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_NOTIFICATION_SOUND_KEY);
        brazeNotificationPayload.summaryText = companion.parseString(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_SUMMARY_TEXT_KEY);
        brazeNotificationPayload.accentColor = companion.parseStringAsColorInt(brazeNotificationPayload.notificationExtras, Constants.BRAZE_PUSH_ACCENT_KEY);
    }

    @JvmStatic
    public static final String parseString(Bundle bundle, String str) {
        return INSTANCE.parseString(bundle, str);
    }

    @JvmStatic
    public static final boolean parseStringAsBoolean(Bundle bundle, String str) {
        return INSTANCE.parseStringAsBoolean(bundle, str);
    }

    @JvmStatic
    public static final Integer parseStringAsColorInt(Bundle bundle, String str) {
        return INSTANCE.parseStringAsColorInt(bundle, str);
    }

    @JvmStatic
    public static final Integer parseStringAsInteger(Bundle bundle, String str) {
        return INSTANCE.parseStringAsInteger(bundle, str);
    }

    @JvmStatic
    public static final Long parseStringAsLong(Bundle bundle, String str) {
        return INSTANCE.parseStringAsLong(bundle, str);
    }

    public final Integer getAccentColor() {
        return this.accentColor;
    }

    public final List<ActionButton> getActionButtons() {
        return this.actionButtonsInternal;
    }

    public final String getBigImageUrl() {
        return this.bigImageUrl;
    }

    public final String getBigSummaryText() {
        return this.bigSummaryText;
    }

    public final String getBigTitleText() {
        return this.bigTitleText;
    }

    public final Bundle getBrazeExtras() {
        return this.brazeExtras;
    }

    public final String getCampaignId() {
        return this.campaignId;
    }

    public final BrazeConfigurationProvider getConfigurationProvider() {
        return this.configurationProvider;
    }

    public final String getContentCardSyncData() {
        return this.contentCardSyncData;
    }

    public final String getContentCardSyncUserId() {
        return this.contentCardSyncUserId;
    }

    public final String getContentText() {
        return this.contentText;
    }

    public final Context getContext() {
        return this.context;
    }

    public final List<ConversationMessage> getConversationMessages() {
        return this.conversationMessagesInternal;
    }

    public final Map<String, ConversationPerson> getConversationPersonMap() {
        return this.conversationPersonMapInternal;
    }

    public final String getConversationReplyPersonId() {
        return this.conversationReplyPersonId;
    }

    public final String getConversationShortcutId() {
        return this.conversationShortcutId;
    }

    public final Integer getCustomNotificationId() {
        return this.customNotificationId;
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final Map<String, String> getExtras() {
        return this.extras;
    }

    public final long getFlushMaxMinutes() {
        return this.flushMaxMinutes;
    }

    public final long getFlushMinMinutes() {
        return this.flushMinMinutes;
    }

    public final String getLargeIcon() {
        return this.largeIcon;
    }

    public final Integer getNotificationBadgeNumber() {
        return this.notificationBadgeNumber;
    }

    public final String getNotificationCategory() {
        return this.notificationCategory;
    }

    public final String getNotificationChannelId() {
        return this.notificationChannelId;
    }

    public final Bundle getNotificationExtras() {
        return this.notificationExtras;
    }

    public final Integer getNotificationPriorityInt() {
        return this.notificationPriorityInt;
    }

    public final Long getNotificationReceivedTimestampMillis() {
        return this.notificationReceivedTimestampMillis;
    }

    public final String getNotificationSound() {
        return this.notificationSound;
    }

    public final Integer getNotificationVisibility() {
        return this.notificationVisibility;
    }

    public final String getPublicNotificationExtras() {
        return this.publicNotificationExtras;
    }

    public final Integer getPushDuration() {
        return this.pushDuration;
    }

    public final int getPushStoryPageIndex() {
        return this.pushStoryPageIndex;
    }

    public final List<PushStoryPage> getPushStoryPages() {
        return this.pushStoryPagesInternal;
    }

    public final String getPushUniqueId() {
        return this.pushUniqueId;
    }

    public final boolean getShouldFetchTestTriggers() {
        return this.shouldFetchTestTriggers;
    }

    public final boolean getShouldRefreshBanners() {
        return this.shouldRefreshBanners;
    }

    public final boolean getShouldRefreshFeatureFlags() {
        return this.shouldRefreshFeatureFlags;
    }

    public final boolean getShouldSyncGeofences() {
        return this.shouldSyncGeofences;
    }

    public final String getSummaryText() {
        return this.summaryText;
    }

    public final String getTitleText() {
        return this.titleText;
    }

    public final Boolean getUseWebView() {
        return this.useWebView;
    }

    /* JADX INFO: renamed from: isConversationalPush, reason: from getter */
    public final boolean getIsConversationalPush() {
        return this.isConversationalPush;
    }

    /* JADX INFO: renamed from: isInlineImagePush, reason: from getter */
    public final boolean getIsInlineImagePush() {
        return this.isInlineImagePush;
    }

    /* JADX INFO: renamed from: isNewlyReceivedPushStory, reason: from getter */
    public final boolean getIsNewlyReceivedPushStory() {
        return this.isNewlyReceivedPushStory;
    }

    /* JADX INFO: renamed from: isPushDeliveryEnabled, reason: from getter */
    public final boolean getIsPushDeliveryEnabled() {
        return this.isPushDeliveryEnabled;
    }

    /* JADX INFO: renamed from: isPushStory, reason: from getter */
    public final boolean getIsPushStory() {
        return this.isPushStory;
    }

    public final boolean isSilentPush() {
        return this.titleText == null && this.contentText == null;
    }

    /* JADX INFO: renamed from: isUninstallTrackingPush, reason: from getter */
    public final boolean getIsUninstallTrackingPush() {
        return this.isUninstallTrackingPush;
    }

    public final void setAccentColor(Integer num) {
        this.accentColor = num;
    }

    public final void setActionButtons(List<ActionButton> actionButtons) {
        Intrinsics.checkNotNullParameter(actionButtons, "actionButtons");
        this.actionButtonsInternal = actionButtons;
    }

    public final void setBigImageUrl(String str) {
        this.bigImageUrl = str;
    }

    public final void setBigSummaryText(String str) {
        this.bigSummaryText = str;
    }

    public final void setBigTitleText(String str) {
        this.bigTitleText = str;
    }

    public final void setBrazeExtras(Bundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "<set-?>");
        this.brazeExtras = bundle;
    }

    public final void setCampaignId(String str) {
        this.campaignId = str;
    }

    public final void setConfigurationProvider(BrazeConfigurationProvider brazeConfigurationProvider) {
        this.configurationProvider = brazeConfigurationProvider;
    }

    public final void setContentCardSyncData(String str) {
        this.contentCardSyncData = str;
    }

    public final void setContentCardSyncUserId(String str) {
        this.contentCardSyncUserId = str;
    }

    public final void setContentText(String str) {
        this.contentText = str;
    }

    public final void setContext(Context context) {
        this.context = context;
    }

    public final void setConversationShortcutId(String str) {
        this.conversationShortcutId = str;
    }

    public final void setConversationalPush(boolean z) {
        this.isConversationalPush = z;
    }

    public final void setCustomNotificationId(Integer num) {
        this.customNotificationId = num;
    }

    public final void setDeeplink(String str) {
        this.deeplink = str;
    }

    public final void setExtras(Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.extras = map;
    }

    public final void setFlushMaxMinutes(long j) {
        this.flushMaxMinutes = j;
    }

    public final void setFlushMinMinutes(long j) {
        this.flushMinMinutes = j;
    }

    public final void setInlineImagePush(boolean z) {
        this.isInlineImagePush = z;
    }

    public final void setIsInlineImagePush(boolean isInlineImagePush) {
        this.isInlineImagePush = isInlineImagePush;
    }

    public final void setLargeIcon(String str) {
        this.largeIcon = str;
    }

    public final void setNewlyReceivedPushStory(boolean z) {
        this.isNewlyReceivedPushStory = z;
    }

    public final void setNotificationBadgeNumber(Integer num) {
        this.notificationBadgeNumber = num;
    }

    public final void setNotificationCategory(String str) {
        this.notificationCategory = str;
    }

    public final void setNotificationChannelId(String str) {
        this.notificationChannelId = str;
    }

    public final void setNotificationPriorityInt(Integer num) {
        this.notificationPriorityInt = num;
    }

    public final void setNotificationReceivedTimestampMillis(Long l) {
        this.notificationReceivedTimestampMillis = l;
    }

    public final void setNotificationSound(String str) {
        this.notificationSound = str;
    }

    public final void setNotificationVisibility(Integer num) {
        this.notificationVisibility = num;
    }

    public final void setPublicNotificationExtras(String str) {
        this.publicNotificationExtras = str;
    }

    public final void setPushDeliveryEnabled(boolean z) {
        this.isPushDeliveryEnabled = z;
    }

    public final void setPushDuration(Integer num) {
        this.pushDuration = num;
    }

    public final void setPushStory(boolean z) {
        this.isPushStory = z;
    }

    public final void setPushStoryPageIndex(int i) {
        this.pushStoryPageIndex = i;
    }

    public final void setPushStoryPages(List<PushStoryPage> pushStoryPages) {
        Intrinsics.checkNotNullParameter(pushStoryPages, "pushStoryPages");
        this.pushStoryPagesInternal = pushStoryPages;
    }

    public final void setPushUniqueId(String str) {
        this.pushUniqueId = str;
    }

    public final void setShouldFetchTestTriggers(boolean z) {
        this.shouldFetchTestTriggers = z;
    }

    public final void setShouldRefreshBanners(boolean z) {
        this.shouldRefreshBanners = z;
    }

    public final void setShouldRefreshFeatureFlags(boolean z) {
        this.shouldRefreshFeatureFlags = z;
    }

    public final void setShouldSyncGeofences(boolean z) {
        this.shouldSyncGeofences = z;
    }

    public final void setSummaryText(String str) {
        this.summaryText = str;
    }

    public final void setTitleText(String str) {
        this.titleText = str;
    }

    public final void setUninstallTrackingPush(boolean z) {
        this.isUninstallTrackingPush = z;
    }

    public final void setUseWebView(Boolean bool) {
        this.useWebView = bool;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Companion companion = INSTANCE;
        sb.append(companion.stringAndKey("PushDuration", this.pushDuration)).append(companion.stringAndKey("IsPushStory", Boolean.valueOf(this.isPushStory))).append(companion.stringAndKey("IsInlineImagePush", Boolean.valueOf(this.isInlineImagePush))).append(companion.stringAndKey("IsConversationalPush", Boolean.valueOf(this.isConversationalPush))).append(companion.stringAndKey("PublicNotificationExtras", this.publicNotificationExtras)).append(companion.stringAndKey("NotificationChannelId", this.notificationChannelId)).append(companion.stringAndKey("NotificationCategory", this.notificationCategory)).append(companion.stringAndKey("NotificationVisibility", this.notificationVisibility)).append(companion.stringAndKey("NotificationBadgeNumber", this.notificationBadgeNumber)).append(companion.stringAndKey("CustomNotificationId", this.customNotificationId)).append(companion.stringAndKey("NotificationReceivedTimestampMillis", this.notificationReceivedTimestampMillis)).append(companion.stringAndKey("ContentCardSyncData", this.contentCardSyncData)).append(companion.stringAndKey("ContentCardSyncUserId", this.contentCardSyncUserId)).append(companion.stringAndKey("TitleText", this.titleText)).append(companion.stringAndKey("ContentText", this.contentText)).append(companion.stringAndKey("LargeIcon", this.largeIcon)).append(companion.stringAndKey("NotificationSound", this.notificationSound)).append(companion.stringAndKey("SummaryText", this.summaryText)).append(companion.stringAndKey("AccentColor", this.accentColor)).append(companion.stringAndKey("BigSummaryText", this.bigSummaryText)).append(companion.stringAndKey("BigTitleText", this.bigTitleText)).append(companion.stringAndKey("BigImageUrl", this.bigImageUrl)).append(companion.stringAndKey("ActionButtons", getActionButtons()));
        sb.append(companion.stringAndKey("PushStoryPageIndex", Integer.valueOf(this.pushStoryPageIndex))).append(companion.stringAndKey("PushStoryPages", this.pushStoryPagesInternal)).append(companion.stringAndKey("ConversationMessages", this.conversationMessagesInternal)).append(companion.stringAndKey("ConversationPersonMap", this.conversationPersonMapInternal)).append(companion.stringAndKey("PushDeliveryEnabled", Boolean.valueOf(this.isPushDeliveryEnabled))).append(companion.stringAndKey("PushUniqueId", this.pushUniqueId)).append(companion.stringAndKey("ConversationShortcutId", this.conversationShortcutId));
        return sb.toString();
    }

    public BrazeNotificationPayload(Bundle bundle, Bundle bundle2) {
        this(bundle, bundle2, null, null, 12, null);
    }

    @JvmStatic
    public static final String getTemplateFieldAtIndex(int i, Bundle bundle, String str) {
        return INSTANCE.getTemplateFieldAtIndex(i, bundle, str);
    }

    public BrazeNotificationPayload(Bundle bundle, Bundle bundle2, Context context) {
        this(bundle, bundle2, context, null, 8, null);
    }

    @JvmStatic
    public static final String getTemplateFieldAtIndex(int i, Bundle bundle, String str, String str2) {
        return INSTANCE.getTemplateFieldAtIndex(i, bundle, str, str2);
    }

    public BrazeNotificationPayload(Bundle bundle, Bundle bundle2, Context context, BrazeConfigurationProvider brazeConfigurationProvider) {
        this.configurationProvider = brazeConfigurationProvider;
        this.notificationExtras = bundle == null ? new Bundle() : bundle;
        this.brazeExtras = bundle2 == null ? new Bundle() : bundle2;
        this.extras = BundleUtils.toStringMap(bundle2);
        this.context = context != null ? context.getApplicationContext() : null;
        this.flushMinMinutes = 5L;
        this.flushMaxMinutes = 120L;
        this.actionButtonsInternal = new ArrayList();
        this.pushStoryPagesInternal = new ArrayList();
        this.conversationMessagesInternal = new ArrayList();
        this.conversationPersonMapInternal = new HashMap();
        parsePayloadFieldsFromBundle();
    }

    @JvmStatic
    public static final boolean getTemplateFieldAtIndex(int i, Bundle bundle, String str, boolean z) {
        return INSTANCE.getTemplateFieldAtIndex(i, bundle, str, z);
    }

    public /* synthetic */ BrazeNotificationPayload(Bundle bundle, Bundle bundle2, Context context, BrazeConfigurationProvider brazeConfigurationProvider, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(bundle, (i & 2) != 0 ? INSTANCE.getAttachedBrazeExtras(bundle) : bundle2, (i & 4) != 0 ? null : context, (i & 8) != 0 ? null : brazeConfigurationProvider);
    }
}

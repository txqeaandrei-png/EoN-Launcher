package com.braze;

import android.app.Activity;
import android.content.Intent;
import com.braze.events.BannersUpdatedEvent;
import com.braze.events.BrazeNetworkFailureEvent;
import com.braze.events.BrazePushEvent;
import com.braze.events.BrazeSdkAuthenticationErrorEvent;
import com.braze.events.ContentCardsUpdatedEvent;
import com.braze.events.FeatureFlagsUpdatedEvent;
import com.braze.events.FeedUpdatedEvent;
import com.braze.events.IEventSubscriber;
import com.braze.events.IValueCallback;
import com.braze.events.InAppMessageEvent;
import com.braze.events.NoMatchingTriggerEvent;
import com.braze.events.SessionStateChangedEvent;
import com.braze.images.IBrazeImageLoader;
import com.braze.models.Banner;
import com.braze.models.FeatureFlag;
import com.braze.models.IBrazeLocation;
import com.braze.models.cards.Card;
import com.braze.models.inappmessage.IInAppMessage;
import com.braze.models.outgoing.BrazeProperties;
import java.math.BigDecimal;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000ð\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000b\bg\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0007\u0010\u0006J\u0019\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\bH&¢\u0006\u0004\b\n\u0010\u000bJ#\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH&¢\u0006\u0004\b\n\u0010\u000eJ-\u0010\u0013\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H&¢\u0006\u0004\b\u0013\u0010\u0014J7\u0010\u0013\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\r\u001a\u0004\u0018\u00010\fH&¢\u0006\u0004\b\u0013\u0010\u0015J5\u0010\u0013\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0017\u001a\u00020\u0016H&¢\u0006\u0004\b\u0013\u0010\u0018JC\u0010\u0013\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010\u0017\u001a\u00020\u00162\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fH&¢\u0006\u0004\b\u0013\u0010\u0019J\u0019\u0010\u001b\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\bH&¢\u0006\u0004\b\u001b\u0010\u000bJ\u0019\u0010\u001b\u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH&¢\u0006\u0004\b\u001b\u0010\u001eJ-\u0010!\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\b2\b\u0010\u001f\u001a\u0004\u0018\u00010\b2\b\u0010 \u001a\u0004\u0018\u00010\bH&¢\u0006\u0004\b!\u0010\"J#\u0010$\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\b2\b\u0010#\u001a\u0004\u0018\u00010\bH&¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0004H&¢\u0006\u0004\b&\u0010'J\u0017\u0010*\u001a\u00020\u00042\u0006\u0010)\u001a\u00020(H'¢\u0006\u0004\b*\u0010+J\u000f\u0010*\u001a\u00020\u0004H&¢\u0006\u0004\b*\u0010'J\u000f\u0010,\u001a\u00020\u0004H&¢\u0006\u0004\b,\u0010'J\u000f\u0010-\u001a\u00020\u0004H&¢\u0006\u0004\b-\u0010'J\u000f\u0010.\u001a\u00020\u0004H&¢\u0006\u0004\b.\u0010'J\u000f\u0010/\u001a\u00020\u0004H&¢\u0006\u0004\b/\u0010'J\u001d\u00102\u001a\u00020\u00042\f\u00101\u001a\b\u0012\u0004\u0012\u00020\b00H&¢\u0006\u0004\b2\u00103J/\u00102\u001a\u00020\u00042\f\u00101\u001a\b\u0012\u0004\u0012\u00020\b002\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u000205\u0018\u000104H&¢\u0006\u0004\b2\u00107J\u0019\u0010:\u001a\u0004\u0018\u0001092\u0006\u00108\u001a\u00020\bH&¢\u0006\u0004\b:\u0010;J\u0017\u0010=\u001a\u00020(2\u0006\u0010<\u001a\u00020\bH&¢\u0006\u0004\b=\u0010>J!\u0010@\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\b2\b\u0010?\u001a\u0004\u0018\u00010\bH&¢\u0006\u0004\b@\u0010%J\u0015\u0010B\u001a\b\u0012\u0004\u0012\u00020A00H&¢\u0006\u0004\bB\u0010CJ\u0019\u0010D\u001a\u0004\u0018\u00010A2\u0006\u00108\u001a\u00020\bH&¢\u0006\u0004\bD\u0010EJ\u0017\u0010F\u001a\u00020\u00042\u0006\u00108\u001a\u00020\bH&¢\u0006\u0004\bF\u0010\u000bJ\u000f\u0010G\u001a\u00020\u0004H&¢\u0006\u0004\bG\u0010'J\u001d\u0010K\u001a\u00020\u00042\f\u0010J\u001a\b\u0012\u0004\u0012\u00020I0HH&¢\u0006\u0004\bK\u0010LJ\u001d\u0010N\u001a\u00020\u00042\f\u0010J\u001a\b\u0012\u0004\u0012\u00020M0HH&¢\u0006\u0004\bN\u0010LJ\u001d\u0010O\u001a\u00020\u00042\f\u0010J\u001a\b\u0012\u0004\u0012\u0002050HH&¢\u0006\u0004\bO\u0010LJ\u001d\u0010Q\u001a\u00020\u00042\f\u0010J\u001a\b\u0012\u0004\u0012\u00020P0HH&¢\u0006\u0004\bQ\u0010LJ\u001d\u0010S\u001a\u00020\u00042\f\u0010J\u001a\b\u0012\u0004\u0012\u00020R0HH&¢\u0006\u0004\bS\u0010LJ\u001d\u0010U\u001a\u00020\u00042\f\u0010J\u001a\b\u0012\u0004\u0012\u00020T0HH&¢\u0006\u0004\bU\u0010LJ\u001d\u0010W\u001a\u00020\u00042\f\u0010J\u001a\b\u0012\u0004\u0012\u00020V0HH&¢\u0006\u0004\bW\u0010LJ\u001d\u0010Y\u001a\u00020\u00042\f\u0010J\u001a\b\u0012\u0004\u0012\u00020X0HH&¢\u0006\u0004\bY\u0010LJ\u001d\u0010[\u001a\u00020\u00042\f\u0010J\u001a\b\u0012\u0004\u0012\u00020Z0HH&¢\u0006\u0004\b[\u0010LJ\u001d\u0010]\u001a\u00020\u00042\f\u0010J\u001a\b\u0012\u0004\u0012\u00020\\0HH&¢\u0006\u0004\b]\u0010LJ\u001d\u0010_\u001a\u00020\u00042\f\u0010J\u001a\b\u0012\u0004\u0012\u00020^0HH&¢\u0006\u0004\b_\u0010LJ1\u0010c\u001a\u00020\u0004\"\u0004\b\u0000\u0010`2\f\u0010J\u001a\b\u0012\u0004\u0012\u00028\u00000H2\f\u0010b\u001a\b\u0012\u0004\u0012\u00028\u00000aH&¢\u0006\u0004\bc\u0010dJ3\u0010e\u001a\u00020\u0004\"\u0004\b\u0000\u0010`2\u000e\u0010J\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010H2\f\u0010b\u001a\b\u0012\u0004\u0012\u00028\u00000aH&¢\u0006\u0004\be\u0010dJ\u0019\u0010g\u001a\u00020\u00042\b\u0010f\u001a\u0004\u0018\u00010\bH&¢\u0006\u0004\bg\u0010\u000bJ#\u0010g\u001a\u00020\u00042\b\u0010f\u001a\u0004\u0018\u00010\b2\b\u0010h\u001a\u0004\u0018\u00010\bH&¢\u0006\u0004\bg\u0010%J\u001d\u0010j\u001a\u00020\u00042\f\u00106\u001a\b\u0012\u0004\u0012\u00020i04H&¢\u0006\u0004\bj\u0010kJ\u001d\u0010l\u001a\u00020\u00042\f\u00106\u001a\b\u0012\u0004\u0012\u00020\b04H&¢\u0006\u0004\bl\u0010kJ\u000f\u0010m\u001a\u00020\u0016H&¢\u0006\u0004\bm\u0010nJ\u000f\u0010o\u001a\u00020\u0016H&¢\u0006\u0004\bo\u0010nJ\u000f\u0010q\u001a\u00020pH&¢\u0006\u0004\bq\u0010rJ\u0017\u0010t\u001a\n\u0012\u0004\u0012\u00020s\u0018\u000100H&¢\u0006\u0004\bt\u0010CJ\u001f\u0010w\u001a\u00020\u00042\u0006\u0010u\u001a\u00020\b2\u0006\u0010v\u001a\u00020(H&¢\u0006\u0004\bw\u0010xJ\u001b\u0010{\u001a\u0004\u0018\u00010z2\b\u0010y\u001a\u0004\u0018\u00010\bH&¢\u0006\u0004\b{\u0010|J\u001b\u0010~\u001a\u0004\u0018\u00010s2\b\u0010}\u001a\u0004\u0018\u00010\bH&¢\u0006\u0004\b~\u0010\u007fJ\u001e\u0010~\u001a\u0004\u0018\u00010s2\n\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0080\u0001H&¢\u0006\u0005\b~\u0010\u0082\u0001J\u0011\u0010\u0083\u0001\u001a\u00020\u0004H&¢\u0006\u0005\b\u0083\u0001\u0010'J&\u0010\u0087\u0001\u001a\u00020\u00042\b\u0010\u0085\u0001\u001a\u00030\u0084\u00012\b\u0010\u0086\u0001\u001a\u00030\u0084\u0001H&¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001J\u001a\u0010\u008a\u0001\u001a\u00020\u00042\u0007\u0010\u0089\u0001\u001a\u00020\bH&¢\u0006\u0005\b\u008a\u0001\u0010\u000bJ\u001c\u0010\u008c\u0001\u001a\u00020\u00042\t\u0010\u008b\u0001\u001a\u0004\u0018\u00010\bH'¢\u0006\u0005\b\u008c\u0001\u0010\u000bJ\u001c\u0010\u008d\u0001\u001a\u00020\u00042\t\u0010\u008b\u0001\u001a\u0004\u0018\u00010\bH'¢\u0006\u0005\b\u008d\u0001\u0010\u000bJ\u0014\u0010\u008e\u0001\u001a\u0004\u0018\u00010\bH\u0017¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001R\u0018\u0010\u0091\u0001\u001a\u0004\u0018\u00010i8&X¦\u0004¢\u0006\u0007\u001a\u0005\bj\u0010\u0090\u0001R\"\u0010\u0097\u0001\u001a\u00030\u0092\u00018&@&X¦\u000e¢\u0006\u0010\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001\"\u0006\b\u0095\u0001\u0010\u0096\u0001R\"\u0010\u009a\u0001\u001a\u0004\u0018\u00010\b8&@&X¦\u000e¢\u0006\u000f\u001a\u0006\b\u0098\u0001\u0010\u008f\u0001\"\u0005\b\u0099\u0001\u0010\u000bR\u0017\u0010\u009c\u0001\u001a\u00020\b8&X¦\u0004¢\u0006\b\u001a\u0006\b\u009b\u0001\u0010\u008f\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u009d\u0001À\u0006\u0001"}, d2 = {"Lcom/braze/IBraze;", "", "Landroid/app/Activity;", "activity", "", "openSession", "(Landroid/app/Activity;)V", "closeSession", "", "eventName", "logCustomEvent", "(Ljava/lang/String;)V", "Lcom/braze/models/outgoing/BrazeProperties;", FeatureFlag.PROPERTIES, "(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)V", "productId", "currencyCode", "Ljava/math/BigDecimal;", "price", "logPurchase", "(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/braze/models/outgoing/BrazeProperties;)V", "", "quantity", "(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;I)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/models/outgoing/BrazeProperties;)V", "campaignId", "logPushNotificationOpened", "Landroid/content/Intent;", "intent", "(Landroid/content/Intent;)V", "actionId", "actionType", "logPushNotificationActionClicked", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "pageId", "logPushStoryPageClicked", "(Ljava/lang/String;Ljava/lang/String;)V", "logFeedDisplayed", "()V", "", "fromCache", "requestContentCardsRefresh", "(Z)V", "requestContentCardsRefreshFromCache", "requestFeedRefresh", "requestFeedRefreshFromCache", "refreshFeatureFlags", "", "ids", "requestBannersRefresh", "(Ljava/util/List;)V", "Lcom/braze/events/IValueCallback;", "Lcom/braze/events/BannersUpdatedEvent;", "completionCallback", "(Ljava/util/List;Lcom/braze/events/IValueCallback;)V", "id", "Lcom/braze/models/Banner;", "getBanner", "(Ljava/lang/String;)Lcom/braze/models/Banner;", "placementId", "logBannerImpression", "(Ljava/lang/String;)Z", "buttonId", "logBannerClick", "Lcom/braze/models/FeatureFlag;", "getAllFeatureFlags", "()Ljava/util/List;", "getFeatureFlag", "(Ljava/lang/String;)Lcom/braze/models/FeatureFlag;", "logFeatureFlagImpression", "requestImmediateDataFlush", "Lcom/braze/events/IEventSubscriber;", "Lcom/braze/events/ContentCardsUpdatedEvent;", "subscriber", "subscribeToContentCardsUpdates", "(Lcom/braze/events/IEventSubscriber;)V", "Lcom/braze/events/FeatureFlagsUpdatedEvent;", "subscribeToFeatureFlagsUpdates", "subscribeToBannersUpdates", "Lcom/braze/events/internal/b;", "subscribeToBannersErrors", "Lcom/braze/events/FeedUpdatedEvent;", "subscribeToFeedUpdates", "Lcom/braze/events/InAppMessageEvent;", "subscribeToNewInAppMessages", "Lcom/braze/events/NoMatchingTriggerEvent;", "subscribeToNoMatchingTriggerForEvent", "Lcom/braze/events/SessionStateChangedEvent;", "subscribeToSessionUpdates", "Lcom/braze/events/BrazeNetworkFailureEvent;", "subscribeToNetworkFailures", "Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;", "subscribeToSdkAuthenticationFailures", "Lcom/braze/events/BrazePushEvent;", "subscribeToPushNotificationEvents", "T", "Ljava/lang/Class;", "eventClass", "addSingleSynchronousSubscription", "(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V", "removeSingleSubscription", "userId", "changeUser", "sdkAuthSignature", "Lcom/braze/BrazeUser;", "getCurrentUser", "(Lcom/braze/events/IValueCallback;)V", "getDeviceIdAsync", "getContentCardCount", "()I", "getContentCardUnviewedCount", "", "getContentCardsLastUpdatedInSecondsFromEpoch", "()J", "Lcom/braze/models/cards/Card;", "getCachedContentCards", "googleAdvertisingId", "isLimitAdTrackingEnabled", "setGoogleAdvertisingId", "(Ljava/lang/String;Z)V", "inAppMessageString", "Lcom/braze/models/inappmessage/IInAppMessage;", "deserializeInAppMessageString", "(Ljava/lang/String;)Lcom/braze/models/inappmessage/IInAppMessage;", "contentCardString", "deserializeContentCard", "(Ljava/lang/String;)Lcom/braze/models/cards/Card;", "Lorg/json/JSONObject;", "contentCardJson", "(Lorg/json/JSONObject;)Lcom/braze/models/cards/Card;", "requestLocationInitialization", "", IBrazeLocation.LATITUDE, IBrazeLocation.LONGITUDE, "requestGeofences", "(DD)V", "signature", "setSdkAuthenticationSignature", "cardId", "logFeedCardImpression", "logFeedCardClick", "getInstallTrackingId", "()Ljava/lang/String;", "()Lcom/braze/BrazeUser;", "currentUser", "Lcom/braze/images/IBrazeImageLoader;", "getImageLoader", "()Lcom/braze/images/IBrazeImageLoader;", "setImageLoader", "(Lcom/braze/images/IBrazeImageLoader;)V", "imageLoader", "getRegisteredPushToken", "setRegisteredPushToken", "registeredPushToken", "getDeviceId", "deviceId", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface IBraze {
    static /* synthetic */ void logPurchase$default(IBraze iBraze, String str, String str2, BigDecimal bigDecimal, int i, BrazeProperties brazeProperties, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: logPurchase");
        }
        if ((i2 & 8) != 0) {
            i = 1;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            brazeProperties = null;
        }
        iBraze.logPurchase(str, str2, bigDecimal, i3, brazeProperties);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void requestBannersRefresh$default(IBraze iBraze, List list, IValueCallback iValueCallback, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: requestBannersRefresh");
        }
        if ((i & 2) != 0) {
            iValueCallback = null;
        }
        iBraze.requestBannersRefresh(list, iValueCallback);
    }

    <T> void addSingleSynchronousSubscription(IEventSubscriber<T> subscriber, Class<T> eventClass);

    void changeUser(String userId);

    void changeUser(String userId, String sdkAuthSignature);

    void closeSession(Activity activity);

    Card deserializeContentCard(String contentCardString);

    Card deserializeContentCard(JSONObject contentCardJson);

    IInAppMessage deserializeInAppMessageString(String inAppMessageString);

    List<FeatureFlag> getAllFeatureFlags();

    Banner getBanner(String id);

    List<Card> getCachedContentCards();

    int getContentCardCount();

    int getContentCardUnviewedCount();

    long getContentCardsLastUpdatedInSecondsFromEpoch();

    BrazeUser getCurrentUser();

    void getCurrentUser(IValueCallback<BrazeUser> completionCallback);

    String getDeviceId();

    void getDeviceIdAsync(IValueCallback<String> completionCallback);

    FeatureFlag getFeatureFlag(String id);

    IBrazeImageLoader getImageLoader();

    @Deprecated(message = "Use {@link #getDeviceId()} for equivalent functionality. Deprecated since May 2021", replaceWith = @ReplaceWith(expression = "deviceId", imports = {}))
    default String getInstallTrackingId() {
        return getDeviceId();
    }

    String getRegisteredPushToken();

    void logBannerClick(String placementId, String buttonId);

    boolean logBannerImpression(String placementId);

    void logCustomEvent(String eventName);

    void logCustomEvent(String eventName, BrazeProperties properties);

    void logFeatureFlagImpression(String id);

    @Deprecated(message = "Please call {@link Card#logClick()} instead to log a click.", replaceWith = @ReplaceWith(expression = "Card.logClick()", imports = {}))
    void logFeedCardClick(String cardId);

    @Deprecated(message = "Please call {@link Card#logImpression()} instead to log an impression.", replaceWith = @ReplaceWith(expression = "Card.logImpression", imports = {}))
    void logFeedCardImpression(String cardId);

    void logFeedDisplayed();

    void logPurchase(String productId, String currencyCode, BigDecimal price);

    void logPurchase(String productId, String currencyCode, BigDecimal price, int quantity);

    void logPurchase(String productId, String currencyCode, BigDecimal price, int quantity, BrazeProperties properties);

    void logPurchase(String productId, String currencyCode, BigDecimal price, BrazeProperties properties);

    void logPushNotificationActionClicked(String campaignId, String actionId, String actionType);

    void logPushNotificationOpened(Intent intent);

    void logPushNotificationOpened(String campaignId);

    void logPushStoryPageClicked(String campaignId, String pageId);

    void openSession(Activity activity);

    void refreshFeatureFlags();

    <T> void removeSingleSubscription(IEventSubscriber<T> subscriber, Class<T> eventClass);

    void requestBannersRefresh(List<String> ids);

    void requestBannersRefresh(List<String> ids, IValueCallback<BannersUpdatedEvent> completionCallback);

    void requestContentCardsRefresh();

    @Deprecated(message = "Please call {@link IBraze#requestContentCardsRefresh()} or {@link IBraze#requestContentCardsRefreshFromCache()} instead refresh Content Cards", replaceWith = @ReplaceWith(expression = "IBraze.requestContentCardsRefresh", imports = {}))
    void requestContentCardsRefresh(boolean fromCache);

    void requestContentCardsRefreshFromCache();

    void requestFeedRefresh();

    void requestFeedRefreshFromCache();

    void requestGeofences(double latitude, double longitude);

    void requestImmediateDataFlush();

    void requestLocationInitialization();

    void setGoogleAdvertisingId(String googleAdvertisingId, boolean isLimitAdTrackingEnabled);

    void setImageLoader(IBrazeImageLoader iBrazeImageLoader);

    void setRegisteredPushToken(String str);

    void setSdkAuthenticationSignature(String signature);

    void subscribeToBannersErrors(IEventSubscriber<com.braze.events.internal.b> subscriber);

    void subscribeToBannersUpdates(IEventSubscriber<BannersUpdatedEvent> subscriber);

    void subscribeToContentCardsUpdates(IEventSubscriber<ContentCardsUpdatedEvent> subscriber);

    void subscribeToFeatureFlagsUpdates(IEventSubscriber<FeatureFlagsUpdatedEvent> subscriber);

    void subscribeToFeedUpdates(IEventSubscriber<FeedUpdatedEvent> subscriber);

    void subscribeToNetworkFailures(IEventSubscriber<BrazeNetworkFailureEvent> subscriber);

    void subscribeToNewInAppMessages(IEventSubscriber<InAppMessageEvent> subscriber);

    void subscribeToNoMatchingTriggerForEvent(IEventSubscriber<NoMatchingTriggerEvent> subscriber);

    void subscribeToPushNotificationEvents(IEventSubscriber<BrazePushEvent> subscriber);

    void subscribeToSdkAuthenticationFailures(IEventSubscriber<BrazeSdkAuthenticationErrorEvent> subscriber);

    void subscribeToSessionUpdates(IEventSubscriber<SessionStateChangedEvent> subscriber);
}

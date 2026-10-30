package com.braze.models.cards;

import com.braze.enums.CardCategory;
import com.braze.enums.CardKey;
import com.braze.enums.CardType;
import com.braze.enums.Channel;
import com.braze.managers.c0;
import com.braze.managers.m;
import com.braze.models.FeatureFlag;
import com.braze.models.IPutIntoJson;
import com.braze.models.i;
import com.braze.models.inappmessage.InAppMessageBase;
import com.braze.storage.ICardStorageProvider;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.JsonUtils;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0017\u0018\u0000 p2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001qB9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0012J\u001b\u0010\u0017\u001a\u00020\u00102\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u001e\u0010\u0012J\u001a\u0010!\u001a\u00020\u00102\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0096\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010&R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010'R\u001a\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010(R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010)R#\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0*8\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\u0017\u0010/\u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u0010\u001dR\u0017\u00103\u001a\u0002028\u0006¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u0017\u00107\u001a\u0002028\u0006¢\u0006\f\n\u0004\b7\u00104\u001a\u0004\b8\u00106R\u0017\u00109\u001a\u0002028\u0006¢\u0006\f\n\u0004\b9\u00104\u001a\u0004\b:\u00106R4\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00142\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00148\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0016\u0010<\u001a\u0004\b=\u0010>R\u0017\u0010?\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\b?\u0010\u0012R\u0017\u0010A\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\bA\u0010@\u001a\u0004\bA\u0010\u0012R\"\u0010B\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010@\u001a\u0004\bB\u0010\u0012\"\u0004\bC\u0010DR$\u0010E\u001a\u00020\u00102\u0006\u0010;\u001a\u00020\u00108\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bE\u0010@\u001a\u0004\bE\u0010\u0012R\u001d\u0010F\u001a\u00020\u00108\u0006¢\u0006\u0012\n\u0004\bF\u0010@\u0012\u0004\bH\u0010I\u001a\u0004\bG\u0010\u0012R\"\u0010J\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bJ\u0010@\u001a\u0004\bJ\u0010\u0012\"\u0004\bK\u0010DR\"\u0010L\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010@\u001a\u0004\bL\u0010\u0012\"\u0004\bM\u0010DR\u001c\u0010N\u001a\u0004\u0018\u00010\u001b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bN\u00100\u001a\u0004\bO\u0010\u001dR\u001a\u0010Q\u001a\u00020P8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010TR\u0016\u0010U\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010@R\u0016\u0010V\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010@R\u0016\u0010W\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010@R\u0017\u0010Y\u001a\u00020X8\u0006¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\R$\u0010^\u001a\u0004\u0018\u00010]8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b^\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR*\u0010d\u001a\u00020\u00102\u0006\u0010d\u001a\u00020\u00108F@FX\u0086\u000e¢\u0006\u0012\u0012\u0004\bf\u0010I\u001a\u0004\bd\u0010\u0012\"\u0004\be\u0010DR*\u0010g\u001a\u00020\u00102\u0006\u0010g\u001a\u00020\u00108F@FX\u0086\u000e¢\u0006\u0012\u0012\u0004\bj\u0010I\u001a\u0004\bh\u0010\u0012\"\u0004\bi\u0010DR$\u0010l\u001a\u00020\u00102\u0006\u0010k\u001a\u00020\u00108F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bl\u0010\u0012\"\u0004\bm\u0010DR\u0011\u0010n\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\bn\u0010\u0012R\u0011\u0010o\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\bo\u0010\u0012¨\u0006r"}, d2 = {"Lcom/braze/models/cards/Card;", "Lcom/braze/models/IPutIntoJson;", "Lorg/json/JSONObject;", "jsonObject", "Lcom/braze/enums/CardKey$Provider;", "cardKeysProvider", "Lcom/braze/managers/c0;", "brazeManager", "Lcom/braze/storage/ICardStorageProvider;", "cardStorage", "Lcom/braze/analytics/c;", "cardAnalytics", "<init>", "(Lorg/json/JSONObject;Lcom/braze/enums/CardKey$Provider;Lcom/braze/managers/c0;Lcom/braze/storage/ICardStorageProvider;Lcom/braze/analytics/c;)V", "cardKeyProvider", "(Lorg/json/JSONObject;Lcom/braze/enums/CardKey$Provider;)V", "", "logImpression", "()Z", "logClick", "Ljava/util/EnumSet;", "Lcom/braze/enums/CardCategory;", "categories", "isInCategorySet", "(Ljava/util/EnumSet;)Z", "forJsonPut", "()Lorg/json/JSONObject;", "", "toString", "()Ljava/lang/String;", "isValidCard", "", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Lorg/json/JSONObject;", "Lcom/braze/managers/c0;", "Lcom/braze/storage/ICardStorageProvider;", "Lcom/braze/analytics/c;", "", InAppMessageBase.EXTRAS, "Ljava/util/Map;", "getExtras", "()Ljava/util/Map;", "id", "Ljava/lang/String;", "getId", "", "created", "J", "getCreated", "()J", "updated", "getUpdated", "expiresAt", "getExpiresAt", "value", "Ljava/util/EnumSet;", "getCategories", "()Ljava/util/EnumSet;", "isContentCard", "Z", "isRemoved", "isPinned", "setPinned", "(Z)V", "isClicked", "openUriInWebView", "getOpenUriInWebView", "getOpenUriInWebView$annotations", "()V", "isDismissibleByUser", "setDismissibleByUser", "isTest", "setTest", "url", "getUrl", "Lcom/braze/enums/CardType;", "cardType", "Lcom/braze/enums/CardType;", "getCardType", "()Lcom/braze/enums/CardType;", "wasViewedInternal", "isIndicatorHighlightedInternal", "isDismissedInternal", "Lcom/braze/enums/Channel;", "channel", "Lcom/braze/enums/Channel;", "getChannel", "()Lcom/braze/enums/Channel;", "Lcom/braze/models/cards/ICardListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/braze/models/cards/ICardListener;", "getListener", "()Lcom/braze/models/cards/ICardListener;", "setListener", "(Lcom/braze/models/cards/ICardListener;)V", "isDismissed", "setDismissed", "isDismissed$annotations", "viewed", "getViewed", "setViewed", "getViewed$annotations", FeatureFlag.ENABLED, "isIndicatorHighlighted", "setIndicatorHighlighted", "isExpired", "isControl", "Companion", "com/braze/models/cards/a", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class Card implements IPutIntoJson<JSONObject> {
    public static final a Companion = new a();
    private static final long DEFAULT_EXPIRES_AT_VALUE = -1;
    private final c0 brazeManager;
    private final com.braze.analytics.c cardAnalytics;
    private final ICardStorageProvider<?> cardStorage;
    private final CardType cardType;
    private EnumSet<CardCategory> categories;
    private final Channel channel;
    private final long created;
    private final long expiresAt;
    private final Map<String, String> extras;
    private final String id;
    private boolean isClicked;
    private final boolean isContentCard;
    private boolean isDismissedInternal;
    private boolean isDismissibleByUser;
    private boolean isIndicatorHighlightedInternal;
    private boolean isPinned;
    private final boolean isRemoved;
    private boolean isTest;
    private final JSONObject jsonObject;
    private ICardListener listener;
    private final boolean openUriInWebView;
    private final long updated;
    private final String url;
    private boolean wasViewedInternal;

    public Card(JSONObject jsonObject, CardKey.Provider cardKeysProvider, c0 c0Var, ICardStorageProvider<?> iCardStorageProvider, com.braze.analytics.c cVar) throws JSONException {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Intrinsics.checkNotNullParameter(cardKeysProvider, "cardKeysProvider");
        this.jsonObject = jsonObject;
        this.brazeManager = c0Var;
        this.cardStorage = iCardStorageProvider;
        this.cardAnalytics = cVar;
        this.extras = JsonUtils.convertJSONObjectToMap(jsonObject.optJSONObject(cardKeysProvider.getKey(CardKey.EXTRAS)));
        String string = jsonObject.getString(cardKeysProvider.getKey(CardKey.ID));
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        this.id = string;
        this.isContentCard = cardKeysProvider.getIsContentCardProvider();
        this.cardType = CardType.DEFAULT;
        this.channel = cardKeysProvider.getIsContentCardProvider() ? Channel.CONTENT_CARD : Channel.NEWS_FEED;
        this.wasViewedInternal = jsonObject.optBoolean(cardKeysProvider.getKey(CardKey.VIEWED));
        this.isDismissedInternal = jsonObject.optBoolean(cardKeysProvider.getKey(CardKey.DISMISSED), false);
        this.isPinned = jsonObject.optBoolean(cardKeysProvider.getKey(CardKey.PINNED), false);
        this.created = jsonObject.getLong(cardKeysProvider.getKey(CardKey.CREATED));
        this.expiresAt = jsonObject.optLong(cardKeysProvider.getKey(CardKey.EXPIRES_AT), -1L);
        this.openUriInWebView = jsonObject.optBoolean(cardKeysProvider.getKey(CardKey.OPEN_URI_IN_WEBVIEW), false);
        this.isRemoved = jsonObject.optBoolean(cardKeysProvider.getKey(CardKey.REMOVED), false);
        JSONArray jSONArrayOptJSONArray = jsonObject.optJSONArray(cardKeysProvider.getKey(CardKey.CATEGORIES));
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
            this.categories = EnumSet.of(CardCategory.NO_CATEGORY);
        } else {
            EnumSet<CardCategory> enumSetNoneOf = EnumSet.noneOf(CardCategory.class);
            Iterator it = SequencesKt.map(SequencesKt.filter(CollectionsKt.asSequence(RangesKt.until(0, jSONArrayOptJSONArray.length())), new b(jSONArrayOptJSONArray)), new c(jSONArrayOptJSONArray)).iterator();
            while (it.hasNext()) {
                CardCategory cardCategory = CardCategory.get((String) it.next());
                if (cardCategory != null) {
                    enumSetNoneOf.add(cardCategory);
                }
            }
            this.categories = enumSetNoneOf;
        }
        this.updated = this.jsonObject.optLong(cardKeysProvider.getKey(CardKey.UPDATED), this.created);
        this.isDismissibleByUser = this.jsonObject.optBoolean(cardKeysProvider.getKey(CardKey.DISMISSIBLE), false);
        this.isIndicatorHighlightedInternal = this.jsonObject.optBoolean(cardKeysProvider.getKey(CardKey.READ), this.wasViewedInternal);
        this.isClicked = this.jsonObject.optBoolean(cardKeysProvider.getKey(CardKey.CLICKED), false);
        this.isTest = this.jsonObject.optBoolean(cardKeysProvider.getKey(CardKey.IS_TEST), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _set_isDismissed_$lambda$1() {
        return "Cannot dismiss a card more than once. Doing nothing.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _set_isDismissed_$lambda$3() {
        return "Failed to log card as dismissed.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _set_isIndicatorHighlighted_$lambda$0() {
        return "Failed to mark card indicator as highlighted.";
    }

    public static /* synthetic */ void getOpenUriInWebView$annotations() {
    }

    public static /* synthetic */ void getViewed$annotations() {
    }

    public static /* synthetic */ void isDismissed$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isValidCard$lambda$17() {
        return "Card ID cannot be null";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logClick$lambda$14(Card card) {
        return "Logged click for card with id: " + card.id;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logClick$lambda$15(Card card) {
        return "Failed to log card clicked for id: " + card.id;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logClick$lambda$16(Card card) {
        return "Failed to log card as clicked for id: " + card.id;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logImpression$lambda$10(Card card) {
        return "Logging control impression event for card with id: " + card.id;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logImpression$lambda$12(Card card) {
        return "Failed to log card impression for card id: " + card.id;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logImpression$lambda$8(Card card) {
        return "Logging impression event for card with id: " + card.id;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.areEqual(getClass(), other.getClass())) {
            return false;
        }
        Card card = (Card) other;
        return this.updated == card.updated && Intrinsics.areEqual(this.id, card.id);
    }

    public CardType getCardType() {
        return this.cardType;
    }

    public final EnumSet<CardCategory> getCategories() {
        return this.categories;
    }

    public final Channel getChannel() {
        return this.channel;
    }

    public final long getCreated() {
        return this.created;
    }

    public final long getExpiresAt() {
        return this.expiresAt;
    }

    public final Map<String, String> getExtras() {
        return this.extras;
    }

    public final String getId() {
        return this.id;
    }

    public final ICardListener getListener() {
        return this.listener;
    }

    public final boolean getOpenUriInWebView() {
        return this.openUriInWebView;
    }

    public final long getUpdated() {
        return this.updated;
    }

    public String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: getViewed, reason: from getter */
    public final boolean getWasViewedInternal() {
        return this.wasViewedInternal;
    }

    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        long j = this.updated;
        return iHashCode + ((int) (j ^ (j >>> 32)));
    }

    /* JADX INFO: renamed from: isClicked, reason: from getter */
    public final boolean getIsClicked() {
        return this.isClicked;
    }

    /* JADX INFO: renamed from: isContentCard, reason: from getter */
    public final boolean getIsContentCard() {
        return this.isContentCard;
    }

    public final boolean isControl() {
        return getCardType() == CardType.CONTROL;
    }

    /* JADX INFO: renamed from: isDismissed, reason: from getter */
    public final boolean getIsDismissedInternal() {
        return this.isDismissedInternal;
    }

    /* JADX INFO: renamed from: isDismissibleByUser, reason: from getter */
    public final boolean getIsDismissibleByUser() {
        return this.isDismissibleByUser;
    }

    public final boolean isExpired() {
        long j = this.expiresAt;
        return j != -1 && j <= DateTimeUtils.nowInSeconds();
    }

    public final boolean isInCategorySet(EnumSet<CardCategory> categories) {
        Intrinsics.checkNotNullParameter(categories, "categories");
        EnumSet<CardCategory> enumSet = this.categories;
        if (enumSet == null) {
            return false;
        }
        Iterator<CardCategory> it = categories.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            if (enumSet.contains(it.next())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: isIndicatorHighlighted, reason: from getter */
    public final boolean getIsIndicatorHighlightedInternal() {
        return this.isIndicatorHighlightedInternal;
    }

    /* JADX INFO: renamed from: isPinned, reason: from getter */
    public final boolean getIsPinned() {
        return this.isPinned;
    }

    /* JADX INFO: renamed from: isRemoved, reason: from getter */
    public final boolean getIsRemoved() {
        return this.isRemoved;
    }

    /* JADX INFO: renamed from: isTest, reason: from getter */
    public final boolean getIsTest() {
        return this.isTest;
    }

    public final boolean isValidCard() {
        if (!StringsKt.isBlank(this.id)) {
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.models.cards.Card$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Card.isValidCard$lambda$17();
            }
        }, 6, (Object) null);
        return false;
    }

    public final boolean logClick() {
        try {
            this.isClicked = true;
            if (this.brazeManager == null || this.cardAnalytics == null || this.cardStorage == null || !isValidCard()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.models.cards.Card$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Card.logClick$lambda$15(this.f$0);
                    }
                }, 6, (Object) null);
                return false;
            }
            i iVarB = this.cardAnalytics.b(this.id);
            if (iVarB != null) {
                ((m) this.brazeManager).a(iVarB);
            }
            this.cardStorage.markCardAsClicked(this.id);
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.cards.Card$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Card.logClick$lambda$14(this.f$0);
                }
            }, 7, (Object) null);
            return true;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.models.cards.Card$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Card.logClick$lambda$16(this.f$0);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean logImpression() {
        try {
            if (this.brazeManager == null || this.cardAnalytics == null || this.cardStorage == null || !isValidCard()) {
                return false;
            }
            if (isControl()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.models.cards.Card$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Card.logImpression$lambda$10(this.f$0);
                    }
                }, 6, (Object) null);
                i iVarC = this.cardAnalytics.c(this.id);
                if (iVarC != null) {
                    ((m) this.brazeManager).a(iVarC);
                }
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.models.cards.Card$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Card.logImpression$lambda$8(this.f$0);
                    }
                }, 6, (Object) null);
                i iVarD = this.cardAnalytics.d(this.id);
                if (iVarD != null) {
                    ((m) this.brazeManager).a(iVarD);
                }
            }
            this.cardStorage.markCardAsViewed(this.id);
            return true;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.models.cards.Card$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Card.logImpression$lambda$12(this.f$0);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final void setDismissed(boolean z) {
        i iVarA;
        if (this.isDismissedInternal && z) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.models.cards.Card$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Card._set_isDismissed_$lambda$1();
                }
            }, 6, (Object) null);
            return;
        }
        this.isDismissedInternal = z;
        ICardStorageProvider<?> iCardStorageProvider = this.cardStorage;
        if (iCardStorageProvider != null) {
            iCardStorageProvider.markCardAsDismissed(this.id);
        }
        if (z) {
            try {
                if (this.brazeManager == null || this.cardAnalytics == null || !isValidCard() || (iVarA = this.cardAnalytics.a(this.id)) == null) {
                    return;
                }
                ((m) this.brazeManager).a(iVarA);
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.models.cards.Card$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Card._set_isDismissed_$lambda$3();
                    }
                }, 4, (Object) null);
            }
        }
    }

    public final void setDismissibleByUser(boolean z) {
        this.isDismissibleByUser = z;
    }

    public final void setIndicatorHighlighted(boolean z) {
        ICardStorageProvider<?> iCardStorageProvider;
        this.isIndicatorHighlightedInternal = z;
        try {
            ICardListener iCardListener = this.listener;
            if (iCardListener != null) {
                iCardListener.onCardUpdate();
            }
        } catch (Exception unused) {
        }
        if (!z || (iCardStorageProvider = this.cardStorage) == null) {
            return;
        }
        try {
            iCardStorageProvider.markCardAsVisuallyRead(this.id);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.D, (Throwable) e, false, new Function0() { // from class: com.braze.models.cards.Card$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Card._set_isIndicatorHighlighted_$lambda$0();
                }
            }, 4, (Object) null);
        }
    }

    public final void setListener(ICardListener iCardListener) {
        this.listener = iCardListener;
    }

    public final void setPinned(boolean z) {
        this.isPinned = z;
    }

    public final void setTest(boolean z) {
        this.isTest = z;
    }

    public final void setViewed(boolean z) {
        this.wasViewedInternal = z;
        ICardStorageProvider<?> iCardStorageProvider = this.cardStorage;
        if (iCardStorageProvider != null) {
            iCardStorageProvider.markCardAsViewed(this.id);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("\n            Card{\n            extras=");
        sb.append(this.extras).append("\n            id='").append(this.id).append("'\n            created=").append(this.created).append("\n            updated=").append(this.updated).append("\n            expiresAt=").append(this.expiresAt).append("\n            categories=").append(this.categories).append("\n            isContentCard=").append(this.isContentCard).append("\n            viewed=").append(this.wasViewedInternal).append("\n            isRead=").append(this.isIndicatorHighlightedInternal).append("\n            isDismissed=").append(this.isDismissedInternal).append("\n            isRemoved=").append(this.isRemoved).append("\n            isPinned=");
        sb.append(this.isPinned).append("\n            isClicked=").append(this.isClicked).append("\n            openUriInWebview=").append(this.openUriInWebView).append("\n            isDismissibleByUser=").append(this.isDismissibleByUser).append("\n            isTest=").append(this.isTest).append("\n            json=").append(JsonUtils.getPrettyPrintedString(this.jsonObject)).append("\n            }\n\n        ");
        return StringsKt.trimIndent(sb.toString());
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut, reason: avoid collision after fix types in other method and from getter */
    public JSONObject getPropertiesJSONObject() {
        return this.jsonObject;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Card(JSONObject jsonObject, CardKey.Provider cardKeyProvider) {
        this(jsonObject, cardKeyProvider, null, null, null);
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Intrinsics.checkNotNullParameter(cardKeyProvider, "cardKeyProvider");
    }
}

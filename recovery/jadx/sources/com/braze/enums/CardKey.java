package com.braze.enums;

import com.braze.Constants;
import com.braze.models.Banner;
import com.braze.models.FeatureFlag;
import com.braze.models.inappmessage.InAppMessageBase;
import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImplKt;
import org.apache.http.cookie.ClientCookie;
import org.json.JSONObject;
import org.spongycastle.i18n.MessageBundle;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b/\b\u0087\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\f\rB\u0019\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0007\u001a\u0004\b\n\u0010\tj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0¨\u00061"}, d2 = {"Lcom/braze/enums/CardKey;", "", "", "feedKey", "contentCardsKey", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "Ljava/lang/String;", "getFeedKey", "()Ljava/lang/String;", "getContentCardsKey", "Companion", "com/braze/enums/b", "Provider", "ID", "VIEWED", DebugCoroutineInfoImplKt.CREATED, "EXPIRES_AT", "EXTRAS", "OPEN_URI_IN_WEBVIEW", "TYPE", "CATEGORIES", "UPDATED", "DISMISSED", "REMOVED", "PINNED", "DISMISSIBLE", "IS_TEST", "READ", "CLICKED", "IMAGE_ONLY_IMAGE", "IMAGE_ONLY_URL", "IMAGE_ONLY_DOMAIN", "IMAGE_ONLY_ASPECT_RATIO", "CAPTIONED_IMAGE_IMAGE", "CAPTIONED_IMAGE_TITLE", "CAPTIONED_IMAGE_DESCRIPTION", "CAPTIONED_IMAGE_URL", "CAPTIONED_IMAGE_DOMAIN", "CAPTIONED_IMAGE_ASPECT_RATIO", "TEXT_ANNOUNCEMENT_TITLE", "TEXT_ANNOUNCEMENT_DESCRIPTION", "TEXT_ANNOUNCEMENT_URL", "TEXT_ANNOUNCEMENT_DOMAIN", "SHORT_NEWS_IMAGE", "SHORT_NEWS_TITLE", "SHORT_NEWS_DESCRIPTION", "SHORT_NEWS_URL", "SHORT_NEWS_DOMAIN", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public enum CardKey {
    ID("id", "id"),
    VIEWED("viewed", "v"),
    CREATED("created", "ca"),
    EXPIRES_AT(Banner.EXPIRATION, "ea"),
    EXTRAS(InAppMessageBase.EXTRAS, "e"),
    OPEN_URI_IN_WEBVIEW(InAppMessageBase.OPEN_URI_IN_WEBVIEW, "uw"),
    TYPE("type", "tp"),
    CATEGORIES("categories", ""),
    UPDATED("updated", ""),
    DISMISSED("", Constants.BRAZE_PUSH_NOTIFICATION_SOUND_DEFAULT_VALUE),
    REMOVED("", "r"),
    PINNED("", Constants.BRAZE_PUSH_PRIORITY_KEY),
    DISMISSIBLE("", "db"),
    IS_TEST("", Constants.BRAZE_PUSH_TITLE_KEY),
    READ("", "read"),
    CLICKED("", "cl"),
    IMAGE_ONLY_IMAGE(FeatureFlag.PROPERTIES_TYPE_IMAGE, "i"),
    IMAGE_ONLY_URL("url", "u"),
    IMAGE_ONLY_DOMAIN(ClientCookie.DOMAIN_ATTR, ""),
    IMAGE_ONLY_ASPECT_RATIO("aspect_ratio", "ar"),
    CAPTIONED_IMAGE_IMAGE(FeatureFlag.PROPERTIES_TYPE_IMAGE, "i"),
    CAPTIONED_IMAGE_TITLE(MessageBundle.TITLE_ENTRY, "tt"),
    CAPTIONED_IMAGE_DESCRIPTION("description", "ds"),
    CAPTIONED_IMAGE_URL("url", "u"),
    CAPTIONED_IMAGE_DOMAIN(ClientCookie.DOMAIN_ATTR, "dm"),
    CAPTIONED_IMAGE_ASPECT_RATIO("aspect_ratio", "ar"),
    TEXT_ANNOUNCEMENT_TITLE(MessageBundle.TITLE_ENTRY, "tt"),
    TEXT_ANNOUNCEMENT_DESCRIPTION("description", "ds"),
    TEXT_ANNOUNCEMENT_URL("url", "u"),
    TEXT_ANNOUNCEMENT_DOMAIN(ClientCookie.DOMAIN_ATTR, "dm"),
    SHORT_NEWS_IMAGE(FeatureFlag.PROPERTIES_TYPE_IMAGE, "i"),
    SHORT_NEWS_TITLE(MessageBundle.TITLE_ENTRY, "tt"),
    SHORT_NEWS_DESCRIPTION("description", "ds"),
    SHORT_NEWS_URL("url", "u"),
    SHORT_NEWS_DOMAIN(ClientCookie.DOMAIN_ATTR, "dm");

    private final String contentCardsKey;
    private final String feedKey;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
    public static final b Companion = new Object() { // from class: com.braze.enums.b
    };
    private static final String IMAGE_ONLY_KEY = "banner_image";
    private static final String CAPTIONED_IMAGE_KEY = "captioned_image";
    private static final String TEXT_ANNOUNCEMENT_KEY = "text_announcement";
    private static final String SHORT_NEWS_KEY = "short_news";
    private static final String CONTROL_KEY = "control";
    private static final Map<String, CardType> cardTypeMap = MapsKt.mapOf(TuplesKt.to(IMAGE_ONLY_KEY, CardType.IMAGE), TuplesKt.to(CAPTIONED_IMAGE_KEY, CardType.CAPTIONED_IMAGE), TuplesKt.to(TEXT_ANNOUNCEMENT_KEY, CardType.TEXT_ANNOUNCEMENT), TuplesKt.to(SHORT_NEWS_KEY, CardType.SHORT_NEWS), TuplesKt.to(CONTROL_KEY, CardType.CONTROL));

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0003\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/braze/enums/CardKey$Provider;", "", "", "isContentCardProvider", "<init>", "(Z)V", "Lcom/braze/enums/CardKey;", "key", "", "getKey", "(Lcom/braze/enums/CardKey;)Ljava/lang/String;", "Lorg/json/JSONObject;", "jsonObject", "Lcom/braze/enums/CardType;", "getCardTypeFromJson", "(Lorg/json/JSONObject;)Lcom/braze/enums/CardType;", "cardType", "getServerKeyFromCardType", "(Lcom/braze/enums/CardType;)Ljava/lang/String;", "Z", "()Z", "Companion", "com/braze/enums/c", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Provider {
        private final boolean isContentCardProvider;
        public static final c Companion = new c();
        public static final Provider CONTENT_CARDS = new Provider(true);
        public static final Provider NEWS_FEED = new Provider(false);

        public Provider(boolean z) {
            this.isContentCardProvider = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getCardTypeFromJson$lambda$0(JSONObject jSONObject) {
            return "Short News card doesn't contain image url, parsing type as Text Announcement. JSON: " + jSONObject;
        }

        public final CardType getCardTypeFromJson(final JSONObject jsonObject) {
            String optionalString;
            Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
            String optionalString2 = JsonUtils.getOptionalString(jsonObject, getKey(CardKey.TYPE));
            if (optionalString2 != null && optionalString2.length() != 0 && this.isContentCardProvider && Intrinsics.areEqual(optionalString2, CardKey.SHORT_NEWS_KEY) && ((optionalString = JsonUtils.getOptionalString(jsonObject, getKey(CardKey.SHORT_NEWS_IMAGE))) == null || optionalString.length() == 0)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.enums.CardKey$Provider$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CardKey.Provider.getCardTypeFromJson$lambda$0(jsonObject);
                    }
                }, 6, (Object) null);
                optionalString2 = CardKey.TEXT_ANNOUNCEMENT_KEY;
            }
            return CardKey.cardTypeMap.containsKey(optionalString2) ? (CardType) CardKey.cardTypeMap.get(optionalString2) : CardType.DEFAULT;
        }

        public final String getKey(CardKey key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return this.isContentCardProvider ? key.getContentCardsKey() : key.getFeedKey();
        }

        public final String getServerKeyFromCardType(CardType cardType) {
            Intrinsics.checkNotNullParameter(cardType, "cardType");
            for (Map.Entry entry : CardKey.cardTypeMap.entrySet()) {
                String str = (String) entry.getKey();
                if (cardType == ((CardType) entry.getValue())) {
                    return str;
                }
            }
            return null;
        }

        /* JADX INFO: renamed from: isContentCardProvider, reason: from getter */
        public final boolean getIsContentCardProvider() {
            return this.isContentCardProvider;
        }
    }

    CardKey(String str, String str2) {
        this.feedKey = str;
        this.contentCardsKey = str2;
    }

    public static EnumEntries<CardKey> getEntries() {
        return $ENTRIES;
    }

    public final String getContentCardsKey() {
        return this.contentCardsKey;
    }

    public final String getFeedKey() {
        return this.feedKey;
    }
}

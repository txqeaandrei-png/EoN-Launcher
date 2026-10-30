package com.braze.storage;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.enums.CardKey;
import com.braze.events.ContentCardsUpdatedEvent;
import com.braze.models.cards.Card;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.StringUtils;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class p implements ICardStorageProvider {
    public static final Set l = SetsKt.setOf((Object[]) new String[]{CardKey.VIEWED.getContentCardsKey(), CardKey.DISMISSED.getContentCardsKey()});
    public final String a;
    public final com.braze.managers.m b;
    public long c;
    public long d;
    public final LinkedHashSet e;
    public final LinkedHashSet f;
    public final LinkedHashSet g;
    public final Map h;
    public final SharedPreferences i;
    public final SharedPreferences j;
    public final com.braze.analytics.a k;

    public p(Context context, String userId, String apiKey, com.braze.managers.m brazeManager, final String currentSdkVersion) throws NoSuchAlgorithmException {
        Collection collectionFilterNotNull;
        Collection collectionFilterNotNull2;
        Collection collectionFilterNotNull3;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        Intrinsics.checkNotNullParameter(currentSdkVersion, "currentSdkVersion");
        this.a = userId;
        this.b = brazeManager;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.e = linkedHashSet;
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        this.f = linkedHashSet2;
        LinkedHashSet linkedHashSet3 = new LinkedHashSet();
        this.g = linkedHashSet3;
        this.h = new LinkedHashMap();
        String cacheFileSuffix = StringUtils.getCacheFileSuffix(context, userId, apiKey);
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.appboy.storage.content_cards_storage_provider.cards" + cacheFileSuffix, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.i = sharedPreferences;
        SharedPreferences sharedPreferences2 = context.getSharedPreferences("com.braze.storage.content_cards_storage_provider.metadata" + cacheFileSuffix, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences2, "getSharedPreferences(...)");
        this.j = sharedPreferences2;
        this.k = new com.braze.analytics.a();
        Map<String, ?> all = sharedPreferences.getAll();
        Intrinsics.checkNotNull(all, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.String>");
        this.h = TypeIntrinsics.asMutableMap(all);
        Set<String> stringSet = sharedPreferences2.getStringSet("dismissed", new HashSet());
        linkedHashSet.addAll((stringSet == null || (collectionFilterNotNull3 = CollectionsKt.filterNotNull(stringSet)) == null) ? SetsKt.emptySet() : collectionFilterNotNull3);
        Set<String> stringSet2 = sharedPreferences2.getStringSet("expired", new HashSet());
        linkedHashSet3.addAll((stringSet2 == null || (collectionFilterNotNull2 = CollectionsKt.filterNotNull(stringSet2)) == null) ? SetsKt.emptySet() : collectionFilterNotNull2);
        Set<String> stringSet3 = sharedPreferences2.getStringSet("test", new HashSet());
        linkedHashSet2.addAll((stringSet3 == null || (collectionFilterNotNull = CollectionsKt.filterNotNull(stringSet3)) == null) ? SetsKt.emptySet() : collectionFilterNotNull);
        final String string = sharedPreferences2.getString("last_accessed_sdk_version", "");
        if (!Intrinsics.areEqual(currentSdkVersion, string)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return p.a(string, currentSdkVersion);
                }
            }, 6, (Object) null);
            sharedPreferences2.edit().putLong("last_full_sync_at", 0L).putString("last_accessed_sdk_version", currentSdkVersion).apply();
        }
        this.c = sharedPreferences2.getLong("last_card_updated_at", 0L);
        this.d = sharedPreferences2.getLong("last_full_sync_at", 0L);
    }

    public static final String a(String str, String str2) {
        return "Detected SDK update from '" + str + "' -> '" + str2 + "'. Clearing config update time.";
    }

    public static final String b(String str) {
        return com.braze.j.a("Adding card to test cache: ", str);
    }

    public static final String c(String str) {
        return com.braze.j.a("Deleting expired card from storage with id: ", str);
    }

    public static final String d(JSONObject jSONObject) {
        return "Server card was locally dismissed already. Not adding card to storage. Server card: " + jSONObject;
    }

    public static final String e(String str) {
        return com.braze.j.a("Card not present in storage for id: ", str);
    }

    public static final String f(String str) {
        return com.braze.j.a("Failed to read card json from storage. Json: ", str);
    }

    public static final String h(String str) {
        return com.braze.j.a("Removing card from test cache: ", str);
    }

    public static final String i(String str) {
        return com.braze.j.a("Server card is marked as removed. Removing from card storage with id: ", str);
    }

    public static final String j(String str) {
        return com.braze.j.a("Server card is marked as dismissed. Adding to dismissed cached and removing from card storage with id: ", str);
    }

    public static final String k(String str) {
        return com.braze.j.a("Can't update card field. Json cannot be parsed from disk or is not present. Id: ", str);
    }

    public static final String l(String str) {
        return com.braze.j.a("Removing card from storage with id: ", str);
    }

    public static final String m(String str) {
        return com.braze.j.a("Writing card to storage with id: ", str);
    }

    public final void g(final String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return p.h(cardId);
            }
        }, 6, (Object) null);
        LinkedHashSet linkedHashSet = this.f;
        linkedHashSet.remove(cardId);
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new i(this, linkedHashSet, null), 3, null);
    }

    @Override // com.braze.storage.ICardStorageProvider
    public final Object getCachedCardsAsEvent() {
        return a(true);
    }

    @Override // com.braze.storage.ICardStorageProvider
    public final void markCardAsClicked(String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        a(cardId, CardKey.CLICKED);
    }

    @Override // com.braze.storage.ICardStorageProvider
    public final void markCardAsDismissed(String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        this.e.add(cardId);
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new f(this, null), 3, null);
        a(cardId, (JSONObject) null);
    }

    @Override // com.braze.storage.ICardStorageProvider
    public final void markCardAsViewed(String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        a(cardId, CardKey.VIEWED);
    }

    @Override // com.braze.storage.ICardStorageProvider
    public final void markCardAsVisuallyRead(String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        a(cardId, CardKey.READ);
    }

    public static final String d() {
        return "Input user id was null. Defaulting to the empty user id";
    }

    public final void a(final JSONObject json) throws JSONException {
        JSONObject jSONObject;
        Set set = CollectionsKt.toSet(this.e);
        Set set2 = CollectionsKt.toSet(this.g);
        final String cardId = json.getString(CardKey.ID.getContentCardsKey());
        Intrinsics.checkNotNull(cardId);
        final JSONObject jSONObjectD = d(cardId);
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return p.b(json);
            }
        }, 7, (Object) null);
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return p.c(jSONObjectD);
            }
        }, 7, (Object) null);
        Intrinsics.checkNotNullParameter(json, "serverCard");
        if (jSONObjectD != null) {
            String contentCardsKey = CardKey.CREATED.getContentCardsKey();
            if (jSONObjectD.has(contentCardsKey) && json.has(contentCardsKey) && jSONObjectD.getLong(contentCardsKey) > json.getLong(contentCardsKey)) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda21
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return p.c();
                    }
                }, 6, (Object) null);
                return;
            }
        }
        CardKey cardKey = CardKey.REMOVED;
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(cardKey, "cardKey");
        String contentCardsKey2 = cardKey.getContentCardsKey();
        if (json.has(contentCardsKey2) ? json.getBoolean(contentCardsKey2) : false) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return p.i(cardId);
                }
            }, 7, (Object) null);
            Intrinsics.checkNotNullParameter(cardId, "cardId");
            this.e.remove(cardId);
            BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new h(this, null), 3, null);
            g(cardId);
            a(cardId, (JSONObject) null);
            return;
        }
        if (set.contains(cardId)) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return p.d(json);
                }
            }, 7, (Object) null);
            return;
        }
        if (set2.contains(cardId)) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return p.e(json);
                }
            }, 7, (Object) null);
            return;
        }
        CardKey cardKey2 = CardKey.DISMISSED;
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(cardKey2, "cardKey");
        String contentCardsKey3 = cardKey2.getContentCardsKey();
        if (json.has(contentCardsKey3) ? json.getBoolean(contentCardsKey3) : false) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return p.j(cardId);
                }
            }, 7, (Object) null);
            Intrinsics.checkNotNullParameter(cardId, "cardId");
            this.e.add(cardId);
            BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new f(this, null), 3, null);
            a(cardId, (JSONObject) null);
            return;
        }
        Intrinsics.checkNotNullParameter(json, "serverCard");
        if (jSONObjectD == null) {
            jSONObject = json;
        } else {
            jSONObject = new JSONObject();
            Iterator<String> itKeys = jSONObjectD.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObject.put(next, jSONObjectD.get(next));
            }
            Iterator<String> itKeys2 = json.keys();
            while (itKeys2.hasNext()) {
                String next2 = itKeys2.next();
                if (l.contains(next2)) {
                    jSONObject.put(next2, jSONObjectD.getBoolean(next2) || json.getBoolean(next2));
                } else {
                    jSONObject.put(next2, json.get(next2));
                }
            }
        }
        a(cardId, jSONObject);
        CardKey cardKey3 = CardKey.IS_TEST;
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(cardKey3, "cardKey");
        String contentCardsKey4 = cardKey3.getContentCardsKey();
        if (json.has(contentCardsKey4) ? json.getBoolean(contentCardsKey4) : false) {
            a(cardId);
        }
    }

    public final JSONObject d(final String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        final String str = (String) this.h.get(cardId);
        if (str == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return p.e(cardId);
                }
            }, 7, (Object) null);
            return null;
        }
        try {
            return new JSONObject(str);
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return p.f(str);
                }
            }, 4, (Object) null);
            return null;
        }
    }

    public static final String c(JSONObject jSONObject) {
        return "Cached card json: " + jSONObject;
    }

    public static final String c() {
        return "The server card received is older than the cached card. Not updating the cached card.";
    }

    public static final String e(JSONObject jSONObject) {
        return "Server card has expired already. Not adding card to storage. Server card: " + jSONObject;
    }

    public static final String b(JSONObject jSONObject) {
        return "Server card json: " + jSONObject;
    }

    public static final String b() {
        return "Clearing content card storage.";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ContentCardsUpdatedEvent a(com.braze.models.response.c contentCardsResponse, String str) {
        Intrinsics.checkNotNullParameter(contentCardsResponse, "contentCardsResponse");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = str;
        if (str == 0) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return p.d();
                }
            }, 7, (Object) null);
            objectRef.element = "";
        }
        if (!Intrinsics.areEqual(this.a, objectRef.element)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return p.a(objectRef, this);
                }
            }, 6, (Object) null);
            return null;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return p.a(objectRef);
            }
        }, 6, (Object) null);
        Intrinsics.checkNotNullParameter(contentCardsResponse, "contentCardsResponse");
        SharedPreferences.Editor editorEdit = this.j.edit();
        long j = contentCardsResponse.a;
        if (j != -1) {
            this.c = j;
            editorEdit.putLong("last_card_updated_at", j);
        }
        long j2 = contentCardsResponse.b;
        if (j2 != -1) {
            this.d = j2;
            editorEdit.putLong("last_full_sync_at", j2);
        }
        editorEdit.apply();
        this.j.edit().putLong("last_storage_update_timestamp", DateTimeUtils.nowInSeconds()).apply();
        LinkedHashSet cardIdsToRetain = new LinkedHashSet();
        JSONArray jSONArray = contentCardsResponse.d;
        if (jSONArray != null && jSONArray.length() != 0) {
            for (JSONObject jSONObject : SequencesKt.map(SequencesKt.filter(CollectionsKt.asSequence(RangesKt.until(0, jSONArray.length())), new m(jSONArray)), new n(jSONArray))) {
                a(jSONObject);
                String string = jSONObject.getString(CardKey.ID.getContentCardsKey());
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                cardIdsToRetain.add(string);
            }
        }
        if (contentCardsResponse.c) {
            Intrinsics.checkNotNullParameter(cardIdsToRetain, "cardIdsToRetain");
            this.e.retainAll(cardIdsToRetain);
            com.braze.coroutine.f fVar = com.braze.coroutine.f.a;
            BuildersKt__Builders_commonKt.launch$default(fVar, null, null, new k(this, null), 3, null);
            Intrinsics.checkNotNullParameter(cardIdsToRetain, "cardIdsToRetain");
            LinkedHashSet linkedHashSet = this.g;
            linkedHashSet.retainAll(cardIdsToRetain);
            BuildersKt__Builders_commonKt.launch$default(fVar, null, null, new l(this, linkedHashSet, null), 3, null);
            cardIdsToRetain.addAll(this.f);
            a(cardIdsToRetain);
        }
        return a(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String a(Ref.ObjectRef objectRef, p pVar) {
        return com.braze.c.a(new StringBuilder("The received cards are for user ").append((String) objectRef.element).append(" and the current user is "), pVar.a, " , the cards will be discarded and no changes will be made.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String a(Ref.ObjectRef objectRef) {
        return "Updating offline Content Cards for user with id: " + ((String) objectRef.element);
    }

    public final ContentCardsUpdatedEvent a(boolean z) {
        CardKey.Provider provider = CardKey.Provider.CONTENT_CARDS;
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.h.values().iterator();
        while (it.hasNext()) {
            jSONArray.put((String) it.next());
        }
        List listA = com.braze.models.g.a(jSONArray, provider, this.b, this, this.k);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : listA) {
            if (((Card) obj).isExpired()) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        Pair pair = new Pair(arrayList, arrayList2);
        List list = (List) pair.component1();
        List list2 = (List) pair.component2();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            a((Card) it2.next());
        }
        return new ContentCardsUpdatedEvent(list2, this.a, this.j.getLong("last_storage_update_timestamp", 0L), z);
    }

    public final void a(Card card) {
        Intrinsics.checkNotNullParameter(card, "card");
        final String cardId = card.getId();
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return p.c(cardId);
            }
        }, 7, (Object) null);
        a(cardId, (JSONObject) null);
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        this.g.add(cardId);
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new g(this, null), 3, null);
        g(cardId);
    }

    public final void a(final String cardId, final CardKey cardKey) {
        final Boolean value = Boolean.TRUE;
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        Intrinsics.checkNotNullParameter(cardKey, "cardKey");
        Intrinsics.checkNotNullParameter(value, "value");
        JSONObject jSONObjectD = d(cardId);
        if (jSONObjectD == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return p.k(cardId);
                }
            }, 7, (Object) null);
            return;
        }
        try {
            jSONObjectD.put(cardKey.getContentCardsKey(), value);
            a(cardId, jSONObjectD);
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return p.a(value, cardKey);
                }
            }, 4, (Object) null);
        }
    }

    public static final String a(Object obj, CardKey cardKey) {
        return "Failed to update card json field to " + obj + " with key: " + cardKey;
    }

    public final void a(final String cardId, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        if (jSONObject == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return p.l(cardId);
                }
            }, 7, (Object) null);
            this.h.remove(cardId);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return p.m(cardId);
                }
            }, 7, (Object) null);
            this.h.put(cardId, jSONObject.toString());
        }
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new o(this, jSONObject, cardId, null), 3, null);
    }

    public final void a(final String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return p.b(cardId);
            }
        }, 6, (Object) null);
        LinkedHashSet linkedHashSet = this.f;
        linkedHashSet.add(cardId);
        this.j.edit().putStringSet("test", linkedHashSet).apply();
    }

    public final void a(final LinkedHashSet cardIdsToRetain) {
        Intrinsics.checkNotNullParameter(cardIdsToRetain, "cardIdsToRetain");
        final Set setKeySet = this.h.keySet();
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return p.a(cardIdsToRetain, setKeySet);
            }
        }, 7, (Object) null);
        ArrayList arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            if (!cardIdsToRetain.contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.h.remove((String) it.next());
        }
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new j(this, arrayList, null), 3, null);
    }

    public static final String a(Set set, Set set2) {
        return "Retaining card ids: " + set + " among cached card ids: " + set2;
    }

    public final void a() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.p$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return p.b();
            }
        }, 7, (Object) null);
        this.h.clear();
        this.i.edit().clear().apply();
        this.j.edit().clear().apply();
    }
}

package com.braze.ui.contentcards;

import android.content.Context;
import android.os.Bundle;
import com.braze.models.cards.Card;
import com.braze.support.BrazeLogger;
import com.braze.ui.BrazeDeeplinkHandler;
import com.braze.ui.actions.UriAction;
import com.braze.ui.actions.brazeactions.BrazeActionUtils;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u0006J,\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u00062\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010¨\u0006\u0012"}, d2 = {"Lcom/braze/ui/contentcards/BrazeContentCardUtils;", "", "<init>", "()V", "defaultCardHandling", "", "Lcom/braze/models/cards/Card;", "cards", "getUriActionForCard", "Lcom/braze/ui/actions/UriAction;", "card", "handleCardClick", "", "context", "Landroid/content/Context;", "clickHandler", "Lkotlin/Function1;", "", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeContentCardUtils {
    public static final BrazeContentCardUtils INSTANCE = new BrazeContentCardUtils();

    private BrazeContentCardUtils() {
    }

    public final List<Card> defaultCardHandling(List<? extends Card> cards) {
        Intrinsics.checkNotNullParameter(cards, "cards");
        Comparator comparator = new Comparator() { // from class: com.braze.ui.contentcards.BrazeContentCardUtils$$ExternalSyntheticLambda6
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return BrazeContentCardUtils.defaultCardHandling$lambda$0((Card) obj, (Card) obj2);
            }
        };
        ArrayList arrayList = new ArrayList();
        for (Object obj : cards) {
            if (!BrazeActionUtils.containsInvalidBrazeAction((Card) obj)) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt.sortedWith(arrayList, comparator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int defaultCardHandling$lambda$0(Card cardA, Card cardB) {
        Intrinsics.checkNotNullParameter(cardA, "cardA");
        Intrinsics.checkNotNullParameter(cardB, "cardB");
        if (cardA.getIsPinned() && !cardB.getIsPinned()) {
            return -1;
        }
        if (cardA.getIsPinned() || !cardB.getIsPinned()) {
            if (cardA.getCreated() > cardB.getCreated()) {
                return -1;
            }
            if (cardA.getCreated() >= cardB.getCreated()) {
                if (cardA.getId().compareTo(cardB.getId()) > 0) {
                    return -1;
                }
                if (cardA.getId().compareTo(cardB.getId()) >= 0) {
                    return 0;
                }
            }
        }
        return 1;
    }

    public final UriAction getUriActionForCard(Card card) {
        Intrinsics.checkNotNullParameter(card, "card");
        String url = card.getUrl();
        if (url == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.contentcards.BrazeContentCardUtils$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeContentCardUtils.getUriActionForCard$lambda$2();
                }
            }, 6, (Object) null);
            return null;
        }
        Bundle bundle = new Bundle();
        for (String str : card.getExtras().keySet()) {
            bundle.putString(str, card.getExtras().get(str));
        }
        return BrazeDeeplinkHandler.INSTANCE.getInstance().createUriActionFromUrlString(url, bundle, card.getOpenUriInWebView(), card.getChannel());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getUriActionForCard$lambda$2() {
        return "Card URL is null, returning null for getUriActionForCard";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleCardClick$lambda$3(Card card) {
        return "Handling card click for card: " + card;
    }

    public final void handleCardClick(Context context, final Card card, Function1<? super Card, Boolean> clickHandler) {
        boolean zBooleanValue;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(card, "card");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.contentcards.BrazeContentCardUtils$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeContentCardUtils.handleCardClick$lambda$3(card);
            }
        }, 6, (Object) null);
        card.setIndicatorHighlighted(true);
        if (clickHandler != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.contentcards.BrazeContentCardUtils$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeContentCardUtils.handleCardClick$lambda$4();
                }
            }, 7, (Object) null);
            zBooleanValue = clickHandler.invoke(card).booleanValue();
        } else {
            zBooleanValue = false;
        }
        if (!zBooleanValue) {
            UriAction uriActionForCard = getUriActionForCard(card);
            if (uriActionForCard != null) {
                card.logClick();
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.contentcards.BrazeContentCardUtils$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeContentCardUtils.handleCardClick$lambda$5(card);
                    }
                }, 6, (Object) null);
                BrazeDeeplinkHandler.INSTANCE.getInstance().gotoUri(context, uriActionForCard);
                return;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.contentcards.BrazeContentCardUtils$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeContentCardUtils.handleCardClick$lambda$6(card);
                }
            }, 6, (Object) null);
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.contentcards.BrazeContentCardUtils$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeContentCardUtils.handleCardClick$lambda$7(card);
            }
        }, 7, (Object) null);
        card.logClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleCardClick$lambda$4() {
        return "Calling custom card click handler";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleCardClick$lambda$5(Card card) {
        return "Card action is non-null. Attempting to perform action on card: " + card.getId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleCardClick$lambda$6(Card card) {
        return "Card action is null. Not performing any click action on card: " + card.getId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleCardClick$lambda$7(Card card) {
        return "Card click was handled by custom listener on card: " + card.getId();
    }
}

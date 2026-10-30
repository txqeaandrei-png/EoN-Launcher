package com.braze.ui.contentcards.adapters;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.braze.models.cards.Card;
import com.braze.support.BrazeLogger;
import com.braze.ui.contentcards.handlers.IContentCardsViewBindingHandler;
import com.braze.ui.contentcards.listeners.IContentCardsActionListener;
import com.braze.ui.contentcards.managers.BrazeContentCardsManager;
import com.braze.ui.contentcards.recycler.ItemTouchHelperAdapter;
import com.braze.ui.contentcards.view.ContentCardViewHolder;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\r\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u00018B-\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u001eH\u0016J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u001eH\u0016J\b\u0010$\u001a\u00020\u001eH\u0016J\u0010\u0010%\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u001eH\u0016J\u0010\u0010&\u001a\u00020'2\u0006\u0010\"\u001a\u00020\u001eH\u0016J\u0010\u0010(\u001a\u00020 2\u0006\u0010)\u001a\u00020\u0002H\u0016J\u0010\u0010*\u001a\u00020 2\u0006\u0010)\u001a\u00020\u0002H\u0016J\u0010\u0010+\u001a\u00020,2\u0006\u0010\"\u001a\u00020\u001eH\u0016J\u0014\u0010-\u001a\u00020 2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\n0\u0015J\u0006\u0010/\u001a\u00020 J\u000e\u00100\u001a\u00020'2\u0006\u00101\u001a\u00020\u001eJ\u0012\u00102\u001a\u0004\u0018\u00010\n2\u0006\u00103\u001a\u00020\u001eH\u0007J\u0010\u00104\u001a\u00020'2\u0006\u00101\u001a\u00020\u001eH\u0007J\u0012\u00105\u001a\u00020 2\b\u00106\u001a\u0004\u0018\u00010\nH\u0007J\u0010\u00107\u001a\u00020'2\u0006\u00103\u001a\u00020\u001eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R0\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00152\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00158F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u00069"}, d2 = {"Lcom/braze/ui/contentcards/adapters/ContentCardAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/braze/ui/contentcards/view/ContentCardViewHolder;", "Lcom/braze/ui/contentcards/recycler/ItemTouchHelperAdapter;", "context", "Landroid/content/Context;", "layoutManager", "Landroidx/recyclerview/widget/LinearLayoutManager;", "cardData", "", "Lcom/braze/models/cards/Card;", "contentCardsViewBindingHandler", "Lcom/braze/ui/contentcards/handlers/IContentCardsViewBindingHandler;", "<init>", "(Landroid/content/Context;Landroidx/recyclerview/widget/LinearLayoutManager;Ljava/util/List;Lcom/braze/ui/contentcards/handlers/IContentCardsViewBindingHandler;)V", "handler", "Landroid/os/Handler;", "impressedCardIdsInternal", "", "", "impressedCardIds", "", "getImpressedCardIds", "()Ljava/util/List;", "setImpressedCardIds", "(Ljava/util/List;)V", "onCreateViewHolder", "viewGroup", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "viewHolder", "position", "getItemViewType", "getItemCount", "onItemDismiss", "isItemDismissable", "", "onViewAttachedToWindow", "holder", "onViewDetachedFromWindow", "getItemId", "", "replaceCards", "newCardData", "markOnScreenCardsAsRead", "isControlCardAtPosition", "adapterPosition", "getCardAtIndex", "index", "isAdapterPositionOnScreen", "logImpression", "card", "isInvalidIndex", "CardListDiffCallback", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class ContentCardAdapter extends RecyclerView.Adapter<ContentCardViewHolder> implements ItemTouchHelperAdapter {
    private final List<Card> cardData;
    private final IContentCardsViewBindingHandler contentCardsViewBindingHandler;
    private final Context context;
    private final Handler handler;
    private Set<String> impressedCardIdsInternal;
    private final LinearLayoutManager layoutManager;

    public ContentCardAdapter(Context context, LinearLayoutManager layoutManager, List<Card> cardData, IContentCardsViewBindingHandler contentCardsViewBindingHandler) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(layoutManager, "layoutManager");
        Intrinsics.checkNotNullParameter(cardData, "cardData");
        Intrinsics.checkNotNullParameter(contentCardsViewBindingHandler, "contentCardsViewBindingHandler");
        this.context = context;
        this.layoutManager = layoutManager;
        this.cardData = cardData;
        this.contentCardsViewBindingHandler = contentCardsViewBindingHandler;
        this.handler = new Handler(Looper.getMainLooper());
        this.impressedCardIdsInternal = new LinkedHashSet();
        setHasStableIds(true);
    }

    public final List<String> getImpressedCardIds() {
        return CollectionsKt.toList(this.impressedCardIdsInternal);
    }

    public final void setImpressedCardIds(List<String> impressedCardIds) {
        Intrinsics.checkNotNullParameter(impressedCardIds, "impressedCardIds");
        this.impressedCardIdsInternal = CollectionsKt.toMutableSet(impressedCardIds);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ContentCardViewHolder onCreateViewHolder(ViewGroup viewGroup, int viewType) {
        Intrinsics.checkNotNullParameter(viewGroup, "viewGroup");
        return this.contentCardsViewBindingHandler.onCreateViewHolder(this.context, this.cardData, viewGroup, viewType);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ContentCardViewHolder viewHolder, int position) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        this.contentCardsViewBindingHandler.onBindViewHolder(this.context, this.cardData, viewHolder, position);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return this.contentCardsViewBindingHandler.getItemViewType(this.context, this.cardData, position);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.cardData.size();
    }

    @Override // com.braze.ui.contentcards.recycler.ItemTouchHelperAdapter
    public void onItemDismiss(final int position) {
        if (isInvalidIndex(position)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.contentcards.adapters.ContentCardAdapter$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ContentCardAdapter.onItemDismiss$lambda$0(position, this);
                }
            }, 7, (Object) null);
            return;
        }
        Card cardRemove = this.cardData.remove(position);
        cardRemove.setDismissed(true);
        notifyItemRemoved(position);
        IContentCardsActionListener contentCardsActionListener = BrazeContentCardsManager.INSTANCE.getInstance().getContentCardsActionListener();
        if (contentCardsActionListener != null) {
            contentCardsActionListener.onContentCardDismissed(this.context, cardRemove);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onItemDismiss$lambda$0(int i, ContentCardAdapter contentCardAdapter) {
        return "Cannot dismiss card at index: " + i + " in cards list of size: " + contentCardAdapter.cardData.size();
    }

    @Override // com.braze.ui.contentcards.recycler.ItemTouchHelperAdapter
    public boolean isItemDismissable(int position) {
        if (this.cardData.isEmpty() || isInvalidIndex(position)) {
            return false;
        }
        return this.cardData.get(position).getIsDismissibleByUser();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(ContentCardViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        if (this.cardData.isEmpty()) {
            return;
        }
        final int bindingAdapterPosition = holder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1 || !isAdapterPositionOnScreen(bindingAdapterPosition)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.contentcards.adapters.ContentCardAdapter$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ContentCardAdapter.onViewAttachedToWindow$lambda$1(bindingAdapterPosition);
                }
            }, 6, (Object) null);
        } else {
            logImpression(getCardAtIndex(bindingAdapterPosition));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onViewAttachedToWindow$lambda$1(int i) {
        return "The card at position " + i + " isn't on screen or does not have a valid adapter position. Not logging impression.";
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(ContentCardViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewDetachedFromWindow(holder);
        if (this.cardData.isEmpty()) {
            return;
        }
        final int bindingAdapterPosition = holder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1 || !isAdapterPositionOnScreen(bindingAdapterPosition)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.contentcards.adapters.ContentCardAdapter$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ContentCardAdapter.onViewDetachedFromWindow$lambda$2(bindingAdapterPosition);
                }
            }, 6, (Object) null);
            return;
        }
        Card cardAtIndex = getCardAtIndex(bindingAdapterPosition);
        if (cardAtIndex == null || cardAtIndex.getIsIndicatorHighlightedInternal()) {
            return;
        }
        cardAtIndex.setIndicatorHighlighted(true);
        this.handler.post(new Runnable() { // from class: com.braze.ui.contentcards.adapters.ContentCardAdapter$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.notifyItemChanged(bindingAdapterPosition);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onViewDetachedFromWindow$lambda$2(int i) {
        return "The card at position " + i + " isn't on screen or does not have a valid adapter position. Not marking as read.";
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int position) {
        String id;
        Card cardAtIndex = getCardAtIndex(position);
        if (cardAtIndex == null || (id = cardAtIndex.getId()) == null) {
            return 0L;
        }
        return id.hashCode();
    }

    public final synchronized void replaceCards(List<? extends Card> newCardData) {
        Intrinsics.checkNotNullParameter(newCardData, "newCardData");
        DiffUtil.DiffResult diffResultCalculateDiff = DiffUtil.calculateDiff(new CardListDiffCallback(this.cardData, newCardData));
        Intrinsics.checkNotNullExpressionValue(diffResultCalculateDiff, "calculateDiff(...)");
        this.cardData.clear();
        this.cardData.addAll(newCardData);
        diffResultCalculateDiff.dispatchUpdatesTo(this);
    }

    public final void markOnScreenCardsAsRead() {
        if (this.cardData.isEmpty()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.contentcards.adapters.ContentCardAdapter$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ContentCardAdapter.markOnScreenCardsAsRead$lambda$4();
                }
            }, 7, (Object) null);
            return;
        }
        final int iFindFirstVisibleItemPosition = this.layoutManager.findFirstVisibleItemPosition();
        final int iFindLastVisibleItemPosition = this.layoutManager.findLastVisibleItemPosition();
        if (iFindFirstVisibleItemPosition < 0 || iFindLastVisibleItemPosition < 0) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.contentcards.adapters.ContentCardAdapter$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ContentCardAdapter.markOnScreenCardsAsRead$lambda$5(iFindFirstVisibleItemPosition, iFindLastVisibleItemPosition);
                }
            }, 7, (Object) null);
            return;
        }
        if (iFindFirstVisibleItemPosition <= iFindLastVisibleItemPosition) {
            int i = iFindFirstVisibleItemPosition;
            while (true) {
                Card cardAtIndex = getCardAtIndex(i);
                if (cardAtIndex != null) {
                    cardAtIndex.setIndicatorHighlighted(true);
                }
                if (i == iFindLastVisibleItemPosition) {
                    break;
                } else {
                    i++;
                }
            }
        }
        this.handler.post(new Runnable() { // from class: com.braze.ui.contentcards.adapters.ContentCardAdapter$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ContentCardAdapter.markOnScreenCardsAsRead$lambda$6(iFindLastVisibleItemPosition, iFindFirstVisibleItemPosition, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String markOnScreenCardsAsRead$lambda$4() {
        return "Card list is empty. Not marking on-screen cards as read.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String markOnScreenCardsAsRead$lambda$5(int i, int i2) {
        return "Not marking all on-screen cards as read. Either the first or last index is negative. First visible: " + i + " . Last visible: " + i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void markOnScreenCardsAsRead$lambda$6(int i, int i2, ContentCardAdapter contentCardAdapter) {
        contentCardAdapter.notifyItemRangeChanged(i2, (i - i2) + 1);
    }

    public final boolean isControlCardAtPosition(int adapterPosition) {
        Card cardAtIndex = getCardAtIndex(adapterPosition);
        return cardAtIndex != null && cardAtIndex.isControl();
    }

    public final Card getCardAtIndex(final int index) {
        if (isInvalidIndex(index)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.contentcards.adapters.ContentCardAdapter$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ContentCardAdapter.getCardAtIndex$lambda$7(index, this);
                }
            }, 7, (Object) null);
            return null;
        }
        return this.cardData.get(index);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getCardAtIndex$lambda$7(int i, ContentCardAdapter contentCardAdapter) {
        return "Cannot return card at index: " + i + " in cards list of size: " + contentCardAdapter.cardData.size();
    }

    public final boolean isAdapterPositionOnScreen(int adapterPosition) {
        return Math.min(this.layoutManager.findFirstVisibleItemPosition(), this.layoutManager.findFirstCompletelyVisibleItemPosition()) <= adapterPosition && adapterPosition <= Math.max(this.layoutManager.findLastVisibleItemPosition(), this.layoutManager.findLastCompletelyVisibleItemPosition());
    }

    public final void logImpression(final Card card) {
        if (card == null) {
            return;
        }
        if (!this.impressedCardIdsInternal.contains(card.getId())) {
            card.logImpression();
            this.impressedCardIdsInternal.add(card.getId());
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.contentcards.adapters.ContentCardAdapter$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ContentCardAdapter.logImpression$lambda$8(card);
                }
            }, 6, (Object) null);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.contentcards.adapters.ContentCardAdapter$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ContentCardAdapter.logImpression$lambda$9(card);
                }
            }, 6, (Object) null);
        }
        if (card.getWasViewedInternal()) {
            return;
        }
        card.setViewed(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logImpression$lambda$8(Card card) {
        return "Logged impression for card " + card.getId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logImpression$lambda$9(Card card) {
        return "Already counted impression for card " + card.getId();
    }

    private final boolean isInvalidIndex(int index) {
        return index < 0 || index >= this.cardData.size();
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0016J\u0018\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0016J\u0018\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0002R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/braze/ui/contentcards/adapters/ContentCardAdapter$CardListDiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$Callback;", "oldCards", "", "Lcom/braze/models/cards/Card;", "newCards", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "getOldListSize", "", "getNewListSize", "areItemsTheSame", "", "oldItemPosition", "newItemPosition", "areContentsTheSame", "doItemsShareIds", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final class CardListDiffCallback extends DiffUtil.Callback {
        private final List<Card> newCards;
        private final List<Card> oldCards;

        /* JADX WARN: Multi-variable type inference failed */
        public CardListDiffCallback(List<? extends Card> oldCards, List<? extends Card> newCards) {
            Intrinsics.checkNotNullParameter(oldCards, "oldCards");
            Intrinsics.checkNotNullParameter(newCards, "newCards");
            this.oldCards = oldCards;
            this.newCards = newCards;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getOldListSize() {
            return this.oldCards.size();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getNewListSize() {
            return this.newCards.size();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areItemsTheSame(int oldItemPosition, int newItemPosition) {
            return doItemsShareIds(oldItemPosition, newItemPosition);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areContentsTheSame(int oldItemPosition, int newItemPosition) {
            return doItemsShareIds(oldItemPosition, newItemPosition);
        }

        private final boolean doItemsShareIds(int oldItemPosition, int newItemPosition) {
            return Intrinsics.areEqual(this.oldCards.get(oldItemPosition).getId(), this.newCards.get(newItemPosition).getId());
        }
    }
}

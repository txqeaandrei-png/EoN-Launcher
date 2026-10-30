package com.braze.ui.adapters;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.braze.models.cards.CaptionedImageCard;
import com.braze.models.cards.Card;
import com.braze.models.cards.ImageOnlyCard;
import com.braze.models.cards.ShortNewsCard;
import com.braze.models.cards.TextAnnouncementCard;
import com.braze.support.BrazeLogger;
import com.braze.ui.feed.view.BaseFeedCardView;
import com.braze.ui.widget.CaptionedImageCardView;
import com.braze.ui.widget.DefaultCardView;
import com.braze.ui.widget.ImageOnlyCardView;
import com.braze.ui.widget.ShortNewsCardView;
import com.braze.ui.widget.TextAnnouncementCardView;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class BrazeListAdapter extends ArrayAdapter<Card> {
    private static final String TAG = BrazeLogger.getBrazeLogTag((Class<?>) BrazeListAdapter.class);
    private final Set<String> mCardIdImpressions;
    private final Context mContext;

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 5;
    }

    public BrazeListAdapter(Context context, int i, List<Card> list) {
        super(context, i, list);
        this.mContext = context;
        this.mCardIdImpressions = new HashSet();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        Card item = getItem(i);
        if (item instanceof ImageOnlyCard) {
            return 1;
        }
        if (item instanceof CaptionedImageCard) {
            return 2;
        }
        if (item instanceof ShortNewsCard) {
            return 3;
        }
        return item instanceof TextAnnouncementCard ? 4 : 0;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        BaseFeedCardView defaultCardView;
        Card item = getItem(i);
        if (view == null) {
            if (item instanceof ImageOnlyCard) {
                defaultCardView = new ImageOnlyCardView(this.mContext);
            } else if (item instanceof CaptionedImageCard) {
                defaultCardView = new CaptionedImageCardView(this.mContext);
            } else if (item instanceof ShortNewsCard) {
                defaultCardView = new ShortNewsCardView(this.mContext);
            } else if (item instanceof TextAnnouncementCard) {
                defaultCardView = new TextAnnouncementCardView(this.mContext);
            } else {
                defaultCardView = new DefaultCardView(this.mContext);
            }
        } else {
            BrazeLogger.v(TAG, "Reusing convertView for rendering of item " + i);
            defaultCardView = (BaseFeedCardView) view;
        }
        BrazeLogger.v(TAG, "Using view of type: " + defaultCardView.getClass().getName() + " for card at position " + i + ": " + item.toString());
        defaultCardView.setCard(item);
        logCardImpression(item);
        return defaultCardView;
    }

    public synchronized void replaceFeed(List<Card> list) {
        int i = 0;
        setNotifyOnChange(false);
        if (list == null) {
            clear();
            notifyDataSetChanged();
            return;
        }
        BrazeLogger.d(TAG, "Replacing existing feed of " + getCount() + " cards with new feed containing " + list.size() + " cards.");
        int size = list.size();
        int i2 = 0;
        while (i < getCount()) {
            Card item = getItem(i);
            Card card = i2 < size ? list.get(i2) : null;
            if (card == null || !card.equals(item)) {
                remove(item);
            } else {
                i++;
                i2++;
            }
        }
        super.addAll(list.subList(i2, size));
        notifyDataSetChanged();
    }

    @Override // android.widget.ArrayAdapter
    public synchronized void add(Card card) {
        super.add(card);
    }

    public void resetCardImpressionTracker() {
        this.mCardIdImpressions.clear();
    }

    private void logCardImpression(Card card) {
        String id = card.getId();
        if (!this.mCardIdImpressions.contains(id)) {
            this.mCardIdImpressions.add(id);
            card.logImpression();
            BrazeLogger.v(TAG, "Logged impression for card " + id);
        } else {
            BrazeLogger.v(TAG, "Already counted impression for card " + id);
        }
        if (card.getWasViewedInternal()) {
            return;
        }
        card.setViewed(true);
    }

    public void batchSetCardsToRead(int i, int i2) {
        if (getCount() == 0) {
            BrazeLogger.d(TAG, "mAdapter is empty in setting some cards to viewed.");
            return;
        }
        int iMin = Math.min(getCount(), i2);
        for (int iMax = Math.max(0, i); iMax < iMin; iMax++) {
            Card item = getItem(iMax);
            if (item == null) {
                BrazeLogger.d(TAG, "Card was null in setting some cards to viewed.");
                return;
            } else {
                if (!item.getIsIndicatorHighlightedInternal()) {
                    item.setIndicatorHighlighted(true);
                }
            }
        }
    }
}

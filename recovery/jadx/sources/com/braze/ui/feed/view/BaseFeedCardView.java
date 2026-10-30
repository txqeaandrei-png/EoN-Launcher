package com.braze.ui.feed.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.ViewSwitcher;
import com.braze.models.cards.Card;
import com.braze.models.cards.ICardListener;
import com.braze.support.BrazeLogger;
import com.braze.ui.R;
import com.braze.ui.actions.IAction;
import com.braze.ui.feed.BrazeFeedManager;
import com.braze.ui.feed.BrazeImageSwitcher;
import com.braze.ui.widget.BaseCardView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseFeedCardView<T extends Card> extends BaseCardView<T> {
    private static final String TAG = BrazeLogger.getBrazeLogTag((Class<?>) BaseCardView.class);

    protected abstract int getLayoutResource();

    protected abstract void onSetCard(T t);

    public BaseFeedCardView(Context context) {
        super(context);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(getLayoutResource(), this);
        this.imageSwitcher = (BrazeImageSwitcher) findViewById(R.id.com_braze_newsfeed_item_read_indicator_image_switcher);
        if (this.imageSwitcher != null) {
            this.imageSwitcher.setFactory(new ViewSwitcher.ViewFactory() { // from class: com.braze.ui.feed.view.BaseFeedCardView$$ExternalSyntheticLambda0
                @Override // android.widget.ViewSwitcher.ViewFactory
                public final View makeView() {
                    return this.f$0.m1598lambda$new$0$combrazeuifeedviewBaseFeedCardView();
                }
            });
        }
        if (getIsUnreadCardVisualIndicatorEnabled() || this.imageSwitcher == null) {
            return;
        }
        this.imageSwitcher.setVisibility(8);
    }

    /* JADX INFO: renamed from: lambda$new$0$com-braze-ui-feed-view-BaseFeedCardView, reason: not valid java name */
    /* synthetic */ View m1598lambda$new$0$combrazeuifeedviewBaseFeedCardView() {
        return new ImageView(this.applicationContext);
    }

    public View getProperViewFromInflatedStub(int i) {
        ((ViewStub) findViewById(i)).inflate();
        return findViewById(R.id.com_braze_stubbed_feed_image_view);
    }

    public void setCard(T t) {
        this.card = t;
        onSetCard(this.card);
        this.card.setListener(new ICardListener() { // from class: com.braze.ui.feed.view.BaseFeedCardView$$ExternalSyntheticLambda1
            @Override // com.braze.models.cards.ICardListener
            public final void onCardUpdate() {
                this.f$0.m1599lambda$setCard$1$combrazeuifeedviewBaseFeedCardView();
            }
        });
        setCardViewedIndicator(this.imageSwitcher, getCard());
    }

    /* JADX INFO: renamed from: lambda$setCard$1$com-braze-ui-feed-view-BaseFeedCardView, reason: not valid java name */
    /* synthetic */ void m1599lambda$setCard$1$combrazeuifeedviewBaseFeedCardView() {
        setCardViewedIndicator(this.imageSwitcher, getCard());
    }

    public Card getCard() {
        return this.card;
    }

    @Override // com.braze.ui.widget.BaseCardView
    protected boolean isClickHandled(Context context, Card card, IAction iAction) {
        return BrazeFeedManager.getInstance().getFeedCardClickActionListener().onFeedCardClicked(context, card, iAction);
    }
}

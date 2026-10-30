package com.braze.ui;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.ListFragment;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.braze.Braze;
import com.braze.enums.CardCategory;
import com.braze.events.FeedUpdatedEvent;
import com.braze.events.IEventSubscriber;
import com.braze.models.cards.Card;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.ui.adapters.BrazeListAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BrazeFeedFragment extends ListFragment implements SwipeRefreshLayout.OnRefreshListener {
    private static final long AUTO_HIDE_REFRESH_INDICATOR_DELAY_MS = 2500;
    private static final int MAX_FEED_TTL_SECONDS = 60;
    private static final int NETWORK_PROBLEM_WARNING_MS = 5000;
    static final String SAVED_INSTANCE_STATE_KEY_CARD_CATEGORY = "CARD_CATEGORY";
    static final String SAVED_INSTANCE_STATE_KEY_CURRENT_CARD_INDEX_AT_BOTTOM_OF_SCREEN = "CURRENT_CARD_INDEX_AT_BOTTOM_OF_SCREEN";
    static final String SAVED_INSTANCE_STATE_KEY_PREVIOUS_VISIBLE_HEAD_CARD_INDEX = "PREVIOUS_VISIBLE_HEAD_CARD_INDEX";
    static final String SAVED_INSTANCE_STATE_KEY_SKIP_CARD_IMPRESSIONS_RESET = "SKIP_CARD_IMPRESSIONS_RESET";
    private static final String TAG = BrazeLogger.getBrazeLogTag((Class<?>) BrazeFeedFragment.class);
    private BrazeListAdapter mAdapter;
    private EnumSet<CardCategory> mCategories;
    private LinearLayout mEmptyFeedLayout;
    private RelativeLayout mFeedRootLayout;
    private SwipeRefreshLayout mFeedSwipeLayout;
    private IEventSubscriber<FeedUpdatedEvent> mFeedUpdatedSubscriber;
    private GestureDetector mGestureDetector;
    private ProgressBar mLoadingSpinner;
    private LinearLayout mNetworkErrorLayout;
    private View mTransparentFullBoundsContainerView;
    private final Handler mMainThreadLooper = new Handler(Looper.getMainLooper());
    private final Runnable mShowNetworkError = new Runnable() { // from class: com.braze.ui.BrazeFeedFragment.1
        @Override // java.lang.Runnable
        public void run() {
            if (BrazeFeedFragment.this.mLoadingSpinner != null) {
                BrazeFeedFragment.this.mLoadingSpinner.setVisibility(8);
            }
            if (BrazeFeedFragment.this.mNetworkErrorLayout != null) {
                BrazeFeedFragment.this.mNetworkErrorLayout.setVisibility(0);
            }
        }
    };
    private boolean mSortEnabled = false;
    boolean mSkipCardImpressionsReset = false;
    int mPreviousVisibleHeadCardIndex = 0;
    int mCurrentCardIndexAtBottomOfScreen = 0;

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (this.mAdapter == null) {
            this.mAdapter = new BrazeListAdapter(context, R.id.tag, new ArrayList());
            this.mCategories = CardCategory.getAllCategories();
        }
        this.mGestureDetector = new GestureDetector(context, new FeedGestureListener());
    }

    @Override // androidx.fragment.app.ListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.com_braze_feed, viewGroup, false);
        this.mNetworkErrorLayout = (LinearLayout) viewInflate.findViewById(R.id.com_braze_feed_network_error);
        this.mLoadingSpinner = (ProgressBar) viewInflate.findViewById(R.id.com_braze_feed_loading_spinner);
        this.mEmptyFeedLayout = (LinearLayout) viewInflate.findViewById(R.id.com_braze_feed_empty_feed);
        this.mFeedRootLayout = (RelativeLayout) viewInflate.findViewById(R.id.com_braze_feed_root);
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) viewInflate.findViewById(R.id.braze_feed_swipe_container);
        this.mFeedSwipeLayout = swipeRefreshLayout;
        swipeRefreshLayout.setOnRefreshListener(this);
        this.mFeedSwipeLayout.setEnabled(false);
        this.mFeedSwipeLayout.setColorSchemeResources(R.color.com_braze_newsfeed_swipe_refresh_color_1, R.color.com_braze_newsfeed_swipe_refresh_color_2, R.color.com_braze_newsfeed_swipe_refresh_color_3, R.color.com_braze_newsfeed_swipe_refresh_color_4);
        this.mTransparentFullBoundsContainerView = viewInflate.findViewById(R.id.com_braze_feed_transparent_full_bounds_container_view);
        return viewInflate;
    }

    @Override // androidx.fragment.app.ListFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        loadFragmentStateFromSavedInstanceState(bundle);
        if (this.mSkipCardImpressionsReset) {
            this.mSkipCardImpressionsReset = false;
        } else {
            this.mAdapter.resetCardImpressionTracker();
            BrazeLogger.d(TAG, "Resetting card impressions.");
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getActivity());
        final ListView listView = getListView();
        listView.addHeaderView(layoutInflaterFrom.inflate(R.layout.com_braze_feed_header, (ViewGroup) null));
        listView.addFooterView(layoutInflaterFrom.inflate(R.layout.com_braze_feed_footer, (ViewGroup) null));
        this.mFeedRootLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.braze.ui.BrazeFeedFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return this.f$0.m1451lambda$onViewCreated$0$combrazeuiBrazeFeedFragment(view2, motionEvent);
            }
        });
        listView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.braze.ui.BrazeFeedFragment.2
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                BrazeFeedFragment.this.mFeedSwipeLayout.setEnabled(i == 0);
                if (i2 == 0) {
                    return;
                }
                int i4 = i - 1;
                if (i4 > BrazeFeedFragment.this.mPreviousVisibleHeadCardIndex) {
                    BrazeFeedFragment.this.mAdapter.batchSetCardsToRead(BrazeFeedFragment.this.mPreviousVisibleHeadCardIndex, i4);
                }
                BrazeFeedFragment.this.mPreviousVisibleHeadCardIndex = i4;
                BrazeFeedFragment.this.mCurrentCardIndexAtBottomOfScreen = i + i2;
            }
        });
        this.mTransparentFullBoundsContainerView.setOnTouchListener(new View.OnTouchListener() { // from class: com.braze.ui.BrazeFeedFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return BrazeFeedFragment.lambda$onViewCreated$1(view2, motionEvent);
            }
        });
        Braze.getInstance(getContext()).removeSingleSubscription(this.mFeedUpdatedSubscriber, FeedUpdatedEvent.class);
        this.mFeedUpdatedSubscriber = new IEventSubscriber() { // from class: com.braze.ui.BrazeFeedFragment$$ExternalSyntheticLambda4
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                this.f$0.m1453lambda$onViewCreated$3$combrazeuiBrazeFeedFragment(listView, (FeedUpdatedEvent) obj);
            }
        };
        Braze.getInstance(getContext()).subscribeToFeedUpdates(this.mFeedUpdatedSubscriber);
        listView.setAdapter((ListAdapter) this.mAdapter);
        Braze.getInstance(getContext()).requestFeedRefreshFromCache();
    }

    /* JADX INFO: renamed from: lambda$onViewCreated$0$com-braze-ui-BrazeFeedFragment, reason: not valid java name */
    /* synthetic */ boolean m1451lambda$onViewCreated$0$combrazeuiBrazeFeedFragment(View view, MotionEvent motionEvent) {
        return this.mGestureDetector.onTouchEvent(motionEvent);
    }

    static /* synthetic */ boolean lambda$onViewCreated$1(View view, MotionEvent motionEvent) {
        return view.getVisibility() == 0;
    }

    /* JADX INFO: renamed from: lambda$onViewCreated$3$com-braze-ui-BrazeFeedFragment, reason: not valid java name */
    /* synthetic */ void m1453lambda$onViewCreated$3$combrazeuiBrazeFeedFragment(final ListView listView, final FeedUpdatedEvent feedUpdatedEvent) {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.runOnUiThread(new Runnable() { // from class: com.braze.ui.BrazeFeedFragment$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1452lambda$onViewCreated$2$combrazeuiBrazeFeedFragment(feedUpdatedEvent, listView);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onViewCreated$2$com-braze-ui-BrazeFeedFragment, reason: not valid java name */
    /* synthetic */ void m1452lambda$onViewCreated$2$combrazeuiBrazeFeedFragment(FeedUpdatedEvent feedUpdatedEvent, ListView listView) {
        String str = TAG;
        BrazeLogger.v(str, "Updating feed views in response to FeedUpdatedEvent: " + feedUpdatedEvent);
        this.mMainThreadLooper.removeCallbacks(this.mShowNetworkError);
        this.mNetworkErrorLayout.setVisibility(8);
        if (feedUpdatedEvent.getCardCount(this.mCategories) == 0) {
            listView.setVisibility(8);
            this.mAdapter.clear();
        } else {
            this.mEmptyFeedLayout.setVisibility(8);
            this.mLoadingSpinner.setVisibility(8);
            this.mTransparentFullBoundsContainerView.setVisibility(8);
        }
        if (feedUpdatedEvent.isFromOfflineStorage() && (feedUpdatedEvent.lastUpdatedInSecondsFromEpoch() + 60) * 1000 < DateTimeUtils.nowInMilliseconds()) {
            BrazeLogger.i(str, "Feed received was older than the max time to live of 60 seconds, displaying it for now, but requesting an updated view from the server.");
            Braze.getInstance(getContext()).requestFeedRefresh();
            if (feedUpdatedEvent.getCardCount(this.mCategories) == 0) {
                BrazeLogger.d(str, "Old feed was empty, putting up a network spinner and registering the network error message with a delay of 5000ms.");
                this.mEmptyFeedLayout.setVisibility(8);
                this.mLoadingSpinner.setVisibility(0);
                this.mTransparentFullBoundsContainerView.setVisibility(0);
                this.mMainThreadLooper.postDelayed(this.mShowNetworkError, 5000L);
                return;
            }
        }
        if (feedUpdatedEvent.getCardCount(this.mCategories) == 0) {
            this.mLoadingSpinner.setVisibility(8);
            this.mEmptyFeedLayout.setVisibility(0);
            this.mTransparentFullBoundsContainerView.setVisibility(0);
        } else {
            if (this.mSortEnabled && feedUpdatedEvent.getCardCount(this.mCategories) != feedUpdatedEvent.getUnreadCardCount(this.mCategories)) {
                this.mAdapter.replaceFeed(sortFeedCards(feedUpdatedEvent.getFeedCards(this.mCategories)));
            } else {
                this.mAdapter.replaceFeed(feedUpdatedEvent.getFeedCards(this.mCategories));
            }
            listView.setVisibility(0);
        }
        this.mFeedSwipeLayout.setRefreshing(false);
    }

    static /* synthetic */ int lambda$sortFeedCards$4(Card card, Card card2) {
        if (card.getIsIndicatorHighlightedInternal() == card2.getIsIndicatorHighlightedInternal()) {
            return 0;
        }
        return card.getIsIndicatorHighlightedInternal() ? 1 : -1;
    }

    public List<Card> sortFeedCards(List<Card> list) {
        Collections.sort(list, new Comparator() { // from class: com.braze.ui.BrazeFeedFragment$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return BrazeFeedFragment.lambda$sortFeedCards$4((Card) obj, (Card) obj2);
            }
        });
        return list;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Braze.getInstance(getContext()).logFeedDisplayed();
    }

    @Override // androidx.fragment.app.ListFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Braze.getInstance(getContext()).removeSingleSubscription(this.mFeedUpdatedSubscriber, FeedUpdatedEvent.class);
        setOnScreenCardsToRead();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        setOnScreenCardsToRead();
    }

    private void setOnScreenCardsToRead() {
        this.mAdapter.batchSetCardsToRead(this.mPreviousVisibleHeadCardIndex, this.mCurrentCardIndexAtBottomOfScreen);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        setListAdapter(null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(SAVED_INSTANCE_STATE_KEY_PREVIOUS_VISIBLE_HEAD_CARD_INDEX, this.mPreviousVisibleHeadCardIndex);
        bundle.putInt(SAVED_INSTANCE_STATE_KEY_CURRENT_CARD_INDEX_AT_BOTTOM_OF_SCREEN, this.mCurrentCardIndexAtBottomOfScreen);
        bundle.putBoolean(SAVED_INSTANCE_STATE_KEY_SKIP_CARD_IMPRESSIONS_RESET, this.mSkipCardImpressionsReset);
        if (this.mCategories == null) {
            this.mCategories = CardCategory.getAllCategories();
        }
        ArrayList<String> arrayList = new ArrayList<>(this.mCategories.size());
        Iterator it = this.mCategories.iterator();
        while (it.hasNext()) {
            arrayList.add(((CardCategory) it.next()).name());
        }
        bundle.putStringArrayList(SAVED_INSTANCE_STATE_KEY_CARD_CATEGORY, arrayList);
        super.onSaveInstanceState(bundle);
        if (isVisible()) {
            this.mSkipCardImpressionsReset = true;
        }
    }

    void loadFragmentStateFromSavedInstanceState(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (this.mCategories == null) {
            this.mCategories = CardCategory.getAllCategories();
        }
        this.mPreviousVisibleHeadCardIndex = bundle.getInt(SAVED_INSTANCE_STATE_KEY_PREVIOUS_VISIBLE_HEAD_CARD_INDEX, 0);
        this.mCurrentCardIndexAtBottomOfScreen = bundle.getInt(SAVED_INSTANCE_STATE_KEY_CURRENT_CARD_INDEX_AT_BOTTOM_OF_SCREEN, 0);
        this.mSkipCardImpressionsReset = bundle.getBoolean(SAVED_INSTANCE_STATE_KEY_SKIP_CARD_IMPRESSIONS_RESET, false);
        ArrayList<String> stringArrayList = bundle.getStringArrayList(SAVED_INSTANCE_STATE_KEY_CARD_CATEGORY);
        if (stringArrayList != null) {
            this.mCategories.clear();
            Iterator<String> it = stringArrayList.iterator();
            while (it.hasNext()) {
                this.mCategories.add(CardCategory.valueOf(it.next()));
            }
        }
    }

    public EnumSet<CardCategory> getCategories() {
        return this.mCategories;
    }

    public boolean getSortEnabled() {
        return this.mSortEnabled;
    }

    public void setSortEnabled(boolean z) {
        this.mSortEnabled = z;
    }

    public void setCategory(CardCategory cardCategory) {
        setCategories(EnumSet.of(cardCategory));
    }

    public void setCategories(EnumSet<CardCategory> enumSet) {
        if (enumSet == null) {
            BrazeLogger.i(TAG, "The categories passed into setCategories are null, BrazeFeedFragment is going to display all the cards in cache.");
            this.mCategories = CardCategory.getAllCategories();
        } else if (enumSet.isEmpty()) {
            BrazeLogger.w(TAG, "The categories set had no elements and have been ignored. Please pass a valid EnumSet of CardCategory.");
            return;
        } else if (enumSet.equals(this.mCategories)) {
            return;
        } else {
            this.mCategories = enumSet;
        }
        if (Braze.getInstance(getContext()) != null) {
            Braze.getInstance(getContext()).requestFeedRefreshFromCache();
        }
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        Braze.getInstance(getContext()).requestFeedRefresh();
        this.mMainThreadLooper.postDelayed(new Runnable() { // from class: com.braze.ui.BrazeFeedFragment$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1450lambda$onRefresh$5$combrazeuiBrazeFeedFragment();
            }
        }, AUTO_HIDE_REFRESH_INDICATOR_DELAY_MS);
    }

    /* JADX INFO: renamed from: lambda$onRefresh$5$com-braze-ui-BrazeFeedFragment, reason: not valid java name */
    /* synthetic */ void m1450lambda$onRefresh$5$combrazeuiBrazeFeedFragment() {
        this.mFeedSwipeLayout.setRefreshing(false);
    }

    /* JADX INFO: loaded from: classes.dex */
    public class FeedGestureListener extends GestureDetector.SimpleOnGestureListener {
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        public FeedGestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            BrazeFeedFragment.this.getListView().smoothScrollBy((int) f2, 0);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            long eventTime = motionEvent2.getEventTime() - motionEvent.getEventTime();
            BrazeFeedFragment.this.getListView().smoothScrollBy(-((int) ((f2 * (2 * eventTime)) / 1000.0f)), (int) (eventTime * 4));
            return true;
        }
    }
}

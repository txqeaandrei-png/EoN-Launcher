package com.braze.ui;

import android.app.Activity;
import android.app.ListFragment;
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
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.braze.Braze;
import com.braze.IBraze;
import com.braze.enums.CardCategory;
import com.braze.events.FeedUpdatedEvent;
import com.braze.events.IEventSubscriber;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.ui.adapters.BrazeListAdapter;
import java.util.ArrayList;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes2.dex */
public class BrazeXamarinFormsFeedFragment extends ListFragment implements SwipeRefreshLayout.OnRefreshListener {
    private static final long AUTO_HIDE_REFRESH_INDICATOR_DELAY_MS = 2500;
    private static final int MAX_FEED_TTL_SECONDS = 60;
    private static final int NETWORK_PROBLEM_WARNING_MS = 5000;
    private static final String TAG = BrazeLogger.getBrazeLogTag((Class<?>) BrazeXamarinFormsFeedFragment.class);
    private int currentCardIndexAtBottomOfScreen;
    private BrazeListAdapter mAdapter;
    private IBraze mBraze;
    private EnumSet<CardCategory> mCategories;
    private LinearLayout mEmptyFeedLayout;
    private RelativeLayout mFeedRootLayout;
    private SwipeRefreshLayout mFeedSwipeLayout;
    private IEventSubscriber<FeedUpdatedEvent> mFeedUpdatedSubscriber;
    private GestureDetector mGestureDetector;
    private ProgressBar mLoadingSpinner;
    private LinearLayout mNetworkErrorLayout;
    private boolean mSkipCardImpressionsReset;
    private View mTransparentFullBoundsContainerView;
    private int previousVisibleHeadCardIndex;
    private final Handler mMainThreadLooper = new Handler(Looper.getMainLooper());
    private final Runnable mShowNetworkError = new Runnable() { // from class: com.braze.ui.BrazeXamarinFormsFeedFragment.1
        @Override // java.lang.Runnable
        public void run() {
            if (BrazeXamarinFormsFeedFragment.this.mLoadingSpinner != null) {
                BrazeXamarinFormsFeedFragment.this.mLoadingSpinner.setVisibility(8);
            }
            if (BrazeXamarinFormsFeedFragment.this.mNetworkErrorLayout != null) {
                BrazeXamarinFormsFeedFragment.this.mNetworkErrorLayout.setVisibility(0);
            }
        }
    };

    @Override // android.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.mBraze = Braze.getInstance(context);
        if (this.mAdapter == null) {
            this.mAdapter = new BrazeListAdapter(context, R.id.tag, new ArrayList());
            this.mCategories = CardCategory.getAllCategories();
        }
        setRetainInstance(true);
        this.mGestureDetector = new GestureDetector(context, new FeedGestureListener());
    }

    @Override // android.app.ListFragment, android.app.Fragment
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

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
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
        this.mFeedRootLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.braze.ui.BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f$0.m1457x2cd69e1e(view, motionEvent);
            }
        });
        listView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.braze.ui.BrazeXamarinFormsFeedFragment.2
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                BrazeXamarinFormsFeedFragment.this.mFeedSwipeLayout.setEnabled(i == 0);
                if (i2 == 0) {
                    return;
                }
                int i4 = i - 1;
                if (i4 > BrazeXamarinFormsFeedFragment.this.previousVisibleHeadCardIndex) {
                    BrazeXamarinFormsFeedFragment.this.mAdapter.batchSetCardsToRead(BrazeXamarinFormsFeedFragment.this.previousVisibleHeadCardIndex, i4);
                }
                BrazeXamarinFormsFeedFragment.this.previousVisibleHeadCardIndex = i4;
                BrazeXamarinFormsFeedFragment.this.currentCardIndexAtBottomOfScreen = i + i2;
            }
        });
        this.mTransparentFullBoundsContainerView.setOnTouchListener(new View.OnTouchListener() { // from class: com.braze.ui.BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return BrazeXamarinFormsFeedFragment.lambda$onActivityCreated$1(view, motionEvent);
            }
        });
        this.mBraze.removeSingleSubscription(this.mFeedUpdatedSubscriber, FeedUpdatedEvent.class);
        IEventSubscriber<FeedUpdatedEvent> iEventSubscriber = new IEventSubscriber() { // from class: com.braze.ui.BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda3
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                this.f$0.m1459x759bda3b(listView, (FeedUpdatedEvent) obj);
            }
        };
        this.mFeedUpdatedSubscriber = iEventSubscriber;
        this.mBraze.subscribeToFeedUpdates(iEventSubscriber);
        listView.setAdapter((ListAdapter) this.mAdapter);
        this.mBraze.requestFeedRefreshFromCache();
    }

    /* JADX INFO: renamed from: lambda$onActivityCreated$0$com-braze-ui-BrazeXamarinFormsFeedFragment, reason: not valid java name */
    /* synthetic */ boolean m1457x2cd69e1e(View view, MotionEvent motionEvent) {
        return this.mGestureDetector.onTouchEvent(motionEvent);
    }

    static /* synthetic */ boolean lambda$onActivityCreated$1(View view, MotionEvent motionEvent) {
        return view.getVisibility() == 0;
    }

    /* JADX INFO: renamed from: lambda$onActivityCreated$3$com-braze-ui-BrazeXamarinFormsFeedFragment, reason: not valid java name */
    /* synthetic */ void m1459x759bda3b(final ListView listView, final FeedUpdatedEvent feedUpdatedEvent) {
        Activity activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.runOnUiThread(new Runnable() { // from class: com.braze.ui.BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1458xb2af70dc(feedUpdatedEvent, listView);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onActivityCreated$2$com-braze-ui-BrazeXamarinFormsFeedFragment, reason: not valid java name */
    /* synthetic */ void m1458xb2af70dc(FeedUpdatedEvent feedUpdatedEvent, ListView listView) {
        String str = TAG;
        BrazeLogger.d(str, "Updating feed views in response to FeedUpdatedEvent: " + feedUpdatedEvent);
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
            this.mBraze.requestFeedRefresh();
            if (feedUpdatedEvent.getCardCount(this.mCategories) == 0) {
                BrazeLogger.d(str, "Old feed was empty, putting up a network spinner and registering the network error message on a delay of 5000ms.");
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
            this.mAdapter.replaceFeed(feedUpdatedEvent.getFeedCards(this.mCategories));
            listView.setVisibility(0);
        }
        this.mFeedSwipeLayout.setRefreshing(false);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        Braze.getInstance(getActivity()).logFeedDisplayed();
    }

    @Override // android.app.ListFragment, android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.mBraze.removeSingleSubscription(this.mFeedUpdatedSubscriber, FeedUpdatedEvent.class);
        setOnScreenCardsToRead();
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        setOnScreenCardsToRead();
    }

    private void setOnScreenCardsToRead() {
        this.mAdapter.batchSetCardsToRead(this.previousVisibleHeadCardIndex, this.currentCardIndexAtBottomOfScreen);
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        setListAdapter(null);
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (isVisible()) {
            this.mSkipCardImpressionsReset = true;
        }
    }

    public EnumSet<CardCategory> getCategories() {
        return this.mCategories;
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
        IBraze iBraze = this.mBraze;
        if (iBraze != null) {
            iBraze.requestFeedRefreshFromCache();
        }
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        this.mBraze.requestFeedRefresh();
        this.mMainThreadLooper.postDelayed(new Runnable() { // from class: com.braze.ui.BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1460lambda$onRefresh$4$combrazeuiBrazeXamarinFormsFeedFragment();
            }
        }, AUTO_HIDE_REFRESH_INDICATOR_DELAY_MS);
    }

    /* JADX INFO: renamed from: lambda$onRefresh$4$com-braze-ui-BrazeXamarinFormsFeedFragment, reason: not valid java name */
    /* synthetic */ void m1460lambda$onRefresh$4$combrazeuiBrazeXamarinFormsFeedFragment() {
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
            BrazeXamarinFormsFeedFragment.this.getListView().smoothScrollBy((int) f2, 0);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            long eventTime = motionEvent2.getEventTime() - motionEvent.getEventTime();
            BrazeXamarinFormsFeedFragment.this.getListView().smoothScrollBy(-((int) ((f2 * (2 * eventTime)) / 1000.0f)), (int) (eventTime * 4));
            return true;
        }
    }
}

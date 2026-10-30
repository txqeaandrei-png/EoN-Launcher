package com.braze.ui.contentcards.recycler;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.braze.ui.R;
import com.braze.ui.contentcards.adapters.ContentCardAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J(\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\bH\u0002R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/braze/ui/contentcards/recycler/ContentCardsDividerItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "appContext", "itemDividerHeight", "", "contentCardsItemMaxWidth", "getItemOffsets", "", "itemViewOutputRect", "Landroid/graphics/Rect;", "view", "Landroid/view/View;", "parent", "Landroidx/recyclerview/widget/RecyclerView;", "state", "Landroidx/recyclerview/widget/RecyclerView$State;", "getSidePaddingValue", "parentWidth", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class ContentCardsDividerItemDecoration extends RecyclerView.ItemDecoration {
    private final Context appContext;
    private final int contentCardsItemMaxWidth;
    private final int itemDividerHeight;

    public ContentCardsDividerItemDecoration(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.appContext = applicationContext;
        this.itemDividerHeight = applicationContext.getResources().getDimensionPixelSize(R.dimen.com_braze_content_cards_divider_height);
        this.contentCardsItemMaxWidth = applicationContext.getResources().getDimensionPixelSize(R.dimen.com_braze_content_cards_max_width);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect itemViewOutputRect, View view, RecyclerView parent, RecyclerView.State state) {
        boolean zIsControlCardAtPosition;
        Intrinsics.checkNotNullParameter(itemViewOutputRect, "itemViewOutputRect");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        super.getItemOffsets(itemViewOutputRect, view, parent, state);
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        if (parent.getAdapter() instanceof ContentCardAdapter) {
            RecyclerView.Adapter adapter = parent.getAdapter();
            Intrinsics.checkNotNull(adapter, "null cannot be cast to non-null type com.braze.ui.contentcards.adapters.ContentCardAdapter");
            zIsControlCardAtPosition = ((ContentCardAdapter) adapter).isControlCardAtPosition(childAdapterPosition);
        } else {
            zIsControlCardAtPosition = false;
        }
        itemViewOutputRect.top = childAdapterPosition == 0 ? this.itemDividerHeight : 0;
        itemViewOutputRect.bottom = zIsControlCardAtPosition ? 0 : this.itemDividerHeight;
        int sidePaddingValue = getSidePaddingValue(parent.getWidth());
        itemViewOutputRect.left = sidePaddingValue;
        itemViewOutputRect.right = sidePaddingValue;
    }

    private final int getSidePaddingValue(int parentWidth) {
        return RangesKt.coerceAtLeast((parentWidth - this.contentCardsItemMaxWidth) / 2, 0);
    }
}

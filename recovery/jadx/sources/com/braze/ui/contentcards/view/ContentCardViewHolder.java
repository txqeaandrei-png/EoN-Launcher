package com.braze.ui.contentcards.view;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.braze.ui.R;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.spongycastle.i18n.TextBundle;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/braze/ui/contentcards/view/ContentCardViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "view", "Landroid/view/View;", "showUnreadIndicator", "", "<init>", "(Landroid/view/View;Z)V", "unreadBar", "pinnedIcon", "Landroid/widget/ImageView;", "actionHint", "Landroid/widget/TextView;", "setPinnedIconVisible", "", "isVisible", "setUnreadBarVisible", "setActionHintVisible", "setActionHintText", TextBundle.TEXT_ENTRY, "", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class ContentCardViewHolder extends RecyclerView.ViewHolder {
    private final TextView actionHint;
    private final ImageView pinnedIcon;
    private final View unreadBar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContentCardViewHolder(View view, boolean z) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        View viewFindViewById = view.findViewById(R.id.com_braze_content_cards_unread_bar);
        this.unreadBar = viewFindViewById;
        this.pinnedIcon = (ImageView) view.findViewById(R.id.com_braze_content_cards_pinned_icon);
        this.actionHint = (TextView) view.findViewById(R.id.com_braze_content_cards_action_hint);
        if (!z) {
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
        } else {
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
            }
            if (viewFindViewById != null) {
                viewFindViewById.setBackground(view.getContext().getResources().getDrawable(R.drawable.com_braze_content_cards_unread_bar_background));
            }
        }
    }

    public final void setPinnedIconVisible(boolean isVisible) {
        ImageView imageView;
        ImageView imageView2 = this.pinnedIcon;
        if (imageView2 != null) {
            imageView2.setVisibility(isVisible ? 0 : 8);
        }
        if (isVisible) {
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            if (TextUtils.getLayoutDirectionFromLocale(locale) != 1 || (imageView = this.pinnedIcon) == null) {
                return;
            }
            imageView.setScaleX(-1.0f);
        }
    }

    public final void setUnreadBarVisible(boolean isVisible) {
        View view = this.unreadBar;
        if (view != null) {
            view.setVisibility(isVisible ? 0 : 8);
        }
    }

    public final void setActionHintVisible(boolean isVisible) {
        TextView textView = this.actionHint;
        if (textView != null) {
            textView.setVisibility(isVisible ? 0 : 8);
        }
    }

    public final void setActionHintText(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        TextView textView = this.actionHint;
        if (textView != null) {
            textView.setText(text);
        }
    }
}

package com.braze.ui.feed;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageSwitcher;
import com.braze.support.BrazeLogger;
import com.braze.ui.R;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R(\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\t@GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR(\u0010\u000f\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\t@GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/braze/ui/feed/BrazeImageSwitcher;", "Landroid/widget/ImageSwitcher;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "value", "Landroid/graphics/drawable/Drawable;", "readIcon", "getReadIcon", "()Landroid/graphics/drawable/Drawable;", "setReadIcon", "(Landroid/graphics/drawable/Drawable;)V", "unReadIcon", "getUnReadIcon", "setUnReadIcon", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeImageSwitcher extends ImageSwitcher {
    private Drawable readIcon;
    private Drawable unReadIcon;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BrazeImageSwitcher(Context context, AttributeSet attributeSet) {
        Drawable drawable;
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.com_braze_ui_feed_BrazeImageSwitcher);
            Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.com_braze_ui_feed_BrazeImageSwitcher_brazeFeedCustomReadIcon) {
                    Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(index);
                    if (drawable2 != null) {
                        this.readIcon = drawable2;
                    }
                } else if (typedArrayObtainStyledAttributes.getIndex(i) == R.styleable.com_braze_ui_feed_BrazeImageSwitcher_brazeFeedCustomUnReadIcon && (drawable = typedArrayObtainStyledAttributes.getDrawable(index)) != null) {
                    this.unReadIcon = drawable;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.ui.feed.BrazeImageSwitcher$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeImageSwitcher._init_$lambda$0();
                }
            }, 4, (Object) null);
        }
    }

    public final Drawable getReadIcon() {
        return this.readIcon;
    }

    public final void setReadIcon(Drawable drawable) {
        this.readIcon = drawable;
    }

    public final Drawable getUnReadIcon() {
        return this.unReadIcon;
    }

    public final void setUnReadIcon(Drawable drawable) {
        this.unReadIcon = drawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$0() {
        return "Error while checking for custom drawable.";
    }
}

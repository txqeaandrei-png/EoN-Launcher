package com.braze.ui.inappmessage.views;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.braze.enums.inappmessage.TextAlign;
import com.braze.models.inappmessage.MessageButton;
import com.braze.support.BrazeLogger;
import com.braze.ui.R;
import com.braze.ui.inappmessage.BrazeInAppMessageManager;
import com.braze.ui.inappmessage.utils.InAppMessageButtonViewUtils;
import com.braze.ui.inappmessage.utils.InAppMessageViewUtils;
import com.braze.ui.support.ViewUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.spongycastle.i18n.TextBundle;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0016\u0010\u001a\u001a\u00020\u00142\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0016J\u0010\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u0019H\u0016J\u0010\u0010 \u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u0019H\u0016J\u0010\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020'H\u0016J\u0010\u0010(\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u0019H\u0016J\u0016\u0010)\u001a\b\u0012\u0004\u0012\u00020\n0\u001c2\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0018\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020-H\u0016J\u0010\u0010.\u001a\u00020\u00162\u0006\u0010,\u001a\u00020-H\u0016J\u0012\u0010/\u001a\u00020\u00142\b\u00100\u001a\u0004\u0018\u00010\nH\u0016R\u0014\u0010\t\u001a\u0004\u0018\u00010\nX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u0004\u0018\u00010\u000eX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u000eX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010¨\u00061"}, d2 = {"Lcom/braze/ui/inappmessage/views/InAppMessageImmersiveBaseView;", "Lcom/braze/ui/inappmessage/views/InAppMessageBaseView;", "Lcom/braze/ui/inappmessage/views/IInAppMessageImmersiveView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "frameView", "Landroid/view/View;", "getFrameView", "()Landroid/view/View;", "messageTextView", "Landroid/widget/TextView;", "getMessageTextView", "()Landroid/widget/TextView;", "messageHeaderTextView", "getMessageHeaderTextView", "resetMessageMargins", "", "imageRetrievalSuccessful", "", "setupDirectionalNavigation", "numButtons", "", "setMessageButtons", "messageButtons", "", "Lcom/braze/models/inappmessage/MessageButton;", "setMessageCloseButtonColor", TypedValues.Custom.S_COLOR, "setMessageHeaderTextColor", "setMessageHeaderText", TextBundle.TEXT_ENTRY, "", "setMessage", "setMessageHeaderTextAlignment", "textAlign", "Lcom/braze/enums/inappmessage/TextAlign;", "setFrameColor", "getMessageButtonViews", "onKeyDown", "keyCode", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "dispatchKeyEvent", "setLargerCloseButtonClickArea", "closeButtonView", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class InAppMessageImmersiveBaseView extends InAppMessageBaseView implements IInAppMessageImmersiveView {
    public abstract View getFrameView();

    public abstract List<View> getMessageButtonViews(int numButtons);

    public abstract TextView getMessageHeaderTextView();

    @Override // com.braze.ui.inappmessage.views.InAppMessageBaseView
    public abstract TextView getMessageTextView();

    public InAppMessageImmersiveBaseView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.braze.ui.inappmessage.views.InAppMessageBaseView
    public void resetMessageMargins(boolean imageRetrievalSuccessful) {
        super.resetMessageMargins(imageRetrievalSuccessful);
        TextView messageTextView = getMessageTextView();
        if (StringsKt.isBlank(String.valueOf(messageTextView != null ? messageTextView.getText() : null))) {
            ViewUtils.removeViewFromParent(getMessageTextView());
        }
        TextView messageHeaderTextView = getMessageHeaderTextView();
        if (StringsKt.isBlank(String.valueOf(messageHeaderTextView != null ? messageHeaderTextView.getText() : null))) {
            ViewUtils.removeViewFromParent(getMessageHeaderTextView());
        }
        InAppMessageViewUtils.resetMessageMarginsIfNecessary(getMessageTextView(), getMessageHeaderTextView());
    }

    @Override // com.braze.ui.inappmessage.views.IInAppMessageImmersiveView
    public void setupDirectionalNavigation(final int numButtons) {
        List<View> messageButtonViews = getMessageButtonViews(numButtons);
        final View messageCloseButtonView = getMessageCloseButtonView();
        Integer numValueOf = messageCloseButtonView != null ? Integer.valueOf(messageCloseButtonView.getId()) : null;
        if (numValueOf == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.views.InAppMessageImmersiveBaseView$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageImmersiveBaseView.setupDirectionalNavigation$lambda$0();
                }
            }, 6, (Object) null);
            return;
        }
        if (numButtons == 0) {
            messageCloseButtonView.setNextFocusUpId(numValueOf.intValue());
            messageCloseButtonView.setNextFocusDownId(numValueOf.intValue());
            messageCloseButtonView.setNextFocusRightId(numValueOf.intValue());
            messageCloseButtonView.setNextFocusLeftId(numValueOf.intValue());
        } else if (numButtons == 1) {
            View view = messageButtonViews.get(0);
            Integer numValueOf2 = Integer.valueOf(view.getId());
            view.setNextFocusLeftId(numValueOf.intValue());
            view.setNextFocusRightId(numValueOf.intValue());
            view.setNextFocusUpId(numValueOf.intValue());
            view.setNextFocusDownId(numValueOf.intValue());
            messageCloseButtonView.setNextFocusUpId(numValueOf2.intValue());
            messageCloseButtonView.setNextFocusDownId(numValueOf2.intValue());
            messageCloseButtonView.setNextFocusRightId(numValueOf2.intValue());
            messageCloseButtonView.setNextFocusLeftId(numValueOf2.intValue());
            messageCloseButtonView = view;
            numValueOf = numValueOf2;
        } else if (numButtons == 2) {
            View view2 = messageButtonViews.get(1);
            View view3 = messageButtonViews.get(0);
            Integer numValueOf3 = Integer.valueOf(view2.getId());
            Integer numValueOf4 = Integer.valueOf(view3.getId());
            view2.setNextFocusLeftId(numValueOf4.intValue());
            view2.setNextFocusRightId(numValueOf4.intValue());
            view2.setNextFocusUpId(numValueOf.intValue());
            view2.setNextFocusDownId(numValueOf.intValue());
            view3.setNextFocusLeftId(numValueOf3.intValue());
            view3.setNextFocusRightId(numValueOf3.intValue());
            view3.setNextFocusUpId(numValueOf.intValue());
            view3.setNextFocusDownId(numValueOf.intValue());
            messageCloseButtonView.setNextFocusUpId(numValueOf3.intValue());
            messageCloseButtonView.setNextFocusDownId(numValueOf3.intValue());
            messageCloseButtonView.setNextFocusRightId(numValueOf3.intValue());
            messageCloseButtonView.setNextFocusLeftId(numValueOf4.intValue());
            messageCloseButtonView = view2;
            numValueOf = numValueOf3;
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.views.InAppMessageImmersiveBaseView$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageImmersiveBaseView.setupDirectionalNavigation$lambda$1(numButtons);
                }
            }, 6, (Object) null);
        }
        if (numValueOf != null) {
            setNextFocusUpId(numValueOf.intValue());
            setNextFocusDownId(numValueOf.intValue());
            setNextFocusRightId(numValueOf.intValue());
            setNextFocusLeftId(numValueOf.intValue());
        }
        if (Build.VERSION.SDK_INT >= 26 && messageCloseButtonView != null) {
            messageCloseButtonView.setFocusedByDefault(true);
        }
        if (messageCloseButtonView != null) {
            messageCloseButtonView.post(new Runnable() { // from class: com.braze.ui.inappmessage.views.InAppMessageImmersiveBaseView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    messageCloseButtonView.requestFocus();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setupDirectionalNavigation$lambda$0() {
        return "closeButtonId is null. Cannot continue setting up navigation.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setupDirectionalNavigation$lambda$1(int i) {
        return "Cannot setup directional navigation. Got unsupported number of buttons: " + i;
    }

    public void setMessageButtons(List<? extends MessageButton> messageButtons) {
        Intrinsics.checkNotNullParameter(messageButtons, "messageButtons");
        InAppMessageButtonViewUtils.setButtons(getMessageButtonViews(messageButtons.size()), messageButtons);
    }

    public void setMessageCloseButtonColor(int color) {
        View messageCloseButtonView = getMessageCloseButtonView();
        if (messageCloseButtonView != null) {
            InAppMessageViewUtils.setViewBackgroundColorFilter(messageCloseButtonView, color);
        }
    }

    public void setMessageHeaderTextColor(int color) {
        TextView messageHeaderTextView = getMessageHeaderTextView();
        if (messageHeaderTextView != null) {
            InAppMessageViewUtils.setTextViewColor(messageHeaderTextView, color);
        }
    }

    public void setMessageHeaderText(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        TextView messageHeaderTextView = getMessageHeaderTextView();
        if (messageHeaderTextView != null) {
            messageHeaderTextView.setText(text);
        }
        TextView messageHeaderTextView2 = getMessageHeaderTextView();
        if (messageHeaderTextView2 != null) {
            messageHeaderTextView2.setContentDescription(text);
        }
    }

    @Override // com.braze.ui.inappmessage.views.InAppMessageBaseView
    public void setMessage(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        super.setMessage(text);
        TextView messageTextView = getMessageTextView();
        if (messageTextView != null) {
            messageTextView.setContentDescription(text);
        }
    }

    public void setMessageHeaderTextAlignment(TextAlign textAlign) {
        Intrinsics.checkNotNullParameter(textAlign, "textAlign");
        TextView messageHeaderTextView = getMessageHeaderTextView();
        if (messageHeaderTextView != null) {
            InAppMessageViewUtils.setTextAlignment(messageHeaderTextView, textAlign);
        }
    }

    public void setFrameColor(int color) {
        View frameView = getFrameView();
        if (frameView != null) {
            InAppMessageViewUtils.setFrameColor(frameView, Integer.valueOf(color));
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (keyCode == 4 && BrazeInAppMessageManager.INSTANCE.getInstance().getDoesBackButtonDismissInAppMessageViewField()) {
            InAppMessageViewUtils.closeInAppMessageOnKeycodeBack();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!isInTouchMode() && event.getKeyCode() == 4 && BrazeInAppMessageManager.INSTANCE.getInstance().getDoesBackButtonDismissInAppMessageViewField()) {
            InAppMessageViewUtils.closeInAppMessageOnKeycodeBack();
            return true;
        }
        return super.dispatchKeyEvent(event);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setLargerCloseButtonClickArea(final View closeButtonView) {
        if (closeButtonView == null || closeButtonView.getParent() == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.views.InAppMessageImmersiveBaseView$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageImmersiveBaseView.setLargerCloseButtonClickArea$lambda$7();
                }
            }, 6, (Object) null);
            return;
        }
        final ViewParent parent = closeButtonView.getParent();
        if (parent instanceof View) {
            ((View) parent).post(new Runnable() { // from class: com.braze.ui.inappmessage.views.InAppMessageImmersiveBaseView$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    InAppMessageImmersiveBaseView.setLargerCloseButtonClickArea$lambda$8(closeButtonView, this, parent);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLargerCloseButtonClickArea$lambda$7() {
        return "Cannot increase click area for view if view and/or parent are null.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void setLargerCloseButtonClickArea$lambda$8(View view, InAppMessageImmersiveBaseView inAppMessageImmersiveBaseView, ViewParent viewParent) {
        Rect rect = new Rect();
        view.getHitRect(rect);
        int dimensionPixelSize = inAppMessageImmersiveBaseView.getContext().getResources().getDimensionPixelSize(R.dimen.com_braze_inappmessage_close_button_click_area_width);
        int dimensionPixelSize2 = inAppMessageImmersiveBaseView.getContext().getResources().getDimensionPixelSize(R.dimen.com_braze_inappmessage_close_button_click_area_height);
        int iWidth = (dimensionPixelSize - rect.width()) / 2;
        int iHeight = (dimensionPixelSize2 - rect.height()) / 2;
        rect.top -= iHeight;
        rect.bottom += iHeight;
        rect.left -= iWidth;
        rect.right += iWidth;
        ((View) viewParent).setTouchDelegate(new TouchDelegate(rect, view));
    }
}

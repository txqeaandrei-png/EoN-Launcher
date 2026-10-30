package com.braze.ui.inappmessage;

import android.app.Activity;
import android.window.OnBackInvokedCallback;
import com.braze.support.BrazeLogger;
import com.braze.ui.inappmessage.utils.InAppMessageViewUtils;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/braze/ui/inappmessage/DefaultInAppMessageViewWrapper$open$4$dismissInAppMessageCallback$1", "Landroid/window/OnBackInvokedCallback;", "onBackInvoked", "", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DefaultInAppMessageViewWrapper$open$4$dismissInAppMessageCallback$1 implements OnBackInvokedCallback {
    final /* synthetic */ Activity $it;

    DefaultInAppMessageViewWrapper$open$4$dismissInAppMessageCallback$1(Activity activity) {
        this.$it = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onBackInvoked$lambda$0() {
        return "Back button intercepted by in-app message default view wrapper";
    }

    @Override // android.window.OnBackInvokedCallback
    public void onBackInvoked() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$open$4$dismissInAppMessageCallback$1$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DefaultInAppMessageViewWrapper$open$4$dismissInAppMessageCallback$1.onBackInvoked$lambda$0();
            }
        }, 7, (Object) null);
        InAppMessageViewUtils.closeInAppMessageOnKeycodeBack();
        this.$it.getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(this);
    }
}

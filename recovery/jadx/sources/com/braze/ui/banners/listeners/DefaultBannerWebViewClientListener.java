package com.braze.ui.banners.listeners;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.braze.Braze;
import com.braze.enums.Channel;
import com.braze.support.BrazeFileUtils;
import com.braze.support.BrazeLogger;
import com.braze.ui.BrazeDeeplinkHandler;
import com.braze.ui.BrazeWebViewClient;
import com.braze.ui.actions.UriAction;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\u0010"}, d2 = {"Lcom/braze/ui/banners/listeners/DefaultBannerWebViewClientListener;", "Lcom/braze/ui/banners/listeners/IBannerWebViewClientListener;", "<init>", "()V", "onCloseAction", "", "context", "Landroid/content/Context;", "url", "", "queryBundle", "Landroid/os/Bundle;", "onNewsfeedAction", "onCustomEventAction", "onOtherUrlAction", "Companion", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class DefaultBannerWebViewClientListener implements IBannerWebViewClientListener {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @JvmStatic
    public static final boolean parseUseWebViewFromQueryBundle(Bundle bundle) {
        return INSTANCE.parseUseWebViewFromQueryBundle(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onCloseAction$lambda$0() {
        return "Close action not available on Banners.";
    }

    @Override // com.braze.ui.banners.listeners.IBannerWebViewClientListener
    public void onCloseAction(Context context, String url, Bundle queryBundle) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(queryBundle, "queryBundle");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.banners.listeners.DefaultBannerWebViewClientListener$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DefaultBannerWebViewClientListener.onCloseAction$lambda$0();
            }
        }, 6, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onNewsfeedAction$lambda$1() {
        return "Newsfeed action not available on Banners.";
    }

    @Override // com.braze.ui.banners.listeners.IBannerWebViewClientListener
    public void onNewsfeedAction(Context context, String url, Bundle queryBundle) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(queryBundle, "queryBundle");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.banners.listeners.DefaultBannerWebViewClientListener$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DefaultBannerWebViewClientListener.onNewsfeedAction$lambda$1();
            }
        }, 6, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onCustomEventAction$lambda$2() {
        return "DefaultBannerWebViewClientListener.onCustomEventAction called.";
    }

    @Override // com.braze.ui.banners.listeners.IBannerWebViewClientListener
    public void onCustomEventAction(Context context, String url, Bundle queryBundle) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(queryBundle, "queryBundle");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.banners.listeners.DefaultBannerWebViewClientListener$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DefaultBannerWebViewClientListener.onCustomEventAction$lambda$2();
            }
        }, 7, (Object) null);
        String customEventNameFromQueryBundle = BrazeWebViewClient.INSTANCE.parseCustomEventNameFromQueryBundle(queryBundle);
        String str = customEventNameFromQueryBundle;
        if (str == null || StringsKt.isBlank(str)) {
            return;
        }
        Braze.INSTANCE.getInstance(context).logCustomEvent(customEventNameFromQueryBundle, BrazeWebViewClient.INSTANCE.parsePropertiesFromQueryBundle(queryBundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onOtherUrlAction$lambda$3() {
        return "DefaultBannerWebViewClientListener.onOtherUrlAction called.";
    }

    @Override // com.braze.ui.banners.listeners.IBannerWebViewClientListener
    public void onOtherUrlAction(Context context, final String url, Bundle queryBundle) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(queryBundle, "queryBundle");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.banners.listeners.DefaultBannerWebViewClientListener$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DefaultBannerWebViewClientListener.onOtherUrlAction$lambda$3();
            }
        }, 7, (Object) null);
        UriAction uriActionCreateUriActionFromUrlString = BrazeDeeplinkHandler.INSTANCE.getInstance().createUriActionFromUrlString(url, queryBundle, INSTANCE.parseUseWebViewFromQueryBundle(queryBundle), Channel.BANNER);
        if (uriActionCreateUriActionFromUrlString == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.banners.listeners.DefaultBannerWebViewClientListener$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DefaultBannerWebViewClientListener.onOtherUrlAction$lambda$4(url);
                }
            }, 6, (Object) null);
            return;
        }
        final Uri uri = uriActionCreateUriActionFromUrlString.getUri();
        if (BrazeFileUtils.isLocalUri(uri)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.banners.listeners.DefaultBannerWebViewClientListener$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DefaultBannerWebViewClientListener.onOtherUrlAction$lambda$5(uri, url);
                }
            }, 6, (Object) null);
        } else {
            BrazeDeeplinkHandler.INSTANCE.getInstance().gotoUri(context, uriActionCreateUriActionFromUrlString);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onOtherUrlAction$lambda$4(String str) {
        return "UriAction is null. Not passing any URI to BrazeDeeplinkHandler. Url: " + str + '.';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onOtherUrlAction$lambda$5(Uri uri, String str) {
        return "Not passing local uri to BrazeDeeplinkHandler. Got local uri: " + uri + " for url: " + str + '.';
    }

    /* JADX INFO: loaded from: classes.dex */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Lcom/braze/ui/banners/listeners/DefaultBannerWebViewClientListener$Companion;", "", "<init>", "()V", "parseUseWebViewFromQueryBundle", "", "queryBundle", "Landroid/os/Bundle;", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final boolean parseUseWebViewFromQueryBundle(Bundle queryBundle) {
            boolean z;
            boolean z2;
            boolean z3;
            Intrinsics.checkNotNullParameter(queryBundle, "queryBundle");
            if (queryBundle.containsKey(BrazeWebViewClient.QUERY_NAME_DEEPLINK)) {
                z = Boolean.parseBoolean(queryBundle.getString(BrazeWebViewClient.QUERY_NAME_DEEPLINK));
                z2 = true;
            } else {
                z = false;
                z2 = false;
            }
            if (queryBundle.containsKey(BrazeWebViewClient.QUERY_NAME_EXTERNAL_OPEN)) {
                z3 = Boolean.parseBoolean(queryBundle.getString(BrazeWebViewClient.QUERY_NAME_EXTERNAL_OPEN));
                z2 = true;
            } else {
                z3 = false;
            }
            if (z2) {
                return (z || z3) ? false : true;
            }
            return true;
        }
    }
}

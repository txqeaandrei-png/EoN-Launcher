package com.braze.ui.banners;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Base64;
import android.webkit.WebView;
import com.braze.Braze;
import com.braze.BrazeInternal;
import com.braze.managers.IBannerView;
import com.braze.models.Banner;
import com.braze.ui.R;
import com.braze.ui.banners.jsinterface.BannerJavascriptInterface;
import com.braze.ui.banners.listeners.DefaultBannerWebViewClientListener;
import com.braze.ui.banners.utils.BannerWebViewClient;
import com.braze.ui.inappmessage.views.InAppMessageHtmlBaseView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0010\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\tB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\u0007\u0010\fB!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0004\b\u0007\u0010\u000fJ\u001a\u0010!\u001a\u00020\u001b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010#\u001a\u00020\u001b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010$\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\b\u0010%\u001a\u00020\u001bH\u0002R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u00068F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R(\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u0019X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/braze/ui/banners/BannerView;", "Landroid/webkit/WebView;", "Lcom/braze/managers/IBannerView;", "context", "Landroid/content/Context;", "placementId", "", "<init>", "(Landroid/content/Context;Ljava/lang/String;)V", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "_placementId", "loadedHtml", "currentUserId", "value", "getPlacementId", "()Ljava/lang/String;", "setPlacementId", "(Ljava/lang/String;)V", "heightCallback", "Lkotlin/Function1;", "", "", "getHeightCallback", "()Lkotlin/jvm/functions/Function1;", "setHeightCallback", "(Lkotlin/jvm/functions/Function1;)V", "internalHeightCallback", "init", "configureWebView", "initBanner", "loadHtmlData", "setWebviewToEmpty", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BannerView extends WebView implements IBannerView {
    private String _placementId;
    private String currentUserId;
    private Function1<? super Double, Unit> heightCallback;
    private final Function1<Double, Unit> internalHeightCallback;
    private String loadedHtml;

    /* JADX INFO: renamed from: getPlacementId, reason: from getter */
    public final String get_placementId() {
        return this._placementId;
    }

    public final void setPlacementId(String str) {
        this._placementId = str;
        initBanner(str);
    }

    public final Function1<Double, Unit> getHeightCallback() {
        return this.heightCallback;
    }

    public final void setHeightCallback(Function1<? super Double, Unit> function1) {
        this.heightCallback = function1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit internalHeightCallback$lambda$0(BannerView bannerView, double d) {
        Function1<? super Double, Unit> function1 = bannerView.heightCallback;
        if (function1 != null) {
            function1.invoke(Double.valueOf(d));
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerView(Context context, String str) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.internalHeightCallback = new Function1() { // from class: com.braze.ui.banners.BannerView$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BannerView.internalHeightCallback$lambda$0(this.f$0, ((Double) obj).doubleValue());
            }
        };
        this._placementId = str;
        init(null, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.internalHeightCallback = new Function1() { // from class: com.braze.ui.banners.BannerView$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BannerView.internalHeightCallback$lambda$0(this.f$0, ((Double) obj).doubleValue());
            }
        };
        init(null, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.internalHeightCallback = new Function1() { // from class: com.braze.ui.banners.BannerView$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BannerView.internalHeightCallback$lambda$0(this.f$0, ((Double) obj).doubleValue());
            }
        };
        init(attrs, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerView(Context context, AttributeSet attrs, int i) {
        super(context, attrs, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.internalHeightCallback = new Function1() { // from class: com.braze.ui.banners.BannerView$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BannerView.internalHeightCallback$lambda$0(this.f$0, ((Double) obj).doubleValue());
            }
        };
        init(attrs, i);
    }

    private final void init(AttributeSet attrs, int defStyle) {
        setBackgroundColor(0);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.BannerView, defStyle, 0);
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.BannerView_placementId)) {
            this._placementId = typedArrayObtainStyledAttributes.getString(R.styleable.BannerView_placementId);
        }
        typedArrayObtainStyledAttributes.recycle();
        initBanner(get_placementId());
    }

    private final void configureWebView(String placementId) {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setUseWideViewPort(true);
        getSettings().setLoadWithOverviewMode(true);
        getSettings().setDisplayZoomControls(false);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAllowFileAccess(false);
        setLayerType(2, null);
        setBackgroundColor(0);
        DefaultBannerWebViewClientListener defaultBannerWebViewClientListener = new DefaultBannerWebViewClientListener();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        setWebViewClient(new BannerWebViewClient(context, defaultBannerWebViewClientListener));
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        addJavascriptInterface(new BannerJavascriptInterface(context2, placementId, this.internalHeightCallback), InAppMessageHtmlBaseView.BRAZE_BRIDGE_PREFIX);
    }

    @Override // com.braze.managers.IBannerView
    public void initBanner(final String placementId) {
        Banner banner;
        if (placementId != null) {
            Braze.Companion companion = Braze.INSTANCE;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            banner = companion.getInstance(context).getBanner(placementId);
        } else {
            banner = null;
        }
        if (banner == null) {
            this.currentUserId = null;
            setWebviewToEmpty();
            if (placementId != null) {
                BrazeInternal.INSTANCE.addBannerViewMonitor(placementId, this, true);
                return;
            }
            return;
        }
        if (Intrinsics.areEqual(banner.getHtml(), this.loadedHtml) && Intrinsics.areEqual(banner.getUserId(), this.currentUserId)) {
            return;
        }
        this.loadedHtml = banner.getHtml();
        this.currentUserId = banner.getUserId();
        if (banner.getIsControl()) {
            setWebviewToEmpty();
        } else if (!Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.braze.ui.banners.BannerView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.loadHtmlData(placementId);
                }
            });
        } else {
            loadHtmlData(placementId);
        }
        BrazeInternal.INSTANCE.addBannerViewMonitor(banner.getPlacementId(), this, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadHtmlData(String placementId) {
        configureWebView(placementId);
        String str = this.loadedHtml;
        if (str != null) {
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            String strEncodeToString = Base64.encodeToString(bytes, 1);
            if (strEncodeToString == null) {
                strEncodeToString = "";
            }
            loadData(strEncodeToString, "text/html", "base64");
            invalidate();
        }
    }

    private final void setWebviewToEmpty() {
        this.loadedHtml = null;
        if (!Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.braze.ui.banners.BannerView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    BannerView.setWebviewToEmpty$lambda$4(this.f$0);
                }
            });
            return;
        }
        loadData("", "text/html", "base64");
        invalidate();
        this.internalHeightCallback.invoke(Double.valueOf(0.0d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setWebviewToEmpty$lambda$4(BannerView bannerView) {
        bannerView.loadData("", "text/html", "base64");
        bannerView.invalidate();
        bannerView.internalHeightCallback.invoke(Double.valueOf(0.0d));
    }
}

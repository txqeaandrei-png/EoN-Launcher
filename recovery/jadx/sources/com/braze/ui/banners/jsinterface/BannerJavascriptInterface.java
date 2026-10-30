package com.braze.ui.banners.jsinterface;

import android.content.Context;
import android.webkit.JavascriptInterface;
import com.braze.Braze;
import com.braze.BrazeActivityLifecycleCallbackListener;
import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.support.BrazeLogger;
import com.braze.support.PermissionUtils;
import com.braze.ui.JavascriptInterfaceBase;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\u0014\u001a\u00020\t2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0017J\b\u0010\u0016\u001a\u00020\tH\u0017J\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\bH\u0007J\b\u0010\u0019\u001a\u00020\tH\u0007R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u00020\u00118G¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001a"}, d2 = {"Lcom/braze/ui/banners/jsinterface/BannerJavascriptInterface;", "Lcom/braze/ui/JavascriptInterfaceBase;", "context", "Landroid/content/Context;", "placementId", "", "setHeightCallback", "Lkotlin/Function1;", "", "", "<init>", "(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "getPlacementId", "()Ljava/lang/String;", "getSetHeightCallback", "()Lkotlin/jvm/functions/Function1;", "user", "Lcom/braze/ui/banners/jsinterface/BannerUserJavascriptInterface;", "getUser", "()Lcom/braze/ui/banners/jsinterface/BannerUserJavascriptInterface;", "logButtonClick", "buttonId", "logClick", "setBannerHeight", "height", "requestPushPermission", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BannerJavascriptInterface extends JavascriptInterfaceBase {
    private final String placementId;
    private final Function1<Double, Unit> setHeightCallback;
    private final BannerUserJavascriptInterface user;

    public final String getPlacementId() {
        return this.placementId;
    }

    public /* synthetic */ BannerJavascriptInterface(Context context, String str, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i & 4) != 0 ? new Function1() { // from class: com.braze.ui.banners.jsinterface.BannerJavascriptInterface$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BannerJavascriptInterface._init_$lambda$0(((Double) obj).doubleValue());
            }
        } : function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$0(double d) {
        return Unit.INSTANCE;
    }

    public final Function1<Double, Unit> getSetHeightCallback() {
        return this.setHeightCallback;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public BannerJavascriptInterface(Context context, String placementId, Function1<? super Double, Unit> setHeightCallback) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(setHeightCallback, "setHeightCallback");
        this.placementId = placementId;
        this.setHeightCallback = setHeightCallback;
        this.user = new BannerUserJavascriptInterface(context);
    }

    @JavascriptInterface
    public final BannerUserJavascriptInterface getUser() {
        return this.user;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logButtonClick$lambda$1() {
        return "Banner logButtonClick() called. Logging banner click with button ID.";
    }

    @Override // com.braze.ui.JavascriptInterfaceBase
    @JavascriptInterface
    public void logButtonClick(String buttonId) {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.ui.banners.jsinterface.BannerJavascriptInterface$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BannerJavascriptInterface.logButtonClick$lambda$1();
            }
        }, 6, (Object) null);
        Braze.INSTANCE.getInstance(getContext()).logBannerClick(this.placementId, buttonId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logClick$lambda$2() {
        return "Banner logClick() called. Logging banner click without button ID.";
    }

    @Override // com.braze.ui.JavascriptInterfaceBase
    @JavascriptInterface
    public void logClick() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.ui.banners.jsinterface.BannerJavascriptInterface$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BannerJavascriptInterface.logClick$lambda$2();
            }
        }, 6, (Object) null);
        Braze.INSTANCE.getInstance(getContext()).logBannerClick(this.placementId, null);
    }

    @JavascriptInterface
    public final void setBannerHeight(final double height) {
        if (Double.isInfinite(height) || Double.isNaN(height) || height < 0.0d) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.banners.jsinterface.BannerJavascriptInterface$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BannerJavascriptInterface.setBannerHeight$lambda$3(height);
                }
            }, 7, (Object) null);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.ui.banners.jsinterface.BannerJavascriptInterface$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BannerJavascriptInterface.setBannerHeight$lambda$4(height);
                }
            }, 6, (Object) null);
            this.setHeightCallback.invoke(Double.valueOf(height));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setBannerHeight$lambda$3(double d) {
        return "Banner setBannerHeight(" + d + ") called with invalid height. Height must be a finite number, not NaN, and greater or equal to 0.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setBannerHeight$lambda$4(double d) {
        return "Banner setBannerHeight(" + d + ") called.";
    }

    /* JADX INFO: renamed from: com.braze.ui.banners.jsinterface.BannerJavascriptInterface$requestPushPermission$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.braze.ui.banners.jsinterface.BannerJavascriptInterface$requestPushPermission$2", f = "BannerJavascriptInterface.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            PermissionUtils.requestPushPermissionPrompt(BrazeActivityLifecycleCallbackListener.INSTANCE.getActivity());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestPushPermission$lambda$5() {
        return "Banner requestPushPermission() called. Requesting push permission now.";
    }

    @JavascriptInterface
    public final void requestPushPermission() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.banners.jsinterface.BannerJavascriptInterface$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BannerJavascriptInterface.requestPushPermission$lambda$5();
            }
        }, 6, (Object) null);
        BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, null, null, new AnonymousClass2(null), 3, null);
    }
}

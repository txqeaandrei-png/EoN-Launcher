package com.braze.ui.inappmessage;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.webkit.WebView;
import com.braze.Braze;
import com.braze.BrazeInternal;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.enums.inappmessage.MessageType;
import com.braze.enums.inappmessage.Orientation;
import com.braze.events.BrazeUserChangeEvent;
import com.braze.events.IEventSubscriber;
import com.braze.events.InAppMessageEvent;
import com.braze.events.SdkDataWipeEvent;
import com.braze.models.inappmessage.IInAppMessage;
import com.braze.models.inappmessage.InAppMessageHtml;
import com.braze.models.inappmessage.InAppMessageImmersiveBase;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.JsonUtils;
import com.braze.support.PermissionUtils;
import com.braze.ui.actions.brazeactions.BrazeActionUtils;
import com.braze.ui.inappmessage.listeners.DefaultInAppMessageViewLifecycleListener;
import com.braze.ui.inappmessage.listeners.IInAppMessageManagerListener;
import com.braze.ui.inappmessage.listeners.IInAppMessageViewLifecycleListener;
import com.braze.ui.inappmessage.listeners.IWebViewClientStateListener;
import com.braze.ui.inappmessage.utils.BackgroundInAppMessagePreparer;
import com.braze.ui.inappmessage.views.IInAppMessageImmersiveView;
import com.braze.ui.inappmessage.views.IInAppMessageView;
import com.braze.ui.inappmessage.views.InAppMessageHtmlBaseView;
import com.braze.ui.support.ViewUtils;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0017\u0018\u0000 J2\u00020\u0001:\u0001JB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0016J\u0012\u00104\u001a\u0002012\b\u00105\u001a\u0004\u0018\u000106H\u0016J\u0012\u00107\u001a\u0002012\b\u00105\u001a\u0004\u0018\u000106H\u0016J\u0012\u00108\u001a\u0002012\b\u00109\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010:\u001a\u00020.H\u0016J\u0010\u0010;\u001a\u0002012\u0006\u0010<\u001a\u00020.H\u0016J\b\u0010=\u001a\u000201H\u0016J\b\u0010>\u001a\u00020.H\u0016J\u001e\u0010?\u001a\u0002012\u0006\u00109\u001a\u00020\u000b2\u0006\u0010@\u001a\u00020.H\u0096@¢\u0006\u0002\u0010AJ\u000e\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00110\u0015H\u0002J\u0016\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00190\u00152\u0006\u00102\u001a\u000203H\u0002J\u0010\u0010D\u001a\u00020.2\u0006\u00109\u001a\u00020\u000bH\u0017J\u001a\u0010E\u001a\u00020.2\b\u00109\u001a\u0004\u0018\u00010\u000b2\u0006\u0010!\u001a\u00020\"H\u0017J\r\u0010F\u001a\u000201H\u0000¢\u0006\u0002\bGJ\r\u0010H\u001a\u000201H\u0000¢\u0006\u0002\bIR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\u0003R\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\u0003\u001a\u0004\b\r\u0010\u000eR\u001d\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00110\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010#\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b$\u0010\u0003\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R&\u0010)\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b*\u0010\u0003\u001a\u0004\b+\u0010&\"\u0004\b,\u0010(R\u0011\u0010-\u001a\u00020.8F¢\u0006\u0006\u001a\u0004\b-\u0010/¨\u0006K"}, d2 = {"Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;", "Lcom/braze/ui/inappmessage/InAppMessageManagerBase;", "<init>", "()V", "inAppMessageViewLifecycleListener", "Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;", "displayingInAppMessage", "Ljava/util/concurrent/atomic/AtomicBoolean;", "getDisplayingInAppMessage$annotations", "inAppMessageStack", "Ljava/util/Stack;", "Lcom/braze/models/inappmessage/IInAppMessage;", "getInAppMessageStack$annotations", "getInAppMessageStack", "()Ljava/util/Stack;", "inAppMessageEventMap", "", "Lcom/braze/events/InAppMessageEvent;", "getInAppMessageEventMap", "()Ljava/util/Map;", "inAppMessageEventSubscriber", "Lcom/braze/events/IEventSubscriber;", "sdkDataWipeEventSubscriber", "Lcom/braze/events/SdkDataWipeEvent;", "brazeUserChangeEventSubscriber", "Lcom/braze/events/BrazeUserChangeEvent;", "originalOrientation", "", "Ljava/lang/Integer;", "configurationProvider", "Lcom/braze/configuration/BrazeConfigurationProvider;", "inAppMessageViewWrapper", "Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;", "currentUserId", "", "carryoverInAppMessage", "getCarryoverInAppMessage$annotations", "getCarryoverInAppMessage", "()Lcom/braze/models/inappmessage/IInAppMessage;", "setCarryoverInAppMessage", "(Lcom/braze/models/inappmessage/IInAppMessage;)V", "unregisteredInAppMessage", "getUnregisteredInAppMessage$annotations", "getUnregisteredInAppMessage", "setUnregisteredInAppMessage", "isCurrentlyDisplayingInAppMessage", "", "()Z", "ensureSubscribedToInAppMessageEvents", "", "context", "Landroid/content/Context;", "registerInAppMessageManager", "activity", "Landroid/app/Activity;", "unregisterInAppMessageManager", "addInAppMessage", "inAppMessage", "requestDisplayInAppMessage", "hideCurrentlyDisplayingInAppMessage", "dismissed", "resetAfterInAppMessageClose", "getIsCurrentlyDisplayingInAppMessage", "displayInAppMessage", "isCarryOver", "(Lcom/braze/models/inappmessage/IInAppMessage;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createInAppMessageEventSubscriber", "createBrazeUserChangeEventSubscriber", "verifyOrientationStatus", "isInAppMessageForTheSameUser", "pauseWebviewIfNecessary", "pauseWebviewIfNecessary$android_sdk_ui_release", "resumeWebviewIfNecessary", "resumeWebviewIfNecessary$android_sdk_ui_release", "Companion", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class BrazeInAppMessageManager extends InAppMessageManagerBase {
    private static volatile BrazeInAppMessageManager instance;
    private IEventSubscriber<BrazeUserChangeEvent> brazeUserChangeEventSubscriber;
    private IInAppMessage carryoverInAppMessage;
    private BrazeConfigurationProvider configurationProvider;
    private IEventSubscriber<InAppMessageEvent> inAppMessageEventSubscriber;
    private IInAppMessageViewWrapper inAppMessageViewWrapper;
    private Integer originalOrientation;
    private IEventSubscriber<SdkDataWipeEvent> sdkDataWipeEventSubscriber;
    private IInAppMessage unregisteredInAppMessage;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ReentrantLock instanceLock = new ReentrantLock();
    private final IInAppMessageViewLifecycleListener inAppMessageViewLifecycleListener = new DefaultInAppMessageViewLifecycleListener();
    public final AtomicBoolean displayingInAppMessage = new AtomicBoolean(false);
    private final Stack<IInAppMessage> inAppMessageStack = new Stack<>();
    private final Map<IInAppMessage, InAppMessageEvent> inAppMessageEventMap = new LinkedHashMap();
    private String currentUserId = "";

    /* JADX INFO: loaded from: classes.dex */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[InAppMessageOperation.values().length];
            try {
                iArr[InAppMessageOperation.DISPLAY_NOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InAppMessageOperation.DISPLAY_LATER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[InAppMessageOperation.DISCARD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[InAppMessageOperation.REENQUEUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[MessageType.values().length];
            try {
                iArr2[MessageType.HTML.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[MessageType.HTML_FULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: renamed from: com.braze.ui.inappmessage.BrazeInAppMessageManager$displayInAppMessage$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.braze.ui.inappmessage.BrazeInAppMessageManager", f = "BrazeInAppMessageManager.kt", i = {0, 0, 0, 0}, l = {578}, m = "displayInAppMessage$suspendImpl", n = {"$this", "inAppMessage", "activity", "configProvider"}, s = {"L$0", "L$1", "L$2", "L$3"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return BrazeInAppMessageManager.displayInAppMessage$suspendImpl(BrazeInAppMessageManager.this, null, false, this);
        }
    }

    public static /* synthetic */ void getCarryoverInAppMessage$annotations() {
    }

    public static /* synthetic */ void getDisplayingInAppMessage$annotations() {
    }

    public static /* synthetic */ void getInAppMessageStack$annotations() {
    }

    @JvmStatic
    public static final BrazeInAppMessageManager getInstance() {
        return INSTANCE.getInstance();
    }

    public static /* synthetic */ void getUnregisteredInAppMessage$annotations() {
    }

    public Object displayInAppMessage(IInAppMessage iInAppMessage, boolean z, Continuation<? super Unit> continuation) {
        return displayInAppMessage$suspendImpl(this, iInAppMessage, z, continuation);
    }

    public final Stack<IInAppMessage> getInAppMessageStack() {
        return this.inAppMessageStack;
    }

    public final Map<IInAppMessage, InAppMessageEvent> getInAppMessageEventMap() {
        return this.inAppMessageEventMap;
    }

    public final IInAppMessage getCarryoverInAppMessage() {
        return this.carryoverInAppMessage;
    }

    public final void setCarryoverInAppMessage(IInAppMessage iInAppMessage) {
        this.carryoverInAppMessage = iInAppMessage;
    }

    public final IInAppMessage getUnregisteredInAppMessage() {
        return this.unregisteredInAppMessage;
    }

    public final void setUnregisteredInAppMessage(IInAppMessage iInAppMessage) {
        this.unregisteredInAppMessage = iInAppMessage;
    }

    public final boolean isCurrentlyDisplayingInAppMessage() {
        return this.displayingInAppMessage.get();
    }

    public void ensureSubscribedToInAppMessageEvents(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.inAppMessageEventSubscriber != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda45
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInAppMessageManager.ensureSubscribedToInAppMessageEvents$lambda$0();
                }
            }, 7, (Object) null);
            Braze.INSTANCE.getInstance(context).removeSingleSubscription(this.inAppMessageEventSubscriber, InAppMessageEvent.class);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda46
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeInAppMessageManager.ensureSubscribedToInAppMessageEvents$lambda$1();
            }
        }, 7, (Object) null);
        IEventSubscriber<InAppMessageEvent> iEventSubscriberCreateInAppMessageEventSubscriber = createInAppMessageEventSubscriber();
        Braze.INSTANCE.getInstance(context).subscribeToNewInAppMessages(iEventSubscriberCreateInAppMessageEventSubscriber);
        this.inAppMessageEventSubscriber = iEventSubscriberCreateInAppMessageEventSubscriber;
        if (this.sdkDataWipeEventSubscriber != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda47
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInAppMessageManager.ensureSubscribedToInAppMessageEvents$lambda$3();
                }
            }, 6, (Object) null);
            Braze.INSTANCE.getInstance(context).removeSingleSubscription(this.sdkDataWipeEventSubscriber, SdkDataWipeEvent.class);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda48
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeInAppMessageManager.ensureSubscribedToInAppMessageEvents$lambda$4();
            }
        }, 6, (Object) null);
        IEventSubscriber<SdkDataWipeEvent> iEventSubscriber = new IEventSubscriber() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda49
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                BrazeInAppMessageManager.ensureSubscribedToInAppMessageEvents$lambda$5(this.f$0, (SdkDataWipeEvent) obj);
            }
        };
        Braze.INSTANCE.getInstance(context).addSingleSynchronousSubscription(iEventSubscriber, SdkDataWipeEvent.class);
        this.sdkDataWipeEventSubscriber = iEventSubscriber;
        if (this.brazeUserChangeEventSubscriber != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda50
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInAppMessageManager.ensureSubscribedToInAppMessageEvents$lambda$7();
                }
            }, 6, (Object) null);
            Braze.INSTANCE.getInstance(context).removeSingleSubscription(this.brazeUserChangeEventSubscriber, BrazeUserChangeEvent.class);
        }
        IEventSubscriber<BrazeUserChangeEvent> iEventSubscriberCreateBrazeUserChangeEventSubscriber = createBrazeUserChangeEventSubscriber(context);
        Braze.INSTANCE.getInstance(context).addSingleSynchronousSubscription(iEventSubscriberCreateBrazeUserChangeEventSubscriber, BrazeUserChangeEvent.class);
        this.brazeUserChangeEventSubscriber = iEventSubscriberCreateBrazeUserChangeEventSubscriber;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String ensureSubscribedToInAppMessageEvents$lambda$0() {
        return "Removing existing in-app message event subscriber before subscribing a new one.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String ensureSubscribedToInAppMessageEvents$lambda$1() {
        return "Subscribing in-app message event subscriber";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String ensureSubscribedToInAppMessageEvents$lambda$3() {
        return "Removing existing sdk data wipe event subscriber before subscribing a new one.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String ensureSubscribedToInAppMessageEvents$lambda$4() {
        return "Subscribing sdk data wipe subscriber";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ensureSubscribedToInAppMessageEvents$lambda$5(BrazeInAppMessageManager brazeInAppMessageManager, SdkDataWipeEvent it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (brazeInAppMessageManager.displayingInAppMessage.get()) {
            brazeInAppMessageManager.hideCurrentlyDisplayingInAppMessage(false);
        }
        brazeInAppMessageManager.inAppMessageStack.clear();
        brazeInAppMessageManager.carryoverInAppMessage = null;
        brazeInAppMessageManager.unregisteredInAppMessage = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String ensureSubscribedToInAppMessageEvents$lambda$7() {
        return "Removing existing user change event subscriber before subscribing a new one.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerInAppMessageManager$lambda$9() {
        return "Null Activity passed to registerInAppMessageManager. Doing nothing";
    }

    public void registerInAppMessageManager(final Activity activity) {
        try {
            if (activity == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.registerInAppMessageManager$lambda$9();
                    }
                }, 6, (Object) null);
                return;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInAppMessageManager.registerInAppMessageManager$lambda$10(activity);
                }
            }, 6, (Object) null);
            this.mActivity = activity;
            if (this.mApplicationContext == null) {
                this.mApplicationContext = activity.getApplicationContext();
                if (this.mApplicationContext == null) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda9
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeInAppMessageManager.registerInAppMessageManager$lambda$11();
                        }
                    }, 6, (Object) null);
                    return;
                }
            }
            if (this.configurationProvider == null) {
                Context context = this.mApplicationContext;
                this.configurationProvider = context != null ? new BrazeConfigurationProvider(context) : null;
            }
            IInAppMessage iInAppMessage = this.carryoverInAppMessage;
            if (iInAppMessage != null) {
                if (iInAppMessage != null) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda10
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeInAppMessageManager.registerInAppMessageManager$lambda$14$lambda$13();
                        }
                    }, 7, (Object) null);
                    iInAppMessage.setAnimateIn(false);
                    BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, Dispatchers.getMain(), null, new BrazeInAppMessageManager$registerInAppMessageManager$5$2(this, iInAppMessage, null), 2, null);
                }
                this.carryoverInAppMessage = null;
            } else {
                IInAppMessage iInAppMessage2 = this.unregisteredInAppMessage;
                if (iInAppMessage2 != null) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda12
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeInAppMessageManager.registerInAppMessageManager$lambda$16$lambda$15();
                        }
                    }, 7, (Object) null);
                    addInAppMessage(iInAppMessage2);
                    this.unregisteredInAppMessage = null;
                }
            }
            Context context2 = this.mApplicationContext;
            if (context2 != null) {
                ensureSubscribedToInAppMessageEvents(context2);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInAppMessageManager.registerInAppMessageManager$lambda$18();
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerInAppMessageManager$lambda$10(Activity activity) {
        return "Registering InAppMessageManager with activity: " + activity.getLocalClassName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerInAppMessageManager$lambda$11() {
        return "Activity had null applicationContext in registerInAppMessageManager. Doing Nothing.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerInAppMessageManager$lambda$14$lambda$13() {
        return "Requesting display of carryover in-app message.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerInAppMessageManager$lambda$16$lambda$15() {
        return "Adding previously unregistered in-app message.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerInAppMessageManager$lambda$18() {
        return "Error while calling attempting to register the InAppMessageManager";
    }

    public void unregisterInAppMessageManager(final Activity activity) {
        IInAppMessage inAppMessage;
        try {
            if (getShouldNextUnregisterBeSkipped()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.unregisterInAppMessageManager$lambda$19(activity);
                    }
                }, 7, (Object) null);
                setShouldNextUnregisterBeSkipped(false);
                return;
            }
            if (activity == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.unregisterInAppMessageManager$lambda$20();
                    }
                }, 6, (Object) null);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda22
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.unregisterInAppMessageManager$lambda$21(activity);
                    }
                }, 6, (Object) null);
            }
            IInAppMessageViewWrapper iInAppMessageViewWrapper = this.inAppMessageViewWrapper;
            if (iInAppMessageViewWrapper != null) {
                View inAppMessageView = iInAppMessageViewWrapper.getInAppMessageView();
                if (inAppMessageView instanceof InAppMessageHtmlBaseView) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda33
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeInAppMessageManager.unregisterInAppMessageManager$lambda$22();
                        }
                    }, 7, (Object) null);
                    ((InAppMessageHtmlBaseView) inAppMessageView).setHtmlPageFinishedListener(null);
                }
                ViewUtils.removeViewFromParent(inAppMessageView);
                if (iInAppMessageViewWrapper.getIsAnimatingClose()) {
                    this.inAppMessageViewLifecycleListener.afterClosed(iInAppMessageViewWrapper.getInAppMessage());
                    inAppMessage = null;
                } else {
                    inAppMessage = iInAppMessageViewWrapper.getInAppMessage();
                }
                this.carryoverInAppMessage = inAppMessage;
                this.inAppMessageViewWrapper = null;
            } else {
                this.carryoverInAppMessage = null;
            }
            this.mActivity = null;
            this.displayingInAppMessage.set(false);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda44
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInAppMessageManager.unregisterInAppMessageManager$lambda$23();
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String unregisterInAppMessageManager$lambda$19(Activity activity) {
        return "Skipping unregistration due to setShouldNextUnregisterBeSkipped being true. Activity: " + (activity != null ? activity.getLocalClassName() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String unregisterInAppMessageManager$lambda$20() {
        return "Null Activity passed to unregisterInAppMessageManager.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String unregisterInAppMessageManager$lambda$21(Activity activity) {
        return "Unregistering InAppMessageManager from activity: " + activity.getLocalClassName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String unregisterInAppMessageManager$lambda$22() {
        return "In-app message view includes HTML. Removing the page finished listener.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String unregisterInAppMessageManager$lambda$23() {
        return "Error while calling attempting to unregister the InAppMessageManager";
    }

    public void addInAppMessage(IInAppMessage inAppMessage) {
        if (inAppMessage != null) {
            this.inAppMessageStack.push(inAppMessage);
            requestDisplayInAppMessage();
        }
    }

    public boolean requestDisplayInAppMessage() {
        InAppMessageOperation inAppMessageOperationBeforeInAppMessageDisplayed;
        try {
            Activity activity = this.mActivity;
            if (activity == null) {
                if (!this.inAppMessageStack.empty()) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda52
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeInAppMessageManager.requestDisplayInAppMessage$lambda$24();
                        }
                    }, 6, (Object) null);
                    this.unregisteredInAppMessage = this.inAppMessageStack.pop();
                } else {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda54
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeInAppMessageManager.requestDisplayInAppMessage$lambda$25();
                        }
                    }, 7, (Object) null);
                }
                return false;
            }
            if (this.displayingInAppMessage.get()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda55
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.requestDisplayInAppMessage$lambda$26();
                    }
                }, 7, (Object) null);
                return false;
            }
            if (this.inAppMessageStack.isEmpty()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda56
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.requestDisplayInAppMessage$lambda$27();
                    }
                }, 7, (Object) null);
                return false;
            }
            final IInAppMessage iInAppMessagePop = this.inAppMessageStack.pop();
            if (!iInAppMessagePop.isControl()) {
                IInAppMessageManagerListener inAppMessageManagerListener = getInAppMessageManagerListener();
                Intrinsics.checkNotNull(iInAppMessagePop);
                inAppMessageOperationBeforeInAppMessageDisplayed = inAppMessageManagerListener.beforeInAppMessageDisplayed(iInAppMessagePop);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.requestDisplayInAppMessage$lambda$28();
                    }
                }, 7, (Object) null);
                IInAppMessageManagerListener controlInAppMessageManagerListener = getControlInAppMessageManagerListener();
                Intrinsics.checkNotNull(iInAppMessagePop);
                inAppMessageOperationBeforeInAppMessageDisplayed = controlInAppMessageManagerListener.beforeInAppMessageDisplayed(iInAppMessagePop);
            }
            int i = WhenMappings.$EnumSwitchMapping$0[inAppMessageOperationBeforeInAppMessageDisplayed.ordinal()];
            if (i == 1) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.requestDisplayInAppMessage$lambda$29();
                    }
                }, 7, (Object) null);
                BackgroundInAppMessagePreparer.prepareInAppMessageForDisplay(iInAppMessagePop);
                return true;
            }
            if (i == 2) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.requestDisplayInAppMessage$lambda$30();
                    }
                }, 7, (Object) null);
                this.inAppMessageStack.push(iInAppMessagePop);
                return false;
            }
            if (i == 3) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.requestDisplayInAppMessage$lambda$31();
                    }
                }, 7, (Object) null);
                return false;
            }
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            InAppMessageEvent inAppMessageEvent = this.inAppMessageEventMap.get(iInAppMessagePop);
            if (inAppMessageEvent != null) {
                BrazeInternal brazeInternal = BrazeInternal.INSTANCE;
                Context applicationContext = activity.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                brazeInternal.reenqueueInAppMessage(applicationContext, inAppMessageEvent);
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.requestDisplayInAppMessage$lambda$32();
                    }
                }, 7, (Object) null);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.requestDisplayInAppMessage$lambda$33(iInAppMessagePop);
                    }
                }, 7, (Object) null);
            }
            return false;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda53
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInAppMessageManager.requestDisplayInAppMessage$lambda$34();
                }
            }, 4, (Object) null);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestDisplayInAppMessage$lambda$24() {
        return "No activity is currently registered to receive in-app messages. Saving in-app message as unregistered in-app message. It will automatically be displayed when the next activity registers to receive in-app messages.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestDisplayInAppMessage$lambda$25() {
        return "No activity is currently registered to receive in-app messages and the in-app message stack is empty. Doing nothing.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestDisplayInAppMessage$lambda$26() {
        return "A in-app message is currently being displayed. Ignoring request to display in-app message.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestDisplayInAppMessage$lambda$27() {
        return "The in-app message stack is empty. No in-app message will be displayed.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestDisplayInAppMessage$lambda$28() {
        return "Using the control in-app message manager listener.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestDisplayInAppMessage$lambda$29() {
        return "The IInAppMessageManagerListener method beforeInAppMessageDisplayed returned DISPLAY_NOW. The in-app message will be displayed.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestDisplayInAppMessage$lambda$30() {
        return "The IInAppMessageManagerListener method beforeInAppMessageDisplayed returned DISPLAY_LATER. The in-app message will be pushed back onto the stack.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestDisplayInAppMessage$lambda$31() {
        return "The IInAppMessageManagerListener method beforeInAppMessageDisplayed returned DISCARD. The in-app message will not be displayed and will not be put back on the stack.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestDisplayInAppMessage$lambda$32() {
        return "The IInAppMessageManagerListener method beforeInAppMessageDisplayed returned REENQUEUE. The in-app message will not be displayed and will be marked as eligible for next time.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestDisplayInAppMessage$lambda$33(IInAppMessage iInAppMessage) {
        return "An in-app message was requested to be re-enqueued, but it was not found. Discarding instead. In-app message = " + iInAppMessage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestDisplayInAppMessage$lambda$34() {
        return "Error running requestDisplayInAppMessage";
    }

    public void hideCurrentlyDisplayingInAppMessage(boolean dismissed) {
        setShouldNextUnregisterBeSkipped(false);
        IInAppMessageViewWrapper iInAppMessageViewWrapper = this.inAppMessageViewWrapper;
        if (iInAppMessageViewWrapper != null) {
            if (dismissed) {
                this.inAppMessageViewLifecycleListener.onDismissed(iInAppMessageViewWrapper.getInAppMessageView(), iInAppMessageViewWrapper.getInAppMessage());
            }
            BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, Dispatchers.getMain(), null, new C09991(iInAppMessageViewWrapper, null), 2, null);
        }
    }

    /* JADX INFO: renamed from: com.braze.ui.inappmessage.BrazeInAppMessageManager$hideCurrentlyDisplayingInAppMessage$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.braze.ui.inappmessage.BrazeInAppMessageManager$hideCurrentlyDisplayingInAppMessage$1", f = "BrazeInAppMessageManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C09991 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ IInAppMessageViewWrapper $inAppMessageWrapperView;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C09991(IInAppMessageViewWrapper iInAppMessageViewWrapper, Continuation<? super C09991> continuation) {
            super(2, continuation);
            this.$inAppMessageWrapperView = iInAppMessageViewWrapper;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C09991(this.$inAppMessageWrapperView, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C09991) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$inAppMessageWrapperView.close();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String resetAfterInAppMessageClose$lambda$35() {
        return "Resetting after in-app message close.";
    }

    public void resetAfterInAppMessageClose() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda31
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeInAppMessageManager.resetAfterInAppMessageClose$lambda$35();
            }
        }, 6, (Object) null);
        this.inAppMessageViewWrapper = null;
        Activity activity = this.mActivity;
        final Integer num = this.originalOrientation;
        this.displayingInAppMessage.set(false);
        if (activity == null || num == null) {
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda32
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeInAppMessageManager.resetAfterInAppMessageClose$lambda$36(num);
            }
        }, 7, (Object) null);
        ViewUtils.setActivityRequestedOrientation(activity, num.intValue());
        this.originalOrientation = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String resetAfterInAppMessageClose$lambda$36(Integer num) {
        return "Setting requested orientation to original orientation " + num;
    }

    public boolean getIsCurrentlyDisplayingInAppMessage() {
        return this.displayingInAppMessage.get();
    }

    /* JADX WARN: Code duplicated, block: B:73:0x01df A[Catch: all -> 0x02b4, TryCatch #0 {all -> 0x02b4, blocks: (B:71:0x01db, B:73:0x01df, B:75:0x01e5, B:77:0x01fd, B:82:0x027d, B:84:0x0283, B:86:0x02a0, B:78:0x023a, B:80:0x023e, B:81:0x0261, B:87:0x02a4, B:88:0x02ab, B:89:0x02ac, B:90:0x02b3), top: B:108:0x01db }] */
    /* JADX WARN: Code duplicated, block: B:75:0x01e5 A[Catch: all -> 0x02b4, TryCatch #0 {all -> 0x02b4, blocks: (B:71:0x01db, B:73:0x01df, B:75:0x01e5, B:77:0x01fd, B:82:0x027d, B:84:0x0283, B:86:0x02a0, B:78:0x023a, B:80:0x023e, B:81:0x0261, B:87:0x02a4, B:88:0x02ab, B:89:0x02ac, B:90:0x02b3), top: B:108:0x01db }] */
    /* JADX WARN: Code duplicated, block: B:77:0x01fd A[Catch: all -> 0x02b4, TryCatch #0 {all -> 0x02b4, blocks: (B:71:0x01db, B:73:0x01df, B:75:0x01e5, B:77:0x01fd, B:82:0x027d, B:84:0x0283, B:86:0x02a0, B:78:0x023a, B:80:0x023e, B:81:0x0261, B:87:0x02a4, B:88:0x02ab, B:89:0x02ac, B:90:0x02b3), top: B:108:0x01db }] */
    /* JADX WARN: Code duplicated, block: B:78:0x023a A[Catch: all -> 0x02b4, TryCatch #0 {all -> 0x02b4, blocks: (B:71:0x01db, B:73:0x01df, B:75:0x01e5, B:77:0x01fd, B:82:0x027d, B:84:0x0283, B:86:0x02a0, B:78:0x023a, B:80:0x023e, B:81:0x0261, B:87:0x02a4, B:88:0x02ab, B:89:0x02ac, B:90:0x02b3), top: B:108:0x01db }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    /* JADX WARN: Code duplicated, block: B:80:0x023e A[Catch: all -> 0x02b4, TryCatch #0 {all -> 0x02b4, blocks: (B:71:0x01db, B:73:0x01df, B:75:0x01e5, B:77:0x01fd, B:82:0x027d, B:84:0x0283, B:86:0x02a0, B:78:0x023a, B:80:0x023e, B:81:0x0261, B:87:0x02a4, B:88:0x02ab, B:89:0x02ac, B:90:0x02b3), top: B:108:0x01db }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0261 A[Catch: all -> 0x02b4, TryCatch #0 {all -> 0x02b4, blocks: (B:71:0x01db, B:73:0x01df, B:75:0x01e5, B:77:0x01fd, B:82:0x027d, B:84:0x0283, B:86:0x02a0, B:78:0x023a, B:80:0x023e, B:81:0x0261, B:87:0x02a4, B:88:0x02ab, B:89:0x02ac, B:90:0x02b3), top: B:108:0x01db }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0283 A[Catch: all -> 0x02b4, TryCatch #0 {all -> 0x02b4, blocks: (B:71:0x01db, B:73:0x01df, B:75:0x01e5, B:77:0x01fd, B:82:0x027d, B:84:0x0283, B:86:0x02a0, B:78:0x023a, B:80:0x023e, B:81:0x0261, B:87:0x02a4, B:88:0x02ab, B:89:0x02ac, B:90:0x02b3), top: B:108:0x01db }] */
    /* JADX WARN: Code duplicated, block: B:85:0x029e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:86:0x02a0 A[Catch: all -> 0x02b4, TryCatch #0 {all -> 0x02b4, blocks: (B:71:0x01db, B:73:0x01df, B:75:0x01e5, B:77:0x01fd, B:82:0x027d, B:84:0x0283, B:86:0x02a0, B:78:0x023a, B:80:0x023e, B:81:0x0261, B:87:0x02a4, B:88:0x02ab, B:89:0x02ac, B:90:0x02b3), top: B:108:0x01db }] */
    /* JADX WARN: Code duplicated, block: B:87:0x02a4 A[Catch: all -> 0x02b4, TryCatch #0 {all -> 0x02b4, blocks: (B:71:0x01db, B:73:0x01df, B:75:0x01e5, B:77:0x01fd, B:82:0x027d, B:84:0x0283, B:86:0x02a0, B:78:0x023a, B:80:0x023e, B:81:0x0261, B:87:0x02a4, B:88:0x02ab, B:89:0x02ac, B:90:0x02b3), top: B:108:0x01db }] */
    /* JADX WARN: Code duplicated, block: B:89:0x02ac A[Catch: all -> 0x02b4, TryCatch #0 {all -> 0x02b4, blocks: (B:71:0x01db, B:73:0x01df, B:75:0x01e5, B:77:0x01fd, B:82:0x027d, B:84:0x0283, B:86:0x02a0, B:78:0x023a, B:80:0x023e, B:81:0x0261, B:87:0x02a4, B:88:0x02ab, B:89:0x02ac, B:90:0x02b3), top: B:108:0x01db }] */
    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Object displayInAppMessage$suspendImpl(BrazeInAppMessageManager brazeInAppMessageManager, IInAppMessage iInAppMessage, boolean z, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        Throwable th;
        final BrazeInAppMessageManager brazeInAppMessageManager2;
        final Activity activity;
        MainCoroutineDispatcher main;
        Object obj;
        BrazeConfigurationProvider brazeConfigurationProvider;
        IInAppMessage iInAppMessage2;
        View view;
        Animation openingAnimation;
        Animation closingAnimation;
        IInAppMessageViewWrapperFactory inAppMessageViewWrapperFactory;
        final IInAppMessageViewWrapper iInAppMessageViewWrapperCreateInAppMessageViewWrapper;
        final IInAppMessage iInAppMessage3 = iInAppMessage;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = brazeInAppMessageManager.new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = brazeInAppMessageManager.new AnonymousClass1(continuation);
        }
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object obj2 = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass2.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj2);
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInAppMessageManager.displayInAppMessage$lambda$37(iInAppMessage3);
                }
            }, 6, (Object) null);
            if (!brazeInAppMessageManager.displayingInAppMessage.compareAndSet(false, true)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda20
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.displayInAppMessage$lambda$38();
                    }
                }, 7, (Object) null);
                brazeInAppMessageManager.inAppMessageStack.push(iInAppMessage3);
                return Unit.INSTANCE;
            }
            try {
                activity = brazeInAppMessageManager.mActivity;
                if (activity == null) {
                    brazeInAppMessageManager.carryoverInAppMessage = iInAppMessage3;
                    throw new Exception("No Activity is currently registered to receive in-app messages. Registering in-app message as carry-over in-app message. It will automatically be displayed when the next Activity registers to receive in-app messages.");
                }
                long expirationTimestamp = iInAppMessage.getExpirationTimestamp();
                if (expirationTimestamp > 0) {
                    long jNowInMilliseconds = DateTimeUtils.nowInMilliseconds();
                    if (jNowInMilliseconds > expirationTimestamp) {
                        throw new Exception("In-app message is expired. Doing nothing. Expiration: " + expirationTimestamp + ". Current time: " + jNowInMilliseconds);
                    }
                } else {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda21
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeInAppMessageManager.displayInAppMessage$lambda$39();
                        }
                    }, 7, (Object) null);
                }
                if (!brazeInAppMessageManager.verifyOrientationStatus(iInAppMessage)) {
                    throw new Exception("Current orientation did not match specified orientation for in-app message. Doing nothing.");
                }
                BrazeConfigurationProvider brazeConfigurationProvider2 = brazeInAppMessageManager.configurationProvider;
                if (brazeConfigurationProvider2 == null) {
                    throw new Exception("configurationProvider is null. The in-app message will not be displayed and will not beput back on the stack.");
                }
                if (!brazeInAppMessageManager.isInAppMessageForTheSameUser(iInAppMessage3, brazeInAppMessageManager.currentUserId)) {
                    throw new Exception("The last identifier user " + brazeInAppMessageManager.currentUserId + " does not match the in-app message's user. The in-app message will not be displayed and will not be put back on the stack.");
                }
                if (iInAppMessage.isControl()) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda23
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeInAppMessageManager.displayInAppMessage$lambda$40();
                        }
                    }, 7, (Object) null);
                    iInAppMessage.logImpression();
                    brazeInAppMessageManager.resetAfterInAppMessageClose();
                    return Unit.INSTANCE;
                }
                if (BrazeActionUtils.containsInvalidBrazeAction(iInAppMessage)) {
                    InAppMessageEvent inAppMessageEvent = brazeInAppMessageManager.inAppMessageEventMap.get(iInAppMessage3);
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda24
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeInAppMessageManager.displayInAppMessage$lambda$41();
                        }
                    }, 6, (Object) null);
                    if (inAppMessageEvent != null) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda25
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return BrazeInAppMessageManager.displayInAppMessage$lambda$42();
                            }
                        }, 6, (Object) null);
                        Context applicationContext = activity.getApplicationContext();
                        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                        BrazeInternal.retryInAppMessage(applicationContext, inAppMessageEvent);
                    }
                    brazeInAppMessageManager.resetAfterInAppMessageClose();
                    return Unit.INSTANCE;
                }
                if (INSTANCE.containsPushPermissionPrompt(iInAppMessage3) && !PermissionUtils.wouldPushPermissionPromptDisplay(activity)) {
                    InAppMessageEvent inAppMessageEvent2 = brazeInAppMessageManager.inAppMessageEventMap.get(iInAppMessage3);
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda26
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeInAppMessageManager.displayInAppMessage$lambda$43();
                        }
                    }, 6, (Object) null);
                    if (inAppMessageEvent2 != null) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda27
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return BrazeInAppMessageManager.displayInAppMessage$lambda$44();
                            }
                        }, 6, (Object) null);
                        Context applicationContext2 = activity.getApplicationContext();
                        Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
                        BrazeInternal.retryInAppMessage(applicationContext2, inAppMessageEvent2);
                    }
                    brazeInAppMessageManager.resetAfterInAppMessageClose();
                    return Unit.INSTANCE;
                }
                IInAppMessageViewFactory inAppMessageViewFactory = brazeInAppMessageManager.getInAppMessageViewFactory(iInAppMessage);
                if (inAppMessageViewFactory == null) {
                    throw new Exception("ViewFactory from getInAppMessageViewFactory was null.");
                }
                int i2 = WhenMappings.$EnumSwitchMapping$1[iInAppMessage.getMessageType().ordinal()];
                if (i2 == 1 || i2 == 2) {
                    main = Dispatchers.getMain();
                } else {
                    main = Dispatchers.getIO();
                }
                BrazeInAppMessageManager$displayInAppMessage$inAppMessageView$1 brazeInAppMessageManager$displayInAppMessage$inAppMessageView$1 = new BrazeInAppMessageManager$displayInAppMessage$inAppMessageView$1(inAppMessageViewFactory, activity, iInAppMessage3, null);
                anonymousClass2.L$0 = brazeInAppMessageManager;
                anonymousClass2.L$1 = iInAppMessage3;
                anonymousClass2.L$2 = activity;
                anonymousClass2.L$3 = brazeConfigurationProvider2;
                anonymousClass2.label = 1;
                Object objWithContext = BuildersKt.withContext(main, brazeInAppMessageManager$displayInAppMessage$inAppMessageView$1, anonymousClass2);
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                obj = objWithContext;
                brazeConfigurationProvider = brazeConfigurationProvider2;
                brazeInAppMessageManager2 = brazeInAppMessageManager;
                iInAppMessage2 = iInAppMessage3;
                view = (View) obj;
                if (view != 0) {
                    throw new Exception("The in-app message view returned from the IInAppMessageViewFactory was null. The in-app message will not be displayed and will not be put back on the stack.");
                }
                if (view.getParent() == null) {
                    throw new Exception("The in-app message view returned from the IInAppMessageViewFactory already has a parent. This is a sign that the view is being reused. The IInAppMessageViewFactory method createInAppMessageViewmust return a new view without a parent. The in-app message will not be displayed and will not be put back on the stack.");
                }
                openingAnimation = brazeInAppMessageManager2.getInAppMessageAnimationFactory().getOpeningAnimation(iInAppMessage2);
                closingAnimation = brazeInAppMessageManager2.getInAppMessageAnimationFactory().getClosingAnimation(iInAppMessage2);
                inAppMessageViewWrapperFactory = brazeInAppMessageManager2.getInAppMessageViewWrapperFactory();
                if (view instanceof IInAppMessageImmersiveView) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager2, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda28
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeInAppMessageManager.displayInAppMessage$lambda$45();
                        }
                    }, 7, (Object) null);
                    IInAppMessageImmersiveView iInAppMessageImmersiveView = (IInAppMessageImmersiveView) view;
                    Intrinsics.checkNotNull(iInAppMessage2, "null cannot be cast to non-null type com.braze.models.inappmessage.InAppMessageImmersiveBase");
                    iInAppMessageViewWrapperCreateInAppMessageViewWrapper = inAppMessageViewWrapperFactory.createInAppMessageViewWrapper(view, iInAppMessage2, brazeInAppMessageManager2.inAppMessageViewLifecycleListener, brazeConfigurationProvider, openingAnimation, closingAnimation, iInAppMessageImmersiveView.getMessageClickableView(), iInAppMessageImmersiveView.getMessageButtonViews(((InAppMessageImmersiveBase) iInAppMessage2).getMessageButtons().size()), iInAppMessageImmersiveView.getMessageCloseButtonView());
                } else if (view instanceof IInAppMessageView) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager2, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda29
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeInAppMessageManager.displayInAppMessage$lambda$46();
                        }
                    }, 7, (Object) null);
                    iInAppMessageViewWrapperCreateInAppMessageViewWrapper = inAppMessageViewWrapperFactory.createInAppMessageViewWrapper(view, iInAppMessage2, brazeInAppMessageManager2.inAppMessageViewLifecycleListener, brazeConfigurationProvider, openingAnimation, closingAnimation, ((IInAppMessageView) view).getMessageClickableView());
                } else {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager2, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda16
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeInAppMessageManager.displayInAppMessage$lambda$47();
                        }
                    }, 7, (Object) null);
                    iInAppMessageViewWrapperCreateInAppMessageViewWrapper = inAppMessageViewWrapperFactory.createInAppMessageViewWrapper(view, iInAppMessage2, brazeInAppMessageManager2.inAppMessageViewLifecycleListener, brazeConfigurationProvider, openingAnimation, closingAnimation, view);
                }
                brazeInAppMessageManager2.inAppMessageViewWrapper = iInAppMessageViewWrapperCreateInAppMessageViewWrapper;
                if (view instanceof InAppMessageHtmlBaseView) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager2, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda17
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeInAppMessageManager.displayInAppMessage$lambda$48();
                        }
                    }, 7, (Object) null);
                    ((InAppMessageHtmlBaseView) view).setHtmlPageFinishedListener(new IWebViewClientStateListener() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda18
                        @Override // com.braze.ui.inappmessage.listeners.IWebViewClientStateListener
                        public final void onPageFinished() {
                            BrazeInAppMessageManager.displayInAppMessage$lambda$51(iInAppMessageViewWrapperCreateInAppMessageViewWrapper, brazeInAppMessageManager2, activity);
                        }
                    });
                } else if (iInAppMessageViewWrapperCreateInAppMessageViewWrapper != null) {
                    iInAppMessageViewWrapperCreateInAppMessageViewWrapper.open(activity);
                }
            } catch (Throwable th2) {
                th = th2;
                brazeInAppMessageManager2 = brazeInAppMessageManager;
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager2, BrazeLogger.Priority.E, th, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda19
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.displayInAppMessage$lambda$52(iInAppMessage3);
                    }
                }, 4, (Object) null);
                brazeInAppMessageManager2.resetAfterInAppMessageClose();
                return Unit.INSTANCE;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            BrazeConfigurationProvider brazeConfigurationProvider3 = (BrazeConfigurationProvider) anonymousClass2.L$3;
            Activity activity2 = (Activity) anonymousClass2.L$2;
            IInAppMessage iInAppMessage4 = (IInAppMessage) anonymousClass2.L$1;
            BrazeInAppMessageManager brazeInAppMessageManager3 = (BrazeInAppMessageManager) anonymousClass2.L$0;
            try {
                ResultKt.throwOnFailure(obj2);
                obj = obj2;
                brazeConfigurationProvider = brazeConfigurationProvider3;
                activity = activity2;
                iInAppMessage2 = iInAppMessage4;
                brazeInAppMessageManager2 = brazeInAppMessageManager3;
                try {
                    view = (View) obj;
                    if (view != 0) {
                        throw new Exception("The in-app message view returned from the IInAppMessageViewFactory was null. The in-app message will not be displayed and will not be put back on the stack.");
                    }
                    if (view.getParent() == null) {
                        throw new Exception("The in-app message view returned from the IInAppMessageViewFactory already has a parent. This is a sign that the view is being reused. The IInAppMessageViewFactory method createInAppMessageViewmust return a new view without a parent. The in-app message will not be displayed and will not be put back on the stack.");
                    }
                    openingAnimation = brazeInAppMessageManager2.getInAppMessageAnimationFactory().getOpeningAnimation(iInAppMessage2);
                    closingAnimation = brazeInAppMessageManager2.getInAppMessageAnimationFactory().getClosingAnimation(iInAppMessage2);
                    inAppMessageViewWrapperFactory = brazeInAppMessageManager2.getInAppMessageViewWrapperFactory();
                    if (view instanceof IInAppMessageImmersiveView) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager2, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda28
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return BrazeInAppMessageManager.displayInAppMessage$lambda$45();
                            }
                        }, 7, (Object) null);
                        IInAppMessageImmersiveView iInAppMessageImmersiveView2 = (IInAppMessageImmersiveView) view;
                        Intrinsics.checkNotNull(iInAppMessage2, "null cannot be cast to non-null type com.braze.models.inappmessage.InAppMessageImmersiveBase");
                        iInAppMessageViewWrapperCreateInAppMessageViewWrapper = inAppMessageViewWrapperFactory.createInAppMessageViewWrapper(view, iInAppMessage2, brazeInAppMessageManager2.inAppMessageViewLifecycleListener, brazeConfigurationProvider, openingAnimation, closingAnimation, iInAppMessageImmersiveView2.getMessageClickableView(), iInAppMessageImmersiveView2.getMessageButtonViews(((InAppMessageImmersiveBase) iInAppMessage2).getMessageButtons().size()), iInAppMessageImmersiveView2.getMessageCloseButtonView());
                    } else if (view instanceof IInAppMessageView) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager2, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda29
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return BrazeInAppMessageManager.displayInAppMessage$lambda$46();
                            }
                        }, 7, (Object) null);
                        iInAppMessageViewWrapperCreateInAppMessageViewWrapper = inAppMessageViewWrapperFactory.createInAppMessageViewWrapper(view, iInAppMessage2, brazeInAppMessageManager2.inAppMessageViewLifecycleListener, brazeConfigurationProvider, openingAnimation, closingAnimation, ((IInAppMessageView) view).getMessageClickableView());
                    } else {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager2, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda16
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return BrazeInAppMessageManager.displayInAppMessage$lambda$47();
                            }
                        }, 7, (Object) null);
                        iInAppMessageViewWrapperCreateInAppMessageViewWrapper = inAppMessageViewWrapperFactory.createInAppMessageViewWrapper(view, iInAppMessage2, brazeInAppMessageManager2.inAppMessageViewLifecycleListener, brazeConfigurationProvider, openingAnimation, closingAnimation, view);
                    }
                    brazeInAppMessageManager2.inAppMessageViewWrapper = iInAppMessageViewWrapperCreateInAppMessageViewWrapper;
                    if (view instanceof InAppMessageHtmlBaseView) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager2, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda17
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return BrazeInAppMessageManager.displayInAppMessage$lambda$48();
                            }
                        }, 7, (Object) null);
                        ((InAppMessageHtmlBaseView) view).setHtmlPageFinishedListener(new IWebViewClientStateListener() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda18
                            @Override // com.braze.ui.inappmessage.listeners.IWebViewClientStateListener
                            public final void onPageFinished() {
                                BrazeInAppMessageManager.displayInAppMessage$lambda$51(iInAppMessageViewWrapperCreateInAppMessageViewWrapper, brazeInAppMessageManager2, activity);
                            }
                        });
                    } else if (iInAppMessageViewWrapperCreateInAppMessageViewWrapper != null) {
                        iInAppMessageViewWrapperCreateInAppMessageViewWrapper.open(activity);
                    }
                } catch (Throwable th3) {
                    th = th3;
                    iInAppMessage3 = iInAppMessage2;
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager2, BrazeLogger.Priority.E, th, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda19
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeInAppMessageManager.displayInAppMessage$lambda$52(iInAppMessage3);
                        }
                    }, 4, (Object) null);
                    brazeInAppMessageManager2.resetAfterInAppMessageClose();
                }
            } catch (Throwable th4) {
                iInAppMessage3 = iInAppMessage4;
                brazeInAppMessageManager2 = brazeInAppMessageManager3;
                th = th4;
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager2, BrazeLogger.Priority.E, th, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda19
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.displayInAppMessage$lambda$52(iInAppMessage3);
                    }
                }, 4, (Object) null);
                brazeInAppMessageManager2.resetAfterInAppMessageClose();
                return Unit.INSTANCE;
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String displayInAppMessage$lambda$37(IInAppMessage iInAppMessage) {
        return "Attempting to display in-app message with payload: " + JsonUtils.getPrettyPrintedString(iInAppMessage.getJsonKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String displayInAppMessage$lambda$38() {
        return "A in-app message is currently being displayed. Adding in-app message back on the stack.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String displayInAppMessage$lambda$39() {
        return "Expiration timestamp not defined. Continuing.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String displayInAppMessage$lambda$40() {
        return "Not displaying control in-app message. Logging impression and ending display execution.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String displayInAppMessage$lambda$41() {
        return "Cannot show message containing an invalid Braze Action.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String displayInAppMessage$lambda$42() {
        return "Attempting to perform any fallback actions.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String displayInAppMessage$lambda$43() {
        return "Cannot show message containing a Push Prompt due to existing push prompt status, Android API version, or Target SDK level.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String displayInAppMessage$lambda$44() {
        return "Attempting to perform any fallback actions.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String displayInAppMessage$lambda$45() {
        return "Creating view wrapper for immersive in-app message.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String displayInAppMessage$lambda$46() {
        return "Creating view wrapper for base in-app message.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String displayInAppMessage$lambda$47() {
        return "Creating view wrapper for in-app message.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String displayInAppMessage$lambda$48() {
        return "In-app message view includes HTML. Delaying display until the content has finished loading.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayInAppMessage$lambda$51(IInAppMessageViewWrapper iInAppMessageViewWrapper, BrazeInAppMessageManager brazeInAppMessageManager, Activity activity) {
        if (iInAppMessageViewWrapper != null) {
            try {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda34
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.displayInAppMessage$lambda$51$lambda$49();
                    }
                }, 7, (Object) null);
                iInAppMessageViewWrapper.open(activity);
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda35
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeInAppMessageManager.displayInAppMessage$lambda$51$lambda$50();
                    }
                }, 4, (Object) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String displayInAppMessage$lambda$51$lambda$49() {
        return "Page has finished loading. Opening in-app message view wrapper.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String displayInAppMessage$lambda$51$lambda$50() {
        return "Failed to open view wrapper in page finished listener";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String displayInAppMessage$lambda$52(IInAppMessage iInAppMessage) {
        return "Could not display in-app message with payload: " + JsonUtils.getPrettyPrintedString(iInAppMessage.getJsonKey());
    }

    private final IEventSubscriber<InAppMessageEvent> createInAppMessageEventSubscriber() {
        return new IEventSubscriber() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda43
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                BrazeInAppMessageManager.createInAppMessageEventSubscriber$lambda$53(this.f$0, (InAppMessageEvent) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createInAppMessageEventSubscriber$lambda$53(BrazeInAppMessageManager brazeInAppMessageManager, InAppMessageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        IInAppMessage inAppMessage = event.getInAppMessage();
        brazeInAppMessageManager.inAppMessageEventMap.put(inAppMessage, event);
        brazeInAppMessageManager.addInAppMessage(inAppMessage);
    }

    private final IEventSubscriber<BrazeUserChangeEvent> createBrazeUserChangeEventSubscriber(Context context) {
        return new IEventSubscriber() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda14
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                BrazeInAppMessageManager.createBrazeUserChangeEventSubscriber$lambda$57(this.f$0, (BrazeUserChangeEvent) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createBrazeUserChangeEventSubscriber$lambda$57(final BrazeInAppMessageManager brazeInAppMessageManager, final BrazeUserChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda40
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeInAppMessageManager.createBrazeUserChangeEventSubscriber$lambda$57$lambda$54(event);
            }
        }, 6, (Object) null);
        final String currentUserId = event.getCurrentUserId();
        brazeInAppMessageManager.currentUserId = currentUserId;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeInAppMessageManager, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda41
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeInAppMessageManager.createBrazeUserChangeEventSubscriber$lambda$57$lambda$55(currentUserId);
            }
        }, 7, (Object) null);
        CollectionsKt.removeAll((List) brazeInAppMessageManager.inAppMessageStack, new Function1() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda42
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(BrazeInAppMessageManager.createBrazeUserChangeEventSubscriber$lambda$57$lambda$56(this.f$0, currentUserId, (IInAppMessage) obj));
            }
        });
        if (!brazeInAppMessageManager.isInAppMessageForTheSameUser(brazeInAppMessageManager.carryoverInAppMessage, currentUserId)) {
            brazeInAppMessageManager.carryoverInAppMessage = null;
        }
        if (!brazeInAppMessageManager.isInAppMessageForTheSameUser(brazeInAppMessageManager.unregisteredInAppMessage, currentUserId)) {
            brazeInAppMessageManager.unregisteredInAppMessage = null;
        }
        if (brazeInAppMessageManager.displayingInAppMessage.get()) {
            brazeInAppMessageManager.hideCurrentlyDisplayingInAppMessage(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String createBrazeUserChangeEventSubscriber$lambda$57$lambda$54(BrazeUserChangeEvent brazeUserChangeEvent) {
        return "InAppMessage manager handling new current user id: '" + brazeUserChangeEvent + '\'';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String createBrazeUserChangeEventSubscriber$lambda$57$lambda$55(String str) {
        return "Removing in-app messages not from user " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean createBrazeUserChangeEventSubscriber$lambda$57$lambda$56(BrazeInAppMessageManager brazeInAppMessageManager, String str, IInAppMessage iInAppMessage) {
        return !brazeInAppMessageManager.isInAppMessageForTheSameUser(iInAppMessage, str);
    }

    public boolean verifyOrientationStatus(IInAppMessage inAppMessage) {
        Intrinsics.checkNotNullParameter(inAppMessage, "inAppMessage");
        Activity activity = this.mActivity;
        Orientation orientation = inAppMessage.getOrientation();
        if (activity == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda36
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInAppMessageManager.verifyOrientationStatus$lambda$58();
                }
            }, 6, (Object) null);
        } else if (ViewUtils.isRunningOnTablet(activity)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda37
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInAppMessageManager.verifyOrientationStatus$lambda$59();
                }
            }, 7, (Object) null);
        } else if (orientation == Orientation.ANY) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda38
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInAppMessageManager.verifyOrientationStatus$lambda$60();
                }
            }, 7, (Object) null);
        } else {
            if (!ViewUtils.isCurrentOrientationValid(activity.getResources().getConfiguration().orientation, orientation)) {
                return false;
            }
            if (this.originalOrientation != null) {
                return true;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda39
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeInAppMessageManager.verifyOrientationStatus$lambda$61();
                }
            }, 7, (Object) null);
            this.originalOrientation = Integer.valueOf(activity.getRequestedOrientation());
            ViewUtils.setActivityRequestedOrientation(activity, 14);
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String verifyOrientationStatus$lambda$58() {
        return "Cannot verify orientation status with null Activity.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String verifyOrientationStatus$lambda$59() {
        return "Running on tablet. In-app message can be displayed in any orientation.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String verifyOrientationStatus$lambda$60() {
        return "Any orientation specified. In-app message can be displayed in any orientation.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String verifyOrientationStatus$lambda$61() {
        return "Requesting orientation lock.";
    }

    public boolean isInAppMessageForTheSameUser(IInAppMessage inAppMessage, String currentUserId) {
        Intrinsics.checkNotNullParameter(currentUserId, "currentUserId");
        if (inAppMessage == null) {
            return true;
        }
        InAppMessageEvent inAppMessageEvent = this.inAppMessageEventMap.get(inAppMessage);
        String userId = inAppMessageEvent != null ? inAppMessageEvent.getUserId() : null;
        return userId == null || Intrinsics.areEqual(userId, currentUserId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String pauseWebviewIfNecessary$lambda$62() {
        return "Pausing InAppMessage WebView";
    }

    public final void pauseWebviewIfNecessary$android_sdk_ui_release() {
        WebView messageWebView;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda51
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeInAppMessageManager.pauseWebviewIfNecessary$lambda$62();
            }
        }, 7, (Object) null);
        IInAppMessageViewWrapper iInAppMessageViewWrapper = this.inAppMessageViewWrapper;
        if (iInAppMessageViewWrapper != null) {
            View inAppMessageView = iInAppMessageViewWrapper.getInAppMessageView();
            if (!(inAppMessageView instanceof InAppMessageHtmlBaseView) || (messageWebView = ((InAppMessageHtmlBaseView) inAppMessageView).getMessageWebView()) == null) {
                return;
            }
            messageWebView.onPause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String resumeWebviewIfNecessary$lambda$63() {
        return "Resuming InAppMessage WebView";
    }

    public final void resumeWebviewIfNecessary$android_sdk_ui_release() {
        WebView messageWebView;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.BrazeInAppMessageManager$$ExternalSyntheticLambda30
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeInAppMessageManager.resumeWebviewIfNecessary$lambda$63();
            }
        }, 7, (Object) null);
        IInAppMessageViewWrapper iInAppMessageViewWrapper = this.inAppMessageViewWrapper;
        if (iInAppMessageViewWrapper != null) {
            View inAppMessageView = iInAppMessageViewWrapper.getInAppMessageView();
            if (!(inAppMessageView instanceof InAppMessageHtmlBaseView) || (messageWebView = ((InAppMessageHtmlBaseView) inAppMessageView).getMessageWebView()) == null) {
                return;
            }
            messageWebView.onResume();
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0007H\u0007J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0000¢\u0006\u0002\b\fJ\f\u0010\r\u001a\u00020\u000e*\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;", "", "<init>", "()V", "instanceLock", "Ljava/util/concurrent/locks/ReentrantLock;", "instance", "Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;", "getInstance", "setTestingInstance", "", "manager", "setTestingInstance$android_sdk_ui_release", "containsPushPermissionPrompt", "", "Lcom/braze/models/inappmessage/IInAppMessage;", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final BrazeInAppMessageManager getInstance() {
            if (BrazeInAppMessageManager.instance != null) {
                BrazeInAppMessageManager brazeInAppMessageManager = BrazeInAppMessageManager.instance;
                Intrinsics.checkNotNull(brazeInAppMessageManager, "null cannot be cast to non-null type com.braze.ui.inappmessage.BrazeInAppMessageManager");
                return brazeInAppMessageManager;
            }
            ReentrantLock reentrantLock = BrazeInAppMessageManager.instanceLock;
            reentrantLock.lock();
            try {
                if (BrazeInAppMessageManager.instance == null) {
                    Companion companion = BrazeInAppMessageManager.INSTANCE;
                    BrazeInAppMessageManager.instance = new BrazeInAppMessageManager();
                }
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                BrazeInAppMessageManager brazeInAppMessageManager2 = BrazeInAppMessageManager.instance;
                Intrinsics.checkNotNull(brazeInAppMessageManager2, "null cannot be cast to non-null type com.braze.ui.inappmessage.BrazeInAppMessageManager");
                return brazeInAppMessageManager2;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }

        public final void setTestingInstance$android_sdk_ui_release(BrazeInAppMessageManager manager) {
            Intrinsics.checkNotNullParameter(manager, "manager");
            BrazeInAppMessageManager.instance = manager;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean containsPushPermissionPrompt(IInAppMessage iInAppMessage) {
            if (iInAppMessage instanceof InAppMessageHtml) {
                return ((InAppMessageHtml) iInAppMessage).isPushPrimer();
            }
            return BrazeActionUtils.containsAnyPushPermissionBrazeActions(iInAppMessage);
        }
    }
}

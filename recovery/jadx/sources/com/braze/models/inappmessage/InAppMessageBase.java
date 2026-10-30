package com.braze.models.inappmessage;

import android.graphics.Color;
import android.net.Uri;
import com.braze.enums.inappmessage.ClickAction;
import com.braze.enums.inappmessage.CropType;
import com.braze.enums.inappmessage.DismissType;
import com.braze.enums.inappmessage.MessageType;
import com.braze.enums.inappmessage.Orientation;
import com.braze.enums.inappmessage.TextAlign;
import com.braze.managers.c0;
import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import com.braze.support.n;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b%\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0013\b'\u0018\u0000 \u009d\u00012\u00020\u00012\u00020\u0002:\u0002\u009e\u0001B\t\b\u0010¢\u0006\u0004\b\u0003\u0010\u0004B-\b\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\u0003\u0010\fJ\u001b\u0010\u000f\u001a\u00020\t2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0014\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001b\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001b\u0010\u0010J\u000f\u0010\u001c\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u0015\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\r0\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J#\u0010#\u001a\u00020\u00132\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0!H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010&R\u0016\u0010'\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010)\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R$\u0010+\u001a\u0004\u0018\u00010\r8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R$\u00101\u001a\u0004\u0018\u00010\r8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b1\u0010,\u001a\u0004\b2\u0010.\"\u0004\b3\u00100R(\u00104\u001a\u00020\t8\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0004\b4\u00105\u0012\u0004\b9\u0010\u0004\u001a\u0004\b6\u0010\u001a\"\u0004\b7\u00108R.\u0010:\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0!8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010$R(\u0010?\u001a\u00020\t8\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0004\b?\u00105\u0012\u0004\bB\u0010\u0004\u001a\u0004\b@\u0010\u001a\"\u0004\bA\u00108R(\u0010C\u001a\u00020\t8\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0004\bC\u00105\u0012\u0004\bF\u0010\u0004\u001a\u0004\bD\u0010\u001a\"\u0004\bE\u00108R\"\u0010H\u001a\u00020G8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR*\u0010P\u001a\u00020N2\u0006\u0010O\u001a\u00020N8\u0016@VX\u0096\u000e¢\u0006\u0012\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\"\u0010W\u001a\u00020V8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\"\u0010^\u001a\u00020]8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b^\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR\"\u0010e\u001a\u00020d8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\be\u0010f\u001a\u0004\bg\u0010h\"\u0004\bi\u0010jR\"\u0010l\u001a\u00020k8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bl\u0010m\u001a\u0004\bn\u0010o\"\u0004\bp\u0010qR\"\u0010r\u001a\u00020N8\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\br\u0010Q\u001a\u0004\bs\u0010S\"\u0004\bt\u0010UR\"\u0010u\u001a\u00020N8\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\bu\u0010Q\u001a\u0004\bv\u0010S\"\u0004\bw\u0010UR\"\u0010x\u001a\u00020N8\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\bx\u0010Q\u001a\u0004\by\u0010S\"\u0004\bz\u0010UR\"\u0010{\u001a\u00020N8\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b{\u0010Q\u001a\u0004\b|\u0010S\"\u0004\b}\u0010UR\"\u0010~\u001a\u00020\t8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b~\u00105\u001a\u0004\b~\u0010\u001a\"\u0004\b\u007f\u00108R\u0016\u0010\n\u001a\u00030\u0080\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\n\u0010\u0081\u0001R\u0016\u0010\u000b\u001a\u00030\u0080\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u000b\u0010\u0081\u0001R*\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u0082\u0001\u0010\u0083\u0001\u001a\u0005\b\u0084\u0001\u0010&\"\u0006\b\u0085\u0001\u0010\u0086\u0001R)\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\b\u0010\u0087\u0001\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001\"\u0006\b\u008a\u0001\u0010\u008b\u0001R,\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008c\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u008d\u0001\u0010\u008e\u0001\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001\"\u0006\b\u0091\u0001\u0010\u0092\u0001R(\u0010\u0093\u0001\u001a\u0004\u0018\u00010\r8\u0016@\u0016X\u0096\u000e¢\u0006\u0015\n\u0005\b\u0093\u0001\u0010,\u001a\u0005\b\u0094\u0001\u0010.\"\u0005\b\u0095\u0001\u00100R\u0016\u0010\u0012\u001a\u00020\u00118VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00168VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001R\u0016\u0010\u009a\u0001\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u009a\u0001\u0010\u001aR\u0015\u0010\u009c\u0001\u001a\u0004\u0018\u00010\r8F¢\u0006\u0007\u001a\u0005\b\u009b\u0001\u0010.¨\u0006\u009f\u0001"}, d2 = {"Lcom/braze/models/inappmessage/InAppMessageBase;", "Lcom/braze/models/inappmessage/IInAppMessage;", "Lcom/braze/models/inappmessage/IInAppMessageThemeable;", "<init>", "()V", "Lorg/json/JSONObject;", "json", "Lcom/braze/managers/c0;", "brazeManager", "", "impressionLogged", "clickLogged", "(Lorg/json/JSONObject;Lcom/braze/managers/c0;ZZ)V", "", "buttonId", "handleLogClick", "(Ljava/lang/String;)Z", "Lcom/braze/enums/inappmessage/ClickAction;", "clickAction", "", "setClickBehavior", "(Lcom/braze/enums/inappmessage/ClickAction;)V", "Landroid/net/Uri;", "uri", "(Lcom/braze/enums/inappmessage/ClickAction;Landroid/net/Uri;)V", "logImpression", "()Z", "logClick", "onAfterClosed", "enableDarkTheme", "", "getRemoteAssetPathsForPrefetch", "()Ljava/util/List;", "", "remotePathToLocalAssetMap", "setLocalPrefetchedAssetPaths", "(Ljava/util/Map;)V", "forJsonPut", "()Lorg/json/JSONObject;", "internalClickAction", "Lcom/braze/enums/inappmessage/ClickAction;", "internalUri", "Landroid/net/Uri;", InAppMessageBase.MESSAGE, "Ljava/lang/String;", "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", InAppMessageBase.ICON, "getIcon", "setIcon", "openUriInWebView", "Z", "getOpenUriInWebView", "setOpenUriInWebView", "(Z)V", "getOpenUriInWebView$annotations", InAppMessageBase.EXTRAS, "Ljava/util/Map;", "getExtras", "()Ljava/util/Map;", "setExtras", "animateIn", "getAnimateIn", "setAnimateIn", "getAnimateIn$annotations", "animateOut", "getAnimateOut", "setAnimateOut", "getAnimateOut$annotations", "Lcom/braze/enums/inappmessage/DismissType;", "dismissType", "Lcom/braze/enums/inappmessage/DismissType;", "getDismissType", "()Lcom/braze/enums/inappmessage/DismissType;", "setDismissType", "(Lcom/braze/enums/inappmessage/DismissType;)V", "", "value", "durationInMilliseconds", "I", "getDurationInMilliseconds", "()I", "setDurationInMilliseconds", "(I)V", "Lcom/braze/enums/inappmessage/Orientation;", InAppMessageBase.ORIENTATION, "Lcom/braze/enums/inappmessage/Orientation;", "getOrientation", "()Lcom/braze/enums/inappmessage/Orientation;", "setOrientation", "(Lcom/braze/enums/inappmessage/Orientation;)V", "Lcom/braze/enums/inappmessage/CropType;", "cropType", "Lcom/braze/enums/inappmessage/CropType;", "getCropType", "()Lcom/braze/enums/inappmessage/CropType;", "setCropType", "(Lcom/braze/enums/inappmessage/CropType;)V", "Lcom/braze/enums/inappmessage/TextAlign;", "messageTextAlign", "Lcom/braze/enums/inappmessage/TextAlign;", "getMessageTextAlign", "()Lcom/braze/enums/inappmessage/TextAlign;", "setMessageTextAlign", "(Lcom/braze/enums/inappmessage/TextAlign;)V", "", "expirationTimestamp", "J", "getExpirationTimestamp", "()J", "setExpirationTimestamp", "(J)V", "iconBackgroundColor", "getIconBackgroundColor", "setIconBackgroundColor", "messageTextColor", "getMessageTextColor", "setMessageTextColor", "backgroundColor", "getBackgroundColor", "setBackgroundColor", "iconColor", "getIconColor", "setIconColor", "isTestSend", "setTestSend", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "jsonObject", "Lorg/json/JSONObject;", "getJsonObject", "setJsonObject", "(Lorg/json/JSONObject;)V", "Lcom/braze/managers/c0;", "getBrazeManager", "()Lcom/braze/managers/c0;", "setBrazeManager", "(Lcom/braze/managers/c0;)V", "Lcom/braze/models/theme/a;", "inAppMessageDarkThemeWrapper", "Lcom/braze/models/theme/a;", "getInAppMessageDarkThemeWrapper", "()Lcom/braze/models/theme/a;", "setInAppMessageDarkThemeWrapper", "(Lcom/braze/models/theme/a;)V", "messageExtras", "getMessageExtras", "setMessageExtras", "getClickAction", "()Lcom/braze/enums/inappmessage/ClickAction;", "getUri", "()Landroid/net/Uri;", "isControl", "getTriggerId", "triggerId", "Companion", "com/braze/models/inappmessage/a", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class InAppMessageBase implements IInAppMessage, IInAppMessageThemeable {
    protected static final String ANIMATE_IN = "animate_in";
    protected static final String ANIMATE_OUT = "animate_out";
    public static final String BG_COLOR = "bg_color";
    public static final String CLICK_ACTION = "click_action";
    public static final String CROP_TYPE = "crop_type";
    public static final a Companion = new a();
    public static final String DISMISS_TYPE = "message_close";
    public static final String DURATION = "duration";
    public static final String EXTRAS = "extras";
    public static final String ICON = "icon";
    public static final String ICON_BG_COLOR = "icon_bg_color";
    public static final String ICON_COLOR = "icon_color";
    public static final int INAPP_MESSAGE_DURATION_DEFAULT_MILLIS = 5000;
    public static final int INAPP_MESSAGE_DURATION_MIN_MILLIS = 999;
    public static final String IS_CONTROL = "is_control";
    public static final String IS_TEST_SEND = "is_test_send";
    public static final String MESSAGE = "message";
    public static final String MESSAGE_EXTRAS = "message_extras";
    public static final String MESSAGE_TEXT_ALIGN = "text_align_message";
    public static final String MESSAGE_TEXT_COLOR = "text_color";
    public static final String OPEN_URI_IN_WEBVIEW = "use_webview";
    public static final String ORIENTATION = "orientation";
    public static final String TRIGGER_ID = "trigger_id";
    public static final String TYPE = "type";
    public static final String URI = "uri";
    private boolean animateIn;
    private boolean animateOut;
    private int backgroundColor;
    private c0 brazeManager;
    private final AtomicBoolean clickLogged;
    private CropType cropType;
    private DismissType dismissType;
    private int durationInMilliseconds;
    private long expirationTimestamp;
    private Map<String, String> extras;
    private String icon;
    private int iconBackgroundColor;
    private int iconColor;
    private final AtomicBoolean impressionLogged;
    private com.braze.models.theme.a inAppMessageDarkThemeWrapper;
    private ClickAction internalClickAction;
    private Uri internalUri;
    private boolean isTestSend;
    private JSONObject jsonObject;
    private String message;
    private String messageExtras;
    private TextAlign messageTextAlign;
    private int messageTextColor;
    private boolean openUriInWebView;
    private Orientation orientation;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InAppMessageBase(JSONObject json, c0 brazeManager) {
        this(json, brazeManager, false, false, 12, null);
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _set_durationInMilliseconds_$lambda$0(int i) {
        return "Requested in-app message duration " + i + " is lower than the minimum of 999. Defaulting to 5000 milliseconds.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _set_durationInMilliseconds_$lambda$1(int i) {
        return "Set in-app message duration to " + i + " milliseconds.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String enableDarkTheme$lambda$6() {
        return "Cannot apply dark theme with a null themes wrapper";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String forJsonPut$lambda$9() {
        return "Failed to construct json for in-app message";
    }

    public static /* synthetic */ void getAnimateIn$annotations() {
    }

    public static /* synthetic */ void getAnimateOut$annotations() {
    }

    public static /* synthetic */ void getOpenUriInWebView$annotations() {
    }

    private final boolean handleLogClick(String buttonId) {
        String triggerId = getTriggerId();
        if (triggerId == null || StringsKt.isBlank(triggerId)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.InAppMessageBase$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageBase.handleLogClick$lambda$10();
                }
            }, 7, (Object) null);
            return false;
        }
        c0 c0Var = this.brazeManager;
        if (c0Var == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.InAppMessageBase$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageBase.handleLogClick$lambda$11();
                }
            }, 6, (Object) null);
            return false;
        }
        if (getMessageType() != MessageType.HTML && this.clickLogged.get()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.InAppMessageBase$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageBase.handleLogClick$lambda$12();
                }
            }, 6, (Object) null);
            return false;
        }
        this.clickLogged.set(true);
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new b(buttonId, triggerId, c0Var, null), 3, null);
        return true;
    }

    public static /* synthetic */ boolean handleLogClick$default(InAppMessageBase inAppMessageBase, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: handleLogClick");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        return inAppMessageBase.handleLogClick(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleLogClick$lambda$10() {
        return "Trigger id not found (this is expected for test sends). Not logging in-app message click.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleLogClick$lambda$11() {
        return "Cannot log an in-app message click because the BrazeManager is null.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleLogClick$lambda$12() {
        return "Click already logged for this in-app message. Ignoring.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logImpression$lambda$3() {
        return "Trigger id not found (this is expected for test sends). Not logging in-app message impression.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logImpression$lambda$4() {
        return "Cannot log an in-app message impression because the BrazeManager is null.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logImpression$lambda$5() {
        return "Impression already logged for this in-app message. Ignoring.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setClickBehavior$lambda$2() {
        return "A non-null URI is required in order to set the message ClickAction to URI.";
    }

    @Override // com.braze.models.inappmessage.IInAppMessageThemeable
    public void enableDarkTheme() {
        com.braze.models.theme.a aVar = this.inAppMessageDarkThemeWrapper;
        if (aVar == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.InAppMessageBase$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageBase.enableDarkTheme$lambda$6();
                }
            }, 7, (Object) null);
            return;
        }
        if (aVar != null) {
            Integer num = aVar.a;
            if (num != null) {
                setBackgroundColor(num.intValue());
            }
            Integer num2 = aVar.d;
            if (num2 != null) {
                setIconColor(num2.intValue());
            }
            Integer num3 = aVar.e;
            if (num3 != null) {
                setIconBackgroundColor(num3.intValue());
            }
            Integer num4 = aVar.b;
            if (num4 != null) {
                setMessageTextColor(num4.intValue());
            }
        }
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public boolean getAnimateIn() {
        return this.animateIn;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public boolean getAnimateOut() {
        return this.animateOut;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public int getBackgroundColor() {
        return this.backgroundColor;
    }

    public final c0 getBrazeManager() {
        return this.brazeManager;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    /* JADX INFO: renamed from: getClickAction, reason: from getter */
    public ClickAction getInternalClickAction() {
        return this.internalClickAction;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public CropType getCropType() {
        return this.cropType;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public DismissType getDismissType() {
        return this.dismissType;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public int getDurationInMilliseconds() {
        return this.durationInMilliseconds;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public long getExpirationTimestamp() {
        return this.expirationTimestamp;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public Map<String, String> getExtras() {
        return this.extras;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public String getIcon() {
        return this.icon;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public int getIconBackgroundColor() {
        return this.iconBackgroundColor;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public int getIconColor() {
        return this.iconColor;
    }

    public final com.braze.models.theme.a getInAppMessageDarkThemeWrapper() {
        return this.inAppMessageDarkThemeWrapper;
    }

    public final JSONObject getJsonObject() {
        return this.jsonObject;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public String getMessage() {
        return this.message;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public String getMessageExtras() {
        return this.messageExtras;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public TextAlign getMessageTextAlign() {
        return this.messageTextAlign;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public int getMessageTextColor() {
        return this.messageTextColor;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public boolean getOpenUriInWebView() {
        return this.openUriInWebView;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public Orientation getOrientation() {
        return this.orientation;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public List<String> getRemoteAssetPathsForPrefetch() {
        return CollectionsKt.emptyList();
    }

    public final String getTriggerId() {
        JSONObject jSONObject = this.jsonObject;
        if (jSONObject != null) {
            return jSONObject.optString(TRIGGER_ID);
        }
        return null;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    /* JADX INFO: renamed from: getUri, reason: from getter */
    public Uri getInternalUri() {
        return this.internalUri;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public boolean isControl() {
        JSONObject jSONObject = this.jsonObject;
        return jSONObject != null && jSONObject.optBoolean("is_control");
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    /* JADX INFO: renamed from: isTestSend, reason: from getter */
    public boolean getIsTestSend() {
        return this.isTestSend;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public boolean logClick() {
        return handleLogClick$default(this, null, 1, null);
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public boolean logImpression() {
        String triggerId = getTriggerId();
        if (triggerId == null || StringsKt.isBlank(triggerId)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.D, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.InAppMessageBase$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageBase.logImpression$lambda$3();
                }
            }, 6, (Object) null);
            return false;
        }
        c0 c0Var = this.brazeManager;
        if (c0Var == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.InAppMessageBase$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageBase.logImpression$lambda$4();
                }
            }, 6, (Object) null);
            return false;
        }
        if (this.impressionLogged.get()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.InAppMessageBase$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageBase.logImpression$lambda$5();
                }
            }, 6, (Object) null);
            return false;
        }
        this.impressionLogged.set(true);
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new c(triggerId, this, c0Var, null), 3, null);
        return true;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void onAfterClosed() {
        String triggerId = getTriggerId();
        if (triggerId == null || triggerId.length() == 0) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new d(this, null), 3, null);
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setAnimateIn(boolean z) {
        this.animateIn = z;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setAnimateOut(boolean z) {
        this.animateOut = z;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setBackgroundColor(int i) {
        this.backgroundColor = i;
    }

    public final void setBrazeManager(c0 c0Var) {
        this.brazeManager = c0Var;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setClickBehavior(ClickAction clickAction) {
        Intrinsics.checkNotNullParameter(clickAction, "clickAction");
        setClickBehavior(clickAction, null);
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setCropType(CropType cropType) {
        Intrinsics.checkNotNullParameter(cropType, "<set-?>");
        this.cropType = cropType;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setDismissType(DismissType dismissType) {
        Intrinsics.checkNotNullParameter(dismissType, "<set-?>");
        this.dismissType = dismissType;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setDurationInMilliseconds(final int i) {
        if (i < 999) {
            this.durationInMilliseconds = INAPP_MESSAGE_DURATION_DEFAULT_MILLIS;
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.InAppMessageBase$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageBase._set_durationInMilliseconds_$lambda$0(i);
                }
            }, 7, (Object) null);
        } else {
            this.durationInMilliseconds = i;
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.InAppMessageBase$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageBase._set_durationInMilliseconds_$lambda$1(i);
                }
            }, 7, (Object) null);
        }
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setExpirationTimestamp(long j) {
        this.expirationTimestamp = j;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setExtras(Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.extras = map;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setIcon(String str) {
        this.icon = str;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setIconBackgroundColor(int i) {
        this.iconBackgroundColor = i;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setIconColor(int i) {
        this.iconColor = i;
    }

    public final void setInAppMessageDarkThemeWrapper(com.braze.models.theme.a aVar) {
        this.inAppMessageDarkThemeWrapper = aVar;
    }

    public final void setJsonObject(JSONObject jSONObject) {
        this.jsonObject = jSONObject;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setLocalPrefetchedAssetPaths(Map<String, String> remotePathToLocalAssetMap) {
        Intrinsics.checkNotNullParameter(remotePathToLocalAssetMap, "remotePathToLocalAssetMap");
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setMessage(String str) {
        this.message = str;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setMessageExtras(String str) {
        this.messageExtras = str;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setMessageTextAlign(TextAlign textAlign) {
        Intrinsics.checkNotNullParameter(textAlign, "<set-?>");
        this.messageTextAlign = textAlign;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setMessageTextColor(int i) {
        this.messageTextColor = i;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setOpenUriInWebView(boolean z) {
        this.openUriInWebView = z;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setOrientation(Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "<set-?>");
        this.orientation = orientation;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setTestSend(boolean z) {
        this.isTestSend = z;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InAppMessageBase(JSONObject json, c0 brazeManager, boolean z) {
        this(json, brazeManager, z, false, 8, null);
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut, reason: avoid collision after fix types in other method */
    public JSONObject getKey() {
        JSONObject jSONObject = this.jsonObject;
        if (jSONObject != null) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt(MESSAGE, getMessage());
            jSONObject2.put("duration", getDurationInMilliseconds());
            jSONObject2.putOpt(TRIGGER_ID, getTriggerId());
            jSONObject2.putOpt(CLICK_ACTION, getInternalClickAction().toString());
            jSONObject2.putOpt(DISMISS_TYPE, getDismissType().toString());
            if (getInternalUri() != null) {
                jSONObject2.put("uri", String.valueOf(getInternalUri()));
            }
            jSONObject2.put(OPEN_URI_IN_WEBVIEW, getOpenUriInWebView());
            jSONObject2.put(ANIMATE_IN, getAnimateIn());
            jSONObject2.put(ANIMATE_OUT, getAnimateOut());
            jSONObject2.put(BG_COLOR, getBackgroundColor());
            jSONObject2.put(MESSAGE_TEXT_COLOR, getMessageTextColor());
            jSONObject2.put(ICON_COLOR, getIconColor());
            jSONObject2.put(ICON_BG_COLOR, getIconBackgroundColor());
            jSONObject2.putOpt(ICON, getIcon());
            jSONObject2.putOpt(CROP_TYPE, getCropType().toString());
            jSONObject2.putOpt(ORIENTATION, getOrientation().toString());
            jSONObject2.putOpt(MESSAGE_TEXT_ALIGN, getMessageTextAlign().toString());
            jSONObject2.putOpt("is_control", Boolean.valueOf(isControl()));
            jSONObject2.put("is_test_send", getIsTestSend());
            if (!getExtras().isEmpty()) {
                jSONObject2.put(EXTRAS, getExtras());
            }
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.inappmessage.InAppMessageBase$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageBase.forJsonPut$lambda$9();
                }
            }, 4, (Object) null);
        }
        return jSONObject2;
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public boolean logClick(String buttonId) {
        Intrinsics.checkNotNullParameter(buttonId, "buttonId");
        return handleLogClick(buttonId);
    }

    @Override // com.braze.models.inappmessage.IInAppMessage
    public void setClickBehavior(ClickAction clickAction, Uri uri) {
        Intrinsics.checkNotNullParameter(clickAction, "clickAction");
        if (clickAction != ClickAction.URI) {
            this.internalClickAction = clickAction;
            this.internalUri = null;
        } else if (uri == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.InAppMessageBase$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageBase.setClickBehavior$lambda$2();
                }
            }, 6, (Object) null);
        } else {
            this.internalClickAction = clickAction;
            this.internalUri = uri;
        }
    }

    public InAppMessageBase() {
        this.internalClickAction = ClickAction.NONE;
        this.extras = MapsKt.emptyMap();
        this.animateIn = true;
        this.animateOut = true;
        this.dismissType = DismissType.AUTO_DISMISS;
        this.durationInMilliseconds = INAPP_MESSAGE_DURATION_DEFAULT_MILLIS;
        this.orientation = Orientation.ANY;
        this.cropType = CropType.FIT_CENTER;
        this.messageTextAlign = TextAlign.CENTER;
        this.expirationTimestamp = -1L;
        this.iconBackgroundColor = Color.parseColor("#ff0073d5");
        this.messageTextColor = Color.parseColor("#555555");
        this.backgroundColor = -1;
        this.iconColor = -1;
        this.impressionLogged = new AtomicBoolean(false);
        this.clickLogged = new AtomicBoolean(false);
    }

    public /* synthetic */ InAppMessageBase(JSONObject jSONObject, c0 c0Var, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(jSONObject, c0Var, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2);
    }

    public InAppMessageBase(JSONObject inAppMessageJson, c0 brazeManager, boolean z, boolean z2) throws JSONException {
        ClickAction clickAction;
        String upperCase;
        ClickAction[] clickActionArrValues;
        int length;
        int i;
        Intrinsics.checkNotNullParameter(inAppMessageJson, "json");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        this.internalClickAction = ClickAction.NONE;
        this.extras = MapsKt.emptyMap();
        this.animateIn = true;
        this.animateOut = true;
        this.dismissType = DismissType.AUTO_DISMISS;
        this.durationInMilliseconds = INAPP_MESSAGE_DURATION_DEFAULT_MILLIS;
        Orientation orientation = Orientation.ANY;
        this.orientation = orientation;
        this.cropType = CropType.FIT_CENTER;
        this.messageTextAlign = TextAlign.CENTER;
        this.expirationTimestamp = -1L;
        this.iconBackgroundColor = Color.parseColor("#ff0073d5");
        this.messageTextColor = Color.parseColor("#555555");
        this.backgroundColor = -1;
        this.iconColor = -1;
        int i2 = 0;
        this.impressionLogged = new AtomicBoolean(false);
        this.clickLogged = new AtomicBoolean(false);
        this.jsonObject = inAppMessageJson;
        this.brazeManager = brazeManager;
        setMessage(inAppMessageJson.optString(MESSAGE));
        setAnimateIn(inAppMessageJson.optBoolean(ANIMATE_IN, true));
        setAnimateOut(inAppMessageJson.optBoolean(ANIMATE_OUT, true));
        setDurationInMilliseconds(inAppMessageJson.optInt("duration"));
        setIcon(inAppMessageJson.optString(ICON));
        try {
            try {
                String string = inAppMessageJson.getString(ORIENTATION);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String upperCase2 = string.toUpperCase(US);
                Intrinsics.checkNotNullExpressionValue(upperCase2, "toUpperCase(...)");
                Orientation[] orientationArrValues = Orientation.values();
                int length2 = orientationArrValues.length;
                int i3 = 0;
                while (true) {
                    if (i3 < length2) {
                        Orientation orientation2 = orientationArrValues[i3];
                        if (Intrinsics.areEqual(orientation2.name(), upperCase2)) {
                            orientation = orientation2;
                            break;
                        }
                        i3++;
                    } else {
                        throw new NoSuchElementException("Array contains no element matching the predicate.");
                    }
                }
                while (true) {
                    if (i < length) {
                        ClickAction clickAction2 = clickActionArrValues[i];
                        if (Intrinsics.areEqual(clickAction2.name(), upperCase)) {
                            clickAction = clickAction2;
                            break;
                        }
                        i++;
                    } else {
                        throw new NoSuchElementException("Array contains no element matching the predicate.");
                    }
                }
            } catch (Exception unused) {
            }
            String string2 = inAppMessageJson.getString(CLICK_ACTION);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            Locale US2 = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US2, "US");
            upperCase = string2.toUpperCase(US2);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            clickActionArrValues = ClickAction.values();
            length = clickActionArrValues.length;
            i = 0;
        } catch (Exception unused2) {
        }
        setOrientation(orientation);
        setOpenUriInWebView(inAppMessageJson.optBoolean(OPEN_URI_IN_WEBVIEW, false));
        setIconBackgroundColor(inAppMessageJson.optInt(ICON_BG_COLOR));
        setMessageTextColor(inAppMessageJson.optInt(MESSAGE_TEXT_COLOR));
        setBackgroundColor(inAppMessageJson.optInt(BG_COLOR));
        setIconColor(inAppMessageJson.optInt(ICON_COLOR));
        this.impressionLogged.set(z);
        this.clickLogged.set(z2);
        setExtras(JsonUtils.convertJSONObjectToMap(inAppMessageJson.optJSONObject(EXTRAS)));
        if (inAppMessageJson.has(MESSAGE_EXTRAS)) {
            setMessageExtras(inAppMessageJson.optString(MESSAGE_EXTRAS));
        }
        String strOptString = inAppMessageJson.optString("uri");
        clickAction = ClickAction.NONE;
        if (clickAction == ClickAction.URI && strOptString != null && !StringsKt.isBlank(strOptString)) {
            this.internalUri = Uri.parse(strOptString);
        }
        this.internalClickAction = clickAction;
        DismissType dismissType = DismissType.AUTO_DISMISS;
        try {
            String string3 = inAppMessageJson.getString(DISMISS_TYPE);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            Locale US3 = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US3, "US");
            String upperCase3 = string3.toUpperCase(US3);
            Intrinsics.checkNotNullExpressionValue(upperCase3, "toUpperCase(...)");
            DismissType[] dismissTypeArrValues = DismissType.values();
            int length3 = dismissTypeArrValues.length;
            while (true) {
                if (i2 < length3) {
                    DismissType dismissType2 = dismissTypeArrValues[i2];
                    if (Intrinsics.areEqual(dismissType2.name(), upperCase3)) {
                        dismissType = dismissType2;
                        break;
                    }
                    i2++;
                } else {
                    throw new NoSuchElementException("Array contains no element matching the predicate.");
                }
            }
        } catch (Exception unused3) {
        }
        setDismissType(dismissType == DismissType.SWIPE ? DismissType.MANUAL : dismissType);
        String str = n.a;
        Intrinsics.checkNotNullParameter(inAppMessageJson, "inAppMessageJson");
        JSONObject jSONObjectOptJSONObject = inAppMessageJson.optJSONObject("themes");
        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optJSONObject("dark") : null;
        this.inAppMessageDarkThemeWrapper = jSONObjectOptJSONObject2 != null ? new com.braze.models.theme.a(jSONObjectOptJSONObject2) : null;
        inAppMessageJson.put("is_test_send", getIsTestSend());
    }
}

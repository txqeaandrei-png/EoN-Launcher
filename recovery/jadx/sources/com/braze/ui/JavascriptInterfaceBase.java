package com.braze.ui;

import android.content.Context;
import android.webkit.JavascriptInterface;
import com.braze.Braze;
import com.braze.models.outgoing.BrazeProperties;
import com.braze.support.BrazeLogger;
import java.math.BigDecimal;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH'J\b\u0010\f\u001a\u00020\tH'J\u001a\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000bH\u0007J\b\u0010\u0010\u001a\u00020\tH\u0007J\u001c\u0010\u0011\u001a\u00020\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u000bH\u0007J6\u0010\u0014\u001a\u00020\t2\b\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0016\u001a\u00020\u000b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0018\u001a\u00020\u000b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u000bH\u0007J\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0013\u001a\u0004\u0018\u00010\u000bH\u0007R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u001b"}, d2 = {"Lcom/braze/ui/JavascriptInterfaceBase;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "logButtonClick", "", "buttonId", "", "logClick", "changeUser", "userId", "sdkAuthSignature", "requestImmediateDataFlush", "logCustomEventWithJSON", "eventName", "propertiesJSON", "logPurchaseWithJSON", "productId", "price", "currencyCode", "quantity", "parseProperties", "Lcom/braze/models/outgoing/BrazeProperties;", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class JavascriptInterfaceBase {
    private final Context context;

    @JavascriptInterface
    public abstract void logButtonClick(String buttonId);

    @JavascriptInterface
    public abstract void logClick();

    public JavascriptInterfaceBase(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    protected final Context getContext() {
        return this.context;
    }

    @JavascriptInterface
    public final void changeUser(String userId, String sdkAuthSignature) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Braze.INSTANCE.getInstance(this.context).changeUser(userId, sdkAuthSignature);
    }

    @JavascriptInterface
    public final void requestImmediateDataFlush() {
        Braze.INSTANCE.getInstance(this.context).requestImmediateDataFlush();
    }

    @JavascriptInterface
    public final void logCustomEventWithJSON(String eventName, String propertiesJSON) {
        Braze.INSTANCE.getInstance(this.context).logCustomEvent(eventName, parseProperties(propertiesJSON));
    }

    @JavascriptInterface
    public final void logPurchaseWithJSON(String productId, final String price, String currencyCode, final String quantity, String propertiesJSON) {
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(quantity, "quantity");
        BrazeProperties properties = parseProperties(propertiesJSON);
        Double doubleOrNull = StringsKt.toDoubleOrNull(price);
        if (doubleOrNull == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.JavascriptInterfaceBase$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return JavascriptInterfaceBase.logPurchaseWithJSON$lambda$0(price);
                }
            }, 6, (Object) null);
            return;
        }
        Integer intOrNull = StringsKt.toIntOrNull(quantity);
        if (intOrNull == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.JavascriptInterfaceBase$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return JavascriptInterfaceBase.logPurchaseWithJSON$lambda$1(quantity);
                }
            }, 6, (Object) null);
        } else {
            Braze.INSTANCE.getInstance(this.context).logPurchase(productId, currencyCode, new BigDecimal(doubleOrNull.toString()), intOrNull.intValue(), properties);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPurchaseWithJSON$lambda$0(String str) {
        return "Failed to parse logPurchaseWithJSON price value '" + str + '\'';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPurchaseWithJSON$lambda$1(String str) {
        return "Failed to parse logPurchaseWithJSON quantity value '" + str + '\'';
    }

    public final BrazeProperties parseProperties(final String propertiesJSON) {
        if (propertiesJSON == null) {
            return null;
        }
        try {
            if (Intrinsics.areEqual(propertiesJSON, "undefined") || Intrinsics.areEqual(propertiesJSON, "null")) {
                return null;
            }
            return new BrazeProperties(new JSONObject(propertiesJSON));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.ui.JavascriptInterfaceBase$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return JavascriptInterfaceBase.parseProperties$lambda$2(propertiesJSON);
                }
            }, 4, (Object) null);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String parseProperties$lambda$2(String str) {
        return "Failed to parse properties JSON String: " + str;
    }
}

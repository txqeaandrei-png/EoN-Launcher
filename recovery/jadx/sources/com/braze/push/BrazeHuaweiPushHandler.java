package com.braze.push;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.braze.Constants;
import com.braze.support.BrazeLogger;
import com.braze.support.BundleUtils;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0007¨\u0006\u000b"}, d2 = {"Lcom/braze/push/BrazeHuaweiPushHandler;", "", "<init>", "()V", "handleHmsRemoteMessageData", "", "context", "Landroid/content/Context;", "hmsRemoteMessageData", "", "", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeHuaweiPushHandler {
    public static final BrazeHuaweiPushHandler INSTANCE = new BrazeHuaweiPushHandler();

    private BrazeHuaweiPushHandler() {
    }

    @JvmStatic
    public static final boolean handleHmsRemoteMessageData(Context context, final Map<String, String> hmsRemoteMessageData) {
        Intrinsics.checkNotNullParameter(context, "context");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeHuaweiPushHandler brazeHuaweiPushHandler = INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) brazeHuaweiPushHandler, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeHuaweiPushHandler$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeHuaweiPushHandler.handleHmsRemoteMessageData$lambda$0(hmsRemoteMessageData);
            }
        }, 6, (Object) null);
        if (hmsRemoteMessageData == null || hmsRemoteMessageData.isEmpty()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeHuaweiPushHandler, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeHuaweiPushHandler$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeHuaweiPushHandler.handleHmsRemoteMessageData$lambda$1();
                }
            }, 6, (Object) null);
            return false;
        }
        final Bundle bundle = BundleUtils.toBundle(hmsRemoteMessageData);
        if (!bundle.containsKey(Constants.BRAZE_PUSH_BRAZE_KEY) || !Intrinsics.areEqual("true", bundle.getString(Constants.BRAZE_PUSH_BRAZE_KEY))) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeHuaweiPushHandler, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeHuaweiPushHandler$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeHuaweiPushHandler.handleHmsRemoteMessageData$lambda$2();
                }
            }, 6, (Object) null);
            return false;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeHuaweiPushHandler, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeHuaweiPushHandler$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeHuaweiPushHandler.handleHmsRemoteMessageData$lambda$3(bundle);
            }
        }, 6, (Object) null);
        Intent intent = new Intent(BrazePushReceiver.HMS_PUSH_SERVICE_ROUTING_ACTION);
        intent.putExtras(bundle);
        BrazePushReceiver.Companion.handleReceivedIntent$default(BrazePushReceiver.INSTANCE, context, intent, false, 4, null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleHmsRemoteMessageData$lambda$0(Map map) {
        return "Handling Huawei remote message: " + map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleHmsRemoteMessageData$lambda$1() {
        return "Remote message data was null. Remote message did not originate from Braze.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleHmsRemoteMessageData$lambda$2() {
        return "Remote message did not originate from Braze. Not consuming remote message";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleHmsRemoteMessageData$lambda$3(Bundle bundle) {
        return "Got remote message from Huawei: " + bundle;
    }
}

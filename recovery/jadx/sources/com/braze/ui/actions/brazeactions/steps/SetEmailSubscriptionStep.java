package com.braze.ui.actions.brazeactions.steps;

import android.content.Context;
import com.braze.Braze;
import com.braze.BrazeUser;
import com.braze.enums.NotificationSubscriptionType;
import com.braze.support.BrazeLogger;
import com.google.firebase.messaging.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/braze/ui/actions/brazeactions/steps/SetEmailSubscriptionStep;", "Lcom/braze/ui/actions/brazeactions/steps/BaseBrazeActionStep;", "<init>", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "isValid", "", Constants.ScionAnalytics.MessageType.DATA_MESSAGE, "Lcom/braze/ui/actions/brazeactions/steps/StepData;", "run", "", "context", "Landroid/content/Context;", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SetEmailSubscriptionStep extends BaseBrazeActionStep {
    public static final SetEmailSubscriptionStep INSTANCE;
    private static final String TAG;

    private SetEmailSubscriptionStep() {
        super(null);
    }

    static {
        SetEmailSubscriptionStep setEmailSubscriptionStep = new SetEmailSubscriptionStep();
        INSTANCE = setEmailSubscriptionStep;
        TAG = BrazeLogger.INSTANCE.brazeLogTag(setEmailSubscriptionStep);
    }

    public final String getTAG() {
        return TAG;
    }

    @Override // com.braze.ui.actions.brazeactions.steps.IBrazeActionStep
    public boolean isValid(StepData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return StepData.isArgCountInBounds$default(data, 1, null, 2, null) && data.isArgString(0);
    }

    @Override // com.braze.ui.actions.brazeactions.steps.IBrazeActionStep
    public void run(Context context, final StepData data) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(data, "data");
        final NotificationSubscriptionType notificationSubscriptionTypeFromValue = NotificationSubscriptionType.INSTANCE.fromValue(String.valueOf(data.getFirstArg()));
        if (notificationSubscriptionTypeFromValue == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.actions.brazeactions.steps.SetEmailSubscriptionStep$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return SetEmailSubscriptionStep.run$lambda$1(data);
                }
            }, 7, (Object) null);
        } else {
            BaseBrazeActionStep.INSTANCE.runOnUser$android_sdk_ui_release(Braze.INSTANCE.getInstance(context), new Function1() { // from class: com.braze.ui.actions.brazeactions.steps.SetEmailSubscriptionStep$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SetEmailSubscriptionStep.run$lambda$2(notificationSubscriptionTypeFromValue, (BrazeUser) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String run$lambda$1(StepData stepData) {
        return "Could not parse subscription type from data: " + stepData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit run$lambda$2(NotificationSubscriptionType notificationSubscriptionType, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setEmailNotificationSubscriptionType(notificationSubscriptionType);
        return Unit.INSTANCE;
    }
}

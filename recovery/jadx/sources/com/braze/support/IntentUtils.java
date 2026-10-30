package com.braze.support;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import java.util.List;
import java.util.Random;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u000bH\u0007J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\b\u0010\u0014\u001a\u00020\u000bH\u0007J\b\u0010\u0015\u001a\u00020\u000bH\u0007R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/braze/support/IntentUtils;", "", "<init>", "()V", "random", "Ljava/util/Random;", "getRandom", "()Ljava/util/Random;", "random$delegate", "Lkotlin/Lazy;", "REQUEST_CODE_MAX", "", "REQUEST_CODE_MIN", "getRequestCode", "addComponentAndSendBroadcast", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "getImmutablePendingIntentFlags", "getMutablePendingIntentFlags", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class IntentUtils {
    private static final int REQUEST_CODE_MAX = 1073741823;
    private static final int REQUEST_CODE_MIN = 100000;
    public static final IntentUtils INSTANCE = new IntentUtils();

    /* JADX INFO: renamed from: random$delegate, reason: from kotlin metadata */
    private static final Lazy random = LazyKt.lazy(LazyThreadSafetyMode.NONE, new Function0() { // from class: com.braze.support.IntentUtils$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return IntentUtils.random_delegate$lambda$0();
        }
    });

    private IntentUtils() {
    }

    @JvmStatic
    public static final void addComponentAndSendBroadcast(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        List<ResolveInfo> listQueryBroadcastReceivers = Build.VERSION.SDK_INT >= 33 ? context.getPackageManager().queryBroadcastReceivers(intent, PackageManager.ResolveInfoFlags.of(0L)) : context.getPackageManager().queryBroadcastReceivers(intent, 0);
        Intrinsics.checkNotNull(listQueryBroadcastReceivers);
        for (ResolveInfo resolveInfo : listQueryBroadcastReceivers) {
            final Intent intent2 = new Intent(intent);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            final ComponentName componentName = new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name);
            intent2.setComponent(componentName);
            context.sendBroadcast(intent2);
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.support.IntentUtils$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return IntentUtils.addComponentAndSendBroadcast$lambda$2$lambda$1(componentName, intent2);
                }
            }, 6, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addComponentAndSendBroadcast$lambda$2$lambda$1(ComponentName componentName, Intent intent) {
        return "Sent intent with component " + componentName + " and explicit intent " + intent;
    }

    @JvmStatic
    public static final int getImmutablePendingIntentFlags() {
        return AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL;
    }

    @JvmStatic
    public static final int getMutablePendingIntentFlags() {
        return Build.VERSION.SDK_INT >= 31 ? 33554432 : 0;
    }

    private final Random getRandom() {
        return (Random) random.getValue();
    }

    @JvmStatic
    public static final int getRequestCode() {
        return INSTANCE.getRandom().nextInt(1073741823) + REQUEST_CODE_MIN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Random random_delegate$lambda$0() {
        return new Random();
    }
}

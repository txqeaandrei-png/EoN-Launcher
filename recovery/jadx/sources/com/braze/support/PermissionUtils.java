package com.braze.support;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u0014\u0010\u0004\u001a\u00020\u0005*\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0001\u001a\f\u0010\b\u001a\u00020\t*\u0004\u0018\u00010\n\u001a\f\u0010\u000b\u001a\u00020\u0005*\u0004\u0018\u00010\n\u001a\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001\u001a\u0016\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0010\u0010\u0003\u001a\u00020\u00018\u0002X\u0083T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"TAG", "", "PERMISSION_STORAGE_PREFS_FILE", "NOTIFICATION_PERMISSION", "hasPermission", "", "Landroid/content/Context;", "permission", "requestPushPermissionPrompt", "", "Landroid/app/Activity;", "wouldPushPermissionPromptDisplay", "getPermissionRequestCount", "", "context", "incrementPermissionRequestCount", "android-sdk-base_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PermissionUtils {
    private static final String NOTIFICATION_PERMISSION = "android.permission.POST_NOTIFICATIONS";
    private static final String PERMISSION_STORAGE_PREFS_FILE = "com.braze.support.permission_util.requested_perms";
    private static final String TAG = BrazeLogger.INSTANCE.getBrazeLogTag("PermissionUtils");

    public static final int getPermissionRequestCount(Context context, String permission) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(permission, "permission");
        return context.getSharedPreferences(PERMISSION_STORAGE_PREFS_FILE, 0).getInt(permission, 0);
    }

    public static final boolean hasPermission(Context context, final String permission) {
        Intrinsics.checkNotNullParameter(permission, "permission");
        if (context == null) {
            return false;
        }
        try {
            return context.checkCallingOrSelfPermission(permission) == 0;
        } catch (Throwable th) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.E, th, false, new Function0() { // from class: com.braze.support.PermissionUtils$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PermissionUtils.hasPermission$lambda$0(permission);
                }
            }, 8, (Object) null);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String hasPermission$lambda$0(String str) {
        return com.braze.j.a("Failure checking permission ", str);
    }

    public static final void incrementPermissionRequestCount(Context context, String permission) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(permission, "permission");
        SharedPreferences sharedPreferences = context.getSharedPreferences(PERMISSION_STORAGE_PREFS_FILE, 0);
        final int i = sharedPreferences.getInt(permission, 0) + 1;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.support.PermissionUtils$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PermissionUtils.incrementPermissionRequestCount$lambda$11(i);
            }
        }, 14, (Object) null);
        sharedPreferences.edit().putInt(permission, i).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String incrementPermissionRequestCount$lambda$11(int i) {
        return "Incrementing permission request counter to " + i + '.';
    }

    public static final void requestPushPermissionPrompt(Activity activity) {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        String str = TAG;
        BrazeLogger.Priority priority = BrazeLogger.Priority.V;
        BrazeLogger.brazelog$default(brazeLogger, str, priority, (Throwable) null, false, new Function0() { // from class: com.braze.support.PermissionUtils$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PermissionUtils.requestPushPermissionPrompt$lambda$1();
            }
        }, 12, (Object) null);
        if (activity == null) {
            BrazeLogger.brazelog$default(brazeLogger, str, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.support.PermissionUtils$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PermissionUtils.requestPushPermissionPrompt$lambda$2();
                }
            }, 14, (Object) null);
            return;
        }
        if (!wouldPushPermissionPromptDisplay(activity) || Build.VERSION.SDK_INT < 33) {
            BrazeLogger.brazelog$default(brazeLogger, str, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.support.PermissionUtils$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PermissionUtils.requestPushPermissionPrompt$lambda$3();
                }
            }, 14, (Object) null);
            return;
        }
        incrementPermissionRequestCount(activity, NOTIFICATION_PERMISSION);
        BrazeLogger.brazelog$default(brazeLogger, str, priority, (Throwable) null, false, new Function0() { // from class: com.braze.support.PermissionUtils$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PermissionUtils.requestPushPermissionPrompt$lambda$4();
            }
        }, 12, (Object) null);
        activity.requestPermissions(new String[]{NOTIFICATION_PERMISSION}, IntentUtils.getRequestCode());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestPushPermissionPrompt$lambda$1() {
        return "Attempting to execute requestPushPermissionPrompt()";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestPushPermissionPrompt$lambda$2() {
        return "Cannot request push permission with null Activity.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestPushPermissionPrompt$lambda$3() {
        return "Permission prompt would not display, not attempting to request push permission prompt.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestPushPermissionPrompt$lambda$4() {
        return "Requesting push permission from system.";
    }

    public static final boolean wouldPushPermissionPromptDisplay(Activity activity) {
        if (activity == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.support.PermissionUtils$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PermissionUtils.wouldPushPermissionPromptDisplay$lambda$5();
                }
            }, 14, (Object) null);
            return false;
        }
        if (Build.VERSION.SDK_INT < 33) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.support.PermissionUtils$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PermissionUtils.wouldPushPermissionPromptDisplay$lambda$6();
                }
            }, 12, (Object) null);
            return false;
        }
        final int i = activity.getApplicationInfo().targetSdkVersion;
        if (i < 33) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.support.PermissionUtils$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PermissionUtils.wouldPushPermissionPromptDisplay$lambda$7(i);
                }
            }, 12, (Object) null);
            return false;
        }
        if (hasPermission(activity, NOTIFICATION_PERMISSION)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.support.PermissionUtils$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PermissionUtils.wouldPushPermissionPromptDisplay$lambda$8();
                }
            }, 12, (Object) null);
            return false;
        }
        final int permissionRequestCount = getPermissionRequestCount(activity, NOTIFICATION_PERMISSION);
        if (permissionRequestCount >= 2) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.support.PermissionUtils$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PermissionUtils.wouldPushPermissionPromptDisplay$lambda$9(permissionRequestCount);
                }
            }, 12, (Object) null);
            return activity.shouldShowRequestPermissionRationale(NOTIFICATION_PERMISSION);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.support.PermissionUtils$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PermissionUtils.wouldPushPermissionPromptDisplay$lambda$10();
            }
        }, 12, (Object) null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wouldPushPermissionPromptDisplay$lambda$10() {
        return "Push Prompt can be shown on this device, within a reasonable confidence.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wouldPushPermissionPromptDisplay$lambda$5() {
        return "Cannot request push permission with null Activity.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wouldPushPermissionPromptDisplay$lambda$6() {
        return "Device API version of " + Build.VERSION.SDK_INT + " is too low to display push permission prompt.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wouldPushPermissionPromptDisplay$lambda$7(int i) {
        return "App Target API version of " + i + " is too low to display push permission prompt.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wouldPushPermissionPromptDisplay$lambda$8() {
        return "Notification permission already granted, doing nothing.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wouldPushPermissionPromptDisplay$lambda$9(int i) {
        return "Notification permission request count is " + i + ". Returning value of 'shouldShowRequestPermissionRationale(NOTIFICATION_PERMISSION)'";
    }
}

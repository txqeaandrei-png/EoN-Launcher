package com.braze.support;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.braze.Constants;
import com.braze.models.inappmessage.InAppMessageBase;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001BB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010-\u001a\u00020\u0016H\u0007J\u0012\u0010.\u001a\u00020\u00162\b\b\u0002\u0010/\u001a\u00020\nH\u0007J\u0010\u00100\u001a\u00020\u00162\u0006\u00101\u001a\u00020\u0005H\u0007J$\u00102\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u00103\u001a\u00020\u00122\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0014H\u0007J$\u00105\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u00103\u001a\u00020\u00122\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0014H\u0007J$\u00106\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u00103\u001a\u00020\u00122\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0014H\u0007J$\u00107\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u00103\u001a\u00020\u00122\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0014H\u0007J \u00108\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u00103\u001a\u00020\u00122\u0006\u00104\u001a\u00020\u0014H\u0007J\u0014\u00109\u001a\u00020\u00122\n\u0010:\u001a\u0006\u0012\u0002\b\u00030;H\u0007J\n\u00109\u001a\u00020\u0012*\u00020\u0012J8\u0010<\u001a\u00020\u0016*\u00020\u00012\b\b\u0002\u0010\u0011\u001a\u00020\u000e2\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010=\u001a\u00020\n2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120>J<\u0010<\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00122\b\b\u0002\u0010\u0011\u001a\u00020\u000e2\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010=\u001a\u00020\n2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120>J\n\u0010?\u001a\u00020\u0012*\u00020\u0001J\b\u0010@\u001a\u00020\u0016H\u0007J\u0014\u0010A\u001a\u00020\u0012*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010>H\u0002R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0003R\u0014\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\u0003R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000Rm\u0010\f\u001aK\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0015\u0012\u0013\u0018\u00010\u0014¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u0016\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0017\u0010\u0003\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bRx\u0010\u001c\u001a`\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u001e\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0015\u0012\u0013\u0018\u00010\u0014¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u001dX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u000e\u0010#\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0012X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0012X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R,\u0010'\u001a\u00020\u00052\u0006\u0010'\u001a\u00020\u00058\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b(\u0010\u0003\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,¨\u0006C"}, d2 = {"Lcom/braze/support/BrazeLogger;", "", "<init>", "()V", "SUPPRESS", "", "getSUPPRESS$annotations", "VERBOSE", "getVERBOSE$annotations", "isSystemPropLogLevelSet", "", "hasLogLevelBeenSetForAppRun", "onLoggedCallback", "Lkotlin/Function3;", "Lcom/braze/support/BrazeLogger$Priority;", "Lkotlin/ParameterName;", "name", LogFactory.PRIORITY_KEY, "", InAppMessageBase.MESSAGE, "", "throwable", "", "getOnLoggedCallback$annotations", "getOnLoggedCallback", "()Lkotlin/jvm/functions/Function3;", "setOnLoggedCallback", "(Lkotlin/jvm/functions/Function3;)V", "sdkDebuggerCallback", "Lkotlin/Function4;", "tag", "getSdkDebuggerCallback$android_sdk_base_release", "()Lkotlin/jvm/functions/Function4;", "setSdkDebuggerCallback$android_sdk_base_release", "(Lkotlin/jvm/functions/Function4;)V", "DESIRED_MAX_BRAZE_TAG_LENGTH", "LOG_LEVEL_PROPERTY_NAME_BRAZE", "LOG_LEVEL_PROPERTY_NAME_APPBOY", "MAX_REMAINING_LENGTH_FOR_CLASS_TAG", "logLevel", "getLogLevel$annotations", "getLogLevel", "()I", "setLogLevel", "(I)V", "enableVerboseLogging", "checkForSystemLogLevelProperty", "returnOnDebug", "setInitialLogLevelFromConfiguration", "initialLogLevel", "v", NotificationCompat.CATEGORY_MESSAGE, "tr", Constants.BRAZE_PUSH_NOTIFICATION_SOUND_DEFAULT_VALUE, "i", "w", "e", "getBrazeLogTag", "classForTag", "Ljava/lang/Class;", "brazelog", "skipSdkDebug", "Lkotlin/Function0;", "brazeLogTag", "resetForTesting", "toStringSafe", "Priority", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeLogger {
    private static final int DESIRED_MAX_BRAZE_TAG_LENGTH = 80;
    private static final String LOG_LEVEL_PROPERTY_NAME_APPBOY = "log.tag.APPBOY";
    private static final String LOG_LEVEL_PROPERTY_NAME_BRAZE = "log.tag.BRAZE";
    private static final int MAX_REMAINING_LENGTH_FOR_CLASS_TAG = 65;
    public static final int SUPPRESS = Integer.MAX_VALUE;
    public static final int VERBOSE = 2;
    private static boolean hasLogLevelBeenSetForAppRun;
    private static boolean isSystemPropLogLevelSet;
    private static Function3<? super Priority, ? super String, ? super Throwable, Unit> onLoggedCallback;
    private static Function4<? super String, ? super Priority, ? super String, ? super Throwable, Unit> sdkDebuggerCallback;
    public static final BrazeLogger INSTANCE = new BrazeLogger();
    private static int logLevel = 4;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/braze/support/BrazeLogger$Priority;", "", "logLevel", "", "<init>", "(Ljava/lang/String;II)V", "getLogLevel", "()I", "D", "I", "E", "V", "W", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public enum Priority {
        D(3),
        I(4),
        E(6),
        V(2),
        W(5);

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
        private final int logLevel;

        Priority(int i) {
            this.logLevel = i;
        }

        public static EnumEntries<Priority> getEntries() {
            return $ENTRIES;
        }

        public final int getLogLevel() {
            return this.logLevel;
        }
    }

    private BrazeLogger() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _set_logLevel_$lambda$0(int i) {
        return "Log level already set via system property. BrazeLogger.setLogLevel() ignored for level: " + i;
    }

    public static /* synthetic */ void brazelog$default(BrazeLogger brazeLogger, Object obj, Priority priority, Throwable th, boolean z, Function0 function0, int i, Object obj2) {
        if ((i & 1) != 0) {
            priority = Priority.D;
        }
        Priority priority2 = priority;
        if ((i & 2) != 0) {
            th = null;
        }
        Throwable th2 = th;
        if ((i & 4) != 0) {
            z = false;
        }
        brazeLogger.brazelog(obj, priority2, th2, z, (Function0<String>) function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String brazelog$lambda$7(Function0 function0) {
        return INSTANCE.toStringSafe(function0);
    }

    @JvmStatic
    public static final void checkForSystemLogLevelProperty(boolean returnOnDebug) {
        String strA = s.a(LOG_LEVEL_PROPERTY_NAME_BRAZE);
        if (StringsKt.equals("verbose", StringsKt.trim((CharSequence) s.a(LOG_LEVEL_PROPERTY_NAME_APPBOY)).toString(), true) || StringsKt.equals("verbose", StringsKt.trim((CharSequence) strA).toString(), true)) {
            setLogLevel(2);
            isSystemPropLogLevelSet = true;
            BrazeLogger brazeLogger = INSTANCE;
            brazelog$default(brazeLogger, (Object) brazeLogger, Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.support.BrazeLogger$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeLogger.checkForSystemLogLevelProperty$lambda$1();
                }
            }, 6, (Object) null);
        }
    }

    public static /* synthetic */ void checkForSystemLogLevelProperty$default(boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        checkForSystemLogLevelProperty(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String checkForSystemLogLevelProperty$lambda$1() {
        return "BrazeLogger log level set to VERBOSE via device system property for BRAZE/APPBOY. Note that subsequent calls to BrazeLogger.setLogLevel() will have no effect.";
    }

    @JvmStatic
    public static final void d(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        d$default(tag, msg, null, 4, null);
    }

    public static /* synthetic */ void d$default(String str, String str2, Throwable th, int i, Object obj) {
        if ((i & 4) != 0) {
            th = null;
        }
        d(str, str2, th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String d$lambda$3(String str) {
        return str;
    }

    @JvmStatic
    public static final void e(String tag, final String msg, Throwable tr) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(tr, "tr");
        brazelog$default(INSTANCE, tag, Priority.D, tr, false, new Function0() { // from class: com.braze.support.BrazeLogger$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeLogger.e$lambda$6(msg);
            }
        }, 8, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String e$lambda$6(String str) {
        return str;
    }

    @JvmStatic
    public static final void enableVerboseLogging() {
        setLogLevel(2);
    }

    @JvmStatic
    public static final String getBrazeLogTag(Class<?> classForTag) {
        Intrinsics.checkNotNullParameter(classForTag, "classForTag");
        String name = classForTag.getName();
        int length = name.length();
        if (length <= 65) {
            Intrinsics.checkNotNull(name);
        } else {
            Intrinsics.checkNotNull(name);
            name = name.substring(length - 65);
            Intrinsics.checkNotNullExpressionValue(name, "substring(...)");
        }
        return com.braze.j.a(Constants.LOG_TAG_PREFIX, name);
    }

    public static final int getLogLevel() {
        return logLevel;
    }

    @JvmStatic
    public static /* synthetic */ void getLogLevel$annotations() {
    }

    public static final Function3<Priority, String, Throwable, Unit> getOnLoggedCallback() {
        return onLoggedCallback;
    }

    @JvmStatic
    public static /* synthetic */ void getOnLoggedCallback$annotations() {
    }

    public static /* synthetic */ void getSUPPRESS$annotations() {
    }

    public static /* synthetic */ void getVERBOSE$annotations() {
    }

    @JvmStatic
    public static final void i(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        i$default(tag, msg, null, 4, null);
    }

    public static /* synthetic */ void i$default(String str, String str2, Throwable th, int i, Object obj) {
        if ((i & 4) != 0) {
            th = null;
        }
        i(str, str2, th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String i$lambda$4(String str) {
        return str;
    }

    @JvmStatic
    public static final void resetForTesting() {
        isSystemPropLogLevelSet = false;
        hasLogLevelBeenSetForAppRun = false;
        onLoggedCallback = null;
        sdkDebuggerCallback = null;
    }

    @JvmStatic
    public static final void setInitialLogLevelFromConfiguration(int initialLogLevel) {
        if (hasLogLevelBeenSetForAppRun) {
            return;
        }
        setLogLevel(initialLogLevel);
    }

    public static final void setLogLevel(final int i) {
        if (isSystemPropLogLevelSet) {
            BrazeLogger brazeLogger = INSTANCE;
            brazelog$default(brazeLogger, (Object) brazeLogger, Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.support.BrazeLogger$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeLogger._set_logLevel_$lambda$0(i);
                }
            }, 6, (Object) null);
        } else {
            hasLogLevelBeenSetForAppRun = true;
            logLevel = i;
        }
    }

    public static final void setOnLoggedCallback(Function3<? super Priority, ? super String, ? super Throwable, Unit> function3) {
        onLoggedCallback = function3;
    }

    private final String toStringSafe(Function0<? extends Object> function0) {
        try {
            return String.valueOf(function0.invoke());
        } catch (Exception unused) {
            return "";
        }
    }

    @JvmStatic
    public static final void v(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        v$default(tag, msg, null, 4, null);
    }

    public static /* synthetic */ void v$default(String str, String str2, Throwable th, int i, Object obj) {
        if ((i & 4) != 0) {
            th = null;
        }
        v(str, str2, th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String v$lambda$2(String str) {
        return str;
    }

    @JvmStatic
    public static final void w(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        w$default(tag, msg, null, 4, null);
    }

    public static /* synthetic */ void w$default(String str, String str2, Throwable th, int i, Object obj) {
        if ((i & 4) != 0) {
            th = null;
        }
        w(str, str2, th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String w$lambda$5(String str) {
        return str;
    }

    public final String brazeLogTag(Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        String name = obj.getClass().getName();
        Intrinsics.checkNotNull(name);
        String strSubstringAfterLast$default = StringsKt.substringAfterLast$default(StringsKt.substringBefore$default(name, Typography.dollar, (String) null, 2, (Object) null), '.', (String) null, 2, (Object) null);
        return strSubstringAfterLast$default.length() == 0 ? getBrazeLogTag(name) : getBrazeLogTag(strSubstringAfterLast$default);
    }

    public final void brazelog(Object obj, Priority priority, Throwable th, boolean z, Function0<String> message) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        Intrinsics.checkNotNullParameter(priority, "priority");
        Intrinsics.checkNotNullParameter(message, "message");
        if (logLevel <= priority.getLogLevel() || sdkDebuggerCallback != null) {
            brazelog(brazeLogTag(obj), priority, th, z, message);
        }
    }

    public final Function4<String, Priority, String, Throwable, Unit> getSdkDebuggerCallback$android_sdk_base_release() {
        return sdkDebuggerCallback;
    }

    public final void setSdkDebuggerCallback$android_sdk_base_release(Function4<? super String, ? super Priority, ? super String, ? super Throwable, Unit> function4) {
        sdkDebuggerCallback = function4;
    }

    @JvmStatic
    public static final void d(String tag, final String msg, Throwable tr) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        brazelog$default(INSTANCE, tag, Priority.D, tr, false, new Function0() { // from class: com.braze.support.BrazeLogger$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeLogger.d$lambda$3(msg);
            }
        }, 8, (Object) null);
    }

    @JvmStatic
    public static final void i(String tag, final String msg, Throwable tr) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        brazelog$default(INSTANCE, tag, Priority.I, tr, false, new Function0() { // from class: com.braze.support.BrazeLogger$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeLogger.i$lambda$4(msg);
            }
        }, 8, (Object) null);
    }

    @JvmStatic
    public static final void v(String tag, final String msg, Throwable tr) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        brazelog$default(INSTANCE, tag, Priority.V, tr, false, new Function0() { // from class: com.braze.support.BrazeLogger$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeLogger.v$lambda$2(msg);
            }
        }, 8, (Object) null);
    }

    @JvmStatic
    public static final void w(String tag, final String msg, Throwable tr) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        brazelog$default(INSTANCE, tag, Priority.W, tr, false, new Function0() { // from class: com.braze.support.BrazeLogger$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeLogger.w$lambda$5(msg);
            }
        }, 8, (Object) null);
    }

    public static /* synthetic */ void brazelog$default(BrazeLogger brazeLogger, String str, Priority priority, Throwable th, boolean z, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            priority = Priority.D;
        }
        Priority priority2 = priority;
        if ((i & 4) != 0) {
            th = null;
        }
        Throwable th2 = th;
        if ((i & 8) != 0) {
            z = false;
        }
        brazeLogger.brazelog(str, priority2, th2, z, (Function0<String>) function0);
    }

    public final void brazelog(String tag, Priority priority, Throwable tr, boolean skipSdkDebug, final Function0<String> message) {
        Function4<? super String, ? super Priority, ? super String, ? super Throwable, Unit> function4;
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(priority, "priority");
        Intrinsics.checkNotNullParameter(message, "message");
        Lazy lazy = LazyKt.lazy(new Function0() { // from class: com.braze.support.BrazeLogger$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeLogger.brazelog$lambda$7(message);
            }
        });
        Function3<? super Priority, ? super String, ? super Throwable, Unit> function3 = onLoggedCallback;
        if (function3 != null) {
            function3.invoke(priority, lazy.getValue(), tr);
        }
        if (!skipSdkDebug && (function4 = sdkDebuggerCallback) != null) {
            function4.invoke(tag, priority, lazy.getValue(), tr);
        }
        if (logLevel <= priority.getLogLevel()) {
            int i = b.a[priority.ordinal()];
            if (i == 1) {
                if (tr == null) {
                    Log.d(tag, (String) lazy.getValue());
                    return;
                } else {
                    Log.d(tag, (String) lazy.getValue(), tr);
                    return;
                }
            }
            if (i == 2) {
                if (tr == null) {
                    Log.i(tag, (String) lazy.getValue());
                    return;
                } else {
                    Log.i(tag, (String) lazy.getValue(), tr);
                    return;
                }
            }
            if (i == 3) {
                if (tr == null) {
                    Log.w(tag, (String) lazy.getValue());
                    return;
                } else {
                    Log.e(tag, (String) lazy.getValue(), tr);
                    return;
                }
            }
            if (i == 4) {
                if (tr == null) {
                    Log.w(tag, (String) lazy.getValue());
                    return;
                } else {
                    Log.w(tag, (String) lazy.getValue(), tr);
                    return;
                }
            }
            if (i != 5) {
                throw new NoWhenBranchMatchedException();
            }
            if (tr == null) {
                Log.v(tag, (String) lazy.getValue());
            } else {
                Log.v(tag, (String) lazy.getValue(), tr);
            }
        }
    }

    public final String getBrazeLogTag(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return Constants.LOG_TAG_PREFIX + str;
    }
}

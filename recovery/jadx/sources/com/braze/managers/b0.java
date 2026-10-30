package com.braze.managers;

import android.content.Context;
import com.braze.support.BrazeLogger;
import com.braze.support.ReflectionUtils;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FirebaseMessaging;
import java.lang.reflect.Method;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b0 {
    public final Context a;
    public final g0 b;
    public final Lazy c;
    public final Lazy d;

    public b0(Context context, g0 registrationDataProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(registrationDataProvider, "registrationDataProvider");
        this.a = context;
        this.b = registrationDataProvider;
        this.c = LazyKt.lazy(new Function0() { // from class: com.braze.managers.b0$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(b0.c());
            }
        });
        this.d = LazyKt.lazy(new Function0() { // from class: com.braze.managers.b0$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(b0.d());
            }
        });
    }

    public static final String b(String str) {
        return com.braze.j.a("Automatically obtained Firebase Cloud Messaging push token: ", str);
    }

    public static final boolean c() {
        return ReflectionUtils.doesMethodExist("com.google.firebase.iid.FirebaseInstanceId", "getToken", String.class, String.class);
    }

    public static final String d(String str) {
        return com.braze.j.a("Registering for Firebase Cloud Messaging token using sender id: ", str);
    }

    public static final String e() {
        return "Failed to register for Firebase Cloud Messaging";
    }

    public static final String f() {
        return "Firebase Cloud Messaging 'InstanceId' object could not be invoked. Not registering for Firebase Cloud Messaging.";
    }

    public static final String g() {
        return "Firebase Cloud Messaging 'FirebaseInstanceId.getInstance().getToken()' method could not obtained. Not registering for Firebase Cloud Messaging.";
    }

    public static final String h() {
        return "Could not invoke 'getToken()' Not registering for Firebase Cloud Messaging.";
    }

    public static final String i() {
        return "Failed to get push token via instance id";
    }

    public static final String j() {
        return "Firebase Cloud Messaging 'getInstance' method could not obtained. Not registering for Firebase Cloud Messaging.";
    }

    public static final String k() {
        return "Could not call 'getInstance' method. Not registering for Firebase Cloud Messaging.";
    }

    public final void a(String firebaseSenderId) {
        Intrinsics.checkNotNullParameter(firebaseSenderId, "firebaseSenderId");
        try {
            if (((Boolean) this.d.getValue()).booleanValue()) {
                FirebaseMessaging.getInstance().getToken().addOnCompleteListener(new OnCompleteListener() { // from class: com.braze.managers.b0$$ExternalSyntheticLambda9
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        b0.a(this.f$0, task);
                    }
                });
            } else if (((Boolean) this.c.getValue()).booleanValue()) {
                c(firebaseSenderId);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.b0$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b0.e();
                }
            }, 4, (Object) null);
        }
    }

    public final void c(final String str) {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.Priority priority = BrazeLogger.Priority.V;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.managers.b0$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b0.d(str);
            }
        }, 6, (Object) null);
        try {
            Method methodQuietly = ReflectionUtils.getMethodQuietly("com.google.firebase.iid.FirebaseInstanceId", "getInstance", (Class<?>[]) new Class[0]);
            if (methodQuietly == null) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.b0$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b0.j();
                    }
                }, 7, (Object) null);
                return;
            }
            Pair<Boolean, Object> pairInvokeMethodQuietly = ReflectionUtils.invokeMethodQuietly(null, methodQuietly, new Object[0]);
            if (!pairInvokeMethodQuietly.getFirst().booleanValue()) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.b0$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b0.k();
                    }
                }, 7, (Object) null);
                return;
            }
            Object second = pairInvokeMethodQuietly.getSecond();
            if (second == null) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.b0$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b0.f();
                    }
                }, 7, (Object) null);
                return;
            }
            Method methodQuietly2 = ReflectionUtils.getMethodQuietly(second.getClass(), "getToken", (Class<?>[]) new Class[]{String.class, String.class});
            if (methodQuietly2 == null) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.b0$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b0.g();
                    }
                }, 7, (Object) null);
                return;
            }
            Pair<Boolean, Object> pairInvokeMethodQuietly2 = ReflectionUtils.invokeMethodQuietly(second, methodQuietly2, str, FirebaseMessaging.INSTANCE_ID_SCOPE);
            if (!pairInvokeMethodQuietly2.getFirst().booleanValue()) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.b0$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b0.h();
                    }
                }, 7, (Object) null);
                return;
            }
            final Object second2 = pairInvokeMethodQuietly2.getSecond();
            if (second2 instanceof String) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.managers.b0$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b0.a(second2);
                    }
                }, 6, (Object) null);
                ((l0) this.b).a((String) second2);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.b0$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b0.i();
                }
            }, 4, (Object) null);
        }
    }

    public static final void a(b0 b0Var, final Task task) {
        Intrinsics.checkNotNullParameter(task, "task");
        if (!task.isSuccessful()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) b0Var, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.b0$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b0.a(task);
                }
            }, 6, (Object) null);
            return;
        }
        final String str = (String) task.getResult();
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) b0Var, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.b0$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b0.b(str);
            }
        }, 6, (Object) null);
        ((l0) b0Var.b).a(str);
    }

    public static final String a(Task task) {
        return "Fetching registration token failed using FirebaseMessaging instance with default Firebase installation with exception " + task.getException();
    }

    public final boolean a() {
        if (com.braze.support.k.b(this.a)) {
            return ((Boolean) this.d.getValue()).booleanValue() || ((Boolean) this.c.getValue()).booleanValue();
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.b0$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b0.b();
            }
        }, 6, (Object) null);
        return false;
    }

    public static final String a(Object obj) {
        return "Automatically obtained Firebase Cloud Messaging token: " + ((String) obj);
    }

    public static final String b() {
        return "Firebase Cloud Messaging requires the Google Play Store to be installed.";
    }

    public static final boolean d() {
        return ReflectionUtils.doesMethodExist("com.google.firebase.messaging.FirebaseMessaging", "getToken", new Class[0]);
    }
}

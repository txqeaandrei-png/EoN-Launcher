package com.braze.support;

import com.braze.ui.actions.brazeactions.steps.StepData;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JC\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\b\u001a\u00020\t2\u001e\u0010\n\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00070\u000b\"\b\u0012\u0002\b\u0003\u0018\u00010\u0007H\u0007¢\u0006\u0002\u0010\fJ?\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t2\u001e\u0010\n\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00070\u000b\"\b\u0012\u0002\b\u0003\u0018\u00010\u0007H\u0007¢\u0006\u0002\u0010\u000eJC\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\b\u001a\u00020\t2\u001e\u0010\n\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00070\u000b\"\b\u0012\u0002\b\u0003\u0018\u00010\u0007H\u0002¢\u0006\u0002\u0010\fJ?\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t2\u001e\u0010\n\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00070\u000b\"\b\u0012\u0002\b\u0003\u0018\u00010\u0007H\u0007¢\u0006\u0002\u0010\u000eJE\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0014\u001a\u00020\u00052\u0016\u0010\u0015\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u000b\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0002\u0010\u0016J6\u0010\u0017\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0018\u001a\u00020\t2\u0012\b\u0002\u0010\n\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u00192\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0019J=\u0010\u001a\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t2\u001e\u0010\n\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00070\u000b\"\b\u0012\u0002\b\u0003\u0018\u00010\u0007H\u0007¢\u0006\u0002\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/braze/support/ReflectionUtils;", "", "<init>", "()V", "getMethodQuietly", "Ljava/lang/reflect/Method;", "clazz", "Ljava/lang/Class;", "methodName", "", "parameterTypes", "", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "className", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "getDeclaredMethodQuietly", "invokeMethodQuietly", "Lkotlin/Pair;", "", "receiver", "method", StepData.ARGS, "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lkotlin/Pair;", "constructObjectQuietly", "classpath", "", "doesMethodExist", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ReflectionUtils {
    public static final ReflectionUtils INSTANCE = new ReflectionUtils();

    private ReflectionUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object constructObjectQuietly$default(ReflectionUtils reflectionUtils, String str, List list, List list2, int i, Object obj) {
        if ((i & 2) != 0) {
            list = CollectionsKt.emptyList();
        }
        if ((i & 4) != 0) {
            list2 = CollectionsKt.emptyList();
        }
        return reflectionUtils.constructObjectQuietly(str, list, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String constructObjectQuietly$lambda$6() {
        return "Failed constructObjectQuietly";
    }

    @JvmStatic
    public static final boolean doesMethodExist(String className, String methodName, Class<?>... parameterTypes) {
        Intrinsics.checkNotNullParameter(className, "className");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        return getMethodQuietly(className, methodName, (Class<?>[]) Arrays.copyOf(parameterTypes, parameterTypes.length)) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v5, types: [T, java.lang.Class] */
    private final Method getDeclaredMethodQuietly(Class<?> clazz, final String methodName, Class<?>... parameterTypes) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = clazz;
        while (true) {
            T t = objectRef.element;
            if (t == 0) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.D, (Throwable) null, false, new Function0() { // from class: com.braze.support.ReflectionUtils$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ReflectionUtils.getDeclaredMethodQuietly$lambda$3(methodName);
                    }
                }, 6, (Object) null);
                return null;
            }
            try {
                return ((Class) t).getDeclaredMethod(methodName, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length));
            } catch (Exception unused) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.D, (Throwable) null, false, new Function0() { // from class: com.braze.support.ReflectionUtils$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ReflectionUtils.getDeclaredMethodQuietly$lambda$2(methodName, objectRef);
                    }
                }, 6, (Object) null);
                objectRef.element = ((Class) objectRef.element).getSuperclass();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final String getDeclaredMethodQuietly$lambda$2(String str, Ref.ObjectRef objectRef) {
        StringBuilder sbAppend = new StringBuilder("Could not find ").append(str).append(" on ");
        Class cls = (Class) objectRef.element;
        return sbAppend.append(cls != null ? cls.getName() : null).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getDeclaredMethodQuietly$lambda$3(String str) {
        return com.braze.a.a("Failed to find ", str, " on ${clazz.name} or any parent classes");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getDeclaredMethodQuietly$lambda$4() {
        return "Failed getDeclaredMethodQuietly";
    }

    @JvmStatic
    public static final Method getMethodQuietly(Class<?> clazz, String methodName, Class<?>... parameterTypes) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        try {
            return clazz.getMethod(methodName, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.D, (Throwable) e, false, new Function0() { // from class: com.braze.support.ReflectionUtils$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ReflectionUtils.getMethodQuietly$lambda$0();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getMethodQuietly$lambda$0() {
        return "Failed getMethodQuietly";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getMethodQuietly$lambda$1() {
        return "Failed getMethodQuietly";
    }

    @JvmStatic
    public static final Pair<Boolean, Object> invokeMethodQuietly(Object receiver, Method method, Object... args) {
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(args, "args");
        try {
            return new Pair<>(Boolean.TRUE, method.invoke(receiver, Arrays.copyOf(args, args.length)));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.D, (Throwable) e, false, new Function0() { // from class: com.braze.support.ReflectionUtils$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ReflectionUtils.invokeMethodQuietly$lambda$5();
                }
            }, 4, (Object) null);
            return new Pair<>(Boolean.FALSE, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String invokeMethodQuietly$lambda$5() {
        return "Failed invokeMethodQuietly";
    }

    public final Object constructObjectQuietly(String classpath, List<? extends Class<?>> parameterTypes, List<? extends Object> args) {
        Intrinsics.checkNotNullParameter(classpath, "classpath");
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        Intrinsics.checkNotNullParameter(args, "args");
        try {
            Class<?> cls = Class.forName(classpath);
            Class[] clsArr = (Class[]) parameterTypes.toArray(new Class[0]);
            Constructor<?> constructor = cls.getConstructor((Class[]) Arrays.copyOf(clsArr, clsArr.length));
            Object[] array = args.toArray(new Object[0]);
            return constructor.newInstance(Arrays.copyOf(array, array.length));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.support.ReflectionUtils$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ReflectionUtils.constructObjectQuietly$lambda$6();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    @JvmStatic
    public static final Method getMethodQuietly(String className, String methodName, Class<?>... parameterTypes) {
        Intrinsics.checkNotNullParameter(className, "className");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        try {
            Class<?> cls = Class.forName(className);
            Intrinsics.checkNotNull(cls);
            return getMethodQuietly(cls, methodName, (Class<?>[]) Arrays.copyOf(parameterTypes, parameterTypes.length));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.D, (Throwable) e, false, new Function0() { // from class: com.braze.support.ReflectionUtils$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ReflectionUtils.getMethodQuietly$lambda$1();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    public final Method getDeclaredMethodQuietly(String className, String methodName, Class<?>... parameterTypes) {
        Intrinsics.checkNotNullParameter(className, "className");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        try {
            Class<?> cls = Class.forName(className);
            Intrinsics.checkNotNull(cls);
            return getDeclaredMethodQuietly(cls, methodName, (Class<?>[]) Arrays.copyOf(parameterTypes, parameterTypes.length));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.D, (Throwable) e, false, new Function0() { // from class: com.braze.support.ReflectionUtils$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ReflectionUtils.getDeclaredMethodQuietly$lambda$4();
                }
            }, 4, (Object) null);
            return null;
        }
    }
}

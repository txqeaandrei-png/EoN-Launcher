package com.braze.support;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\u0007J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/braze/support/PackageUtils;", "", "<init>", "()V", "packageName", "", "setResourcePackageName", "", "getResourcePackageName", "context", "Landroid/content/Context;", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PackageUtils {
    public static final PackageUtils INSTANCE = new PackageUtils();
    private static String packageName;

    private PackageUtils() {
    }

    @JvmStatic
    public static final String getResourcePackageName(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String str = packageName;
        if (str != null) {
            return str;
        }
        String packageName2 = context.getPackageName();
        packageName = packageName2;
        return packageName2 == null ? "unknown.package" : packageName2;
    }

    @JvmStatic
    public static final void setResourcePackageName(String packageName2) {
        Intrinsics.checkNotNullParameter(packageName2, "packageName");
        if (StringsKt.isBlank(packageName2)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.support.PackageUtils$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PackageUtils.setResourcePackageName$lambda$0();
                }
            }, 6, (Object) null);
        } else {
            packageName = packageName2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setResourcePackageName$lambda$0() {
        return "Package name may not be blank";
    }
}

package com.braze.storage;

import android.content.Context;
import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a0 {
    public final e a;

    public a0(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = new e(context);
    }

    public static final String a(boolean z) {
        return "Setting Braze SDK disabled to: " + z;
    }

    public final void b(final boolean z) {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.storage.a0$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a0.a(z);
            }
        }, 6, (Object) null);
        this.a.edit().putBoolean("appboy_sdk_disabled", z).apply();
    }
}

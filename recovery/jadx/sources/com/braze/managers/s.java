package com.braze.managers;

import android.content.Context;
import com.braze.support.BrazeImageUtils;
import com.braze.support.BrazeLogger;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class s {
    public final String a(Context context, boolean z) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Pair<Integer, Integer> displayHeightAndWidthPixels = BrazeImageUtils.getDisplayHeightAndWidthPixels(context);
            int iIntValue = displayHeightAndWidthPixels.component1().intValue();
            int iIntValue2 = displayHeightAndWidthPixels.component2().intValue();
            return z ? new StringBuilder().append(iIntValue).append('x').append(iIntValue2).toString() : new StringBuilder().append(iIntValue2).append('x').append(iIntValue).toString();
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.s$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return s.a();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    public static final String a() {
        return "Failed to obtain device resolution";
    }
}

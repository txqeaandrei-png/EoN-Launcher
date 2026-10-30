package com.braze.storage;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class z {
    public final Context a;
    public final String b;
    public final String c;
    public final SharedPreferences d;

    public z(Context context, String str, String str2) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context;
        this.b = str;
        this.c = str2;
        this.d = com.braze.managers.c.a(context, str, str2, new StringBuilder("com.braze.storage.sdk_auth_cache"), 0);
    }

    public static final String a(String str) {
        return com.braze.j.a("Setting signature to: ", str);
    }

    public final void b(final String str) {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.storage.z$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return z.a(str);
            }
        }, 6, (Object) null);
        this.d.edit().putString("auth_signature", str).apply();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return Intrinsics.areEqual(this.a, zVar.a) && Intrinsics.areEqual(this.b, zVar.b) && Intrinsics.areEqual(this.c, zVar.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return "SdkAuthenticationCache(context=" + this.a + ", userId=" + this.b + ", apiKey=" + this.c + ')';
    }
}

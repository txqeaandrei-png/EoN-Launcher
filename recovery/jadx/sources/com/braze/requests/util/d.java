package com.braze.requests.util;

import android.content.SharedPreferences;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    public int a;
    public int b;
    public final SharedPreferences c;
    public long d;
    public double e;

    public d(int i, int i2, SharedPreferences storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        this.a = i;
        this.b = i2;
        this.c = storage;
        this.d = storage.getLong("last_call_at_ms", 0L);
        this.e = storage.getFloat("current_token_count", RangesKt.coerceAtLeast(this.a, 1));
    }

    public final void a() {
        long jNowInMillisecondsSystemClock = DateTimeUtils.nowInMillisecondsSystemClock();
        this.e = a(jNowInMillisecondsSystemClock);
        this.d = jNowInMillisecondsSystemClock;
        this.c.edit().putLong("last_call_at_ms", this.d).putFloat("current_token_count", (float) this.e).apply();
        double d = this.e;
        if (d < 1.0d) {
            return;
        }
        this.e = d - ((double) 1);
    }

    public final long b() {
        this.e = a(DateTimeUtils.nowInMillisecondsSystemClock());
        this.c.edit().putLong("last_call_at_ms", this.d).putFloat("current_token_count", (float) this.e).apply();
        double d = this.e;
        if (d >= 1.0d) {
            return 0L;
        }
        return Math.max(0L, (long) ((((double) 1) - d) * ((double) RangesKt.coerceAtLeast(this.b, 1)) * ((double) 1000)));
    }

    public final String toString() {
        return "(capacity=" + RangesKt.coerceAtLeast(this.a, 1) + ", refillRate=" + RangesKt.coerceAtLeast(this.b, 1) + ", lastCallAt='" + DateTimeUtils.formatDateFromMillis$default(this.d, null, null, 3, null) + "', currentTokenCount=" + a(DateTimeUtils.nowInMillisecondsSystemClock()) + ')';
    }

    public static final String b(int i, int i2) {
        return "TokenBucketRateLimiter updated with new capacity: " + i + " and refill rate: " + i2;
    }

    public final double a(long j) {
        return Math.min((((j - this.d) / ((double) RangesKt.coerceAtLeast(this.b, 1))) / ((double) 1000)) + this.e, RangesKt.coerceAtLeast(this.a, 1));
    }

    public final void a(final int i, final int i2) {
        if (i < 1 || i2 < 1) {
            return;
        }
        if (this.a == i && this.b == i2) {
            return;
        }
        this.a = i;
        this.b = i2;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.requests.util.d$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d.b(i, i2);
            }
        }, 6, (Object) null);
    }
}

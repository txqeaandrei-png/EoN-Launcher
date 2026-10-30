package com.braze.managers;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class o0 {
    public boolean a;
    public Long b;
    public String c;
    public long d;
    public long e;
    public long f;

    public /* synthetic */ o0() {
        this(false, null, null, 0L, 0L, 0L);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o0)) {
            return false;
        }
        o0 o0Var = (o0) obj;
        return this.a == o0Var.a && Intrinsics.areEqual(this.b, o0Var.b) && Intrinsics.areEqual(this.c, o0Var.c) && this.d == o0Var.d && this.e == o0Var.e && this.f == o0Var.f;
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        Long l = this.b;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str = this.c;
        return Long.hashCode(this.f) + ((Long.hashCode(this.e) + ((Long.hashCode(this.d) + ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Config(isEnabled=" + this.a + ", sdkDebuggerExpirationTime=" + this.b + ", sdkDebuggerAuthCode=" + this.c + ", sdkDebuggerFlushIntervalBytes=" + this.d + ", sdkDebuggerFlushIntervalSeconds=" + this.e + ", sdkDebuggerMaxPayloadBytes=" + this.f + ')';
    }

    public o0(boolean z, Long l, String str, long j, long j2, long j3) {
        this.a = z;
        this.b = l;
        this.c = str;
        this.d = j;
        this.e = j2;
        this.f = j3;
    }
}

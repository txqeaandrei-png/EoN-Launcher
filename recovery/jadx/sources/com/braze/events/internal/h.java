package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    public final String a;

    public h(String mite) {
        Intrinsics.checkNotNullParameter(mite, "mite");
        this.a = mite;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h) && Intrinsics.areEqual(this.a, ((h) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "DustMiteReceivedEvent(mite=" + this.a + ')';
    }
}

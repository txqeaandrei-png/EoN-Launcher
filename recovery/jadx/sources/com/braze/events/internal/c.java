package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public final com.braze.requests.a a;

    public c(com.braze.requests.a request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.a = request;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && Intrinsics.areEqual(this.a, ((c) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "BannersRequestSuccessEvent(request=" + this.a + ')';
    }
}

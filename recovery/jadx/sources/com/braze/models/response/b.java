package com.braze.models.response;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements d {
    public final String a;
    public final com.braze.requests.n b;

    public b(String str, com.braze.requests.n originalRequest) {
        Intrinsics.checkNotNullParameter(originalRequest, "originalRequest");
        this.a = str;
        this.b = originalRequest;
    }

    @Override // com.braze.models.response.d
    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.areEqual(this.a, bVar.a) && Intrinsics.areEqual(this.b, bVar.b);
    }

    public final int hashCode() {
        String str = this.a;
        return this.b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return "BasicResponseError(errorMessage=" + this.a + ", originalRequest=" + this.b + ')';
    }
}

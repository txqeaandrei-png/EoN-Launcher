package com.braze.models.response;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements d {
    public final com.braze.requests.n a;
    public final int b;
    public final String c;
    public final String d;

    public h(com.braze.requests.n originalRequest, int i, String str, String str2) {
        Intrinsics.checkNotNullParameter(originalRequest, "originalRequest");
        this.a = originalRequest;
        this.b = i;
        this.c = str;
        this.d = str2;
    }

    @Override // com.braze.models.response.d
    public final String a() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return Intrinsics.areEqual(this.a, hVar.a) && this.b == hVar.b && Intrinsics.areEqual(this.c, hVar.c) && Intrinsics.areEqual(this.d, hVar.d);
    }

    public final int hashCode() {
        int iHashCode = (Integer.hashCode(this.b) + (this.a.hashCode() * 31)) * 31;
        String str = this.c;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return "{code = " + this.b + ", reason = " + this.c + ", message = " + this.d + '}';
    }
}

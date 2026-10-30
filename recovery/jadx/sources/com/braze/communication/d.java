package com.braze.communication;

import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    public final int a;
    public final Map b;
    public final JSONObject c;

    public d(int i, Map responseHeaders, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(responseHeaders, "responseHeaders");
        this.a = i;
        this.b = responseHeaders;
        this.c = jSONObject;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.a == dVar.a && Intrinsics.areEqual(this.b, dVar.b) && Intrinsics.areEqual(this.c, dVar.c);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (Integer.hashCode(this.a) * 31)) * 31;
        JSONObject jSONObject = this.c;
        return iHashCode + (jSONObject == null ? 0 : jSONObject.hashCode());
    }

    public final String toString() {
        return "HttpConnectorResult(responseCode=" + this.a + ", responseHeaders=" + this.b + ", jsonResponse=" + this.c + ')';
    }

    public /* synthetic */ d(int i, Map map, int i2) {
        this(i, (i2 & 2) != 0 ? MapsKt.emptyMap() : map, (JSONObject) null);
    }
}

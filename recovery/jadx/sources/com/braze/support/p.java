package com.braze.support;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public final class p implements Function1 {
    public final /* synthetic */ JSONArray a;

    public p(JSONArray jSONArray) {
        this.a = jSONArray;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws JSONException {
        Object obj2 = this.a.get(((Number) obj).intValue());
        Intrinsics.reifiedOperationMarker(1, "T");
        return obj2;
    }
}

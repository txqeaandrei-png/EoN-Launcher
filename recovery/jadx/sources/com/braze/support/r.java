package com.braze.support;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class r implements Function1 {
    public final /* synthetic */ JSONObject a;

    public r(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws JSONException {
        Object obj2 = this.a.get((String) obj);
        Intrinsics.reifiedOperationMarker(1, "T");
        return obj2;
    }
}

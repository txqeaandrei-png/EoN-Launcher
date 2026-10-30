package com.braze.support;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class q implements Function1 {
    public final /* synthetic */ JSONObject a;

    public q(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object objOpt = this.a.opt((String) obj);
        Intrinsics.reifiedOperationMarker(3, "T");
        return Boolean.valueOf(objOpt instanceof Object);
    }
}

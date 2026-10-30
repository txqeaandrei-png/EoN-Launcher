package com.braze.support;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public final class o implements Function1 {
    public final /* synthetic */ JSONArray a;

    public o(JSONArray jSONArray) {
        this.a = jSONArray;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object objOpt = this.a.opt(((Number) obj).intValue());
        Intrinsics.reifiedOperationMarker(3, "T");
        return Boolean.valueOf(objOpt instanceof Object);
    }
}

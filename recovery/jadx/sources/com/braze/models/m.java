package com.braze.models;

import com.braze.support.DateTimeUtils;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class m implements IPutIntoJson {
    public final String a;
    public final long b;

    public m(String log) {
        Intrinsics.checkNotNullParameter(log, "log");
        long jNowInMilliseconds = DateTimeUtils.nowInMilliseconds();
        Intrinsics.checkNotNullParameter(log, "log");
        this.a = log;
        this.b = jNowInMilliseconds;
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut */
    public final Object getJsonObject() {
        return new JSONObject().put("log", this.a).put("time", this.b);
    }
}

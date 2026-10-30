package com.braze.models.outgoing;

import com.braze.models.IPutIntoJson;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class l implements IPutIntoJson, com.braze.models.k {
    public final JSONObject a;
    public final JSONArray b;

    public l(JSONObject userObject) {
        Intrinsics.checkNotNullParameter(userObject, "userObject");
        this.a = userObject;
        this.b = new JSONArray().put(userObject);
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut */
    public final Object getJsonObject() {
        JSONArray jsonArrayForJsonPut = this.b;
        Intrinsics.checkNotNullExpressionValue(jsonArrayForJsonPut, "jsonArrayForJsonPut");
        return jsonArrayForJsonPut;
    }

    @Override // com.braze.models.k
    public final boolean isEmpty() {
        if (this.a.length() == 0) {
            return true;
        }
        return this.a.length() == 1 && this.a.has("user_id");
    }
}

package com.braze.models.outgoing;

import com.braze.models.IPutIntoJson;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class k implements IPutIntoJson, com.braze.models.k {
    public final String a;
    public final Boolean b;
    public final Boolean c;
    public final i d;

    public k(String str, Boolean bool, Boolean bool2, i iVar) {
        this.a = str;
        this.b = bool;
        this.c = bool2;
        this.d = iVar;
    }

    public final boolean b() {
        return this.c != null;
    }

    @Override // com.braze.models.k
    public final boolean isEmpty() throws JSONException {
        i iVar;
        JSONObject jsonObject = getJsonObject();
        if (jsonObject.length() == 0) {
            return true;
        }
        if (this.b == null && this.c == null && (iVar = this.d) != null) {
            return !iVar.b;
        }
        if (jsonObject.length() == 1) {
            return jsonObject.has("user_id");
        }
        return false;
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut */
    public final JSONObject getJsonObject() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String str = this.a;
        if (str != null && str.length() != 0) {
            jSONObject.put("user_id", this.a);
        }
        Boolean bool = this.b;
        if (bool != null) {
            jSONObject.put("feed", bool.booleanValue());
        }
        Boolean bool2 = this.c;
        if (bool2 != null) {
            jSONObject.put("triggers", bool2.booleanValue());
        }
        i iVar = this.d;
        if (iVar != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("config_time", iVar.a);
            jSONObject.put("config", jSONObject2);
        }
        return jSONObject;
    }
}

package com.braze.triggers.conditions;

import com.braze.support.BrazeLogger;
import com.braze.support.StringUtils;
import com.google.firebase.messaging.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends l {
    public static final String d = BrazeLogger.getBrazeLogTag((Class<?>) i.class);
    public final String c;

    public i(JSONObject jSONObject) {
        super(jSONObject);
        this.c = jSONObject.getJSONObject(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).getString("product_id");
    }

    @Override // com.braze.triggers.conditions.c
    public final boolean a(com.braze.triggers.events.b bVar) {
        if (!(bVar instanceof com.braze.triggers.events.f) || StringUtils.isNullOrBlank(this.c)) {
            return false;
        }
        com.braze.triggers.events.f fVar = (com.braze.triggers.events.f) bVar;
        if (!StringUtils.isNullOrBlank(fVar.f) && fVar.f.equals(this.c)) {
            return this.a.a(bVar);
        }
        return false;
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut */
    public final Object getJsonObject() {
        JSONObject jSONObjectB = super.b();
        try {
            jSONObjectB.put("type", "purchase_property");
            JSONObject jSONObject = jSONObjectB.getJSONObject(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
            jSONObject.put("product_id", this.c);
            jSONObjectB.put(Constants.ScionAnalytics.MessageType.DATA_MESSAGE, jSONObject);
        } catch (JSONException e) {
            BrazeLogger.e(d, "Caught exception creating Json.", e);
        }
        return jSONObjectB;
    }
}

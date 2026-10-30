package com.braze.triggers.conditions;

import com.braze.support.BrazeLogger;
import com.braze.support.StringUtils;
import com.google.firebase.messaging.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends l {
    public static final String d = BrazeLogger.getBrazeLogTag((Class<?>) b.class);
    public final String c;

    public b(JSONObject jSONObject) {
        super(jSONObject);
        this.c = jSONObject.getJSONObject(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).getString("event_name");
    }

    @Override // com.braze.triggers.conditions.c
    public final boolean a(com.braze.triggers.events.b bVar) {
        if (!(bVar instanceof com.braze.triggers.events.a)) {
            return false;
        }
        com.braze.triggers.events.a aVar = (com.braze.triggers.events.a) bVar;
        if (StringUtils.isNullOrBlank(aVar.f) || !aVar.f.equals(this.c)) {
            return false;
        }
        return this.a.a(bVar);
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut */
    public final Object getJsonObject() {
        JSONObject jSONObjectB = super.b();
        try {
            jSONObjectB.put("type", "custom_event_property");
            JSONObject jSONObject = jSONObjectB.getJSONObject(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
            jSONObject.put("event_name", this.c);
            jSONObjectB.put(Constants.ScionAnalytics.MessageType.DATA_MESSAGE, jSONObject);
        } catch (JSONException e) {
            BrazeLogger.e(d, "Caught exception creating CustomEventWithPropertiesTriggerCondition Json.", e);
        }
        return jSONObjectB;
    }
}

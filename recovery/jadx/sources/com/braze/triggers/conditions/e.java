package com.braze.triggers.conditions;

import com.braze.support.StringUtils;
import com.google.firebase.messaging.Constants;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements d {
    public final String a;
    public final HashSet b = new HashSet();

    public e(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
        this.a = jSONObject2.getString("id");
        JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("buttons");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                this.b.add(jSONArrayOptJSONArray.getString(i));
            }
        }
    }

    @Override // com.braze.triggers.conditions.c
    public final boolean a(com.braze.triggers.events.b bVar) {
        if (bVar instanceof com.braze.triggers.events.d) {
            com.braze.triggers.events.d dVar = (com.braze.triggers.events.d) bVar;
            if (!StringUtils.isNullOrBlank(dVar.e) && dVar.e.equals(this.a)) {
                if (this.b.size() > 0) {
                    return !StringUtils.isNullOrBlank(dVar.f) && this.b.contains(dVar.f);
                }
                return StringUtils.isNullOrBlank(dVar.f);
            }
        }
        return false;
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut */
    public final Object getJsonObject() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", "iam_click");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", this.a);
            if (this.b.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = this.b.iterator();
                while (it.hasNext()) {
                    jSONArray.put((String) it.next());
                }
                jSONObject2.put("buttons", jSONArray);
            }
            jSONObject.put(Constants.ScionAnalytics.MessageType.DATA_MESSAGE, jSONObject2);
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }
}

package com.braze.triggers.actions;

import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g implements a {
    public final String a;
    public final com.braze.triggers.config.c b;
    public final boolean c;
    public com.braze.triggers.utils.b d;
    public final ArrayList e;

    public g(JSONObject json) throws JSONException {
        Intrinsics.checkNotNullParameter(json, "json");
        ArrayList arrayList = new ArrayList();
        this.e = arrayList;
        this.a = json.getString("id");
        this.b = new com.braze.triggers.config.c(json);
        JSONArray jSONArray = json.getJSONArray("trigger_condition");
        if (jSONArray.length() > 0) {
            com.braze.triggers.utils.c cVar = com.braze.triggers.utils.c.a;
            Intrinsics.checkNotNull(jSONArray);
            arrayList.addAll(com.braze.triggers.utils.c.a(jSONArray));
        }
        this.c = json.optBoolean("prefetch", true);
    }

    public static final String a(g gVar, com.braze.triggers.events.b bVar) {
        return "Triggered action " + gVar.a + " not eligible to be triggered by " + bVar.a() + " event. Current device time outside triggered action time window.";
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0063 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:? A[RETURN, SYNTHETIC] */
    public final boolean b(final com.braze.triggers.events.b event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if ((this.b.a != -1 && DateTimeUtils.nowInSeconds() <= this.b.a) || (this.b.b != -1 && DateTimeUtils.nowInSeconds() >= this.b.b)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.actions.g$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.a(this.f$0, event);
                }
            }, 7, (Object) null);
            return false;
        }
        Iterator it = this.e.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (((com.braze.triggers.conditions.d) it.next()).a(event)) {
                if (i != -1) {
                    return true;
                }
                return false;
            }
            i++;
        }
        i = -1;
        if (i != -1) {
            return true;
        }
        return false;
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut */
    public JSONObject getJsonObject() {
        try {
            JSONObject jsonObject = this.b.getJsonObject();
            if (jsonObject != null) {
                jsonObject.put("id", this.a);
                JSONArray jSONArray = new JSONArray();
                Iterator it = this.e.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((com.braze.triggers.conditions.d) it.next()).getJsonObject());
                }
                jsonObject.put("trigger_condition", jSONArray);
                jsonObject.put("prefetch", this.c);
                return jsonObject;
            }
        } catch (JSONException unused) {
        }
        return null;
    }
}

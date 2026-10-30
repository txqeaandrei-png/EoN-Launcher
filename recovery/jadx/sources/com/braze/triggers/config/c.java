package com.braze.triggers.config;

import com.braze.models.IPutIntoJson;
import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.logging.LogFactory;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements IPutIntoJson {
    public final long a;
    public final long b;
    public final int c;
    public final int d;
    public final int e;
    public final b f;
    public final int g;

    public c(JSONObject json) {
        Intrinsics.checkNotNullParameter(json, "json");
        this.a = json.optLong("start_time", -1L);
        this.b = json.optLong("end_time", -1L);
        this.c = json.optInt(LogFactory.PRIORITY_KEY, 0);
        this.g = json.optInt("min_seconds_since_last_trigger", -1);
        this.d = json.optInt("delay", 0);
        this.e = json.optInt("timeout", -1);
        this.f = new b(json);
    }

    public static final String b() {
        return "Could not convert ScheduleConfig to JSON";
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut */
    public final JSONObject getPropertiesJSONObject() {
        try {
            JSONObject jsonObject = this.f.getPropertiesJSONObject();
            if (jsonObject == null) {
                return null;
            }
            jsonObject.put("start_time", this.a);
            jsonObject.put("end_time", this.b);
            jsonObject.put(LogFactory.PRIORITY_KEY, this.c);
            jsonObject.put("min_seconds_since_last_trigger", this.g);
            jsonObject.put("timeout", this.e);
            jsonObject.put("delay", this.d);
            return jsonObject;
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.triggers.config.c$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.b();
                }
            }, 4, (Object) null);
            return null;
        }
    }
}

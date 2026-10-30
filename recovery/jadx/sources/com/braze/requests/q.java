package com.braze.requests;

import com.braze.storage.e0;
import com.braze.support.BrazeLogger;
import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class q extends b {
    public final ArrayList j;
    public final boolean k;
    public final m l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(e0 serverConfigStorageProvider, String urlBase, String str, ArrayList pushDeliveryEvents) {
        super(new com.braze.requests.util.c(urlBase + "push/delivery_events", false), str, serverConfigStorageProvider);
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(urlBase, "urlBase");
        Intrinsics.checkNotNullParameter(pushDeliveryEvents, "pushDeliveryEvents");
        this.j = pushDeliveryEvents;
        this.k = pushDeliveryEvents.isEmpty();
        this.l = m.PUSH_DELIVERY_EVENTS;
    }

    public static final String d() {
        return "Experienced JSONException while creating PushDeliverySendRequest. Returning null.";
    }

    @Override // com.braze.requests.n
    public final boolean a() {
        return this.k;
    }

    @Override // com.braze.requests.b, com.braze.requests.n
    public final JSONObject b() {
        JSONObject jSONObjectB = super.b();
        if (jSONObjectB == null) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            for (com.braze.models.push.a aVar : this.j) {
                aVar.e.setValue(aVar, com.braze.models.outgoing.event.b.h[0], this.b);
                jSONArray.put(aVar.getJsonKey());
            }
            jSONObjectB.put("events", jSONArray);
            String str = this.b;
            if (str != null && !StringsKt.isBlank(str)) {
                jSONObjectB.put("user_id", this.b);
            }
            return jSONObjectB;
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.requests.q$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return q.d();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    @Override // com.braze.requests.n
    public final m c() {
        return this.l;
    }
}

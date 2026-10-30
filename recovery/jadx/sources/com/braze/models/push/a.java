package com.braze.models.push;

import com.braze.Constants;
import com.braze.enums.e;
import com.braze.models.outgoing.event.b;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends b {
    /* JADX WARN: Illegal instructions before constructor call */
    public a(String campaignId, long j) throws JSONException {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        e eVar = e.PUSH_DELIVERY_EVENT;
        JSONObject jSONObjectPut = new JSONObject().put(Constants.BRAZE_PUSH_CAMPAIGN_ID_KEY, campaignId);
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "put(...)");
        super(eVar, jSONObjectPut, j, 8);
    }
}

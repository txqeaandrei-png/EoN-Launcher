package com.braze.models.outgoing.event.push;

import com.braze.enums.e;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends com.braze.models.outgoing.event.b {
    public static final /* synthetic */ int i = 0;

    public b(JSONObject jSONObject) {
        super(e.PUSH_CLICKED, jSONObject, 0.0d, 12);
    }
}

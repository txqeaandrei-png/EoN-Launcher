package com.braze.models.response;

import com.braze.managers.o0;
import com.braze.managers.s0;
import com.braze.models.inappmessage.InAppMessageBase;
import com.braze.requests.v;
import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import com.google.firebase.messaging.Constants;
import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends a {
    public final JSONObject c;
    public final d d;
    public final i e;
    public final c f;
    public final InAppMessageBase g;
    public final ArrayList h;
    public final m i;
    public final ArrayList j;
    public final JSONArray k;
    public final String l;
    public final JSONArray m;
    public final long n;
    public final JSONObject o;
    public final o0 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(com.braze.requests.n request, com.braze.communication.d connectionResult, com.braze.managers.m brazeManager) {
        d bVar;
        c cVar;
        Exception exc;
        m mVar;
        super(request, connectionResult);
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(connectionResult, "connectionResult");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        JSONObject jsonObject = connectionResult.c;
        jsonObject = jsonObject == null ? new JSONObject() : jsonObject;
        this.c = jsonObject;
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Intrinsics.checkNotNullParameter(request, "request");
        String optionalString = JsonUtils.getOptionalString(jsonObject, Constants.IPC_BUNDLE_KEY_SEND_ERROR);
        JSONObject jSONObjectOptJSONObject = jsonObject.optJSONObject("auth_error");
        if (jSONObjectOptJSONObject != null) {
            bVar = new h(request, jSONObjectOptJSONObject.optInt("error_code", -1), JsonUtils.getOptionalString(jSONObjectOptJSONObject, "reason"), optionalString);
        } else if (Intrinsics.areEqual(optionalString, "invalid_api_key")) {
            bVar = new e(optionalString, request);
        } else {
            bVar = optionalString != null ? new b(optionalString, request) : null;
        }
        this.d = bVar;
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Intrinsics.checkNotNullParameter(request, "request");
        JSONObject jSONObjectOptJSONObject2 = jsonObject.optJSONObject("optional_auth_error");
        this.e = jSONObjectOptJSONObject2 != null ? new i(request, jSONObjectOptJSONObject2.optInt("error_code", -1), JsonUtils.getOptionalString(jSONObjectOptJSONObject2, "reason")) : null;
        this.k = jsonObject.optJSONArray("feature_flags");
        this.m = jsonObject.optJSONArray("feed");
        this.n = jsonObject.optLong("last_sync_at", -1L);
        this.o = jsonObject.optJSONObject("banners");
        if (bVar == null && (request instanceof com.braze.requests.e)) {
            try {
                cVar = new c(jsonObject);
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.models.response.g$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.a(this.f$0);
                    }
                }, 4, (Object) null);
                cVar = null;
            }
        } else {
            cVar = null;
        }
        this.f = cVar;
        ArrayList arrayListA = com.braze.triggers.utils.c.a.a(this.c.optJSONArray("triggers"), brazeManager);
        this.h = arrayListA;
        if (arrayListA != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.models.response.g$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.b(this.f$0);
                }
            }, 6, (Object) null);
        }
        final JSONObject jSONObjectOptJSONObject3 = this.c.optJSONObject("config");
        if (jSONObjectOptJSONObject3 != null) {
            try {
                mVar = new m(jSONObjectOptJSONObject3);
                try {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.models.response.g$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return g.a(jSONObjectOptJSONObject3);
                        }
                    }, 6, (Object) null);
                } catch (Exception e2) {
                    exc = e2;
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) exc, false, new Function0() { // from class: com.braze.models.response.g$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return g.b(jSONObjectOptJSONObject3);
                        }
                    }, 4, (Object) null);
                }
            } catch (Exception e3) {
                exc = e3;
                mVar = null;
            }
        } else {
            mVar = null;
        }
        this.i = mVar;
        JSONObject jSONObjectOptJSONObject4 = this.c.optJSONObject("templated_message");
        com.braze.triggers.utils.c cVar2 = com.braze.triggers.utils.c.a;
        this.g = com.braze.triggers.utils.c.a(jSONObjectOptJSONObject4, brazeManager);
        JSONArray jSONArrayOptJSONArray = this.c.optJSONArray("geofences");
        this.j = jSONArrayOptJSONArray != null ? com.braze.support.j.a(jSONArrayOptJSONArray) : null;
        this.l = request instanceof com.braze.requests.g ? JsonUtils.getOptionalString(this.c, "mite") : null;
        this.p = request instanceof v ? s0.k.a(this.c, true) : null;
    }

    public static final String a(g gVar) {
        return "Encountered Exception processing Content Cards response: " + gVar.c;
    }

    public static final String b(g gVar) {
        return "Found " + gVar.h.size() + " triggered actions in server response.";
    }

    public static final String a(JSONObject jSONObject) {
        return "Got server config: " + JsonUtils.getPrettyPrintedString(jSONObject);
    }

    public static final String b(JSONObject jSONObject) {
        return "Encountered Exception processing server config: " + jSONObject;
    }
}

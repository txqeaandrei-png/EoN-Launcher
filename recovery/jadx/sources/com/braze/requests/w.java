package com.braze.requests;

import com.braze.managers.o0;
import com.braze.storage.e0;
import com.braze.support.BrazeLogger;
import com.google.firebase.messaging.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class w extends b {
    public final ArrayList j;
    public final m k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(e0 serverConfigStorageProvider, String urlBase, String str, ArrayList logs) {
        super(new com.braze.requests.util.c(urlBase + "debugger/log", true), str, serverConfigStorageProvider);
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(urlBase, "urlBase");
        Intrinsics.checkNotNullParameter(logs, "logs");
        this.j = logs;
        this.k = m.SDK_DEBUGGER_LOG;
    }

    public static final String d() {
        return "Experienced JSONException while creating SDK Debugger Log request. Returning null.";
    }

    @Override // com.braze.requests.n
    public final boolean a() {
        return this.j.isEmpty();
    }

    @Override // com.braze.requests.b, com.braze.requests.n
    public final JSONObject b() {
        JSONObject jSONObjectB = super.b();
        if (jSONObjectB == null) {
            return null;
        }
        try {
            String str = this.b;
            if (str != null && !StringsKt.isBlank(str)) {
                jSONObjectB.put("user_id", this.b);
            }
            JSONArray jSONArray = new JSONArray();
            for (com.braze.models.m mVar : this.j) {
                mVar.getClass();
                jSONArray.put(new JSONObject().put("log", mVar.a).put("time", mVar.b));
            }
            jSONObjectB.put(Constants.ScionAnalytics.MessageType.DATA_MESSAGE, new JSONArray().put(new JSONObject().put("type", "sdk_event_log").put(Constants.ScionAnalytics.MessageType.DATA_MESSAGE, jSONArray)));
            return jSONObjectB;
        } catch (JSONException e) {
            BrazeLogger.INSTANCE.brazelog((Object) this, BrazeLogger.Priority.E, (Throwable) e, true, new Function0() { // from class: com.braze.requests.w$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return w.d();
                }
            });
            return null;
        }
    }

    @Override // com.braze.requests.n
    public final m c() {
        return this.k;
    }

    @Override // com.braze.requests.b, com.braze.requests.o
    public final void a(com.braze.events.e internalPublisher, com.braze.events.e externalPublisher, final com.braze.models.response.d responseError) {
        Intrinsics.checkNotNullParameter(internalPublisher, "internalPublisher");
        Intrinsics.checkNotNullParameter(externalPublisher, "externalPublisher");
        Intrinsics.checkNotNullParameter(responseError, "responseError");
        super.a(internalPublisher, externalPublisher, responseError);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, true, new Function0() { // from class: com.braze.requests.w$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return w.a(responseError);
            }
        }, 3, (Object) null);
        ((com.braze.events.d) internalPublisher).b(new com.braze.events.internal.t(new o0()), com.braze.events.internal.t.class);
    }

    public static final String a(com.braze.models.response.d dVar) {
        return "SDK Debugger Log Request failed " + dVar.a() + ". Disabling SDK Debugger.";
    }

    @Override // com.braze.requests.b, com.braze.requests.n
    public final void a(HashMap existingHeaders) {
        Intrinsics.checkNotNullParameter(existingHeaders, "existingHeaders");
        super.a(existingHeaders);
        existingHeaders.put("X-Braze-Rec-Auth-Code", this.c.y());
    }
}

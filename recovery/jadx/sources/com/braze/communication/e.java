package com.braze.communication;

import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import com.braze.support.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    public final b a;

    public e(b httpConnector) {
        Intrinsics.checkNotNullParameter(httpConnector, "httpConnector");
        this.a = httpConnector;
    }

    public static final String b() {
        return "Exception while logging result: ";
    }

    public final d a(final com.braze.requests.util.c requestTarget, final HashMap requestHeaders, final JSONObject payload) {
        Intrinsics.checkNotNullParameter(requestTarget, "requestTarget");
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Lazy lazy = LazyKt.lazy(new Function0() { // from class: com.braze.communication.e$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e.a(requestTarget, requestHeaders, payload);
            }
        });
        a(requestTarget, requestHeaders, lazy, payload);
        long jCurrentTimeMillis = System.currentTimeMillis();
        d dVarA = this.a.a(requestTarget, requestHeaders, payload);
        a(lazy, requestTarget, dVarA.b, dVarA.c, System.currentTimeMillis() - jCurrentTimeMillis);
        return dVarA;
    }

    public static final String a(com.braze.requests.util.c cVar, Map map, JSONObject jSONObject) {
        Object[] requestArgs = {cVar, map, jSONObject};
        String str = l.a;
        Intrinsics.checkNotNullParameter(requestArgs, "requestArgs");
        long jHashCode = 1;
        for (int i = 0; i < 3; i++) {
            jHashCode *= (long) requestArgs[i].hashCode();
        }
        String hexString = Long.toHexString(jHashCode);
        Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(...)");
        return hexString;
    }

    public final void a(final com.braze.requests.util.c cVar, final HashMap map, final Lazy lazy, final JSONObject jSONObject) {
        try {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this, (BrazeLogger.Priority) null, (Throwable) null, cVar.d, new Function0() { // from class: com.braze.communication.e$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e.a(lazy, cVar, this, map, jSONObject);
                }
            }, 3, (Object) null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.communication.e$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e.a();
                }
            }, 4, (Object) null);
        }
    }

    public static final String a(Lazy lazy, com.braze.requests.util.c cVar, e eVar, Map map, JSONObject jSONObject) {
        StringBuilder sbAppend = new StringBuilder("\n                |Making request with id => \"").append((String) lazy.getValue()).append("\"\n                |to url: ").append(cVar).append("\n                \n                |with headers:\n                ");
        eVar.getClass();
        return StringsKt.trimMargin$default(com.braze.c.a(sbAppend.append(a(map)).append("\n                |\n                |"), jSONObject == null ? "" : "and JSON :\n" + JsonUtils.getPrettyPrintedString(jSONObject), "\n                "), null, 1, null);
    }

    public static final String a() {
        return "Exception while logging request: ";
    }

    public final void a(final Lazy lazy, final com.braze.requests.util.c cVar, final Map map, final JSONObject jSONObject, final long j) {
        try {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.e$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e.a(lazy, cVar, j, this, map, jSONObject);
                }
            }, 7, (Object) null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.communication.e$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e.b();
                }
            }, 4, (Object) null);
        }
    }

    public static final String a(Lazy lazy, com.braze.requests.util.c cVar, long j, e eVar, Map map, JSONObject jSONObject) {
        StringBuilder sbAppend = new StringBuilder("\n                |Made request with id => \"").append((String) lazy.getValue()).append("\"\n                |to url: ").append(cVar).append("\n                |took: ").append(j).append("ms\n                \n                |with response headers:\n                ");
        eVar.getClass();
        return StringsKt.trimMargin$default(sbAppend.append(a(map)).append("\n                |\n                |and response JSON:\n                |").append(JsonUtils.getPrettyPrintedString(jSONObject)).append("\n                ").toString(), null, 1, null);
    }

    public static String a(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            arrayList.add("|\"" + ((String) entry.getKey()) + "\" => \"" + ((String) entry.getValue()) + '\"');
        }
        return CollectionsKt.joinToString$default(arrayList, "\n", null, null, 0, null, null, 62, null);
    }
}

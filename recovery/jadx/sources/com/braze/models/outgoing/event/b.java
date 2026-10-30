package com.braze.models.outgoing.event;

import com.braze.enums.e;
import com.braze.models.i;
import com.braze.models.o;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.google.firebase.messaging.Constants;
import java.util.UUID;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b implements i {
    public final e a;
    public final JSONObject b;
    public final double c;
    public final String d;
    public final com.braze.support.delegates.a e;
    public final com.braze.support.delegates.a f;
    public static final /* synthetic */ KProperty[] h = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(b.class, "userId", "getUserId()Ljava/lang/String;", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(b.class, "sessionId", "getSessionId()Lcom/braze/models/SessionId;", 0))};
    public static final a g = new a();

    public b(e type, JSONObject data, double d, String uniqueIdentifier) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(uniqueIdentifier, "uniqueIdentifier");
        this.a = type;
        this.b = data;
        this.c = d;
        this.d = uniqueIdentifier;
        this.e = new com.braze.support.delegates.a();
        this.f = new com.braze.support.delegates.a();
        if (type == e.UNKNOWN) {
            throw new IllegalArgumentException("Event type cannot be unknown.");
        }
    }

    public static final String b() {
        return "Caught exception creating Braze event json";
    }

    public final void a(o oVar) {
        this.f.setValue(this, h[1], oVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(getClass(), obj.getClass())) {
            return false;
        }
        return Intrinsics.areEqual(this.d, ((b) obj).d);
    }

    public final int hashCode() {
        return this.d.hashCode();
    }

    public final String toString() {
        String string = getPropertiesJSONObject().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut */
    public final JSONObject getPropertiesJSONObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", this.a.a);
            jSONObject.put(Constants.ScionAnalytics.MessageType.DATA_MESSAGE, this.b);
            jSONObject.put("time", this.c);
            com.braze.support.delegates.a aVar = this.e;
            KProperty[] kPropertyArr = h;
            KProperty property = kPropertyArr[0];
            aVar.getClass();
            Intrinsics.checkNotNullParameter(this, "thisRef");
            Intrinsics.checkNotNullParameter(property, "property");
            String str = (String) aVar.a;
            if (str != null && str.length() != 0) {
                com.braze.support.delegates.a aVar2 = this.e;
                KProperty property2 = kPropertyArr[0];
                aVar2.getClass();
                Intrinsics.checkNotNullParameter(this, "thisRef");
                Intrinsics.checkNotNullParameter(property2, "property");
                jSONObject.put("user_id", (String) aVar2.a);
            }
            com.braze.support.delegates.a aVar3 = this.f;
            KProperty property3 = kPropertyArr[1];
            aVar3.getClass();
            Intrinsics.checkNotNullParameter(this, "thisRef");
            Intrinsics.checkNotNullParameter(property3, "property");
            o oVar = (o) aVar3.a;
            if (oVar != null) {
                jSONObject.put("session_id", oVar.b);
            }
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.outgoing.event.b$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.b();
                }
            }, 4, (Object) null);
        }
        return jSONObject;
    }

    public /* synthetic */ b(e eVar, JSONObject jSONObject, double d, int i) {
        this(eVar, (i & 2) != 0 ? new JSONObject() : jSONObject, (i & 4) != 0 ? DateTimeUtils.nowInSecondsPrecise() : d, UUID.randomUUID().toString());
    }
}

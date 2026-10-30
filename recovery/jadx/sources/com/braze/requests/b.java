package com.braze.requests;

import com.braze.Braze;
import com.braze.events.BrazeSdkAuthenticationErrorEvent;
import com.braze.storage.e0;
import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import java.util.HashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b extends s implements n {
    public String b;
    public final e0 c;
    public Long d;
    public String e;
    public String f;
    public String g;
    public com.braze.models.outgoing.h h;
    public String i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(com.braze.requests.util.c requestTarget, String str, e0 serverConfigStorageProvider) {
        super(requestTarget);
        Intrinsics.checkNotNullParameter(requestTarget, "requestTarget");
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        this.b = str;
        this.c = serverConfigStorageProvider;
    }

    public static final String a(String str) {
        return com.braze.j.a("Error occurred while executing Braze request: ", str);
    }

    public static final String c(b bVar) {
        return bVar + " for " + bVar.c() + " executed successfully.";
    }

    public static final String d() {
        return "Experienced JSONException while retrieving parameters. Returning null.";
    }

    public static final String f() {
        return "******************************************************************";
    }

    public static final String g() {
        return "******************************************************************";
    }

    public static final String h() {
        return "**                        !! WARNING !!                         **";
    }

    public static final String i() {
        return "**  The current API key/endpoint combination is invalid. This   **";
    }

    public static final String j() {
        return "** is potentially an integration error. Please ensure that your **";
    }

    public static final String k() {
        return "**     API key AND custom endpoint information are correct.     **";
    }

    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            com.braze.models.outgoing.h hVar = this.h;
            if (hVar != null && !hVar.isEmpty()) {
                jSONObject.put("device", hVar.getPropertiesJSONObject());
            }
            String str = this.e;
            if (str != null) {
                jSONObject.put("device_id", str);
            }
            Long l = this.d;
            if (l != null) {
                jSONObject.put("time", l);
            }
            String str2 = this.f;
            if (str2 != null) {
                jSONObject.put("api_key", str2);
            }
            String str3 = this.g;
            if (str3 != null) {
                jSONObject.put("sdk_version", str3);
            }
            return jSONObject;
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.requests.b$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.d();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    public final com.braze.requests.util.c e() {
        return new com.braze.requests.util.c(Braze.INSTANCE.getApiEndpoint(this.a.b));
    }

    public String toString() {
        return hashCode() + " - " + JsonUtils.getPrettyPrintedString(b()) + "\nto target: " + e();
    }

    public static final String b(b bVar) {
        return ">> API key    : " + bVar.f;
    }

    @Override // com.braze.requests.o
    public void a(com.braze.events.e internalPublisher, com.braze.events.e externalPublisher, com.braze.models.response.g apiResponse) {
        Intrinsics.checkNotNullParameter(internalPublisher, "internalPublisher");
        Intrinsics.checkNotNullParameter(externalPublisher, "externalPublisher");
        Intrinsics.checkNotNullParameter(apiResponse, "apiResponse");
        com.braze.models.response.i iVar = apiResponse.e;
        if (iVar != null) {
            ((com.braze.events.d) externalPublisher).b(new BrazeSdkAuthenticationErrorEvent(new com.braze.models.response.h(iVar.a, iVar.b, iVar.c, null)), BrazeSdkAuthenticationErrorEvent.class);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this, (BrazeLogger.Priority) null, (Throwable) null, c() == m.SDK_DEBUGGER_LOG, new Function0() { // from class: com.braze.requests.b$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.c(this.f$0);
            }
        }, 3, (Object) null);
    }

    @Override // com.braze.requests.o
    public void a(com.braze.events.e internalPublisher, com.braze.events.e externalPublisher, com.braze.models.response.d responseError) {
        Intrinsics.checkNotNullParameter(internalPublisher, "internalPublisher");
        Intrinsics.checkNotNullParameter(externalPublisher, "externalPublisher");
        Intrinsics.checkNotNullParameter(responseError, "responseError");
        final String strA = responseError.a();
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.Priority priority = BrazeLogger.Priority.W;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.requests.b$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.a(strA);
            }
        }, 6, (Object) null);
        if (responseError instanceof com.braze.models.response.e) {
            ((com.braze.events.d) internalPublisher).b(responseError, com.braze.models.response.e.class);
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.requests.b$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.g();
                }
            }, 6, (Object) null);
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.requests.b$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.h();
                }
            }, 6, (Object) null);
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.requests.b$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.i();
                }
            }, 6, (Object) null);
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.requests.b$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.j();
                }
            }, 6, (Object) null);
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.requests.b$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.k();
                }
            }, 6, (Object) null);
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.requests.b$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.b(this.f$0);
                }
            }, 6, (Object) null);
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.requests.b$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.a(this.f$0);
                }
            }, 6, (Object) null);
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.requests.b$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.f();
                }
            }, 6, (Object) null);
        }
        if (responseError instanceof com.braze.models.response.h) {
            ((com.braze.events.d) externalPublisher).b(new BrazeSdkAuthenticationErrorEvent((com.braze.models.response.h) responseError), BrazeSdkAuthenticationErrorEvent.class);
        }
    }

    public static final String a(b bVar) {
        return ">> Request Uri: " + bVar.e();
    }

    @Override // com.braze.requests.o
    public void a(com.braze.events.d internalPublisher) {
        Intrinsics.checkNotNullParameter(internalPublisher, "internalPublisher");
        internalPublisher.b(new com.braze.events.internal.r(this), com.braze.events.internal.r.class);
    }

    @Override // com.braze.requests.o
    public void a(com.braze.events.e internalPublisher) {
        Intrinsics.checkNotNullParameter(internalPublisher, "internalPublisher");
        ((com.braze.events.d) internalPublisher).b(new com.braze.events.internal.q(this), com.braze.events.internal.q.class);
    }

    public void a(HashMap existingHeaders) {
        Intrinsics.checkNotNullParameter(existingHeaders, "existingHeaders");
        existingHeaders.put("X-Braze-Api-Key", this.f);
        String str = this.i;
        if (str == null || str.length() == 0) {
            return;
        }
        existingHeaders.put("X-Braze-Auth-Signature", this.i);
    }
}

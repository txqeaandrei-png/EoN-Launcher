package com.braze.requests;

import com.braze.storage.e0;
import com.braze.support.BrazeLogger;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends b {
    public final ArrayList j;
    public final m k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(ArrayList ids, e0 serverConfigStorageProvider, String urlBase, String str) {
        super(new com.braze.requests.util.c(urlBase + "banners/sync", false), str, serverConfigStorageProvider);
        Intrinsics.checkNotNullParameter(ids, "ids");
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(urlBase, "urlBase");
        this.j = ids;
        this.k = m.BANNERS_SYNC;
    }

    public static final String g() {
        return "BannersSyncRequest failed.";
    }

    public static final String l() {
        return "Experienced JSONException while creating Banners Sync request. Returning null.";
    }

    public static final String m() {
        return "BannersSyncRequest executed successfully.";
    }

    @Override // com.braze.requests.n
    public final boolean a() {
        return false;
    }

    @Override // com.braze.requests.b, com.braze.requests.n
    public final JSONObject b() {
        JSONObject jSONObjectB = super.b();
        if (jSONObjectB == null) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            for (Pair pair : this.j) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", pair.getFirst());
                jSONArray.put(jSONObject);
            }
            String str = this.b;
            if (str != null && !StringsKt.isBlank(str)) {
                jSONObjectB.put("user_id", this.b);
            }
            jSONObjectB.put("placements", jSONArray);
            return jSONObjectB;
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.requests.a$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.l();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    @Override // com.braze.requests.n
    public final m c() {
        return this.k;
    }

    @Override // com.braze.requests.b, com.braze.requests.o
    public final void a(com.braze.events.e internalPublisher, com.braze.events.e externalPublisher, com.braze.models.response.g apiResponse) {
        Intrinsics.checkNotNullParameter(internalPublisher, "internalPublisher");
        Intrinsics.checkNotNullParameter(externalPublisher, "externalPublisher");
        Intrinsics.checkNotNullParameter(apiResponse, "apiResponse");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.a$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.m();
            }
        }, 7, (Object) null);
        ((com.braze.events.d) internalPublisher).b(new com.braze.events.internal.c(this), com.braze.events.internal.c.class);
    }

    @Override // com.braze.requests.b, com.braze.requests.o
    public final void a(com.braze.events.e internalPublisher, com.braze.events.e externalPublisher, com.braze.models.response.d responseError) {
        Intrinsics.checkNotNullParameter(internalPublisher, "internalPublisher");
        Intrinsics.checkNotNullParameter(externalPublisher, "externalPublisher");
        Intrinsics.checkNotNullParameter(responseError, "responseError");
        super.a(internalPublisher, externalPublisher, responseError);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.requests.a$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.g();
            }
        }, 6, (Object) null);
        ((com.braze.events.d) internalPublisher).b(new com.braze.events.internal.b(), com.braze.events.internal.b.class);
    }

    @Override // com.braze.requests.b, com.braze.requests.n
    public final void a(HashMap existingHeaders) {
        Intrinsics.checkNotNullParameter(existingHeaders, "existingHeaders");
        super.a(existingHeaders);
        existingHeaders.put("X-Braze-DataRequest", "true");
        existingHeaders.put("X-Braze-BannersRequest", "true");
    }
}

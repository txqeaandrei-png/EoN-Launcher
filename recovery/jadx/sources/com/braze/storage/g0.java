package com.braze.storage;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class g0 {
    public final SharedPreferences a;

    public g0(Context context, String str, String str2) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = com.braze.managers.c.a(context, str, str2, new StringBuilder("com.appboy.storage.session_storage"), 0);
    }

    public static final String b() {
        return "Could not create new mutable session for open session.";
    }

    public static final String d() {
        return "Failed to set end time to now for session json data";
    }

    public final void a(com.braze.models.n session) {
        Intrinsics.checkNotNullParameter(session, "session");
        String str = session.a.b;
        JSONObject value = session.getValue();
        SharedPreferences.Editor editorEdit = this.a.edit();
        a(value);
        editorEdit.putString(str, value.toString());
        if (!session.d) {
            editorEdit.putString("current_open_session", str);
        } else if (Intrinsics.areEqual(this.a.getString("current_open_session", ""), str)) {
            editorEdit.remove("current_open_session");
        }
        editorEdit.apply();
    }

    public final com.braze.models.n c() {
        String str = "";
        if (!this.a.contains("current_open_session")) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.g0$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g0.a();
                }
            }, 7, (Object) null);
            return null;
        }
        try {
            String string = this.a.getString(this.a.getString("current_open_session", ""), "");
            if (string != null) {
                str = string;
            }
            return new com.braze.models.n(new JSONObject(str));
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.g0$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g0.b();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    public static final String a() {
        return "No stored open session in storage.";
    }

    public final void a(String sessionId) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        SharedPreferences.Editor editorEdit = this.a.edit();
        editorEdit.remove(sessionId);
        if (Intrinsics.areEqual(sessionId, this.a.getString("current_open_session", null))) {
            editorEdit.remove("current_open_session");
        }
        editorEdit.apply();
    }

    public final void a(JSONObject jSONObject) {
        if (jSONObject.has("end_time")) {
            return;
        }
        try {
            jSONObject.put("end_time", DateTimeUtils.nowInSecondsPrecise());
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.g0$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g0.d();
                }
            }, 4, (Object) null);
        }
    }
}

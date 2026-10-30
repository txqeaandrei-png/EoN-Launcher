package com.braze.support;

import com.braze.models.BrazeGeofence;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class j {
    public static final j a = new j();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r3v5, types: [kotlin.Unit] */
    public static final ArrayList a(JSONArray geofenceJson) {
        Intrinsics.checkNotNullParameter(geofenceJson, "geofenceJson");
        ArrayList arrayList = new ArrayList();
        int length = geofenceJson.length();
        for (int i = 0; i < length; i++) {
            final JSONObject jSONObjectOptJSONObject = geofenceJson.optJSONObject(i);
            if (jSONObjectOptJSONObject == 0) {
                try {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) a, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.support.j$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return j.a();
                        }
                    }, 6, (Object) null);
                    jSONObjectOptJSONObject = Unit.INSTANCE;
                } catch (JSONException e) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) a, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.support.j$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return j.a(jSONObjectOptJSONObject);
                        }
                    }, 4, (Object) null);
                    Unit unit = Unit.INSTANCE;
                } catch (Exception e2) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) a, BrazeLogger.Priority.E, (Throwable) e2, false, new Function0() { // from class: com.braze.support.j$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return j.b(jSONObjectOptJSONObject);
                        }
                    }, 4, (Object) null);
                    Unit unit2 = Unit.INSTANCE;
                }
            } else {
                arrayList.add(new BrazeGeofence(jSONObjectOptJSONObject));
            }
        }
        return arrayList;
    }

    public static final String b(JSONObject jSONObject) {
        return "Failed to deserialize geofence Json:" + jSONObject;
    }

    public static final String a() {
        return "Received null or blank geofence Json. Not parsing.";
    }

    public static final String a(JSONObject jSONObject) {
        return "Failed to deserialize geofence Json due to JSONException: " + jSONObject;
    }
}

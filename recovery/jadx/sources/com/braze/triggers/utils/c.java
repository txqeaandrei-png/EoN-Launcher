package com.braze.triggers.utils;

import com.braze.j;
import com.braze.managers.m;
import com.braze.models.inappmessage.InAppMessageBase;
import com.braze.support.BrazeLogger;
import com.braze.support.n;
import com.braze.triggers.actions.h;
import com.braze.triggers.conditions.e;
import com.braze.triggers.conditions.f;
import com.braze.triggers.conditions.i;
import com.braze.triggers.conditions.k;
import com.google.firebase.messaging.Constants;
import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final c a = new c();
    public static final String b = BrazeLogger.getBrazeLogTag((Class<?>) c.class);

    public static final String a(String str) {
        return com.braze.a.a("Received templated message Json with unknown type: ", str, ". Not parsing.");
    }

    public static final String b(String str) {
        return com.braze.a.a("Received triggered condition Json with unknown type: ", str, ". Not parsing.");
    }

    public static final String c(String str) {
        return j.a("Received unknown trigger type: ", str);
    }

    public static InAppMessageBase a(final JSONObject jSONObject, m brazeManager) {
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        try {
            if (jSONObject == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.utils.c$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return c.a();
                    }
                }, 14, (Object) null);
                return null;
            }
            final String string = jSONObject.getString("type");
            if (Intrinsics.areEqual(string, "inapp")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                if (jSONObject2 == null) {
                    return null;
                }
                return n.a(jSONObject2, brazeManager);
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, b, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.utils.c$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.a(string);
                }
            }, 12, (Object) null);
            return null;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, b, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.triggers.utils.c$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.a(jSONObject);
                }
            }, 8, (Object) null);
            return null;
        }
    }

    public static final String a() {
        return "Templated message Json was null. Not de-serializing templated message.";
    }

    public static final String a(JSONObject jSONObject) {
        return "Encountered exception processing templated message: " + jSONObject;
    }

    public final ArrayList a(final JSONArray jSONArray, m brazeManager) {
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        try {
            if (jSONArray == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.utils.c$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return c.c();
                    }
                }, 14, (Object) null);
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                Intrinsics.checkNotNull(jSONObject);
                h hVarB = b(jSONObject, brazeManager);
                if (hVarB != null) {
                    arrayList.add(hVarB);
                }
            }
            return arrayList;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, b, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.triggers.utils.c$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.b(jSONArray);
                }
            }, 8, (Object) null);
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:44:0x00d3  */
    public static ArrayList a(JSONArray triggerConditionsJson) throws JSONException {
        Intrinsics.checkNotNullParameter(triggerConditionsJson, "triggerConditionsJson");
        ArrayList arrayList = new ArrayList();
        int length = triggerConditionsJson.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObjectOptJSONObject = triggerConditionsJson.optJSONObject(i);
            if (jSONObjectOptJSONObject == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, b, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.utils.c$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return c.b();
                    }
                }, 12, (Object) null);
            } else {
                final String string = jSONObjectOptJSONObject.getString("type");
                if (string != null) {
                    switch (string) {
                        case "purchase_property":
                            arrayList.add(new i(jSONObjectOptJSONObject));
                            break;
                        case "open":
                            arrayList.add(new f());
                            break;
                        case "test":
                            arrayList.add(new k());
                            break;
                        case "custom_event_property":
                            arrayList.add(new com.braze.triggers.conditions.b(jSONObjectOptJSONObject));
                            break;
                        case "custom_event":
                            arrayList.add(new com.braze.triggers.conditions.a(jSONObjectOptJSONObject));
                            break;
                        case "iam_click":
                            arrayList.add(new e(jSONObjectOptJSONObject));
                            break;
                        case "purchase":
                            arrayList.add(new com.braze.triggers.conditions.h(jSONObjectOptJSONObject));
                            break;
                        case "push_click":
                            arrayList.add(new com.braze.triggers.conditions.j(jSONObjectOptJSONObject));
                            break;
                        default:
                            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, b, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.utils.c$$ExternalSyntheticLambda6
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return c.b(string);
                                }
                            }, 12, (Object) null);
                            break;
                    }
                } else {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, b, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.utils.c$$ExternalSyntheticLambda6
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return c.b(string);
                        }
                    }, 12, (Object) null);
                }
            }
        }
        return arrayList;
    }

    public static final String c() {
        return "Triggered actions Json array was null. Not de-serializing triggered actions.";
    }

    public static final String b(JSONArray jSONArray) {
        return "Failed to deserialize triggered actions Json array: " + jSONArray;
    }

    public final h b(final JSONObject actionJson, m brazeManager) {
        Intrinsics.checkNotNullParameter(actionJson, "actionJson");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        try {
            final String string = actionJson.getString("type");
            if (Intrinsics.areEqual(string, "inapp")) {
                return new com.braze.triggers.actions.c(actionJson, brazeManager);
            }
            if (Intrinsics.areEqual(string, "templated_iam")) {
                return new com.braze.triggers.actions.f(actionJson, brazeManager);
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.utils.c$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.c(string);
                }
            }, 6, (Object) null);
            return null;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, b, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.triggers.utils.c$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.b(actionJson);
                }
            }, 8, (Object) null);
        }
    }

    public static final String b(JSONObject jSONObject) {
        return "Failed to deserialize triggered action Json: " + jSONObject;
    }

    public static final String b() {
        return "Received null or blank trigger condition Json. Not parsing.";
    }
}

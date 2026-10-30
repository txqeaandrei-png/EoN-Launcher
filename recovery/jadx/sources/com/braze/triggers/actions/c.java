package com.braze.triggers.actions;

import android.content.Context;
import com.braze.enums.inappmessage.MessageType;
import com.braze.managers.m;
import com.braze.models.inappmessage.InAppMessageBase;
import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import com.braze.support.n;
import com.google.firebase.messaging.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends h {
    public final InAppMessageBase g;
    public final JSONObject h;
    public final m i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(final JSONObject json, m brazeManager) throws JSONException {
        super(json);
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.actions.c$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.a(json);
            }
        }, 6, (Object) null);
        JSONObject jSONObject = json.getJSONObject(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
        this.i = brazeManager;
        this.h = jSONObject;
        Intrinsics.checkNotNull(jSONObject);
        InAppMessageBase inAppMessageBaseA = n.a(jSONObject, brazeManager);
        this.g = inAppMessageBaseA;
        if (inAppMessageBaseA != null) {
            return;
        }
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.actions.c$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.c();
            }
        }, 6, (Object) null);
        throw new IllegalArgumentException("Failed to parse in-app message triggered action with JSON: " + JsonUtils.getPrettyPrintedString(json));
    }

    public static final String b() {
        return "In-app message has no remote assets for prefetch. Returning empty list.";
    }

    public static final String c() {
        return "Failed to parse in-app message triggered action.";
    }

    public static final String d(com.braze.triggers.events.b bVar) {
        return "Cannot perform triggered action for " + bVar + " due to deserialized in-app message being null";
    }

    @Override // com.braze.triggers.actions.a
    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        InAppMessageBase inAppMessageBase = this.g;
        List<String> remoteAssetPathsForPrefetch = inAppMessageBase != null ? inAppMessageBase.getRemoteAssetPathsForPrefetch() : null;
        if (remoteAssetPathsForPrefetch == null || remoteAssetPathsForPrefetch.isEmpty()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.actions.c$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.b();
                }
            }, 7, (Object) null);
            return arrayList;
        }
        InAppMessageBase inAppMessageBase2 = this.g;
        MessageType messageType = inAppMessageBase2 != null ? inAppMessageBase2.getMessageType() : null;
        int i = messageType == null ? -1 : b.a[messageType.ordinal()];
        if (i == 1) {
            arrayList.add(new com.braze.triggers.utils.a(com.braze.triggers.enums.b.ZIP, remoteAssetPathsForPrefetch.get(0)));
        } else if (i == 2 || i == 3 || i == 4) {
            arrayList.add(new com.braze.triggers.utils.a(com.braze.triggers.enums.b.IMAGE, remoteAssetPathsForPrefetch.get(0)));
        } else if (i != 5) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.actions.c$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.a(this.f$0);
                }
            }, 6, (Object) null);
        } else {
            Iterator<String> it = remoteAssetPathsForPrefetch.iterator();
            while (it.hasNext()) {
                arrayList.add(new com.braze.triggers.utils.a(com.braze.triggers.enums.b.FILE, it.next()));
            }
        }
        return arrayList;
    }

    @Override // com.braze.triggers.actions.g, com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut */
    public final Object getJsonKey() {
        try {
            JSONObject jsonKey = super.getJsonKey();
            if (jsonKey == null) {
                return null;
            }
            InAppMessageBase inAppMessageBase = this.g;
            jsonKey.put(Constants.ScionAnalytics.MessageType.DATA_MESSAGE, inAppMessageBase != null ? inAppMessageBase.getJsonKey() : null);
            jsonKey.put("type", "inapp");
            return jsonKey;
        } catch (JSONException unused) {
            return null;
        }
    }

    public static final String b(c cVar) {
        return "Attempting to publish in-app message after delay of " + cVar.b.d + " seconds.";
    }

    public static final String c(com.braze.triggers.events.b bVar) {
        return "Cannot perform triggered action for " + bVar + " due to in-app message json being null";
    }

    public static final String d() {
        return "Caught exception while performing triggered action.";
    }

    public static final String a(c cVar) {
        StringBuilder sb = new StringBuilder("Failed to return remote paths to assets for type: ");
        InAppMessageBase inAppMessageBase = cVar.g;
        return sb.append(inAppMessageBase != null ? inAppMessageBase.getMessageType() : null).toString();
    }

    public static final String a(JSONObject jSONObject) {
        return "Attempting to parse in-app message triggered action with JSON: " + JsonUtils.getPrettyPrintedString(jSONObject);
    }

    @Override // com.braze.triggers.actions.a
    public final void a(Context context, com.braze.events.e internalEventPublisher, final com.braze.triggers.events.b triggerEvent, long j) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(internalEventPublisher, "internalEventPublisher");
        Intrinsics.checkNotNullParameter(triggerEvent, "triggerEvent");
        try {
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.actions.c$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.b(this.f$0);
                }
            }, 7, (Object) null);
            JSONObject jSONObject = this.h;
            if (jSONObject == null) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.actions.c$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return c.c(triggerEvent);
                    }
                }, 6, (Object) null);
                return;
            }
            InAppMessageBase inAppMessageBaseA = n.a(jSONObject, this.i);
            String strA = triggerEvent.a();
            int i = com.braze.triggers.events.h.e;
            if (Intrinsics.areEqual(strA, "test")) {
                if (inAppMessageBaseA != null) {
                    inAppMessageBaseA.setTestSend(true);
                }
                this.h.put("is_test_send", true);
            }
            if (inAppMessageBaseA == null) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.actions.c$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return c.d(triggerEvent);
                    }
                }, 6, (Object) null);
                return;
            }
            inAppMessageBaseA.setLocalPrefetchedAssetPaths(MapsKt.toMap(this.f));
            inAppMessageBaseA.setExpirationTimestamp(j);
            ((com.braze.events.d) internalEventPublisher).b(new com.braze.events.internal.m(triggerEvent, this, inAppMessageBaseA, this.i.b), com.braze.events.internal.m.class);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.triggers.actions.c$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.d();
                }
            }, 4, (Object) null);
        }
    }
}

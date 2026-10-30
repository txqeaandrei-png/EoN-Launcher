package com.braze.storage;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.Constants;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public final class t {
    public static final long b = TimeUnit.DAYS.toMillis(7);
    public final SharedPreferences a;

    public t(Context context, String str, String apiKey) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        SharedPreferences sharedPreferencesA = com.braze.managers.c.a(context, str, apiKey, new StringBuilder("com.appboy.storage.event_data_validator"), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferencesA, "getSharedPreferences(...)");
        this.a = sharedPreferencesA;
        a();
    }

    public static final String b(com.braze.models.i iVar) {
        return "Event already seen in cache. Ignoring duplicate: " + iVar;
    }

    public final boolean a(final com.braze.models.i event) throws JSONException {
        Intrinsics.checkNotNullParameter(event, "event");
        com.braze.models.outgoing.event.b bVar = (com.braze.models.outgoing.event.b) event;
        if (bVar.a != com.braze.enums.e.PUSH_CLICKED) {
            return true;
        }
        a();
        Intrinsics.checkNotNullParameter(event, "event");
        int i = com.braze.models.outgoing.event.push.b.i;
        Intrinsics.checkNotNullParameter(event, "event");
        String string = bVar.b.getString(Constants.BRAZE_PUSH_CAMPAIGN_ID_KEY);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String eventKey = bVar.a + string;
        if (this.a.contains(eventKey)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.t$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return t.b(event);
                }
            }, 7, (Object) null);
            return false;
        }
        long jNowInMilliseconds = DateTimeUtils.nowInMilliseconds() + b;
        Intrinsics.checkNotNullParameter(eventKey, "eventKey");
        this.a.edit().putLong(eventKey, jNowInMilliseconds).apply();
        return true;
    }

    public final void a() {
        long jNowInMilliseconds = DateTimeUtils.nowInMilliseconds();
        for (final Map.Entry<String, ?> entry : this.a.getAll().entrySet()) {
            try {
                Object value = entry.getValue();
                Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.Long");
                if (jNowInMilliseconds >= ((Long) value).longValue()) {
                    String key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "<get-key>(...)");
                    this.a.edit().remove(key).apply();
                }
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.t$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return t.a(entry);
                    }
                }, 4, (Object) null);
                String key2 = entry.getKey();
                Intrinsics.checkNotNullExpressionValue(key2, "<get-key>(...)");
                this.a.edit().remove(key2).apply();
            }
        }
    }

    public static final String a(Map.Entry entry) {
        return "Failed to get expiration time. Deleting entry: " + entry;
    }
}

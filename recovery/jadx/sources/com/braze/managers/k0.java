package com.braze.managers;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.events.IEventSubscriber;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class k0 {
    public final com.braze.storage.e0 a;
    public final SharedPreferences b;
    public final SharedPreferences c;

    public k0(Context context, String apiKey, String str, com.braze.events.d internalEventPublisher, com.braze.storage.e0 serverConfigStorageProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(internalEventPublisher, "internalEventPublisher");
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        this.a = serverConfigStorageProvider;
        SharedPreferences pushMaxPrefs = c.a(context, str, apiKey, new StringBuilder("com.braze.storage.braze_push_max_storage"), 0);
        this.b = pushMaxPrefs;
        this.c = c.a(context, str, apiKey, new StringBuilder("com.braze.storage.braze_push_max_metadata"), 0);
        internalEventPublisher.c(com.braze.events.internal.p.class, new IEventSubscriber() { // from class: com.braze.managers.k0$$ExternalSyntheticLambda0
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                k0.a(this.f$0, (com.braze.events.internal.p) obj);
            }
        });
        long jNowInSeconds = DateTimeUtils.nowInSeconds() - TimeUnit.DAYS.toSeconds(45L);
        Intrinsics.checkNotNullExpressionValue(pushMaxPrefs, "pushMaxPrefs");
        ArrayList arrayList = new ArrayList();
        Map<String, ?> all = pushMaxPrefs.getAll();
        Intrinsics.checkNotNullExpressionValue(all, "getAll(...)");
        Iterator<Map.Entry<String, ?>> it = all.entrySet().iterator();
        while (it.hasNext()) {
            String key = it.next().getKey();
            Intrinsics.checkNotNull(key);
            arrayList.add(new j0(key, pushMaxPrefs.getLong(key, 0L)));
        }
        List<j0> list = CollectionsKt.toList(arrayList);
        SharedPreferences.Editor editorEdit = pushMaxPrefs.edit();
        for (j0 j0Var : list) {
            if (this.b.getLong(j0Var.a, 0L) < jNowInSeconds) {
                editorEdit.remove(j0Var.a);
            }
        }
        editorEdit.apply();
    }

    public static final void a(k0 k0Var, com.braze.events.internal.p it) {
        Intrinsics.checkNotNullParameter(it, "it");
        k0Var.c.edit().putLong("lastUpdateTime", it.a).apply();
    }

    public static final String b(String str) {
        return com.braze.j.a("Adding push campaign to storage with uid ", str);
    }

    public final void a(final String pushCampaign) {
        Intrinsics.checkNotNullParameter(pushCampaign, "pushCampaign");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.k0$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return k0.b(pushCampaign);
            }
        }, 7, (Object) null);
        if (StringsKt.isBlank(pushCampaign)) {
            return;
        }
        this.b.edit().putLong(pushCampaign, DateTimeUtils.nowInSeconds()).apply();
    }

    public final void a() {
        this.b.edit().clear().apply();
        this.c.edit().clear().apply();
    }
}

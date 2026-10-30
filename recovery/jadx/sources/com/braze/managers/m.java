package com.braze.managers;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.braze.BrazeFlushPushDeliveryReceiver;
import com.braze.Constants;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.events.IEventSubscriber;
import com.braze.models.IBrazeLocation;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.IntentUtils;
import com.braze.support.JsonUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;

/* JADX INFO: loaded from: classes2.dex */
public final class m implements c0 {
    public static final String[] v = {"android.os.deadsystemexception"};
    public final Context a;
    public final String b;
    public final r c;
    public final com.braze.events.d d;
    public final BrazeConfigurationProvider e;
    public final com.braze.storage.e0 f;
    public final z g;
    public final n h;
    public final com.braze.storage.a0 i;
    public final k0 j;
    public final i0 k;
    public final com.braze.storage.y l;
    public final AtomicInteger m;
    public final AtomicInteger n;
    public final ReentrantLock o;
    public Job p;
    public final com.braze.storage.t q;
    public volatile String r;
    public final AtomicBoolean s;
    public final AtomicBoolean t;
    public Class u;

    public m(Context context, String str, String apiKey, r sessionManager, com.braze.events.d internalEventPublisher, BrazeConfigurationProvider configurationProvider, com.braze.storage.e0 serverConfigStorageProvider, z eventStorageManager, n messagingSessionManager, com.braze.storage.a0 sdkEnablementProvider, k0 pushMaxManager, i0 pushDeliveryManager, com.braze.storage.y pushIdentifierStorageProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(sessionManager, "sessionManager");
        Intrinsics.checkNotNullParameter(internalEventPublisher, "internalEventPublisher");
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(eventStorageManager, "eventStorageManager");
        Intrinsics.checkNotNullParameter(messagingSessionManager, "messagingSessionManager");
        Intrinsics.checkNotNullParameter(sdkEnablementProvider, "sdkEnablementProvider");
        Intrinsics.checkNotNullParameter(pushMaxManager, "pushMaxManager");
        Intrinsics.checkNotNullParameter(pushDeliveryManager, "pushDeliveryManager");
        Intrinsics.checkNotNullParameter(pushIdentifierStorageProvider, "pushIdentifierStorageProvider");
        this.a = context;
        this.b = str;
        this.c = sessionManager;
        this.d = internalEventPublisher;
        this.e = configurationProvider;
        this.f = serverConfigStorageProvider;
        this.g = eventStorageManager;
        this.h = messagingSessionManager;
        this.i = sdkEnablementProvider;
        this.j = pushMaxManager;
        this.k = pushDeliveryManager;
        this.l = pushIdentifierStorageProvider;
        this.m = new AtomicInteger(0);
        this.n = new AtomicInteger(0);
        this.o = new ReentrantLock();
        this.p = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.q = new com.braze.storage.t(context, str, apiKey);
        this.r = "";
        this.s = new AtomicBoolean(false);
        this.t = new AtomicBoolean(false);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda28
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.a();
            }
        }, 6, (Object) null);
        internalEventPublisher.c(com.braze.events.internal.s.class, new IEventSubscriber() { // from class: com.braze.managers.m$$ExternalSyntheticLambda29
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                m.a(this.f$0, (com.braze.events.internal.s) obj);
            }
        });
        internalEventPublisher.c(com.braze.events.internal.u.class, new IEventSubscriber() { // from class: com.braze.managers.m$$ExternalSyntheticLambda30
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                m.a(this.f$0, (com.braze.events.internal.u) obj);
            }
        });
        internalEventPublisher.c(com.braze.events.internal.v.class, new IEventSubscriber() { // from class: com.braze.managers.m$$ExternalSyntheticLambda31
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                m.a(this.f$0, (com.braze.events.internal.v) obj);
            }
        });
    }

    public static final String A() {
        return "Requesting DUST mite";
    }

    public static final String B() {
        return "Posting geofence request for location.";
    }

    public static final String D() {
        return "Sending Push Max data";
    }

    public static final String E() {
        return "Posting SDK Debugger Logs request.";
    }

    public static final String a() {
        return "BrazeManager init called";
    }

    public static final String b(String str) {
        return com.braze.j.a("Logging push delivery event for campaign id: ", str);
    }

    public static final String c(m mVar) {
        return "Completed the openSession call. Starting or continuing session " + mVar.c.g();
    }

    public static final String d(Activity activity) {
        return "Opened session with activity: " + activity.getLocalClassName();
    }

    public static final String e(com.braze.models.i iVar) {
        return "Not adding session id to event: " + JsonUtils.getPrettyPrintedString(((com.braze.models.outgoing.event.b) iVar).getJsonKey());
    }

    public static final String g() {
        return "SDK is disabled. Not force closing session.";
    }

    public static final String h() {
        return "BrazeManager got SdkDebuggerInitializationRequestedEvent";
    }

    public static final String i() {
        return "Braze SDK Debugger logs being sent";
    }

    public static final String j() {
        return "Failed to log error.";
    }

    public static final String k() {
        return "Publishing an internal push body clicked event for any awaiting triggers.";
    }

    public static final String l() {
        return "Adding push click to dispatcher pending list";
    }

    public static final String m() {
        return "Session in background, data syncing event on delay";
    }

    public static final String n() {
        return "Logging push max campaign";
    }

    public static final String p() {
        return "SDK is disabled. Not opening session.";
    }

    public static final String q() {
        return "Failed to get local class name for activity when opening session";
    }

    public static final String r() {
        return "SDK is disabled. Not opening session.";
    }

    public static final String s() {
        return "Flushing Push Delivery Events now";
    }

    public static final String t() {
        return "Attempted to flush Push Delivery events, but no events are available";
    }

    public static final String u() {
        return "Posting geofence report for geofence event.";
    }

    public static final String v() {
        return "Posting banners refresh request.";
    }

    public static final String x() {
        return "Posting feature flags refresh request.";
    }

    public static final String y() {
        return "Disallowing Content Cards sync due to Content Cards not being enabled.";
    }

    public final void C() {
        List listEmptyList;
        if (this.f.K()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.D();
                }
            }, 7, (Object) null);
            com.braze.storage.e0 e0Var = this.f;
            String baseUrlForRequests = this.e.getBaseUrlForRequests();
            String str = this.b;
            k0 k0Var = this.j;
            long j = k0Var.c.getLong("lastUpdateTime", -1L) - k0Var.a.u();
            SharedPreferences pushMaxPrefs = k0Var.b;
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
            List list = CollectionsKt.toList(arrayList);
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                if (((j0) obj).b > j) {
                    arrayList2.add(obj);
                }
            }
            List list2 = CollectionsKt.toList(arrayList2);
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList3.add(((j0) it2.next()).a);
            }
            long j2 = this.j.c.getLong("lastUpdateTime", -1L);
            com.braze.storage.y yVar = this.l;
            long jV = this.f.v();
            if (jV <= 0) {
                listEmptyList = CollectionsKt.emptyList();
            } else {
                long jNowInSeconds = DateTimeUtils.nowInSeconds() - jV;
                ArrayList arrayList4 = new ArrayList();
                Map<String, ?> all2 = yVar.a.getAll();
                Intrinsics.checkNotNullExpressionValue(all2, "getAll(...)");
                for (Map.Entry<String, ?> entry : all2.entrySet()) {
                    Long l = (Long) entry.getValue();
                    if (l != null && l.longValue() >= jNowInSeconds) {
                        String key2 = entry.getKey();
                        Intrinsics.checkNotNullExpressionValue(key2, "<get-key>(...)");
                        arrayList4.add(key2);
                    }
                }
                listEmptyList = arrayList4;
            }
            a(new com.braze.requests.r(e0Var, baseUrlForRequests, str, arrayList3, j2, listEmptyList));
        }
    }

    public final void f() {
        if (this.i.a.getBoolean("appboy_sdk_disabled", false)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.g();
                }
            }, 6, (Object) null);
        } else {
            this.u = null;
            this.c.k();
        }
    }

    public final void o() {
        com.braze.models.l lVar;
        if (this.i.a.getBoolean("appboy_sdk_disabled", false)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.r();
                }
            }, 6, (Object) null);
            return;
        }
        r rVar = this.c;
        ReentrantLock reentrantLock = rVar.h;
        reentrantLock.lock();
        try {
            if (rVar.f() && (lVar = rVar.l) != null) {
                rVar.b.a(lVar);
            }
            Job.DefaultImpls.cancel$default(rVar.k, (CancellationException) null, 1, (Object) null);
            rVar.a();
            rVar.c.b(com.braze.events.internal.a0.a, com.braze.events.internal.a0.class);
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.c(this.f$0);
                }
            }, 6, (Object) null);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void w() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.x();
            }
        }, 7, (Object) null);
        a(new com.braze.requests.i(this.f, this.e.getBaseUrlForRequests(), this.b));
    }

    public final void z() {
        if (this.f.E()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.A();
                }
            }, 6, (Object) null);
            a(new com.braze.requests.g(this.f, this.e.getBaseUrlForRequests(), this.b));
        }
    }

    public static final void a(m mVar, com.braze.events.internal.s it) {
        Intrinsics.checkNotNullParameter(it, "it");
        throw null;
    }

    public static final String d(com.braze.models.i iVar) {
        return "Not processing event after validation failed: " + iVar;
    }

    public static final String g(com.braze.models.i iVar) {
        return "Attempting to log event: " + JsonUtils.getPrettyPrintedString(((com.braze.models.outgoing.event.b) iVar).getJsonKey());
    }

    public final void c(final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.i.a.getBoolean("appboy_sdk_disabled", false)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda32
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.p();
                }
            }, 6, (Object) null);
            return;
        }
        o();
        this.u = activity.getClass();
        this.h.b();
        try {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda34
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.d(activity);
                }
            }, 6, (Object) null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda35
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.q();
                }
            }, 4, (Object) null);
        }
    }

    public final void h(com.braze.models.i geofenceEvent) {
        Intrinsics.checkNotNullParameter(geofenceEvent, "geofenceEvent");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.u();
            }
        }, 7, (Object) null);
        a(new com.braze.requests.k(this.f, this.e.getBaseUrlForRequests(), geofenceEvent));
    }

    public static final void a(m mVar, com.braze.events.internal.u it) {
        Intrinsics.checkNotNullParameter(it, "it");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) mVar, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.h();
            }
        }, 6, (Object) null);
        mVar.d();
    }

    public final void d() {
        if (this.f.L()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.e();
                }
            }, 6, (Object) null);
            a(new com.braze.requests.v(this.f, this.e.getBaseUrlForRequests(), this.b));
        }
    }

    public static final String e() {
        return "Requesting SDK Debugger Handshake";
    }

    public static final void a(m mVar, com.braze.events.internal.v it) {
        Intrinsics.checkNotNullParameter(it, "it");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) mVar, BrazeLogger.Priority.D, (Throwable) null, true, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.i();
            }
        }, 2, (Object) null);
        mVar.b(it.a);
    }

    public static final String f(com.braze.models.i iVar) {
        return "Not adding user id to event: " + JsonUtils.getPrettyPrintedString(((com.braze.models.outgoing.event.b) iVar).getJsonKey());
    }

    public final void a(boolean z) {
        this.t.set(z);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.a(this.f$0);
            }
        }, 6, (Object) null);
    }

    public static final String a(m mVar) {
        return "Updated shouldRequestFeedInNextRequest to: " + mVar.t;
    }

    public static final String c() {
        return "SDK is disabled. Not closing session.";
    }

    public static final String c(com.braze.models.i iVar) {
        return "SDK is disabled. Not logging event: " + iVar;
    }

    public final void a(final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.i.a.getBoolean("appboy_sdk_disabled", false)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.c();
                }
            }, 6, (Object) null);
        } else if (this.u == null || Intrinsics.areEqual(activity.getClass(), this.u)) {
            this.h.e();
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda19
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.b(activity);
                }
            }, 6, (Object) null);
            this.c.n();
        }
    }

    public final void c(String campaignId) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.n();
            }
        }, 7, (Object) null);
        this.j.a(campaignId);
    }

    public final boolean a(final com.braze.models.i event) {
        boolean z;
        Intrinsics.checkNotNullParameter(event, "event");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.Priority priority = BrazeLogger.Priority.V;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.b(event);
            }
        }, 6, (Object) null);
        boolean z2 = false;
        if (this.i.a.getBoolean("appboy_sdk_disabled", false)) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda22
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.c(event);
                }
            }, 6, (Object) null);
            return false;
        }
        if (!this.q.a(event)) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda33
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.d(event);
                }
            }, 6, (Object) null);
            return false;
        }
        r rVar = this.c;
        ReentrantLock reentrantLock = rVar.h;
        reentrantLock.lock();
        try {
            com.braze.models.l lVar = rVar.l;
            boolean z3 = lVar != null && lVar.d;
            reentrantLock.unlock();
            if (!z3 && this.c.g() != null) {
                ((com.braze.models.outgoing.event.b) event).a(this.c.g());
                z = false;
            } else {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda36
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return m.e(event);
                    }
                }, 7, (Object) null);
                z = true;
            }
            if (this.b.length() == 0) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda37
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return m.f(event);
                    }
                }, 7, (Object) null);
            } else {
                com.braze.models.outgoing.event.b bVar = (com.braze.models.outgoing.event.b) event;
                bVar.e.setValue(bVar, com.braze.models.outgoing.event.b.h[0], this.b);
            }
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda38
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.g(event);
                }
            }, 6, (Object) null);
            com.braze.models.outgoing.event.b thisRef = (com.braze.models.outgoing.event.b) event;
            com.braze.enums.e eVar = thisRef.a;
            com.braze.enums.e eVar2 = com.braze.enums.e.PUSH_CLICKED;
            if (eVar == eVar2) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda39
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return m.k();
                    }
                }, 7, (Object) null);
                com.braze.models.outgoing.event.push.b notificationTrackingBrazeEvent = (com.braze.models.outgoing.event.push.b) event;
                Intrinsics.checkNotNullParameter(notificationTrackingBrazeEvent, "notificationTrackingBrazeEvent");
                String strOptString = notificationTrackingBrazeEvent.b.optString(Constants.BRAZE_PUSH_CAMPAIGN_ID_KEY, "");
                com.braze.events.d dVar = this.d;
                Intrinsics.checkNotNull(strOptString);
                dVar.b(new com.braze.events.internal.e0(strOptString, notificationTrackingBrazeEvent), com.braze.events.internal.e0.class);
            }
            if (thisRef.a != com.braze.enums.e.INTERNAL_ERROR || !thisRef.b.optBoolean("nop", false)) {
                this.g.a(event);
            }
            if (z) {
                com.braze.enums.e eVar3 = thisRef.a;
                if (eVar3 == com.braze.enums.e.PUSH_ACTION_BUTTON_CLICKED) {
                    Intrinsics.checkNotNull(event, "null cannot be cast to non-null type com.braze.models.outgoing.event.push.PushActionButtonClickedEvent");
                    z2 = !((com.braze.models.outgoing.event.push.a) event).i;
                } else if (eVar3 == eVar2 || eVar3 == com.braze.enums.e.PUSH_STORY_PAGE_CLICK) {
                    z2 = true;
                }
            }
            if (z2) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda40
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return m.l();
                    }
                }, 7, (Object) null);
                com.braze.events.d dVar2 = this.d;
                List events = CollectionsKt.listOf(event);
                Intrinsics.checkNotNullParameter(events, "events");
                dVar2.b(new com.braze.events.internal.dispatchmanager.c(com.braze.events.internal.dispatchmanager.b.ADD_PENDING_BRAZE_EVENT, events, null, null, 12), com.braze.events.internal.dispatchmanager.c.class);
            } else {
                com.braze.events.d dVar3 = this.d;
                List events2 = CollectionsKt.listOf(event);
                Intrinsics.checkNotNullParameter(events2, "events");
                dVar3.b(new com.braze.events.internal.dispatchmanager.c(com.braze.events.internal.dispatchmanager.b.ADD_BRAZE_EVENTS, events2, null, null, 12), com.braze.events.internal.dispatchmanager.c.class);
            }
            if (thisRef.a == com.braze.enums.e.SESSION_START) {
                com.braze.events.d dVar4 = this.d;
                com.braze.events.internal.dispatchmanager.a aVar = com.braze.events.internal.dispatchmanager.c.e;
                com.braze.support.delegates.a aVar2 = thisRef.f;
                KProperty property = com.braze.models.outgoing.event.b.h[1];
                aVar2.getClass();
                Intrinsics.checkNotNullParameter(thisRef, "thisRef");
                Intrinsics.checkNotNullParameter(property, "property");
                dVar4.b(aVar.a((com.braze.models.o) aVar2.a), com.braze.events.internal.dispatchmanager.c.class);
            }
            if (!z) {
                return true;
            }
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda41
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.m();
                }
            }, 6, (Object) null);
            Job.DefaultImpls.cancel$default(this.p, (CancellationException) null, 1, (Object) null);
            this.p = BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, null, null, new l(this, null), 3, null);
            return true;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void a(com.braze.models.outgoing.j respondWithBuilder) {
        Intrinsics.checkNotNullParameter(respondWithBuilder, "respondWithBuilder");
        Pair pairA = this.f.a();
        if (pairA != null) {
            com.braze.models.outgoing.i outboundConfigParams = new com.braze.models.outgoing.i(((Number) pairA.getFirst()).longValue(), ((Boolean) pairA.getSecond()).booleanValue());
            Intrinsics.checkNotNullParameter(outboundConfigParams, "outboundConfigParams");
            respondWithBuilder.d = outboundConfigParams;
        }
        if (this.s.get()) {
            respondWithBuilder.c = Boolean.TRUE;
        }
        respondWithBuilder.a = this.b;
        a(new com.braze.requests.f(this.f, this.e.getBaseUrlForRequests(), new com.braze.models.outgoing.k(respondWithBuilder.a, respondWithBuilder.b, respondWithBuilder.c, respondWithBuilder.d)));
        this.s.set(false);
    }

    public final void a(IBrazeLocation location) {
        Intrinsics.checkNotNullParameter(location, "location");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.B();
            }
        }, 7, (Object) null);
        a(new com.braze.requests.j(this.f, this.e.getBaseUrlForRequests(), location));
    }

    public final void a(ArrayList ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.v();
            }
        }, 7, (Object) null);
        a(new com.braze.requests.a(ids, this.f, this.e.getBaseUrlForRequests(), this.b));
    }

    public final void a(com.braze.requests.b request) {
        Intrinsics.checkNotNullParameter(request, "request");
        if (this.i.a.getBoolean("appboy_sdk_disabled", false)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.b();
                }
            }, 6, (Object) null);
            return;
        }
        request.b = this.b;
        com.braze.events.d dVar = this.d;
        Intrinsics.checkNotNullParameter(request, "request");
        dVar.b(new com.braze.events.internal.dispatchmanager.c(com.braze.events.internal.dispatchmanager.b.ADD_REQUEST, null, null, request, 6), com.braze.events.internal.dispatchmanager.c.class);
    }

    public final void a(long j, long j2, int i) {
        if (!this.f.D()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.y();
                }
            }, 6, (Object) null);
        } else {
            a(new com.braze.requests.e(this.f, this.e.getBaseUrlForRequests(), j, j2, this.b, i));
        }
    }

    public final boolean a(Throwable th) {
        ReentrantLock reentrantLock = this.o;
        reentrantLock.lock();
        try {
            this.m.getAndIncrement();
            if (Intrinsics.areEqual(this.r, th.getMessage()) && this.n.get() > 3 && this.m.get() < 25) {
                return true;
            }
            if (Intrinsics.areEqual(this.r, th.getMessage())) {
                this.n.getAndIncrement();
            } else {
                this.n.set(0);
            }
            if (this.m.get() >= 25) {
                this.m.set(0);
            }
            this.r = th.getMessage();
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void a(final Throwable throwable, boolean z) {
        com.braze.models.i iVarA;
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        try {
            if (a(throwable)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda24
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return m.b(throwable);
                    }
                }, 6, (Object) null);
                return;
            }
            String string = throwable.toString();
            String str = v[0];
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = string.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) str, false, 2, (Object) null) || (iVarA = com.braze.models.outgoing.event.b.g.a(throwable, this.c.g(), z)) == null) {
                return;
            }
            a(iVarA);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda25
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.j();
                }
            }, 4, (Object) null);
        }
    }

    public final void a(final long j) {
        Object systemService = this.a.getSystemService(NotificationCompat.CATEGORY_ALARM);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
        AlarmManager alarmManager = (AlarmManager) systemService;
        Intent intent = new Intent(this.a, (Class<?>) BrazeFlushPushDeliveryReceiver.class);
        intent.setAction(BrazeFlushPushDeliveryReceiver.FLUSH_BRAZE_PUSH_DELIVERIES_ACTION);
        PendingIntent broadcast = PendingIntent.getBroadcast(this.a, 0, intent, IntentUtils.getImmutablePendingIntentFlags() | 134217728);
        if (j <= 0) {
            alarmManager.cancel(broadcast);
            i0 i0Var = this.k;
            i0Var.getClass();
            ArrayList arrayList = new ArrayList();
            ReentrantLock reentrantLock = i0Var.a;
            reentrantLock.lock();
            try {
                for (com.braze.models.push.a aVar : i0Var.b) {
                    if (arrayList.size() >= 32) {
                        break;
                    } else {
                        arrayList.add(aVar);
                    }
                }
                i0Var.b.removeAll(arrayList);
                reentrantLock.unlock();
                if (!arrayList.isEmpty()) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda8
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return m.s();
                        }
                    }, 7, (Object) null);
                    a(new com.braze.requests.q(this.f, this.e.getBaseUrlForRequests(), this.b, arrayList));
                    return;
                } else {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda9
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return m.t();
                        }
                    }, 7, (Object) null);
                    return;
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.b(j);
            }
        }, 7, (Object) null);
        alarmManager.set(2, SystemClock.elapsedRealtime() + j, broadcast);
    }

    public final void a(final String campaignId) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.b(campaignId);
            }
        }, 7, (Object) null);
        this.k.a(campaignId);
    }

    public final void b(boolean z) {
        this.s.set(z);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda27
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.b(this.f$0);
            }
        }, 6, (Object) null);
    }

    public static final String b(m mVar) {
        return "Updated shouldRequestTriggersInNextRequest to: " + mVar.s;
    }

    public static final String b(Activity activity) {
        return "Closed session with activity: " + activity.getLocalClassName();
    }

    public static final String b(com.braze.models.i iVar) {
        return "BrazeManager logEvent called for: " + JsonUtils.getPrettyPrintedString(((com.braze.models.outgoing.event.b) iVar).getJsonKey());
    }

    public static final String b() {
        return "SDK is disabled. Not adding request to dispatch.";
    }

    public final void b(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.D, (Throwable) null, true, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.E();
            }
        }, 2, (Object) null);
        a(new com.braze.requests.w(this.f, this.e.getBaseUrlForRequests(), this.b, arrayList));
    }

    public static final String b(Throwable th) {
        return "Not logging duplicate error: " + th;
    }

    public static final String b(long j) {
        return "Scheduling Push Delivery Events Flush in " + j + " ms";
    }
}

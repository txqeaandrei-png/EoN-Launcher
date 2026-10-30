package com.braze.storage;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.Constants;
import com.braze.managers.o0;
import com.braze.support.BrazeLogger;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class e0 {
    public static final int f = (int) TimeUnit.SECONDS.toMillis(10);
    public static final int g = (int) TimeUnit.MINUTES.toMillis(5);
    public final com.braze.events.d a;
    public final SharedPreferences b;
    public final ReentrantLock c;
    public final Mutex d;
    public com.braze.models.response.m e;

    public e0(Context context, String apiKey, com.braze.events.d internalEventPublisher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(internalEventPublisher, "internalEventPublisher");
        this.a = internalEventPublisher;
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.braze.storage.server_config.".concat(apiKey), 0);
        this.b = sharedPreferences;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.c = reentrantLock;
        this.d = MutexKt.Mutex$default(false, 1, null);
        final String string = sharedPreferences.getString("last_accessed_sdk_version", "");
        final String str = Constants.BRAZE_SDK_VERSION;
        if (!Intrinsics.areEqual(Constants.BRAZE_SDK_VERSION, string)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.storage.e0$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e0.a(string, str);
                }
            }, 6, (Object) null);
            sharedPreferences.edit().putLong("config_time", 0L).putString("last_accessed_sdk_version", Constants.BRAZE_SDK_VERSION).apply();
        }
        com.braze.models.response.m mVar = new com.braze.models.response.m();
        mVar.c = e();
        mVar.b = f();
        mVar.d = g();
        mVar.a = i();
        mVar.k = r();
        mVar.e = t();
        mVar.f = s();
        mVar.g = q();
        mVar.i = H();
        mVar.h = I();
        mVar.j = D();
        mVar.l = F();
        mVar.m = G();
        mVar.n = m();
        mVar.o = K();
        mVar.p = u();
        mVar.t = E();
        mVar.q = J();
        mVar.r = o();
        mVar.s = n();
        mVar.u = v();
        mVar.x = l();
        mVar.v = k();
        mVar.w = j();
        mVar.y = L();
        mVar.z = y();
        mVar.B = A();
        mVar.C = B();
        mVar.D = C();
        mVar.A = Long.valueOf(z());
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar2 = this.e;
            Map mapW = (mVar2 == null || (mapW = mVar2.E) == null) ? w() : mapW;
            reentrantLock.unlock();
            mVar.E = mapW;
            mVar.F = d();
            mVar.G = p();
            reentrantLock.lock();
            try {
                this.e = mVar;
                Unit unit = Unit.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public static final String N() {
        return "Attempting to unlock server config info";
    }

    public static final String O() {
        return "Unlocking config info lock.";
    }

    public static final String P() {
        return "Could not persist server config to shared preferences.";
    }

    public static final String Q() {
        return "Could not persist server config to shared preferences.";
    }

    public static final String R() {
        return "Server config is older than previous config time. Not sending out ConfigChangeEvent.";
    }

    public static final String a(String str, String str2) {
        return "Detected SDK update from '" + str + "' -> '" + str2 + "'. Clearing config update time.";
    }

    public static final String b(com.braze.models.response.m mVar) {
        return "Finishing updating server config to " + mVar;
    }

    public static final String c() {
        return "Not allowing server config info unlock. Returning null.";
    }

    public static final String h() {
        return "Experienced exception retrieving blocklisted strings from local storage. Returning null.";
    }

    public static final String x() {
        return "Failed to parse endpoint override from storage";
    }

    public final long A() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.B : this.b.getLong("sdk_debugger_flush_interval_bytes", 0L);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long B() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.C : this.b.getLong("sdk_debugger_flush_interval_seconds", 0L);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long C() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.D : this.b.getLong("sdk_debugger_max_payload_bytes", 0L);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean D() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.j : this.b.getBoolean("content_cards_enabled", false);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean E() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.t : this.b.getBoolean("dust_enabled", false);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean F() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.l : this.b.getBoolean("ephemeral_events_enabled", false);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean G() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.m : this.b.getBoolean("feature_flags_enabled", false);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean H() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.i : this.b.getBoolean("geofences_enabled", false);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean I() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.h : this.b.getBoolean("geofences_enabled_set", false);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean J() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.q : this.b.getBoolean("global_req_rate_limit_enabled", true);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean K() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.o : this.b.getBoolean("push_max_enabled", false);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean L() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.y : this.b.getBoolean("sdk_debugger_enabled", false);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void M() {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.storage.e0$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e0.N();
            }
        }, 6, (Object) null);
        if (this.d.isLocked()) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.e0$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e0.O();
                }
            }, 7, (Object) null);
            Mutex.DefaultImpls.unlock$default(this.d, null, 1, null);
        }
    }

    public final boolean d() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.F : this.b.getBoolean("banners_enabled", false);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final Set e() {
        Set setA;
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            if (mVar == null || (setA = mVar.c) == null) {
                setA = a("blacklisted_attributes");
            }
            return setA;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final Set f() {
        Set setA;
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            if (mVar == null || (setA = mVar.b) == null) {
                setA = a("blacklisted_events");
            }
            return setA;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final Set g() {
        Set setA;
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            if (mVar == null || (setA = mVar.d) == null) {
                setA = a("blacklisted_purchases");
            }
            return setA;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long i() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.a : this.b.getLong("config_time", 0L);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int j() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.w : this.b.getInt("default_backoff_max_sleep_duration_ms", g);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int k() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.v : this.b.getInt("default_backoff_min_sleep_duration__ms", f);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int l() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.x : this.b.getInt("default_backoff_scale_factor", 3);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int m() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.n : this.b.getInt("feature_flags_refresh_rate_limit", -1);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int n() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.s : this.b.getInt("global_req_rate_capacity", 30);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int o() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.r : this.b.getInt("global_req_rate_refill_rate", 30);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int p() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.G : this.b.getInt("max_banner_placements", 0);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int q() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.g : this.b.getInt("geofences_max_num_to_register", -1);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long r() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.k : this.b.getLong("messaging_session_timeout", -1L);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int s() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.f : this.b.getInt("geofences_min_time_since_last_report", -1);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int t() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.e : this.b.getInt("geofences_min_time_since_last_request", -1);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long u() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.p : this.b.getLong("push_max_redeliver_buffer", 86400L);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long v() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return mVar != null ? mVar.u : this.b.getLong("push_max_redeliver_dedupe_buffer", -1L);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final LinkedHashMap w() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            String string = this.b.getString("global_req_rate_limit_endpoint_overrides", "");
            if (string != null && string.length() != 0) {
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> itKeys = jSONObject.keys();
                Intrinsics.checkNotNullExpressionValue(itKeys, "keys(...)");
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    com.braze.requests.l lVar = com.braze.requests.m.b;
                    Intrinsics.checkNotNull(next);
                    com.braze.requests.m mVarA = lVar.a(next);
                    if (mVarA != null) {
                        JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                        linkedHashMap.put(mVarA, new com.braze.models.response.j(jSONObject2.getInt("capacity"), jSONObject2.getInt("refill")));
                    }
                }
                return linkedHashMap;
            }
            return linkedHashMap;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.e0$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e0.x();
                }
            }, 4, (Object) null);
        }
    }

    public final String y() {
        String string;
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            if (mVar == null || (string = mVar.z) == null) {
                string = this.b.getString("sdk_debugger_authorization_code", null);
            }
            return string;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long z() {
        Long l;
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            return (mVar == null || (l = mVar.A) == null) ? this.b.getLong("sdk_debugger_expiration_time", -1L) : l.longValue();
        } finally {
            reentrantLock.unlock();
        }
    }

    public static final String b() {
        return "Attempting to acquire server config lock";
    }

    public final void a(final com.braze.models.response.m serverConfig) {
        Intrinsics.checkNotNullParameter(serverConfig, "serverConfig");
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            this.e = serverConfig;
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            try {
                SharedPreferences.Editor editorEdit = this.b.edit();
                if (serverConfig.b != null) {
                    editorEdit.putString("blacklisted_events", new JSONArray((Collection) serverConfig.b).toString());
                }
                if (serverConfig.c != null) {
                    editorEdit.putString("blacklisted_attributes", new JSONArray((Collection) serverConfig.c).toString());
                }
                if (serverConfig.d != null) {
                    editorEdit.putString("blacklisted_purchases", new JSONArray((Collection) serverConfig.d).toString());
                }
                Map map = serverConfig.E;
                if (map != null) {
                    JSONObject jSONObject = new JSONObject();
                    for (com.braze.requests.m mVar2 : map.keySet()) {
                        com.braze.models.response.j jVar = (com.braze.models.response.j) map.get(mVar2);
                        if (jVar != null) {
                            jSONObject.put(mVar2.name(), new JSONObject().put("refill", jVar.b).put("capacity", jVar.a));
                        }
                    }
                    editorEdit.putString("global_req_rate_limit_endpoint_overrides", jSONObject.toString());
                }
                editorEdit.putLong("config_time", serverConfig.a).putInt("geofences_min_time_since_last_request", serverConfig.e).putInt("geofences_min_time_since_last_report", serverConfig.f).putInt("geofences_max_num_to_register", serverConfig.g).putBoolean("geofences_enabled", serverConfig.i).putBoolean("geofences_enabled_set", serverConfig.h).putLong("messaging_session_timeout", serverConfig.k).putBoolean("ephemeral_events_enabled", serverConfig.l).putBoolean("feature_flags_enabled", serverConfig.m).putInt("feature_flags_refresh_rate_limit", serverConfig.n).putBoolean("content_cards_enabled", serverConfig.j).putBoolean("push_max_enabled", serverConfig.o).putLong("push_max_redeliver_buffer", serverConfig.p).putBoolean("dust_enabled", serverConfig.t).putBoolean("global_req_rate_limit_enabled", serverConfig.q).putInt("global_req_rate_capacity", serverConfig.s).putInt("global_req_rate_refill_rate", serverConfig.r).putLong("push_max_redeliver_dedupe_buffer", serverConfig.u).putInt("default_backoff_scale_factor", serverConfig.x).putInt("default_backoff_min_sleep_duration__ms", serverConfig.v).putInt("default_backoff_max_sleep_duration_ms", serverConfig.w).putBoolean("sdk_debugger_enabled", serverConfig.y).putString("sdk_debugger_authorization_code", serverConfig.z).putLong("sdk_debugger_flush_interval_bytes", serverConfig.B).putLong("sdk_debugger_flush_interval_seconds", serverConfig.C).putLong("sdk_debugger_max_payload_bytes", serverConfig.D).putBoolean("banners_enabled", serverConfig.F).putInt("max_banner_placements", serverConfig.G);
                Long l = serverConfig.A;
                if (l != null) {
                    editorEdit.putLong("sdk_debugger_expiration_time", l.longValue());
                }
                editorEdit.apply();
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.e0$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return e0.Q();
                    }
                }, 4, (Object) null);
            }
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.storage.e0$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e0.b(serverConfig);
                }
            }, 6, (Object) null);
            if (mVar != null) {
                if (serverConfig.a > mVar.a) {
                    this.a.b(new com.braze.events.internal.d(mVar, serverConfig), com.braze.events.internal.d.class);
                } else {
                    BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.e0$$ExternalSyntheticLambda10
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return e0.R();
                        }
                    }, 7, (Object) null);
                }
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void a(o0 sdkDebugConfig) {
        Intrinsics.checkNotNullParameter(sdkDebugConfig, "sdkDebugConfig");
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = this.e;
            if (mVar != null) {
                mVar.y = sdkDebugConfig.a;
            }
            if (mVar != null) {
                mVar.B = sdkDebugConfig.d;
            }
            if (mVar != null) {
                mVar.C = sdkDebugConfig.e;
            }
            if (mVar != null) {
                mVar.D = sdkDebugConfig.f;
            }
            String str = sdkDebugConfig.c;
            if (str != null && mVar != null) {
                mVar.z = str;
            }
            Long l = sdkDebugConfig.b;
            if (l != null) {
                long jLongValue = l.longValue();
                com.braze.models.response.m mVar2 = this.e;
                if (mVar2 != null) {
                    mVar2.A = Long.valueOf(jLongValue);
                }
                Unit unit = Unit.INSTANCE;
            }
            reentrantLock.unlock();
            try {
                com.braze.models.response.m mVar3 = this.e;
                if (mVar3 != null) {
                    SharedPreferences.Editor editorEdit = this.b.edit();
                    editorEdit.putBoolean("sdk_debugger_enabled", mVar3.y).putString("sdk_debugger_authorization_code", mVar3.z).putLong("sdk_debugger_flush_interval_bytes", mVar3.B).putLong("sdk_debugger_flush_interval_seconds", mVar3.C).putLong("sdk_debugger_max_payload_bytes", mVar3.D);
                    Long l2 = mVar3.A;
                    if (l2 != null) {
                        editorEdit.putLong("sdk_debugger_expiration_time", l2.longValue());
                    }
                    editorEdit.apply();
                }
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.e0$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return e0.P();
                    }
                }, 4, (Object) null);
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.storage.e0$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e0.a(this.f$0);
                }
            }, 6, (Object) null);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public static final String a(e0 e0Var) {
        return "Finishing updating server config to " + e0Var.e;
    }

    public final Pair a() {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.Priority priority = BrazeLogger.Priority.V;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.storage.e0$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e0.b();
            }
        }, 6, (Object) null);
        if (!Mutex.DefaultImpls.tryLock$default(this.d, null, 1, null)) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.storage.e0$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e0.c();
                }
            }, 6, (Object) null);
            return null;
        }
        return new Pair(Long.valueOf(i()), Boolean.valueOf(i() <= 0));
    }

    public final HashSet a(String str) {
        try {
            String string = this.b.getString(str, "");
            HashSet hashSet = new HashSet();
            if (string != null && !StringsKt.isBlank(string)) {
                JSONArray jSONArray = new JSONArray(string);
                Iterator it = SequencesKt.map(SequencesKt.filter(CollectionsKt.asSequence(RangesKt.until(0, jSONArray.length())), new c0(jSONArray)), new d0(jSONArray)).iterator();
                while (it.hasNext()) {
                    hashSet.add((String) it.next());
                }
                return hashSet;
            }
            return hashSet;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.e0$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e0.h();
                }
            }, 4, (Object) null);
            return new HashSet();
        }
    }
}

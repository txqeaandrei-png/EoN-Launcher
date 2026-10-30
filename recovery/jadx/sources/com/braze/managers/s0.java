package com.braze.managers;

import android.content.Context;
import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.events.IEventSubscriber;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final class s0 {
    public static final n0 k = new n0();
    public final com.braze.storage.e0 a;
    public final com.braze.events.d b;
    public o0 c;
    public long d;
    public int e;
    public final ArrayList f;
    public int g;
    public final ReentrantLock h;
    public Job i;
    public final AtomicInteger j;

    public s0(com.braze.storage.e0 serverConfigStorageProvider, com.braze.events.d internalPublisher, Context context) {
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(internalPublisher, "internalPublisher");
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = serverConfigStorageProvider;
        this.b = internalPublisher;
        this.c = new o0();
        this.d = DateTimeUtils.nowInSeconds();
        this.f = new ArrayList();
        this.h = new ReentrantLock();
        this.j = new AtomicInteger(0);
        if (g()) {
            c();
        }
        internalPublisher.c(com.braze.events.internal.q.class, new IEventSubscriber() { // from class: com.braze.managers.s0$$ExternalSyntheticLambda2
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                s0.a(this.f$0, (com.braze.events.internal.q) obj);
            }
        });
        internalPublisher.c(com.braze.events.internal.t.class, new IEventSubscriber() { // from class: com.braze.managers.s0$$ExternalSyntheticLambda3
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                s0.a(this.f$0, (com.braze.events.internal.t) obj);
            }
        });
    }

    public static final void a(s0 s0Var, com.braze.events.internal.q it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it.a instanceof com.braze.requests.w) {
            s0Var.j.decrementAndGet();
            BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, null, null, new m0(s0Var, null), 3, null);
        }
    }

    public static final String b() {
        return "Shutting down SDK Debugger due to being past expiration time";
    }

    public static final String d() {
        return "Initializing SDK Debugger";
    }

    public static final String e() {
        return "SDK Debugger transitioned from disabled to enabled. Initializing SDK Debugger.";
    }

    public static final String f() {
        return "SDK Debugger transitioned from enabled to disabled. Shutting down SDK Debugger.";
    }

    public static final String h() {
        return "Debugging session has expired. Disabling SDK Debugger.";
    }

    public static final String j() {
        return "Shutting down SDK Debugger";
    }

    public final void c() {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.s0$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return s0.d();
            }
        }, 7, (Object) null);
        brazeLogger.setSdkDebuggerCallback$android_sdk_base_release(new q0(this));
        this.b.b(new com.braze.events.internal.u(), com.braze.events.internal.u.class);
    }

    public final boolean g() {
        this.c.a = this.a.L();
        o0 o0Var = this.c;
        if (o0Var.a) {
            o0Var.c = this.a.y();
            this.c.d = this.a.A();
            this.c.e = this.a.B();
            this.c.f = this.a.C();
            this.c.b = Long.valueOf(this.a.z());
        }
        Long l = this.c.b;
        if (l != null) {
            if (DateTimeUtils.nowInSeconds() > l.longValue()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.s0$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return s0.h();
                    }
                }, 7, (Object) null);
                this.c = new o0();
            }
        }
        return this.c.a;
    }

    public final void i() {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.s0$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return s0.j();
            }
        }, 7, (Object) null);
        brazeLogger.setSdkDebuggerCallback$android_sdk_base_release(null);
        this.c = new o0();
        ReentrantLock reentrantLock = this.h;
        reentrantLock.lock();
        try {
            this.f.clear();
            this.g = 0;
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public static final void a(s0 s0Var, final com.braze.events.internal.t newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        final o0 o0Var = s0Var.c;
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) s0Var, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.s0$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return s0.a(newConfig, o0Var);
            }
        }, 7, (Object) null);
        if (newConfig.a.b == null) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) s0Var, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.s0$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return s0.a(o0Var);
                }
            }, 7, (Object) null);
            newConfig.a.b = o0Var.b;
        }
        o0 o0Var2 = newConfig.a;
        if (o0Var2.c == null) {
            o0Var2.c = o0Var.c;
        }
        s0Var.c = o0Var2;
        BrazeLogger.Priority priority = BrazeLogger.Priority.V;
        BrazeLogger.brazelog$default(brazeLogger, (Object) s0Var, priority, (Throwable) null, false, new Function0() { // from class: com.braze.managers.s0$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return s0.a(newConfig);
            }
        }, 6, (Object) null);
        s0Var.a.a(newConfig.a);
        boolean z = o0Var.a;
        if (!z && s0Var.c.a) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) s0Var, priority, (Throwable) null, false, new Function0() { // from class: com.braze.managers.s0$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return s0.e();
                }
            }, 6, (Object) null);
            s0Var.c();
        } else {
            if (!z || s0Var.c.a) {
                return;
            }
            BrazeLogger.brazelog$default(brazeLogger, (Object) s0Var, priority, (Throwable) null, false, new Function0() { // from class: com.braze.managers.s0$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return s0.f();
                }
            }, 6, (Object) null);
            s0Var.i();
        }
    }

    public static final String a(com.braze.events.internal.t tVar, o0 o0Var) {
        return "Received SdkDebuggerConfigUpdateEvent. Updating SDK Debugger config with " + tVar.a + ".\nOld config " + o0Var;
    }

    public static final String a(o0 o0Var) {
        return "updating expiration time to " + o0Var.b;
    }

    public static final String a(com.braze.events.internal.t tVar) {
        return "Updating SDK Debugger config with " + tVar.a;
    }

    public final void a(String str) {
        com.braze.models.m mVar = new com.braze.models.m(str);
        ReentrantLock reentrantLock = this.h;
        reentrantLock.lock();
        try {
            this.f.add(mVar);
            int length = this.g + mVar.a.length();
            this.g = length;
            if (length > 1048576) {
                while (this.g > 838860) {
                    this.g -= ((com.braze.models.m) this.f.remove(0)).a.length();
                    this.e++;
                }
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final Unit a() {
        Long l;
        o0 o0Var = this.c;
        if (o0Var.a && o0Var.c != null && (l = o0Var.b) != null && l.longValue() != 0 && this.j.get() <= 0) {
            Long l2 = this.c.b;
            if (l2 != null) {
                if (DateTimeUtils.nowInSeconds() > l2.longValue()) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.s0$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return s0.b();
                        }
                    }, 7, (Object) null);
                    i();
                    return Unit.INSTANCE;
                }
            }
            long jNowInSeconds = DateTimeUtils.nowInSeconds();
            long j = this.d;
            o0 o0Var2 = this.c;
            long j2 = j + o0Var2.e;
            if (jNowInSeconds <= j2 && this.g <= o0Var2.d) {
                if (this.i == null) {
                    this.i = BrazeCoroutineScope.launchDelayed$default(BrazeCoroutineScope.INSTANCE, Boxing.boxLong(TimeUnit.SECONDS.toMillis(j2 - DateTimeUtils.nowInSeconds())), null, new p0(this, null), 2, null);
                }
            } else {
                ArrayList arrayList = new ArrayList();
                ReentrantLock reentrantLock = this.h;
                reentrantLock.lock();
                try {
                    int length = 0;
                    int length2 = 0;
                    for (com.braze.models.m mVar : this.f) {
                        if (this.e != 0) {
                            String str = "Removed " + this.e + " logs due to buffer overflow";
                            arrayList.add(new com.braze.models.m(str));
                            this.e = 0;
                            length2 += str.length();
                        }
                        int length3 = mVar.a.length() + length2;
                        if (length3 <= this.c.f) {
                            arrayList.add(mVar);
                            length2 = length3;
                        }
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        this.f.remove((com.braze.models.m) it.next());
                    }
                    Iterator it2 = this.f.iterator();
                    while (it2.hasNext()) {
                        length += ((com.braze.models.m) it2.next()).a.length();
                    }
                    this.g = length;
                    this.d = DateTimeUtils.nowInSeconds();
                    Unit unit = Unit.INSTANCE;
                    reentrantLock.unlock();
                    Job job = this.i;
                    if (job != null) {
                        Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                    }
                    this.i = null;
                    if (!arrayList.isEmpty()) {
                        this.j.incrementAndGet();
                        this.b.b(new com.braze.events.internal.v(arrayList), com.braze.events.internal.v.class);
                    }
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            }
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}

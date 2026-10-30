package com.braze.managers;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.events.SessionStateChangedEvent;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.IntentUtils;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;

/* JADX INFO: loaded from: classes.dex */
public final class r {
    public static final String m = BrazeLogger.getBrazeLogTag((Class<?>) r.class);
    public static final long n;
    public static final long o;
    public final Context a;
    public final com.braze.storage.s b;
    public final com.braze.events.d c;
    public final com.braze.events.e d;
    public final AlarmManager e;
    public final int f;
    public final boolean g;
    public final ReentrantLock h;
    public final String i;
    public final p j;
    public Job k;
    public com.braze.models.l l;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        n = timeUnit.toMillis(10L);
        o = timeUnit.toMillis(10L);
    }

    public r(Context applicationContext, com.braze.storage.s sessionStorageManager, com.braze.events.d internalEventPublisher, com.braze.events.e externalEventPublisher, AlarmManager alarmManager, int i, boolean z) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(sessionStorageManager, "sessionStorageManager");
        Intrinsics.checkNotNullParameter(internalEventPublisher, "internalEventPublisher");
        Intrinsics.checkNotNullParameter(externalEventPublisher, "externalEventPublisher");
        Intrinsics.checkNotNullParameter(alarmManager, "alarmManager");
        this.a = applicationContext;
        this.b = sessionStorageManager;
        this.c = internalEventPublisher;
        this.d = externalEventPublisher;
        this.e = alarmManager;
        this.f = i;
        this.g = z;
        this.h = new ReentrantLock();
        this.k = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        p pVar = new p(this);
        this.j = pVar;
        String str = applicationContext.getPackageName() + ".intent.BRAZE_SESSION_SHOULD_SEAL";
        this.i = str;
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                applicationContext.registerReceiver(pVar, new IntentFilter(str), 2);
            } else {
                applicationContext.registerReceiver(pVar, new IntentFilter(str));
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return r.a(this.f$0);
                }
            }, 4, (Object) null);
            this.j = null;
        }
    }

    public static final String a(r rVar) {
        return "Failed to register dynamic receiver for " + rVar.i;
    }

    public static final String b(com.braze.models.l lVar) {
        return "New session created with ID: " + lVar.a;
    }

    public static final String c(com.braze.models.l lVar) {
        return "Checking if this session needs to be sealed: " + lVar.a;
    }

    public static final String d(com.braze.models.l lVar) {
        return "Session [" + lVar.a + "] being sealed because its end time is over the grace period. Session: " + lVar;
    }

    public static final String e(com.braze.models.l lVar) {
        return "Closed session with id " + lVar.a;
    }

    public static final String j() {
        return "Getting the stored open session";
    }

    public static final String m() {
        return "Failed to unregister session seal receiver.";
    }

    public final boolean f() {
        ReentrantLock reentrantLock = this.h;
        reentrantLock.lock();
        try {
            i();
            final com.braze.models.l lVar = this.l;
            boolean z = true;
            if (lVar == null || lVar.d) {
                h();
                if (lVar != null && lVar.d) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda9
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return r.a(lVar);
                        }
                    }, 7, (Object) null);
                    this.b.a(lVar.a.b);
                }
            } else if (lVar.c != null) {
                lVar.c = null;
            } else {
                z = false;
            }
            return z;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final com.braze.models.o g() {
        ReentrantLock reentrantLock = this.h;
        reentrantLock.lock();
        try {
            i();
            com.braze.models.l lVar = this.l;
            return lVar != null ? lVar.a : null;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void h() {
        final com.braze.models.l lVar = new com.braze.models.l();
        this.l = lVar;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return r.b(lVar);
            }
        }, 6, (Object) null);
        this.c.b(new com.braze.events.internal.y(lVar), com.braze.events.internal.y.class);
        ((com.braze.events.d) this.d).b(new SessionStateChangedEvent(lVar.a.b, SessionStateChangedEvent.ChangeType.SESSION_STARTED), SessionStateChangedEvent.class);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x009b A[Catch: all -> 0x00ae, TryCatch #0 {all -> 0x00ae, blocks: (B:3:0x0005, B:5:0x000a, B:7:0x0022, B:9:0x0034, B:10:0x0036, B:12:0x003a, B:14:0x004f, B:16:0x0053, B:18:0x006a, B:23:0x0082, B:25:0x009b, B:27:0x009f, B:21:0x0078, B:28:0x00a8), top: B:34:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x009e  */
    public final void i() {
        com.braze.models.l lVar;
        com.braze.models.o oVar;
        ReentrantLock reentrantLock = this.h;
        reentrantLock.lock();
        try {
            if (this.l == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return r.j();
                    }
                }, 7, (Object) null);
                com.braze.models.n nVarC = this.b.c();
                this.l = nVarC != null ? new com.braze.models.l(nVarC.a, nVarC.b, nVarC.d(), nVarC.d) : null;
            }
            final com.braze.models.l lVar2 = this.l;
            if (lVar2 != null) {
                BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return r.c(lVar2);
                    }
                }, 7, (Object) null);
                Double d = lVar2.c;
                if (d != null && !lVar2.d) {
                    double d2 = lVar2.b;
                    double dDoubleValue = d.doubleValue();
                    int i = this.f;
                    boolean z = this.g;
                    long jNowInMilliseconds = DateTimeUtils.nowInMilliseconds();
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    long millis = timeUnit.toMillis(i);
                    if (z) {
                        if (timeUnit.toMillis((long) d2) + millis + o <= jNowInMilliseconds) {
                            BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda5
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return r.d(lVar2);
                                }
                            }, 6, (Object) null);
                            k();
                            com.braze.storage.s sVar = this.b;
                            lVar = this.l;
                            if (lVar != null) {
                                oVar = lVar.a;
                            } else {
                                oVar = null;
                            }
                            sVar.a(String.valueOf(oVar));
                            this.l = null;
                        }
                    } else if (timeUnit.toMillis((long) dDoubleValue) + millis <= jNowInMilliseconds) {
                        BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return r.d(lVar2);
                            }
                        }, 6, (Object) null);
                        k();
                        com.braze.storage.s sVar2 = this.b;
                        lVar = this.l;
                        if (lVar != null) {
                            oVar = lVar.a;
                        } else {
                            oVar = null;
                        }
                        sVar2.a(String.valueOf(oVar));
                        this.l = null;
                    }
                }
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void k() {
        com.braze.models.l lVar = this.l;
        if (lVar != null) {
            ReentrantLock reentrantLock = this.h;
            reentrantLock.lock();
            try {
                lVar.d = true;
                lVar.c = Double.valueOf(DateTimeUtils.nowInSecondsPrecise());
                this.b.a(lVar);
                this.c.b(new com.braze.events.internal.z(lVar), com.braze.events.internal.z.class);
                ((com.braze.events.d) this.d).b(new SessionStateChangedEvent(lVar.a.b, SessionStateChangedEvent.ChangeType.SESSION_ENDED), SessionStateChangedEvent.class);
                Unit unit = Unit.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public final void l() {
        try {
            p pVar = this.j;
            if (pVar != null) {
                this.a.unregisterReceiver(pVar);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return r.m();
                }
            }, 4, (Object) null);
        }
    }

    public final void n() {
        ReentrantLock reentrantLock = this.h;
        reentrantLock.lock();
        try {
            f();
            final com.braze.models.l lVar = this.l;
            if (lVar != null) {
                lVar.c = Double.valueOf(DateTimeUtils.nowInSecondsPrecise());
                this.b.a(lVar);
                Job.DefaultImpls.cancel$default(this.k, (CancellationException) null, 1, (Object) null);
                this.k = BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, null, null, new q(this, null), 3, null);
                d();
                this.c.b(com.braze.events.internal.b0.a, com.braze.events.internal.b0.class);
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return r.e(lVar);
                    }
                }, 7, (Object) null);
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public static final String a(com.braze.models.l lVar) {
        return "Clearing completely dispatched sealed session " + lVar.a;
    }

    public static final String b() {
        return "Cancelling session seal alarm";
    }

    public static final String c() {
        return "Failed to cancel session seal alarm";
    }

    public static final String e() {
        return "Failed to create session seal alarm";
    }

    public final void d() {
        com.braze.models.l mutableSession = this.l;
        if (mutableSession != null) {
            int i = this.f;
            boolean z = this.g;
            Intrinsics.checkNotNullParameter(mutableSession, "mutableSession");
            TimeUnit timeUnit = TimeUnit.SECONDS;
            final long millis = timeUnit.toMillis(i);
            if (z) {
                millis = Math.max(o, (timeUnit.toMillis((long) mutableSession.b) + millis) - DateTimeUtils.nowInMilliseconds());
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return r.a(millis);
                }
            }, 7, (Object) null);
            try {
                Intent intent = new Intent(this.i);
                intent.putExtra("session_id", mutableSession.toString());
                this.e.set(1, DateTimeUtils.nowInMilliseconds() + millis, PendingIntent.getBroadcast(this.a, 0, intent, IntentUtils.getImmutablePendingIntentFlags() | 1073741824));
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return r.e();
                    }
                }, 4, (Object) null);
            }
        }
    }

    public static final String a(long j) {
        return "Creating a session seal alarm with a delay of " + j + " ms";
    }

    public final void a() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return r.b();
            }
        }, 7, (Object) null);
        try {
            Intent intent = new Intent(this.i);
            intent.putExtra("session_id", String.valueOf(this.l));
            this.e.cancel(PendingIntent.getBroadcast(this.a, 0, intent, IntentUtils.getImmutablePendingIntentFlags() | 1073741824));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.r$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return r.c();
                }
            }, 4, (Object) null);
        }
    }
}

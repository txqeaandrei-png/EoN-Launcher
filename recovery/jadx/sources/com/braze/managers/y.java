package com.braze.managers;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.events.IEventSubscriber;
import com.braze.support.BrazeLogger;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final class y {
    public static final long f = TimeUnit.SECONDS.toMillis(5);
    public final com.braze.storage.e0 a;
    public final com.braze.events.d b;
    public final SharedPreferences c;
    public final com.braze.communication.dust.h d;
    public Job e;

    public y(com.braze.storage.e0 serverConfigStorageProvider, com.braze.events.d internalPublisher, Context context, String str, String str2) {
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(internalPublisher, "internalPublisher");
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = serverConfigStorageProvider;
        this.b = internalPublisher;
        SharedPreferences sharedPreferencesA = c.a(context, str, str2, new StringBuilder("com.braze.managers.dust.metadata"), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferencesA, "getSharedPreferences(...)");
        this.c = sharedPreferencesA;
        this.d = new com.braze.communication.dust.h();
        internalPublisher.c(com.braze.events.internal.a0.class, new IEventSubscriber() { // from class: com.braze.managers.y$$ExternalSyntheticLambda9
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) throws InterruptedException {
                y.a(this.f$0, (com.braze.events.internal.a0) obj);
            }
        });
        internalPublisher.c(com.braze.events.internal.b0.class, new IEventSubscriber() { // from class: com.braze.managers.y$$ExternalSyntheticLambda10
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                y.a(this.f$0, (com.braze.events.internal.b0) obj);
            }
        });
        internalPublisher.c(com.braze.events.internal.o.class, new IEventSubscriber() { // from class: com.braze.managers.y$$ExternalSyntheticLambda11
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) throws InterruptedException {
                y.a(this.f$0, (com.braze.events.internal.o) obj);
            }
        });
        internalPublisher.c(com.braze.events.internal.h.class, new IEventSubscriber() { // from class: com.braze.managers.y$$ExternalSyntheticLambda12
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) throws InterruptedException {
                y.a(this.f$0, (com.braze.events.internal.h) obj);
            }
        });
    }

    public static final void a(y yVar, com.braze.events.internal.a0 it) throws InterruptedException {
        Intrinsics.checkNotNullParameter(it, "it");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) yVar, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.y$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return y.c();
            }
        }, 7, (Object) null);
        Job job = yVar.e;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        yVar.a(true);
    }

    public static final String b(String str) {
        return com.braze.j.a("setting mite value to ", str);
    }

    public static final String c() {
        return "Cancelling ending of DUST subscription on delay and resuming stream";
    }

    public static final String d() {
        return "Ending DUST subscription on delay";
    }

    public static final String e() {
        return "Received MITE value. Starting/resuming a new subscription";
    }

    public static final void a(y yVar, com.braze.events.internal.b0 it) {
        Intrinsics.checkNotNullParameter(it, "it");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) yVar, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.y$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return y.d();
            }
        }, 7, (Object) null);
        yVar.e = BrazeCoroutineScope.launchDelayed$default(BrazeCoroutineScope.INSTANCE, Long.valueOf(f), null, new v(yVar, null), 2, null);
    }

    public static final void a(y yVar, final com.braze.events.internal.o it) throws InterruptedException {
        Intrinsics.checkNotNullParameter(it, "it");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) yVar, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.y$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return y.a(it);
            }
        }, 7, (Object) null);
        com.braze.enums.f fVar = it.b;
        com.braze.enums.f fVar2 = com.braze.enums.f.NONE;
        if (fVar == fVar2) {
            yVar.a();
        } else if (it.a == fVar2) {
            yVar.a(true);
        }
    }

    public static final String a(com.braze.events.internal.o oVar) {
        return "Got network change event: " + oVar;
    }

    public static final void a(y yVar, com.braze.events.internal.h it) throws InterruptedException {
        Intrinsics.checkNotNullParameter(it, "it");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) yVar, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.y$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return y.e();
            }
        }, 7, (Object) null);
        String string = yVar.c.getString("mite", null);
        yVar.a(it.a);
        yVar.a(Intrinsics.areEqual(string, it.a));
    }

    public final void a(final String str) {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.y$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return y.b(str);
            }
        }, 7, (Object) null);
        this.c.edit().putString("mite", str).apply();
    }

    public static final String a(String str, y yVar) {
        return "Cannot start a dust subscription with mite " + str + " and enabled " + yVar.a.E();
    }

    public static final String a(boolean z, String str, String str2) {
        return "Starting (resume = " + z + ") DUST subscription for mite: " + str + " to url: " + str2;
    }

    public final void a() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.y$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return y.b();
            }
        }, 7, (Object) null);
        this.d.b();
    }

    public final void a(final com.braze.models.dust.e eVar) {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.y$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return y.b(eVar);
            }
        }, 7, (Object) null);
        final com.braze.models.dust.d dVarA = eVar.a();
        if (w.a[dVarA.ordinal()] == 1) {
            this.b.b(new com.braze.events.internal.e(), com.braze.events.internal.e.class);
        } else {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.y$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return y.a(dVarA);
                }
            }, 6, (Object) null);
        }
    }

    public static final String a(com.braze.models.dust.d dVar) {
        return "Lacked logic to ingest message! Type: " + dVar;
    }

    public final void a(final boolean z) throws InterruptedException {
        final String string = this.c.getString("mite", null);
        if (string != null && this.a.E()) {
            final String strConcat = "https://dust.k8s.test-001.d-usw-2.braze.com/sse?mite=".concat(string);
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.y$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return y.a(z, string, strConcat);
                }
            }, 7, (Object) null);
            this.d.a(strConcat, new x(this), z);
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.y$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return y.a(string, this);
            }
        }, 7, (Object) null);
    }

    public static final String b() {
        return "Ending DUST subscription";
    }

    public static final String b(com.braze.models.dust.e eVar) {
        return "Ingesting DUST message\n" + eVar;
    }
}

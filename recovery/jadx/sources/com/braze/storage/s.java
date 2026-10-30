package com.braze.storage;

import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class s {
    public final g0 a;
    public final com.braze.events.d b;

    public s(g0 sessionStorageManager, com.braze.events.d eventPublisher) {
        Intrinsics.checkNotNullParameter(sessionStorageManager, "sessionStorageManager");
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        this.a = sessionStorageManager;
        this.b = eventPublisher;
    }

    public static final String a() {
        return "Failed to get the active session from the storage.";
    }

    public static final String b() {
        return "Failed to delete the sealed session from the storage.";
    }

    public static final String d() {
        return "Error occured while publishing exception.";
    }

    public static final String e() {
        return "Failed to upsert active session in the storage.";
    }

    public final com.braze.models.n c() {
        try {
            return this.a.c();
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.s$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return s.a();
                }
            }, 4, (Object) null);
            a(this.b, e);
            return null;
        }
    }

    public final void a(com.braze.models.n session) {
        Intrinsics.checkNotNullParameter(session, "session");
        try {
            this.a.a(session);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.s$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return s.e();
                }
            }, 4, (Object) null);
            a(this.b, e);
        }
    }

    public final void a(String sessionId) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        try {
            this.a.a(sessionId);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.s$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return s.b();
                }
            }, 4, (Object) null);
            a(this.b, e);
        }
    }

    public final void a(com.braze.events.d eventPublisher, Exception throwable) {
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        try {
            eventPublisher.b(new com.braze.exceptions.b("A storage exception has occurred. Please view the stack trace for more details.", throwable), com.braze.exceptions.b.class);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.s$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return s.d();
                }
            }, 4, (Object) null);
        }
    }
}

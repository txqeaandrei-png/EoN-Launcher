package com.braze.storage;

import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.support.BrazeLogger;
import java.util.Collection;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes.dex */
public final class v {
    public final f0 a;
    public final com.braze.events.d b;
    public boolean c;

    public v(f0 storage, com.braze.events.d eventPublisher) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        this.a = storage;
        this.b = eventPublisher;
    }

    public static final String a(String str) {
        return com.braze.j.a("Storage provider is closed. Failed to ", str);
    }

    public static final String b() {
        return "Failed to get all events from storage.";
    }

    public static final String d() {
        return "Failed to log storage exception";
    }

    public final Collection c() {
        if (this.c) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.storage.v$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return v.a();
                }
            }, 6, (Object) null);
            return SetsKt.emptySet();
        }
        try {
            return this.a.b();
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.v$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return v.b();
                }
            }, 4, (Object) null);
            a(e);
            return SetsKt.emptySet();
        }
    }

    public static final String a() {
        return "Storage provider is closed. Not getting all events.";
    }

    public final void a(final com.braze.models.i event) {
        Intrinsics.checkNotNullParameter(event, "event");
        a("add event " + event, new Function0() { // from class: com.braze.storage.v$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return v.a(this.f$0, event);
            }
        });
    }

    public static final Unit a(v vVar, com.braze.models.i iVar) {
        vVar.a.a(iVar);
        return Unit.INSTANCE;
    }

    public final void a(final Set events) {
        Intrinsics.checkNotNullParameter(events, "events");
        a("delete events " + events, new Function0() { // from class: com.braze.storage.v$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return v.a(this.f$0, events);
            }
        });
    }

    public static final Unit a(v vVar, Set set) {
        vVar.a.a(set);
        return Unit.INSTANCE;
    }

    public final void a(Exception exc) {
        try {
            this.b.b(new com.braze.exceptions.b("A storage exception has occurred!", exc), com.braze.exceptions.b.class);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.v$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return v.d();
                }
            }, 4, (Object) null);
        }
    }

    public final void a(final String str, Function0 function0) {
        if (!this.c) {
            BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, null, null, new u(function0, this, str, null), 3, null);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.storage.v$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return v.a(str);
                }
            }, 6, (Object) null);
        }
    }
}

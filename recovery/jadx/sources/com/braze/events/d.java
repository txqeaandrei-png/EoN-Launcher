package com.braze.events;

import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.events.internal.g;
import com.braze.events.internal.q;
import com.braze.events.internal.r;
import com.braze.events.internal.u;
import com.braze.events.internal.v;
import com.braze.requests.n;
import com.braze.storage.a0;
import com.braze.support.BrazeLogger;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.apache.http.message.TokenParser;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements e {
    public static final b i = new b();
    public final a0 a;
    public final ConcurrentHashMap b;
    public final ConcurrentHashMap c;
    public final ConcurrentHashMap d;
    public final ReentrantLock e;
    public final ReentrantLock f;
    public final ReentrantLock g;
    public boolean h;

    public d(a0 sdkEnablementProvider, boolean z) {
        Intrinsics.checkNotNullParameter(sdkEnablementProvider, "sdkEnablementProvider");
        this.a = sdkEnablementProvider;
        this.b = new ConcurrentHashMap();
        this.c = new ConcurrentHashMap();
        this.d = new ConcurrentHashMap();
        this.e = new ReentrantLock();
        this.f = new ReentrantLock();
        this.g = new ReentrantLock();
        this.h = !z;
    }

    public static final String b() {
        return "Now allowing events to send";
    }

    public final void a() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.events.d$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d.b();
            }
        }, 7, (Object) null);
        this.h = true;
        ReentrantLock reentrantLock = this.g;
        reentrantLock.lock();
        try {
            for (Class cls : this.d.keySet()) {
                Intrinsics.checkNotNull(cls);
                a(cls);
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean c(Class eventClass, IEventSubscriber subscriber) {
        Intrinsics.checkNotNullParameter(eventClass, "eventClass");
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        ReentrantLock reentrantLock = this.f;
        reentrantLock.lock();
        try {
            ConcurrentHashMap concurrentHashMap = this.c;
            CopyOnWriteArraySet copyOnWriteArraySet = (CopyOnWriteArraySet) concurrentHashMap.get(eventClass);
            if (copyOnWriteArraySet == null) {
                copyOnWriteArraySet = new CopyOnWriteArraySet();
                CopyOnWriteArraySet copyOnWriteArraySet2 = (CopyOnWriteArraySet) concurrentHashMap.putIfAbsent(eventClass, copyOnWriteArraySet);
                if (copyOnWriteArraySet2 != null) {
                    copyOnWriteArraySet = copyOnWriteArraySet2;
                }
            }
            boolean zAdd = copyOnWriteArraySet.add(subscriber);
            a(eventClass);
            return zAdd;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void d(Class eventClass, IEventSubscriber subscriber) {
        Intrinsics.checkNotNullParameter(eventClass, "eventClass");
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        ReentrantLock reentrantLock = this.e;
        reentrantLock.lock();
        try {
            ConcurrentHashMap concurrentHashMap = this.b;
            CopyOnWriteArraySet copyOnWriteArraySet = (CopyOnWriteArraySet) concurrentHashMap.get(eventClass);
            if (copyOnWriteArraySet == null) {
                copyOnWriteArraySet = new CopyOnWriteArraySet();
                CopyOnWriteArraySet copyOnWriteArraySet2 = (CopyOnWriteArraySet) concurrentHashMap.putIfAbsent(eventClass, copyOnWriteArraySet);
                if (copyOnWriteArraySet2 != null) {
                    copyOnWriteArraySet = copyOnWriteArraySet2;
                }
            }
            copyOnWriteArraySet.add(subscriber);
            a(eventClass);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean b(Class eventClass, IEventSubscriber subscriber) {
        Intrinsics.checkNotNullParameter(eventClass, "eventClass");
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        ReentrantLock reentrantLock = this.f;
        reentrantLock.lock();
        try {
            CopyOnWriteArraySet copyOnWriteArraySet = (CopyOnWriteArraySet) this.c.get(eventClass);
            if (copyOnWriteArraySet != null) {
                return copyOnWriteArraySet.remove(subscriber);
            }
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void b(final Object obj, final Class eventClass) {
        n nVar;
        Intrinsics.checkNotNullParameter(eventClass, "eventClass");
        boolean z = true;
        if (!(obj instanceof u) && !(obj instanceof v) && ((!(obj instanceof com.braze.events.internal.dispatchmanager.c) || (nVar = ((com.braze.events.internal.dispatchmanager.c) obj).d) == null || !((com.braze.requests.b) nVar).e().d) && ((!(obj instanceof r) || !((r) obj).a.e().d) && ((!(obj instanceof q) || !((q) obj).a.e().d) && (!(obj instanceof g) || !((com.braze.requests.b) ((g) obj).a).e().d))))) {
            z = false;
        }
        if (this.a.a.getBoolean("appboy_sdk_disabled", false)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this, (BrazeLogger.Priority) null, (Throwable) null, z, new Function0() { // from class: com.braze.events.d$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return d.c(eventClass, obj);
                }
            }, 3, (Object) null);
            return;
        }
        if (obj == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this, (BrazeLogger.Priority) null, (Throwable) null, z, new Function0() { // from class: com.braze.events.d$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return d.d(eventClass);
                }
            }, 3, (Object) null);
            return;
        }
        if (!this.h) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this, (BrazeLogger.Priority) null, (Throwable) null, z, new Function0() { // from class: com.braze.events.d$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return d.a(eventClass, obj);
                }
            }, 3, (Object) null);
            a(obj, eventClass);
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this, (BrazeLogger.Priority) null, (Throwable) null, z, new Function0() { // from class: com.braze.events.d$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d.b(eventClass, obj);
            }
        }, 3, (Object) null);
        b bVar = i;
        HashSet hashSetA = b.a(this.b, eventClass, this.e);
        Iterator it = bVar.a(eventClass, hashSetA).iterator();
        while (it.hasNext()) {
            BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, null, null, new c((IEventSubscriber) it.next(), obj, null), 3, null);
        }
        b bVar2 = i;
        HashSet hashSetA2 = b.a(this.c, eventClass, this.f);
        Iterator it2 = bVar2.a(eventClass, hashSetA2).iterator();
        while (it2.hasNext()) {
            ((IEventSubscriber) it2.next()).trigger(obj);
        }
        if (hashSetA2.isEmpty() && hashSetA.isEmpty()) {
            if (Intrinsics.areEqual(eventClass, NoMatchingTriggerEvent.class)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this, BrazeLogger.Priority.I, (Throwable) null, z, new Function0() { // from class: com.braze.events.d$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return d.a(eventClass, this);
                    }
                }, 2, (Object) null);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this, BrazeLogger.Priority.I, (Throwable) null, z, new Function0() { // from class: com.braze.events.d$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return d.b(eventClass, this);
                    }
                }, 2, (Object) null);
                a(obj, eventClass);
            }
        }
    }

    public static final String c(Class cls, Object obj) {
        return "SDK is disabled. Not publishing event class: " + cls.getName() + " and message: " + obj;
    }

    public static final String d(Class cls) {
        return "Not publishing null message to event class ".concat(cls.getName());
    }

    public final void c() {
        ReentrantLock reentrantLock = this.e;
        reentrantLock.lock();
        try {
            this.b.clear();
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            ReentrantLock reentrantLock2 = this.f;
            reentrantLock2.lock();
            try {
                this.c.clear();
            } finally {
                reentrantLock2.unlock();
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public static final String c(Class cls) {
        return "Publishing cached event for class: " + cls;
    }

    public static final String b(Class cls, Object obj) {
        return cls.getName() + " fired:\n" + obj;
    }

    public static final String b(Class cls, d dVar) {
        return "Event was published, but no subscribers were found. Saving event for later publishing to a matching subscriber. Event class: " + cls + " this " + dVar;
    }

    public static final String b(Class cls) {
        return "Not publishing cached event for class: " + cls + " because events are not allowed to send yet.";
    }

    public final boolean a(Class eventClass, IEventSubscriber subscriber) {
        Intrinsics.checkNotNullParameter(eventClass, "eventClass");
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        ReentrantLock reentrantLock = this.e;
        reentrantLock.lock();
        try {
            CopyOnWriteArraySet copyOnWriteArraySet = (CopyOnWriteArraySet) this.b.get(eventClass);
            if (copyOnWriteArraySet != null) {
                return copyOnWriteArraySet.remove(subscriber);
            }
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    public static final String a(Class cls, Object obj) {
        return "Not publishing event class: " + cls.getName() + " and message: " + obj + " because events are not allowed to send yet. Adding to replay cache.";
    }

    public static final String a(Class cls, d dVar) {
        return "Event was published, but no subscribers were found. But not saving event for publishing later. Event class: " + cls + TokenParser.SP + dVar;
    }

    public final void a(Object obj, Class cls) {
        List list;
        ReentrantLock reentrantLock = this.g;
        reentrantLock.lock();
        if (obj == null) {
            reentrantLock.unlock();
            return;
        }
        try {
            if (this.d.containsKey(cls) && (list = (List) this.d.get(cls)) != null) {
                list.add(obj);
            } else {
                this.d.put(cls, CollectionsKt.mutableListOf(obj));
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void a(final Class cls) {
        if (!this.h) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.events.d$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return d.b(cls);
                }
            }, 7, (Object) null);
            return;
        }
        ReentrantLock reentrantLock = this.g;
        reentrantLock.lock();
        try {
            if (this.d.containsKey(cls)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.events.d$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return d.c(cls);
                    }
                }, 6, (Object) null);
                Object objRemove = this.d.remove(cls);
                Intrinsics.checkNotNull(objRemove, "null cannot be cast to non-null type kotlin.collections.List<T of com.braze.events.EventMessenger.attemptPublishFromCache>");
                Iterator it = ((List) objRemove).iterator();
                while (it.hasNext()) {
                    b(it.next(), cls);
                }
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }
}

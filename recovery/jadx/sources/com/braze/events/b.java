package com.braze.events;

import com.braze.support.BrazeLogger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public final Set a(final Class cls, final HashSet hashSet) {
        Intrinsics.checkNotNull(hashSet, "null cannot be cast to non-null type kotlin.collections.Set<com.braze.events.IEventSubscriber<T of com.braze.events.EventMessenger.Companion.getCastSubscriberSet>>");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, true, new Function0() { // from class: com.braze.events.b$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.a(cls, hashSet);
            }
        }, 3, (Object) null);
        return hashSet;
    }

    public static final String a(Class cls, Set set) {
        return "Triggering " + cls.getName() + " on " + set.size() + " subscribers.";
    }

    public static final HashSet a(ConcurrentHashMap concurrentHashMap, Class cls, ReentrantLock reentrantLock) {
        reentrantLock.lock();
        try {
            CopyOnWriteArraySet copyOnWriteArraySet = (CopyOnWriteArraySet) concurrentHashMap.get(cls);
            if (copyOnWriteArraySet == null) {
                HashSet hashSet = new HashSet();
                reentrantLock.unlock();
                return hashSet;
            }
            HashSet hashSet2 = new HashSet(copyOnWriteArraySet);
            ArrayList arrayList = new ArrayList();
            for (Object obj : copyOnWriteArraySet) {
                if (obj instanceof IFireOnceEventSubscriber) {
                    arrayList.add(obj);
                }
            }
            copyOnWriteArraySet.removeAll(CollectionsKt.toSet(arrayList));
            concurrentHashMap.put(cls, copyOnWriteArraySet);
            reentrantLock.unlock();
            return hashSet2;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}

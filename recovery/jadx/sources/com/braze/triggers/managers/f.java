package com.braze.triggers.managers;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.events.IEventSubscriber;
import com.braze.events.NoMatchingTriggerEvent;
import com.braze.events.internal.c0;
import com.braze.managers.m;
import com.braze.requests.n;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.JsonUtils;
import com.braze.triggers.actions.h;
import com.braze.triggers.events.i;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import org.apache.http.message.TokenParser;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    public static final long p = TimeUnit.SECONDS.toMillis(30);
    public static final String q = BrazeLogger.getBrazeLogTag((Class<?>) f.class);
    public final Context a;
    public final m b;
    public final com.braze.events.e c;
    public final com.braze.events.e d;
    public final long e;
    public final SharedPreferences f;
    public final b g;
    public final g h;
    public final Queue i;
    public final LinkedHashMap j;
    public long k;
    public volatile long l;
    public final ReentrantLock m;
    public final ReentrantLock n;
    public final com.braze.requests.framework.g o;

    public f(Context context, m brazeManager, com.braze.events.e internalEventPublisher, com.braze.events.e externalEventPublisher, BrazeConfigurationProvider configurationProvider, String str, String apiKey, com.braze.requests.framework.g requestFramework) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        Intrinsics.checkNotNullParameter(internalEventPublisher, "internalEventPublisher");
        Intrinsics.checkNotNullParameter(externalEventPublisher, "externalEventPublisher");
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(requestFramework, "requestFramework");
        this.m = new ReentrantLock();
        this.n = new ReentrantLock();
        this.a = context.getApplicationContext();
        this.b = brazeManager;
        this.c = internalEventPublisher;
        Intrinsics.checkNotNullParameter(externalEventPublisher, "<set-?>");
        this.d = externalEventPublisher;
        this.e = configurationProvider.getTriggerActionMinimumTimeIntervalInSeconds();
        this.f = com.braze.managers.c.a(context, str, apiKey, new StringBuilder("com.appboy.storage.triggers.actions"), 0);
        this.g = new b(context, apiKey);
        this.h = new g(context, str, apiKey);
        this.j = g();
        this.i = new ArrayDeque();
        this.o = requestFramework;
        k();
    }

    public static final String a(String str) {
        return com.braze.a.a("Received null or blank serialized triggered action string for action id ", str, " from shared preferences. Not parsing.");
    }

    public static final String c(com.braze.triggers.actions.a aVar) {
        return com.braze.c.a(new StringBuilder("Trigger manager received reenqueue with action with id: <"), ((com.braze.triggers.actions.g) aVar).a, ">.");
    }

    public static final String d(com.braze.triggers.actions.a aVar) {
        return "Registering triggered action id " + ((com.braze.triggers.actions.g) aVar).a + TokenParser.SP;
    }

    public static final String e() {
        return "Test triggered actions found, triggering test event.";
    }

    public static final String f() {
        return "No test triggered actions found.";
    }

    public static final String g(com.braze.triggers.actions.a aVar) {
        return com.braze.c.a(new StringBuilder("Trigger manager received failed triggered action with id: <"), ((com.braze.triggers.actions.g) aVar).a, ">. Will attempt to perform fallback triggered actions, if present.");
    }

    public static final String h() {
        return "Encountered unexpected exception while parsing stored triggered actions.";
    }

    public static final String i() {
        return "Triggered action has no trigger metadata and cannot fallback. Doing nothing.";
    }

    public static final String j() {
        return "Triggered action has no fallback action to perform. Doing nothing.";
    }

    public static final String l() {
        return "Subscribing to trigger dispatch events.";
    }

    public static final String m() {
        return "Executing pending events after trigger dispatch completed.";
    }

    public final void b(final long j) {
        this.k = this.l;
        this.l = j;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.a(j);
            }
        }, 7, (Object) null);
    }

    public final void k() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, q, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.l();
            }
        }, 12, (Object) null);
        ((com.braze.events.d) this.c).c(c0.class, new IEventSubscriber() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda13
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                f.a(this.f$0, (c0) obj);
            }
        });
    }

    public static final String e(com.braze.triggers.events.b bVar) {
        return "Failed to match triggered action for incoming <" + bVar.a() + ">.";
    }

    public static final String f(com.braze.triggers.actions.a aVar) {
        return "Fallback trigger has expired. Trigger id: " + ((com.braze.triggers.actions.g) aVar).a;
    }

    public static final String e(com.braze.triggers.actions.a aVar) {
        return com.braze.c.a(new StringBuilder("Retrieving templated triggered action id "), ((com.braze.triggers.actions.g) aVar).a, " from local storage.");
    }

    public static final String b(List list) {
        return "Registering " + list.size() + " new triggered actions.";
    }

    public static final String d() {
        return "Trigger request is in-flight. Not processing trigger event.";
    }

    public final void b(final com.braze.triggers.actions.a action) {
        Intrinsics.checkNotNullParameter(action, "action");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, q, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.c(action);
            }
        }, 14, (Object) null);
        b(this.k);
        this.k = 0L;
        this.h.d(action);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v3, types: [T, com.braze.triggers.actions.a, com.braze.triggers.actions.g, java.lang.Object] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final com.braze.triggers.actions.a d(final com.braze.triggers.events.b event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ReentrantLock reentrantLock = this.m;
        reentrantLock.lock();
        try {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ArrayList arrayList = new ArrayList();
            Iterator it = this.j.values().iterator();
            int i = Integer.MIN_VALUE;
            while (it.hasNext()) {
                final ?? r13 = (com.braze.triggers.actions.g) ((com.braze.triggers.actions.a) it.next());
                if (r13.b(event) && this.h.a((com.braze.triggers.actions.g) r13) && c.a(event, r13, this.l, this.e)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, q, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return f.a(r13);
                        }
                    }, 14, (Object) null);
                    int i2 = r13.b.c;
                    if (i2 > i) {
                        objectRef.element = r13;
                        i = i2;
                    }
                    arrayList.add(r13);
                }
            }
            Object obj = objectRef.element;
            if (obj == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, q, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return f.e(event);
                    }
                }, 14, (Object) null);
                reentrantLock.unlock();
                return null;
            }
            arrayList.remove(obj);
            ((com.braze.triggers.actions.g) ((com.braze.triggers.actions.a) objectRef.element)).d = new com.braze.triggers.utils.b(arrayList);
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, q, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return f.a(event, objectRef);
                }
            }, 14, (Object) null);
            com.braze.triggers.actions.a aVar = (com.braze.triggers.actions.a) objectRef.element;
            reentrantLock.unlock();
            return aVar;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public static final String b(com.braze.triggers.events.b bVar) {
        return "New incoming <" + bVar.a() + ">. Searching for matching triggers.";
    }

    public final void b() {
        ReentrantLock reentrantLock = this.n;
        reentrantLock.lock();
        try {
            if (a()) {
                return;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, q, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return f.c();
                }
            }, 14, (Object) null);
            while (!((ArrayDeque) this.i).isEmpty()) {
                com.braze.triggers.events.b bVar = (com.braze.triggers.events.b) ((ArrayDeque) this.i).poll();
                if (bVar != null) {
                    a(bVar);
                }
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final LinkedHashMap g() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Map<String, ?> all = this.f.getAll();
        if (all != null && !all.isEmpty()) {
            try {
                for (final String str : CollectionsKt.toSet(all.keySet())) {
                    String string = this.f.getString(str, null);
                    if (string != null && !StringsKt.isBlank(string)) {
                        final h hVarB = com.braze.triggers.utils.c.a.b(new JSONObject(string), this.b);
                        if (hVarB != null) {
                            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, q, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda8
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return f.e(hVarB);
                                }
                            }, 14, (Object) null);
                            linkedHashMap.put(hVarB.a, hVarB);
                        }
                    } else {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, q, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda9
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return f.a(str);
                            }
                        }, 12, (Object) null);
                    }
                }
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, q, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return f.h();
                    }
                }, 8, (Object) null);
            }
        }
        return linkedHashMap;
    }

    public static final String c(com.braze.triggers.events.b bVar) {
        return "No action found for " + bVar.a() + " event, publishing NoMatchingTriggerEvent";
    }

    public static final String c() {
        return "In flight trigger requests is empty. Executing any pending trigger events.";
    }

    public static final String a(long j) {
        return "TriggerManager lastDisplayTimeSeconds updated to " + j;
    }

    public final void a(final List triggeredActions) {
        Intrinsics.checkNotNullParameter(triggeredActions, "triggeredActions");
        com.braze.triggers.events.h hVar = new com.braze.triggers.events.h();
        ReentrantLock reentrantLock = this.m;
        reentrantLock.lock();
        try {
            this.j.clear();
            SharedPreferences.Editor editorClear = this.f.edit().clear();
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, q, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return f.b(triggeredActions);
                }
            }, 14, (Object) null);
            Iterator it = triggeredActions.iterator();
            boolean z = false;
            while (it.hasNext()) {
                final com.braze.triggers.actions.a aVar = (com.braze.triggers.actions.a) it.next();
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, q, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return f.d(aVar);
                    }
                }, 14, (Object) null);
                this.j.put(((com.braze.triggers.actions.g) aVar).a, aVar);
                editorClear.putString(((com.braze.triggers.actions.g) aVar).a, String.valueOf(aVar.getJsonKey()));
                if (((com.braze.triggers.actions.g) aVar).b(hVar)) {
                    z = true;
                }
            }
            editorClear.apply();
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            this.h.a(triggeredActions);
            this.g.a(triggeredActions);
            if (z) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, q, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return f.e();
                    }
                }, 12, (Object) null);
                a((i) hVar);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, q, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return f.f();
                    }
                }, 14, (Object) null);
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void a(i triggerEvent) {
        Intrinsics.checkNotNullParameter(triggerEvent, "triggerEvent");
        ReentrantLock reentrantLock = this.n;
        reentrantLock.lock();
        try {
            ((ArrayDeque) this.i).add(triggerEvent);
            if (!a()) {
                b();
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda22
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return f.d();
                    }
                }, 7, (Object) null);
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void a(com.braze.triggers.events.b triggerEvent, final com.braze.triggers.actions.a failedAction) {
        Intrinsics.checkNotNullParameter(triggerEvent, "triggerEvent");
        Intrinsics.checkNotNullParameter(failedAction, "failedAction");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        String str = q;
        BrazeLogger.brazelog$default(brazeLogger, str, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.g(failedAction);
            }
        }, 14, (Object) null);
        com.braze.triggers.utils.b bVar = ((com.braze.triggers.actions.g) failedAction).d;
        if (bVar == null) {
            BrazeLogger.brazelog$default(brazeLogger, str, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return f.i();
                }
            }, 14, (Object) null);
            return;
        }
        final com.braze.triggers.actions.a aVar = (com.braze.triggers.actions.a) bVar.a.poll();
        if (aVar == null) {
            BrazeLogger.brazelog$default(brazeLogger, str, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return f.j();
                }
            }, 14, (Object) null);
            return;
        }
        com.braze.triggers.actions.g gVar = (com.braze.triggers.actions.g) aVar;
        gVar.d = bVar;
        Map remoteAssetToLocalAssetPaths = this.g.a(aVar);
        Intrinsics.checkNotNullParameter(remoteAssetToLocalAssetPaths, "remoteAssetToLocalAssetPaths");
        ((h) aVar).f = new HashMap(remoteAssetToLocalAssetPaths);
        long j = ((i) triggerEvent).b;
        com.braze.triggers.config.c cVar = gVar.b;
        long j2 = cVar.e;
        long millis = TimeUnit.SECONDS.toMillis(cVar.d);
        long j3 = j2 != -1 ? j2 + j : j + millis + p;
        if (j3 < DateTimeUtils.nowInMilliseconds()) {
            BrazeLogger.brazelog$default(brazeLogger, str, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda19
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return f.f(aVar);
                }
            }, 14, (Object) null);
            a(triggerEvent, aVar);
        } else {
            final long jMax = Math.max(0L, (millis + j) - DateTimeUtils.nowInMilliseconds());
            BrazeLogger.brazelog$default(brazeLogger, str, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda20
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return f.a(aVar, jMax);
                }
            }, 14, (Object) null);
            BrazeCoroutineScope.launchDelayed$default(BrazeCoroutineScope.INSTANCE, Long.valueOf(jMax), null, new e(aVar, this, triggerEvent, j3, null), 2, null);
        }
    }

    public static final String a(com.braze.triggers.actions.a aVar, long j) {
        return "Performing fallback triggered action with id: <" + ((com.braze.triggers.actions.g) aVar).a + "> with a delay: " + j + " ms";
    }

    public static final void a(f fVar, c0 it) {
        Intrinsics.checkNotNullParameter(it, "it");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) fVar, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.m();
            }
        }, 6, (Object) null);
        fVar.b();
    }

    public final void a(final com.braze.triggers.events.b event) {
        Intrinsics.checkNotNullParameter(event, "triggerEvent");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, q, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.b(event);
            }
        }, 14, (Object) null);
        com.braze.triggers.actions.a action = d(event);
        if (action != null) {
            Intrinsics.checkNotNullParameter(event, "event");
            Intrinsics.checkNotNullParameter(action, "action");
            Map remoteAssetToLocalAssetPaths = this.g.a(action);
            Intrinsics.checkNotNullParameter(remoteAssetToLocalAssetPaths, "remoteAssetToLocalAssetPaths");
            ((h) action).f = new HashMap(remoteAssetToLocalAssetPaths);
            com.braze.triggers.config.c cVar = ((com.braze.triggers.actions.g) action).b;
            int i = cVar.e;
            long j = i != -1 ? ((i) event).b + ((long) i) : -1L;
            long millis = TimeUnit.SECONDS.toMillis(cVar.d);
            BrazeCoroutineScope.launchDelayed$default(BrazeCoroutineScope.INSTANCE, Long.valueOf(millis), null, new d(action, this, event, j, millis, null), 2, null);
            return;
        }
        String strA = event.a();
        int iHashCode = strA.hashCode();
        if (iHashCode != 3417674) {
            if (iHashCode != 717572172) {
                if (iHashCode != 1743324417 || !strA.equals("purchase")) {
                    return;
                }
            } else if (!strA.equals("custom_event")) {
                return;
            }
        } else if (!strA.equals("open")) {
            return;
        }
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.f$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.c(event);
            }
        }, 7, (Object) null);
        com.braze.events.e eVar = this.d;
        if (eVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("externalEventMessenger");
            eVar = null;
        }
        String strA2 = event.a();
        Intrinsics.checkNotNullExpressionValue(strA2, "getTriggerEventType(...)");
        ((com.braze.events.d) eVar).b(new NoMatchingTriggerEvent(strA2), NoMatchingTriggerEvent.class);
    }

    public static final String a(com.braze.triggers.actions.a aVar) {
        return "Found potential triggered action for incoming trigger event. Action id " + ((com.braze.triggers.actions.g) aVar).a + '.';
    }

    public static final String a(com.braze.triggers.events.b bVar, Ref.ObjectRef objectRef) {
        String prettyPrintedString;
        StringBuilder sb = new StringBuilder("\n     Found best triggered action for incoming trigger event ");
        i iVar = (i) bVar;
        if (iVar.c != null) {
            prettyPrintedString = JsonUtils.getPrettyPrintedString(((com.braze.models.outgoing.event.b) iVar.c).getJsonKey());
        } else {
            prettyPrintedString = "";
        }
        return StringsKt.trimIndent(sb.append(prettyPrintedString).append(".\n     Matched Action id: ").append(((com.braze.triggers.actions.g) ((com.braze.triggers.actions.a) objectRef.element)).a).append(".\n                ").toString());
    }

    public final boolean a() {
        com.braze.requests.framework.b bVar = (com.braze.requests.framework.b) this.o.e.get(com.braze.requests.m.V3_DATA);
        if (bVar != null && (bVar instanceof com.braze.requests.framework.queue.c)) {
            ArrayList<com.braze.requests.framework.h> arrayList = ((com.braze.requests.framework.queue.c) bVar).e;
            if (!(arrayList instanceof Collection) || !arrayList.isEmpty()) {
                for (com.braze.requests.framework.h hVar : arrayList) {
                    n nVar = hVar.a;
                    if ((nVar instanceof com.braze.requests.f) && ((com.braze.requests.f) nVar).j.b() && hVar.d == com.braze.requests.framework.i.IN_FLIGHT) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}

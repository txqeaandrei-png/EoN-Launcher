package com.braze.storage;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.support.BrazeLogger;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class f0 {
    public final SharedPreferences a;

    public f0(Context context, String str, String str2) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = com.braze.managers.c.a(context, str, str2, new StringBuilder("com.appboy.storage.appboy_event_storage"), 0);
    }

    public static final String a(String str) {
        return com.braze.j.a("Deleting event from storage with uid ", str);
    }

    public static final String c(com.braze.models.i iVar) {
        return "Adding event to storage with uid " + ((com.braze.models.outgoing.event.b) iVar).d;
    }

    /* JADX WARN: Type inference failed for: r5v4, types: [T, java.lang.String] */
    public final Collection b() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Map<String, ?> all = this.a.getAll();
        Intrinsics.checkNotNullExpressionValue(all, "getAll(...)");
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            final String key = entry.getKey();
            Object value = entry.getValue();
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = "";
            try {
                Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.String");
                objectRef.element = (String) value;
                Intrinsics.checkNotNull(key);
                com.braze.models.i iVarE = com.braze.models.outgoing.event.b.g.e((String) value, key);
                if (iVarE != null) {
                    linkedHashSet.add(iVarE);
                }
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.f0$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return f0.a(objectRef, key);
                    }
                }, 4, (Object) null);
                SharedPreferences.Editor editorEdit = this.a.edit();
                editorEdit.remove(key);
                editorEdit.apply();
                Unit unit = Unit.INSTANCE;
            }
        }
        return linkedHashSet;
    }

    public static final String b(com.braze.models.i iVar) {
        return "Storage provider is closed. Not adding event: " + iVar;
    }

    public static final String b(Set set) {
        return "Storage provider is closed. Not deleting events: " + set;
    }

    public static final String a() {
        return "Storage provider is closed. Not getting all events.";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String a(Ref.ObjectRef objectRef, String str) {
        return "Could not create BrazeEvent from [serialized event string=" + ((String) objectRef.element) + ", unique identifier=" + str + "] ... Deleting!";
    }

    public final void a(final com.braze.models.i event) {
        Intrinsics.checkNotNullParameter(event, "event");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.f0$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f0.c(event);
            }
        }, 7, (Object) null);
        SharedPreferences.Editor editorEdit = this.a.edit();
        com.braze.models.outgoing.event.b bVar = (com.braze.models.outgoing.event.b) event;
        String str = bVar.d;
        event.getClass();
        String string = bVar.getJsonKey().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        editorEdit.putString(str, string).apply();
    }

    public final void a(Set events) {
        Intrinsics.checkNotNullParameter(events, "events");
        SharedPreferences.Editor editorEdit = this.a.edit();
        Iterator it = events.iterator();
        while (it.hasNext()) {
            final String str = ((com.braze.models.outgoing.event.b) ((com.braze.models.i) it.next())).d;
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.f0$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return f0.a(str);
                }
            }, 7, (Object) null);
            editorEdit.remove(str);
        }
        editorEdit.apply();
    }
}

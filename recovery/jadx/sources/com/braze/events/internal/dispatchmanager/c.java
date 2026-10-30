package com.braze.events.internal.dispatchmanager;

import com.braze.models.o;
import com.braze.requests.n;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final a e = new a();
    public final b a;
    public final List b;
    public final o c;
    public final n d;

    public c(b commandType, List brazeEvents, o oVar, com.braze.requests.b bVar, int i) {
        brazeEvents = (i & 2) != 0 ? CollectionsKt.emptyList() : brazeEvents;
        oVar = (i & 4) != 0 ? null : oVar;
        bVar = (i & 8) != 0 ? null : bVar;
        Intrinsics.checkNotNullParameter(commandType, "commandType");
        Intrinsics.checkNotNullParameter(brazeEvents, "brazeEvents");
        this.a = commandType;
        this.b = brazeEvents;
        this.c = oVar;
        this.d = bVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.a == cVar.a && Intrinsics.areEqual(this.b, cVar.b) && Intrinsics.areEqual(this.c, cVar.c) && Intrinsics.areEqual(this.d, cVar.d);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        o oVar = this.c;
        int iHashCode2 = (iHashCode + (oVar == null ? 0 : oVar.a.hashCode())) * 31;
        n nVar = this.d;
        return iHashCode2 + (nVar != null ? nVar.hashCode() : 0);
    }

    public final String toString() {
        return "DispatchCommandEvent(commandType=" + this.a + ", brazeEvents=" + this.b + ", sessionId=" + this.c + ", brazeRequest=" + this.d + ')';
    }
}

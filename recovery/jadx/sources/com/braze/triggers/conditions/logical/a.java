package com.braze.triggers.conditions.logical;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends b {
    public a(ArrayList arrayList) {
        super(arrayList);
    }

    @Override // com.braze.triggers.conditions.c
    public final boolean a(com.braze.triggers.events.b bVar) {
        Iterator it = this.a.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!((com.braze.triggers.conditions.c) it.next()).a(bVar)) {
                return false;
            }
            z = true;
        }
        return z;
    }
}

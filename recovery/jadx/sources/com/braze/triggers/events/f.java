package com.braze.triggers.events;

import com.braze.models.outgoing.BrazeProperties;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends j {
    public final String f;

    public f(String str, BrazeProperties brazeProperties, com.braze.models.i iVar) {
        super(brazeProperties, iVar);
        this.f = str;
    }

    @Override // com.braze.triggers.events.b
    public final String a() {
        return "purchase";
    }
}

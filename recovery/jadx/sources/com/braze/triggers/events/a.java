package com.braze.triggers.events;

import com.braze.models.outgoing.BrazeProperties;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends j {
    public final String f;

    public a(String str, BrazeProperties brazeProperties, com.braze.models.i iVar) {
        super(brazeProperties, iVar);
        this.f = str;
    }

    @Override // com.braze.triggers.events.b
    public final String a() {
        return "custom_event";
    }
}

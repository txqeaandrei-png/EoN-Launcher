package com.microsoft.xbox.service.model;

import android.os.Bundle;

/* JADX INFO: loaded from: classes3.dex */
public final class UpdateData {
    private final Bundle extra;
    private final boolean isFinal;
    private final UpdateType updateType;

    public UpdateData(UpdateType updateType, boolean z) {
        this.updateType = updateType;
        this.isFinal = z;
        this.extra = null;
    }

    public UpdateData(UpdateType updateType, boolean z, Bundle bundle) {
        this.updateType = updateType;
        this.isFinal = z;
        this.extra = bundle;
    }

    public UpdateType getUpdateType() {
        return this.updateType;
    }

    public boolean getIsFinal() {
        return this.isFinal;
    }

    public Bundle getExtra() {
        return this.extra;
    }
}

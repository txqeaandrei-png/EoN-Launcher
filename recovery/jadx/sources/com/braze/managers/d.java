package com.braze.managers;

import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    public final String a;
    public final WeakReference b;
    public boolean c;

    public d(String placementId, WeakReference view, boolean z) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(view, "view");
        this.a = placementId;
        this.b = view;
        this.c = z;
    }
}

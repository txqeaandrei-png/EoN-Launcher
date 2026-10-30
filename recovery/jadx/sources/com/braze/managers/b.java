package com.braze.managers;

import android.content.Context;
import com.amazon.device.messaging.ADM;
import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final a c = new a();
    public final Context a;
    public final g0 b;

    public b(Context context, g0 admRegistrationDataProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(admRegistrationDataProvider, "admRegistrationDataProvider");
        this.a = context;
        this.b = admRegistrationDataProvider;
    }

    public static final String b() {
        return "Registering with ADM server...";
    }

    public final void a() {
        if (((l0) this.b).b() != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.b$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.a(this.f$0);
                }
            }, 6, (Object) null);
            l0 l0Var = (l0) this.b;
            l0Var.a(l0Var.b());
        } else {
            ADM adm = new ADM(this.a);
            if (adm.isSupported()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.b$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b.b();
                    }
                }, 6, (Object) null);
                adm.startRegister();
            }
        }
    }

    public static final String a(b bVar) {
        return "The device is already registered with the ADM server and is eligible to receive ADM messages.ADM registration id: " + ((l0) bVar.b).b();
    }
}

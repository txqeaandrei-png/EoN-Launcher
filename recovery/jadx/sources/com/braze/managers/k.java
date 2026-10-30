package com.braze.managers;

import android.content.Context;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.location.IBrazeLocationApi;
import com.braze.models.IBrazeLocation;
import com.braze.support.BrazeLogger;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class k implements f0 {
    public static final j d = new j();
    public final m a;
    public final BrazeConfigurationProvider b;
    public final com.braze.location.b c;

    public k(Context context, m brazeManager, BrazeConfigurationProvider appConfigurationProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        Intrinsics.checkNotNullParameter(appConfigurationProvider, "appConfigurationProvider");
        this.a = brazeManager;
        this.b = appConfigurationProvider;
        com.braze.location.b bVar = new com.braze.location.b(context, d.a(appConfigurationProvider), appConfigurationProvider);
        this.c = bVar;
        if (bVar.a != null) {
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.k$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return k.c();
            }
        }, 6, (Object) null);
    }

    public static final String a() {
        return "Location collection enabled via sdk configuration.";
    }

    public static final String b() {
        return "Location collection disabled via sdk configuration.";
    }

    public static final String c() {
        return "***Location API not found. Please include android-sdk-location module***";
    }

    public static final String e() {
        return "Location collection is disabled. Not logging location recorded event.";
    }

    public static final String f() {
        return "Failed to log location recorded event.";
    }

    public final boolean d() {
        if (this.b.isLocationCollectionEnabled()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.k$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return k.a();
                }
            }, 6, (Object) null);
            return false;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.k$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return k.b();
            }
        }, 6, (Object) null);
        return true;
    }

    public final boolean g() {
        com.braze.location.b bVar = this.c;
        Function1<? super IBrazeLocation, Unit> locationUpdateCallback = new Function1() { // from class: com.braze.managers.k$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return k.a(this.f$0, (IBrazeLocation) obj);
            }
        };
        bVar.getClass();
        Intrinsics.checkNotNullParameter(locationUpdateCallback, "locationUpdateCallback");
        IBrazeLocationApi iBrazeLocationApi = bVar.a;
        if (iBrazeLocationApi != null) {
            return iBrazeLocationApi.requestSingleLocationUpdate(locationUpdateCallback);
        }
        return false;
    }

    public static final String b(IBrazeLocation iBrazeLocation) {
        return "Invoked manualSetUserLocation for " + iBrazeLocation;
    }

    public final boolean a(final IBrazeLocation location) {
        Intrinsics.checkNotNullParameter(location, "location");
        try {
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.k$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return k.b(location);
                }
            }, 6, (Object) null);
            if (d()) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.k$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return k.e();
                    }
                }, 6, (Object) null);
                return false;
            }
            com.braze.models.i iVarA = com.braze.models.outgoing.event.b.g.a(location);
            if (iVarA != null) {
                this.a.a(iVarA);
            }
            return true;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.k$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return k.f();
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public static final Unit a(k kVar, IBrazeLocation it) {
        Intrinsics.checkNotNullParameter(it, "it");
        kVar.a(it);
        return Unit.INSTANCE;
    }
}

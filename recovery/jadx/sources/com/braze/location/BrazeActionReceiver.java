package com.braze.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import com.braze.BrazeInternal;
import com.braze.Constants;
import com.braze.enums.GeofenceTransitionType;
import com.braze.models.outgoing.BrazeLocation;
import com.braze.support.BrazeLogger;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.GeofencingEvent;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\u000b"}, d2 = {"Lcom/braze/location/BrazeActionReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "ActionReceiver", "android-sdk-location_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeActionReceiver extends BroadcastReceiver {
    /* JADX INFO: Access modifiers changed from: private */
    public static final String onReceive$lambda$0() {
        return "BrazeActionReceiver received null intent. Doing nothing.";
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeActionReceiver$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeActionReceiver.onReceive$lambda$0();
                }
            }, 6, (Object) null);
            return;
        }
        if (context == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeActionReceiver$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeActionReceiver.onReceive$lambda$1();
                }
            }, 6, (Object) null);
            return;
        }
        Context applicationContext = context.getApplicationContext();
        BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
        Intrinsics.checkNotNull(applicationContext);
        BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getIO(), null, new AnonymousClass3(new ActionReceiver(applicationContext, intent), pendingResultGoAsync, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onReceive$lambda$1() {
        return "BrazeActionReceiver received null context. Doing nothing.";
    }

    /* JADX INFO: renamed from: com.braze.location.BrazeActionReceiver$onReceive$3, reason: invalid class name */
    /* JADX INFO: loaded from: classes2.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.braze.location.BrazeActionReceiver$onReceive$3", f = "BrazeActionReceiver.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ActionReceiver $actionReceiver;
        final /* synthetic */ BroadcastReceiver.PendingResult $pendingResult;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(ActionReceiver actionReceiver, BroadcastReceiver.PendingResult pendingResult, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$actionReceiver = actionReceiver;
            this.$pendingResult = pendingResult;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.$actionReceiver, this.$pendingResult, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$actionReceiver.run();
            this.$pendingResult.finish();
            return Unit.INSTANCE;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0001\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\n\u001a\u00020\u000bJ\b\u0010\f\u001a\u00020\u000bH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/braze/location/BrazeActionReceiver$ActionReceiver;", "", "applicationContext", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "<init>", "(Landroid/content/Context;Landroid/content/Intent;)V", "action", "", "run", "", "performWork", "Companion", "android-sdk-location_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ActionReceiver {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String action;
        private final Context applicationContext;
        private final Intent intent;

        public ActionReceiver(Context applicationContext, Intent intent) {
            Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
            Intrinsics.checkNotNullParameter(intent, "intent");
            this.applicationContext = applicationContext;
            this.intent = intent;
            this.action = intent.getAction();
        }

        public final void run() {
            try {
                performWork();
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.location.BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeActionReceiver.ActionReceiver.run$lambda$0(this.f$0);
                    }
                }, 4, (Object) null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String run$lambda$0(ActionReceiver actionReceiver) {
            return "Caught exception while performing the BrazeActionReceiver work. Action: " + actionReceiver.action + " Intent: " + actionReceiver.intent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String performWork$lambda$1(ActionReceiver actionReceiver) {
            return "Received intent with action " + actionReceiver.action;
        }

        public final void performWork() {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeActionReceiver.ActionReceiver.performWork$lambda$1(this.f$0);
                }
            }, 7, (Object) null);
            String str = this.action;
            if (str == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeActionReceiver.ActionReceiver.performWork$lambda$2();
                    }
                }, 7, (Object) null);
                return;
            }
            if (Intrinsics.areEqual(str, Constants.BRAZE_ACTION_RECEIVER_GEOFENCE_UPDATE_INTENT_ACTION)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeActionReceiver.ActionReceiver.performWork$lambda$3(this.f$0);
                    }
                }, 7, (Object) null);
                GeofencingEvent geofencingEventFromIntent = GeofencingEvent.fromIntent(this.intent);
                if (geofencingEventFromIntent != null) {
                    INSTANCE.handleGeofenceEvent(this.applicationContext, geofencingEventFromIntent);
                    return;
                }
                return;
            }
            if (Intrinsics.areEqual(str, Constants.BRAZE_ACTION_RECEIVER_SINGLE_LOCATION_UPDATE_INTENT_ACTION)) {
                Location location = null;
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeActionReceiver.ActionReceiver.performWork$lambda$5(this.f$0);
                    }
                }, 7, (Object) null);
                if (Build.VERSION.SDK_INT >= 33) {
                    Bundle extras = this.intent.getExtras();
                    if (extras != null) {
                        location = (Location) extras.getParcelable("location", Location.class);
                    }
                } else {
                    Bundle extras2 = this.intent.getExtras();
                    location = (Location) (extras2 != null ? extras2.get("location") : null);
                }
                if (location != null) {
                    INSTANCE.handleSingleLocationUpdate(this.applicationContext, location);
                    return;
                }
                return;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeActionReceiver$ActionReceiver$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeActionReceiver.ActionReceiver.performWork$lambda$7(this.f$0);
                }
            }, 6, (Object) null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String performWork$lambda$2() {
            return "Received intent with null action. Doing nothing.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String performWork$lambda$3(ActionReceiver actionReceiver) {
            return "BrazeActionReceiver received intent with geofence transition: " + actionReceiver.action;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String performWork$lambda$5(ActionReceiver actionReceiver) {
            return "BrazeActionReceiver received intent with single location update: " + actionReceiver.action;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String performWork$lambda$7(ActionReceiver actionReceiver) {
            return "Unknown intent received in BrazeActionReceiver with action: " + actionReceiver.action;
        }

        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0002J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\fH\u0007¨\u0006\r"}, d2 = {"Lcom/braze/location/BrazeActionReceiver$ActionReceiver$Companion;", "", "<init>", "()V", "handleSingleLocationUpdate", "", "applicationContext", "Landroid/content/Context;", "location", "Landroid/location/Location;", "handleGeofenceEvent", "geofenceEvent", "Lcom/google/android/gms/location/GeofencingEvent;", "android-sdk-location_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final boolean handleSingleLocationUpdate(Context applicationContext, Location location) {
                try {
                    BrazeInternal.logLocationRecordedEvent(applicationContext, new BrazeLocation(location));
                    return true;
                } catch (Exception e) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.location.BrazeActionReceiver$ActionReceiver$Companion$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeActionReceiver.ActionReceiver.Companion.handleSingleLocationUpdate$lambda$0();
                        }
                    }, 4, (Object) null);
                    return false;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final String handleSingleLocationUpdate$lambda$0() {
                return "Exception while processing single location update";
            }

            public final boolean handleGeofenceEvent(Context applicationContext, GeofencingEvent geofenceEvent) {
                Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
                Intrinsics.checkNotNullParameter(geofenceEvent, "geofenceEvent");
                if (geofenceEvent.hasError()) {
                    final int errorCode = geofenceEvent.getErrorCode();
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeActionReceiver$ActionReceiver$Companion$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeActionReceiver.ActionReceiver.Companion.handleGeofenceEvent$lambda$1(errorCode);
                        }
                    }, 6, (Object) null);
                    return false;
                }
                final int geofenceTransition = geofenceEvent.getGeofenceTransition();
                List<Geofence> triggeringGeofences = geofenceEvent.getTriggeringGeofences();
                if (1 == geofenceTransition) {
                    if (triggeringGeofences != null) {
                        Iterator<T> it = triggeringGeofences.iterator();
                        while (it.hasNext()) {
                            String requestId = ((Geofence) it.next()).getRequestId();
                            Intrinsics.checkNotNullExpressionValue(requestId, "getRequestId(...)");
                            BrazeInternal.recordGeofenceTransition(applicationContext, requestId, GeofenceTransitionType.ENTER);
                        }
                    }
                } else {
                    if (2 != geofenceTransition) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.location.BrazeActionReceiver$ActionReceiver$Companion$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return BrazeActionReceiver.ActionReceiver.Companion.handleGeofenceEvent$lambda$4(geofenceTransition);
                            }
                        }, 6, (Object) null);
                        return false;
                    }
                    if (triggeringGeofences != null) {
                        Iterator<T> it2 = triggeringGeofences.iterator();
                        while (it2.hasNext()) {
                            String requestId2 = ((Geofence) it2.next()).getRequestId();
                            Intrinsics.checkNotNullExpressionValue(requestId2, "getRequestId(...)");
                            BrazeInternal.recordGeofenceTransition(applicationContext, requestId2, GeofenceTransitionType.EXIT);
                        }
                    }
                }
                return true;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final String handleGeofenceEvent$lambda$1(int i) {
                return "Location Services error: " + i;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final String handleGeofenceEvent$lambda$4(int i) {
                return "Unsupported transition type received: " + i;
            }
        }
    }
}

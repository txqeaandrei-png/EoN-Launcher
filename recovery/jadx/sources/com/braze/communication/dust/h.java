package com.braze.communication.dust;

import androidx.core.app.NotificationCompat;
import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.j;
import com.braze.managers.x;
import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    public static final String b = BrazeLogger.getBrazeLogTag((Class<?>) h.class);
    public Job a;

    public static final String a(String str) {
        return com.braze.b.a("Received new line: '", str, '\'');
    }

    public static final String b(String str) {
        return j.a("Got un-actionable stream line:\n", str);
    }

    public static final String c(String str) {
        return j.a("Failed to parse data line:\n", str);
    }

    public static final String d(String str) {
        return j.a("Got call to startStream() for url ", str);
    }

    public static final String d(h hVar) {
        return "Started stream job " + hVar.a;
    }

    public static final String a(h hVar) {
        return "Got call to endStream(). Stream job: " + hVar.a;
    }

    public final void a(final String url, x ingestor, boolean z) throws InterruptedException {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(ingestor, "ingestor");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.d(url);
            }
        }, 7, (Object) null);
        if (!z || this.a == null) {
            BuildersKt__BuildersKt.runBlocking$default(null, new e(this, null), 1, null);
            this.a = BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, null, null, new g(this, ingestor, url, null), 3, null);
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.d(this.f$0);
                }
            }, 7, (Object) null);
            return;
        }
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.c(this.f$0);
            }
        }, 7, (Object) null);
    }

    public final void b() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.a(this.f$0);
            }
        }, 7, (Object) null);
        Job job = this.a;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.a = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String b(Ref.ObjectRef objectRef) {
        return "Recorded data type: " + ((String) objectRef.element);
    }

    public static final String b(h hVar) {
        return "Got call to endStreamAndJoin(). Stream job: " + hVar.a;
    }

    public static final String b(String str, String str2) {
        return "Not handling event: '" + str + "' and data: '" + str2 + '\'';
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0071  */
    /* JADX WARN: Code duplicated, block: B:19:0x009a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x009b  */
    /* JADX WARN: Code duplicated, block: B:23:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:24:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:26:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:27:0x0131  */
    /* JADX WARN: Code duplicated, block: B:29:0x0137  */
    /* JADX WARN: Code duplicated, block: B:30:0x0160  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v17, types: [T, java.lang.Object, java.lang.String] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x009b -> B:21:0x00a0). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object a(kotlinx.coroutines.CoroutineScope r26, kotlinx.coroutines.channels.ReceiveChannel r27, com.braze.managers.x r28, kotlin.coroutines.jvm.internal.ContinuationImpl r29) {
        /*
            Method dump skipped, instruction units count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.communication.dust.h.a(kotlinx.coroutines.CoroutineScope, kotlinx.coroutines.channels.ReceiveChannel, com.braze.managers.x, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final String c(h hVar) {
        return "Not restarting stream since " + hVar.a + " is still active.";
    }

    public static final String a() {
        return "Waiting to consume new line";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String a(Ref.ObjectRef objectRef) {
        return "Recorded event type: " + ((String) objectRef.element);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String a(Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2) {
        return "Handling full event on blank line. lastEventType: '" + ((String) objectRef.element) + "' \ndata: '" + ((String) objectRef2.element) + '\'';
    }

    /* JADX WARN: Code duplicated, block: B:24:0x006d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x006e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        b bVar;
        h hVar;
        h hVar2;
        if (continuationImpl instanceof b) {
            bVar = (b) continuationImpl;
            int i = bVar.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                bVar.d = i - Integer.MIN_VALUE;
            } else {
                bVar = new b(this, continuationImpl);
            }
        } else {
            bVar = new b(this, continuationImpl);
        }
        Object obj = bVar.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = bVar.d;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.b(this.f$0);
                }
            }, 14, (Object) null);
            Job job = this.a;
            if (job != null) {
                bVar.a = this;
                bVar.d = 1;
                if (JobKt.cancelAndJoin(job, bVar) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                hVar2 = this;
                bVar.a = hVar2;
                bVar.d = 2;
                if (DelayKt.delay(50L, bVar) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                hVar = hVar2;
            } else {
                hVar = this;
            }
        } else if (i2 == 1) {
            hVar2 = bVar.a;
            ResultKt.throwOnFailure(obj);
            bVar.a = hVar2;
            bVar.d = 2;
            if (DelayKt.delay(50L, bVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
            hVar = hVar2;
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            hVar = bVar.a;
            ResultKt.throwOnFailure(obj);
        }
        hVar.a = null;
        return Unit.INSTANCE;
    }

    public static void a(final String str, final String str2, Function1 function1) {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        String str3 = b;
        BrazeLogger.brazelog$default(brazeLogger, str3, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.a(str, str2);
            }
        }, 14, (Object) null);
        if (Intrinsics.areEqual(str, NotificationCompat.CATEGORY_MESSAGE)) {
            try {
                final JSONObject jSONObject = new JSONObject(str2);
                BrazeLogger.brazelog$default(brazeLogger, str3, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.a(jSONObject);
                    }
                }, 14, (Object) null);
                function1.invoke(com.braze.models.dust.c.a.a(jSONObject));
                return;
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, b, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.c(str2);
                    }
                }, 8, (Object) null);
                return;
            }
        }
        BrazeLogger.brazelog$default(brazeLogger, str3, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.b(str, str2);
            }
        }, 14, (Object) null);
    }

    public static final String a(String str, String str2) {
        return "Got event '" + str + "' and data: '" + str2 + '\'';
    }

    public static final String a(JSONObject jSONObject) {
        return "Parsed dust message json to:\n" + JsonUtils.getPrettyPrintedString(jSONObject);
    }
}

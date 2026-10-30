package com.braze.communication.dust;

import com.braze.j;
import com.braze.managers.x;
import com.braze.support.BrazeLogger;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Charsets;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends SuspendLambda implements Function2 {
    public Ref.ObjectRef a;
    public Ref.ObjectRef b;
    public int c;
    public /* synthetic */ Object d;
    public final /* synthetic */ h e;
    public final /* synthetic */ x f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(h hVar, x xVar, String str, Continuation continuation) {
        super(2, continuation);
        this.e = hVar;
        this.f = xVar;
        this.g = str;
    }

    public static final String a(String str) {
        return j.a("Starting DUST stream to ", str);
    }

    public static final String b() {
        return "Caught unexpected exception listening to DUST stream";
    }

    public static final String c() {
        return "Stream connection job cancelled";
    }

    public static final String d() {
        return "Closing stream connection data";
    }

    public static final String e() {
        return "Stream job finished";
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        g gVar = new g(this.e, this.f, this.g, continuation);
        gVar.d = obj;
        return gVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((g) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00b8 A[Catch: all -> 0x011b, Exception -> 0x011f, TryCatch #0 {Exception -> 0x011f, blocks: (B:25:0x007d, B:26:0x0088, B:27:0x008a, B:29:0x00b8, B:32:0x00c3, B:33:0x00d4, B:34:0x00da, B:35:0x00de, B:36:0x00e0, B:30:0x00bb), top: B:69:0x007d }] */
    /* JADX WARN: Code duplicated, block: B:30:0x00bb A[Catch: all -> 0x011b, Exception -> 0x011f, TRY_LEAVE, TryCatch #0 {Exception -> 0x011f, blocks: (B:25:0x007d, B:26:0x0088, B:27:0x008a, B:29:0x00b8, B:32:0x00c3, B:33:0x00d4, B:34:0x00da, B:35:0x00de, B:36:0x00e0, B:30:0x00bb), top: B:69:0x007d }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00e6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:58:0x012e A[Catch: all -> 0x0124, TryCatch #2 {all -> 0x0124, blocks: (B:7:0x0018, B:40:0x00e9, B:56:0x0128, B:58:0x012e, B:59:0x0141, B:21:0x0061), top: B:73:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0141 A[Catch: all -> 0x0124, TRY_LEAVE, TryCatch #2 {all -> 0x0124, blocks: (B:7:0x0018, B:40:0x00e9, B:56:0x0128, B:58:0x012e, B:59:0x0141, B:21:0x0061), top: B:73:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:62:0x016f A[PHI: r0
      0x016f: PHI (r0v12 java.net.HttpURLConnection) = (r0v10 java.net.HttpURLConnection), (r0v16 java.net.HttpURLConnection) binds: [B:61:0x016d, B:42:0x0111] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:67:0x019f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r4v6, types: [T, java.net.HttpURLConnection] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        HttpURLConnection httpURLConnection;
        CoroutineScope coroutineScope;
        Ref.ObjectRef objectRef;
        Exception exc;
        Object objWithContext;
        CoroutineScope coroutineScope2;
        final Ref.ObjectRef objectRef2;
        Reader inputStreamReader;
        BufferedReader bufferedReader;
        ReceiveChannel receiveChannelProduce$default;
        h hVar;
        x xVar;
        CoroutineScope coroutineScope3;
        HttpURLConnection httpURLConnection2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        Ref.ObjectRef objectRef3 = this.c;
        try {
            if (objectRef3 == 0) {
                ResultKt.throwOnFailure(obj);
                coroutineScope = (CoroutineScope) this.d;
                BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
                String str = h.b;
                final String str2 = this.g;
                BrazeLogger.brazelog$default(brazeLogger, str, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.a(str2);
                    }
                }, 14, (Object) null);
                objectRef = new Ref.ObjectRef();
                try {
                    CoroutineDispatcher io = Dispatchers.getIO();
                    f fVar = new f(this.g, null);
                    this.d = coroutineScope;
                    this.a = objectRef;
                    this.b = objectRef;
                    this.c = 1;
                    objWithContext = BuildersKt.withContext(io, fVar, this);
                    if (objWithContext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    coroutineScope2 = coroutineScope;
                    objectRef2 = objectRef;
                    Intrinsics.checkNotNull(objWithContext, "null cannot be cast to non-null type java.net.HttpURLConnection");
                    objectRef.element = (HttpURLConnection) objWithContext;
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return g.a(objectRef2);
                        }
                    }, 14, (Object) null);
                    h hVar2 = this.e;
                    InputStream inputStream = ((HttpURLConnection) objectRef2.element).getInputStream();
                    Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
                    inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
                    if (inputStreamReader instanceof BufferedReader) {
                        bufferedReader = (BufferedReader) inputStreamReader;
                    } else {
                        bufferedReader = new BufferedReader(inputStreamReader, 8192);
                    }
                    hVar2.getClass();
                    receiveChannelProduce$default = ProduceKt.produce$default(coroutineScope2, null, 0, new d(bufferedReader, null), 3, null);
                    hVar = this.e;
                    xVar = this.f;
                    this.d = coroutineScope2;
                    this.a = objectRef2;
                    this.b = null;
                    this.c = 2;
                    if (hVar.a(coroutineScope2, receiveChannelProduce$default, xVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    objectRef = objectRef2;
                    coroutineScope3 = coroutineScope2;
                    BrazeLogger brazeLogger2 = BrazeLogger.INSTANCE;
                    String str3 = h.b;
                    BrazeLogger.brazelog$default(brazeLogger2, str3, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return g.a();
                        }
                    }, 14, (Object) null);
                    BrazeLogger.brazelog$default(brazeLogger2, str3, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return g.d();
                        }
                    }, 14, (Object) null);
                    httpURLConnection2 = (HttpURLConnection) objectRef.element;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                } catch (Exception e) {
                    exc = e;
                    if (CoroutineScopeKt.isActive(coroutineScope)) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, BrazeLogger.Priority.E, (Throwable) exc, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return g.b();
                            }
                        }, 8, (Object) null);
                    } else {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return g.c();
                            }
                        }, 14, (Object) null);
                    }
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return g.d();
                        }
                    }, 14, (Object) null);
                    httpURLConnection2 = (HttpURLConnection) objectRef.element;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda6
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return g.e();
                        }
                    }, 14, (Object) null);
                    return Unit.INSTANCE;
                }
            } else if (objectRef3 == 1) {
                objectRef = this.b;
                Ref.ObjectRef objectRef4 = this.a;
                coroutineScope = (CoroutineScope) this.d;
                try {
                    ResultKt.throwOnFailure(obj);
                    coroutineScope2 = coroutineScope;
                    objectRef2 = objectRef4;
                    objWithContext = obj;
                    try {
                        try {
                            Intrinsics.checkNotNull(objWithContext, "null cannot be cast to non-null type java.net.HttpURLConnection");
                            objectRef.element = (HttpURLConnection) objWithContext;
                            try {
                                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda1
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object invoke() {
                                        return g.a(objectRef2);
                                    }
                                }, 14, (Object) null);
                                h hVar3 = this.e;
                                InputStream inputStream2 = ((HttpURLConnection) objectRef2.element).getInputStream();
                                Intrinsics.checkNotNullExpressionValue(inputStream2, "getInputStream(...)");
                                inputStreamReader = new InputStreamReader(inputStream2, Charsets.UTF_8);
                                if (inputStreamReader instanceof BufferedReader) {
                                    bufferedReader = (BufferedReader) inputStreamReader;
                                } else {
                                    bufferedReader = new BufferedReader(inputStreamReader, 8192);
                                }
                                hVar3.getClass();
                                receiveChannelProduce$default = ProduceKt.produce$default(coroutineScope2, null, 0, new d(bufferedReader, null), 3, null);
                                hVar = this.e;
                                xVar = this.f;
                                this.d = coroutineScope2;
                                this.a = objectRef2;
                                this.b = null;
                                this.c = 2;
                                if (hVar.a(coroutineScope2, receiveChannelProduce$default, xVar, this) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                objectRef = objectRef2;
                                coroutineScope3 = coroutineScope2;
                                BrazeLogger brazeLogger3 = BrazeLogger.INSTANCE;
                                String str4 = h.b;
                                BrazeLogger.brazelog$default(brazeLogger3, str4, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda2
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object invoke() {
                                        return g.a();
                                    }
                                }, 14, (Object) null);
                                BrazeLogger.brazelog$default(brazeLogger3, str4, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda3
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object invoke() {
                                        return g.d();
                                    }
                                }, 14, (Object) null);
                                httpURLConnection2 = (HttpURLConnection) objectRef.element;
                                if (httpURLConnection2 != null) {
                                    httpURLConnection2.disconnect();
                                }
                            } catch (Throwable th) {
                                th = th;
                                objectRef3 = objectRef2;
                                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda3
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object invoke() {
                                        return g.d();
                                    }
                                }, 14, (Object) null);
                                httpURLConnection = (HttpURLConnection) objectRef3.element;
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                throw th;
                            }
                        } catch (Exception e2) {
                            exc = e2;
                            objectRef = objectRef2;
                            coroutineScope = coroutineScope2;
                            if (CoroutineScopeKt.isActive(coroutineScope)) {
                                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, BrazeLogger.Priority.E, (Throwable) exc, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda4
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object invoke() {
                                        return g.b();
                                    }
                                }, 8, (Object) null);
                            } else {
                                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda5
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object invoke() {
                                        return g.c();
                                    }
                                }, 14, (Object) null);
                            }
                            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return g.d();
                                }
                            }, 14, (Object) null);
                            httpURLConnection2 = (HttpURLConnection) objectRef.element;
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        objectRef4 = objectRef2;
                        objectRef3 = objectRef4;
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return g.d();
                            }
                        }, 14, (Object) null);
                        httpURLConnection = (HttpURLConnection) objectRef3.element;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    exc = e3;
                    objectRef = objectRef4;
                    if (CoroutineScopeKt.isActive(coroutineScope)) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, BrazeLogger.Priority.E, (Throwable) exc, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return g.b();
                            }
                        }, 8, (Object) null);
                    } else {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return g.c();
                            }
                        }, 14, (Object) null);
                    }
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return g.d();
                        }
                    }, 14, (Object) null);
                    httpURLConnection2 = (HttpURLConnection) objectRef.element;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda6
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return g.e();
                        }
                    }, 14, (Object) null);
                    return Unit.INSTANCE;
                } catch (Throwable th3) {
                    th = th3;
                    objectRef3 = objectRef4;
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return g.d();
                        }
                    }, 14, (Object) null);
                    httpURLConnection = (HttpURLConnection) objectRef3.element;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } else {
                if (objectRef3 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                objectRef = this.a;
                coroutineScope3 = (CoroutineScope) this.d;
                try {
                    ResultKt.throwOnFailure(obj);
                    BrazeLogger brazeLogger4 = BrazeLogger.INSTANCE;
                    String str5 = h.b;
                    BrazeLogger.brazelog$default(brazeLogger4, str5, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return g.a();
                        }
                    }, 14, (Object) null);
                    BrazeLogger.brazelog$default(brazeLogger4, str5, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return g.d();
                        }
                    }, 14, (Object) null);
                    httpURLConnection2 = (HttpURLConnection) objectRef.element;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                } catch (Exception e4) {
                    exc = e4;
                    coroutineScope = coroutineScope3;
                    if (CoroutineScopeKt.isActive(coroutineScope)) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, BrazeLogger.Priority.E, (Throwable) exc, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return g.b();
                            }
                        }, 8, (Object) null);
                    } else {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return g.c();
                            }
                        }, 14, (Object) null);
                    }
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return g.d();
                        }
                    }, 14, (Object) null);
                    httpURLConnection2 = (HttpURLConnection) objectRef.element;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                }
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, h.b, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.g$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.e();
                }
            }, 14, (Object) null);
            return Unit.INSTANCE;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String a(Ref.ObjectRef objectRef) {
        return "DUST stream response code " + ((HttpURLConnection) objectRef.element).getResponseCode();
    }

    public static final String a() {
        return "Stream job coroutine no longer active";
    }
}

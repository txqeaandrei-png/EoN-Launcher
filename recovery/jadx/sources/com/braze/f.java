package com.braze;

import com.braze.enums.CardKey;
import com.braze.managers.u0;
import com.braze.support.BrazeLogger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ Braze b;
    public final /* synthetic */ JSONObject c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Braze braze, JSONObject jSONObject, Continuation continuation) {
        super(2, continuation);
        this.b = braze;
        this.c = jSONObject;
    }

    public static final String a() {
        return "Content Cards are disabled. Not deserializing json. Returning null.";
    }

    public static final String b() {
        return "Cannot deserialize null content card json. Returning null.";
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        f fVar = new f(this.b, this.c, continuation);
        fVar.a = obj;
        return fVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((f) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.a;
        if (!((u0) this.b.getUdm$android_sdk_base_release()).m.D()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) coroutineScope, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.f$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return f.a();
                }
            }, 6, (Object) null);
            return null;
        }
        if (this.c == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) coroutineScope, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.f$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return f.b();
                }
            }, 6, (Object) null);
            return null;
        }
        com.braze.storage.p pVar = ((u0) this.b.getUdm$android_sdk_base_release()).C;
        JSONObject cardJson = this.c;
        pVar.getClass();
        Intrinsics.checkNotNullParameter(cardJson, "cardJson");
        return com.braze.models.g.a(cardJson, CardKey.Provider.CONTENT_CARDS, pVar.b, pVar, pVar.k);
    }
}

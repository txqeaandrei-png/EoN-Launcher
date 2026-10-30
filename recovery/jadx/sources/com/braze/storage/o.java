package com.braze.storage;

import android.content.SharedPreferences;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class o extends SuspendLambda implements Function2 {
    public final /* synthetic */ p a;
    public final /* synthetic */ JSONObject b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(p pVar, JSONObject jSONObject, String str, Continuation continuation) {
        super(2, continuation);
        this.a = pVar;
        this.b = jSONObject;
        this.c = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new o(this.a, this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((o) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        SharedPreferences.Editor editorEdit = this.a.i.edit();
        JSONObject jSONObject = this.b;
        if (jSONObject != null) {
            editorEdit.putString(this.c, jSONObject.toString());
        } else {
            editorEdit.remove(this.c);
        }
        editorEdit.apply();
        return Unit.INSTANCE;
    }
}

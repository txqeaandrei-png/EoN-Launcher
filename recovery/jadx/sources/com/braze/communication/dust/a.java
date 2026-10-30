package com.braze.communication.dust;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ReceiveChannel;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends ContinuationImpl {
    public h a;
    public CoroutineScope b;
    public ReceiveChannel c;
    public Function1 d;
    public Ref.ObjectRef e;
    public Ref.ObjectRef f;
    public /* synthetic */ Object g;
    public final /* synthetic */ h h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(h hVar, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.h = hVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.a(null, null, null, this);
    }
}

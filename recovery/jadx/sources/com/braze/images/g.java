package com.braze.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.TrafficStats;
import android.widget.ImageView;
import com.braze.Constants;
import com.braze.R;
import com.braze.enums.BrazeViewBounds;
import com.braze.j;
import com.braze.support.BrazeLogger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends SuspendLambda implements Function2 {
    public Bitmap a;
    public int b;
    public final /* synthetic */ DefaultBrazeImageLoader c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ String e;
    public final /* synthetic */ BrazeViewBounds f;
    public final /* synthetic */ ImageView g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(DefaultBrazeImageLoader defaultBrazeImageLoader, Context context, String str, BrazeViewBounds brazeViewBounds, ImageView imageView, Continuation continuation) {
        super(2, continuation);
        this.c = defaultBrazeImageLoader;
        this.d = context;
        this.e = str;
        this.f = brazeViewBounds;
        this.g = imageView;
    }

    public static final String a(String str) {
        return j.a("Failed to retrieve bitmap from url: ", str);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new g(this.c, this.d, this.e, this.f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((g) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Bitmap bitmap;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            TrafficStats.setThreadStatsTag(Constants.TRAFFIC_STATS_THREAD_TAG);
            Bitmap bitmapFromUrl = this.c.getBitmapFromUrl(this.d, this.e, this.f);
            if (bitmapFromUrl == null) {
                BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
                String str = DefaultBrazeImageLoader.TAG;
                final String str2 = this.e;
                BrazeLogger.brazelog$default(brazeLogger, str, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.images.g$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.a(str2);
                    }
                }, 14, (Object) null);
            } else {
                String str3 = this.e;
                Object tag = this.g.getTag(R.string.com_braze_image_lru_cache_image_url_key);
                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.String");
                if (Intrinsics.areEqual(str3, (String) tag)) {
                    MainCoroutineDispatcher main = Dispatchers.getMain();
                    e eVar = new e(this.g, bitmapFromUrl, null);
                    this.a = bitmapFromUrl;
                    this.b = 1;
                    if (BuildersKt.withContext(main, eVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    bitmap = bitmapFromUrl;
                }
            }
            return Unit.INSTANCE;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        bitmap = this.a;
        ResultKt.throwOnFailure(obj);
        BrazeViewBounds brazeViewBounds = this.f;
        ImageView imageView = this.g;
        imageView.addOnLayoutChangeListener(new f(brazeViewBounds, imageView, bitmap));
        return Unit.INSTANCE;
    }
}

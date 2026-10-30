package com.braze.images;

import android.content.Context;
import com.braze.support.BrazeFileUtils;
import com.braze.support.BrazeLogger;
import java.io.File;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public final void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            final File file = new File(context.getCacheDir(), DefaultBrazeImageLoader.BRAZE_LRU_CACHE_FOLDER);
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.images.c$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.a(file);
                }
            }, 6, (Object) null);
            BrazeFileUtils.deleteFileOrDirectory(file);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.images.c$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.a();
                }
            }, 4, (Object) null);
        }
    }

    public static final String a(File file) {
        return "Deleting lru image cache directory at: " + file.getAbsolutePath();
    }

    public static final String a() {
        return "Failed to delete stored data in image loader";
    }
}

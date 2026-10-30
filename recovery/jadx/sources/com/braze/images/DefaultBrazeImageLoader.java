package com.braze.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.util.LruCache;
import android.widget.ImageView;
import com.braze.R;
import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.enums.BrazeViewBounds;
import com.braze.j;
import com.braze.models.FeatureFlag;
import com.braze.models.cards.Card;
import com.braze.models.inappmessage.IInAppMessage;
import com.braze.models.inappmessage.InAppMessageBase;
import com.braze.support.BrazeFileUtils;
import com.braze.support.BrazeImageUtils;
import com.braze.support.BrazeLogger;
import java.io.File;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 M2\u00020\u0001:\u0001NB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J1\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0013\u001a\n \u0012*\u0004\u0018\u00010\u00100\u00102\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0015\u0010\u0005J9\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J9\u0010\u001c\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ5\u0010 \u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b \u0010!J3\u0010\"\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010&\u001a\u00020\f2\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J3\u0010-\u001a\u00020$2\u0006\u0010)\u001a\u00020(2\u001a\u0010,\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060+\u0018\u00010*H\u0007¢\u0006\u0004\b-\u0010.J+\u0010/\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b/\u00100J+\u00102\u001a\u0002012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b2\u00103J\u0019\u00104\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u0006H\u0007¢\u0006\u0004\b4\u00105J\u0019\u00106\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u0006H\u0007¢\u0006\u0004\b6\u00105J\u0019\u00107\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u0006H\u0007¢\u0006\u0004\b7\u00105J'\u00109\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u00108\u001a\u00020$H\u0007¢\u0006\u0004\b9\u0010:J1\u0010=\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0001¢\u0006\u0004\b;\u0010<R\u0014\u0010?\u001a\u00020>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@R#\u0010B\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00100A8G¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010ER\u0016\u0010G\u001a\u00020F8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bG\u0010HR$\u0010J\u001a\u00020$2\u0006\u0010I\u001a\u00020$8G@BX\u0086\u000e¢\u0006\f\n\u0004\bJ\u0010K\u001a\u0004\bJ\u0010LR\u0016\u0010%\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010K¨\u0006O"}, d2 = {"Lcom/braze/images/DefaultBrazeImageLoader;", "Lcom/braze/images/IBrazeImageLoader;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", "imageUrl", "Landroid/widget/ImageView;", "imageView", "Lcom/braze/enums/BrazeViewBounds;", "viewBounds", "", "renderUrlIntoView", "(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/braze/enums/BrazeViewBounds;)V", "key", "Landroid/graphics/Bitmap;", "bitmap", "kotlin.jvm.PlatformType", "putBitmapIntoMemCache", "(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;", "initDiskCacheTask", "Lcom/braze/models/cards/Card;", "card", "renderUrlIntoCardView", "(Landroid/content/Context;Lcom/braze/models/cards/Card;Ljava/lang/String;Landroid/widget/ImageView;Lcom/braze/enums/BrazeViewBounds;)V", "Lcom/braze/models/inappmessage/IInAppMessage;", "inAppMessage", "renderUrlIntoInAppMessageView", "(Landroid/content/Context;Lcom/braze/models/inappmessage/IInAppMessage;Ljava/lang/String;Landroid/widget/ImageView;Lcom/braze/enums/BrazeViewBounds;)V", "Landroid/os/Bundle;", InAppMessageBase.EXTRAS, "getPushBitmapFromUrl", "(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;)Landroid/graphics/Bitmap;", "getInAppMessageBitmapFromUrl", "(Landroid/content/Context;Lcom/braze/models/inappmessage/IInAppMessage;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;)Landroid/graphics/Bitmap;", "", "isOffline", "setOffline", "(Z)V", "Landroid/net/Uri;", "imageUri", "", "", "headers", "shouldSkipCaching", "(Landroid/net/Uri;Ljava/util/Map;)Z", "getBitmapFromUrl", "(Landroid/content/Context;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;)Landroid/graphics/Bitmap;", "Lcom/braze/support/a;", "downloadBitmapFromUrl", "(Landroid/content/Context;Landroid/net/Uri;Lcom/braze/enums/BrazeViewBounds;)Lcom/braze/support/a;", "getBitmapFromCache", "(Ljava/lang/String;)Landroid/graphics/Bitmap;", "getBitmapFromMemCache", "getBitmapFromDiskCache", "skipDiskCache", "putBitmapIntoCache", "(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V", "renderUrlIntoViewTask$android_sdk_base_release", "(Landroid/content/Context;Landroid/widget/ImageView;Lcom/braze/enums/BrazeViewBounds;Ljava/lang/String;)V", "renderUrlIntoViewTask", "Ljava/util/concurrent/locks/ReentrantLock;", "diskCacheLock", "Ljava/util/concurrent/locks/ReentrantLock;", "Landroid/util/LruCache;", "memoryCache", "Landroid/util/LruCache;", "getMemoryCache", "()Landroid/util/LruCache;", "Lcom/braze/images/a;", "diskLruCache", "Lcom/braze/images/a;", "value", "isDiskCacheStarting", "Z", "()Z", "Companion", "com/braze/images/c", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DefaultBrazeImageLoader implements IBrazeImageLoader {
    public static final String BRAZE_LRU_CACHE_FOLDER = "appboy.imageloader.lru.cache";
    private static final String CACHE_PARAMETER_KEY = "cache";
    private static final int DISK_CACHE_SIZE = 52428800;
    private final ReentrantLock diskCacheLock;
    private a diskLruCache;
    private boolean isDiskCacheStarting;
    private boolean isOffline;
    private final LruCache<String, Bitmap> memoryCache;
    public static final c Companion = new c();
    private static final String TAG = BrazeLogger.getBrazeLogTag((Class<?>) DefaultBrazeImageLoader.class);

    public DefaultBrazeImageLoader(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.diskCacheLock = new ReentrantLock();
        this.isDiskCacheStarting = true;
        this.memoryCache = new b(BrazeImageUtils.getImageLoaderCacheSize());
        initDiskCacheTask(context);
    }

    @JvmStatic
    public static final void deleteStoredData(Context context) {
        Companion.a(context);
    }

    public static /* synthetic */ com.braze.support.a downloadBitmapFromUrl$default(DefaultBrazeImageLoader defaultBrazeImageLoader, Context context, Uri uri, BrazeViewBounds brazeViewBounds, int i, Object obj) {
        if ((i & 4) != 0) {
            brazeViewBounds = BrazeViewBounds.NO_BOUNDS;
        }
        return defaultBrazeImageLoader.downloadBitmapFromUrl(context, uri, brazeViewBounds);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getBitmapFromCache$lambda$13$lambda$12(String str, DefaultBrazeImageLoader defaultBrazeImageLoader) {
        return "Got bitmap from mem cache for key " + str + "\nMemory cache stats: " + defaultBrazeImageLoader.memoryCache;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getBitmapFromCache$lambda$15$lambda$14(String str) {
        return j.a("Got bitmap from disk cache for key ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getBitmapFromCache$lambda$16(String str) {
        return j.a("No cache hit for bitmap: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getBitmapFromDiskCache$lambda$19$lambda$17(String str) {
        return j.a("Disk cache still starting. Cannot retrieve key from disk cache: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getBitmapFromDiskCache$lambda$19$lambda$18(String str) {
        return j.a("Getting bitmap from disk cache for key: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getBitmapFromUrl$lambda$10() {
        return "Cache is currently in offline mode. Not downloading bitmap.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getBitmapFromUrl$lambda$11(String str) {
        return j.a("Failed to get bitmap from url. Url: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getBitmapFromUrl$lambda$8() {
        return "Cannot retrieve bitmap with blank image url";
    }

    @JvmStatic
    public static final File getDiskCacheDir(Context context, String uniqueName) {
        Companion.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uniqueName, "uniqueName");
        return new File(com.braze.c.a(new StringBuilder().append(context.getCacheDir().getPath()), File.separator, uniqueName));
    }

    private final void initDiskCacheTask(Context context) {
        BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, null, null, new d(context, this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String putBitmapIntoCache$lambda$20(String str) {
        return j.a("Adding bitmap to mem cache for key ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String putBitmapIntoCache$lambda$21(String str) {
        return j.a("Skipping disk cache for key: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String putBitmapIntoCache$lambda$23$lambda$22(String str) {
        return j.a("Adding bitmap to disk cache for key ", str);
    }

    private final Bitmap putBitmapIntoMemCache(String key, Bitmap bitmap) {
        return this.memoryCache.put(key, bitmap);
    }

    private final void renderUrlIntoView(Context context, final String imageUrl, ImageView imageView, BrazeViewBounds viewBounds) {
        if (StringsKt.isBlank(imageUrl)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DefaultBrazeImageLoader.renderUrlIntoView$lambda$1();
                }
            }, 7, (Object) null);
            return;
        }
        try {
            renderUrlIntoViewTask$android_sdk_base_release(context, imageView, viewBounds, imageUrl);
        } catch (Throwable th) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, th, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DefaultBrazeImageLoader.renderUrlIntoView$lambda$2(imageUrl);
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String renderUrlIntoView$lambda$1() {
        return "Cannot retrieve bitmap with a blank image url";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String renderUrlIntoView$lambda$2(String str) {
        return j.a("Failed to render url into view. Url: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setOffline$lambda$0(boolean z) {
        return "DefaultBrazeImageLoader outbound network requests are now ".concat(z ? "disabled" : FeatureFlag.ENABLED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String shouldSkipCaching$lambda$3(Uri uri) {
        return "Image url specifies that it should not be cached. Not caching " + uri;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String shouldSkipCaching$lambda$7$lambda$6(Map.Entry entry, Uri uri) {
        return "Headers specify that this image should not be cached (" + entry + "). Not caching " + uri;
    }

    public final com.braze.support.a downloadBitmapFromUrl(Context context, Uri imageUri, BrazeViewBounds viewBounds) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(imageUri, "imageUri");
        if (viewBounds == null) {
            viewBounds = BrazeViewBounds.NO_BOUNDS;
        }
        return BrazeImageUtils.getBitmap(context, imageUri, viewBounds);
    }

    public final Bitmap getBitmapFromCache(final String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Bitmap bitmap = this.memoryCache.get(key);
        if (bitmap != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DefaultBrazeImageLoader.getBitmapFromCache$lambda$13$lambda$12(key, this);
                }
            }, 6, (Object) null);
            return bitmap;
        }
        Bitmap bitmapFromDiskCache = getBitmapFromDiskCache(key);
        if (bitmapFromDiskCache == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DefaultBrazeImageLoader.getBitmapFromCache$lambda$16(key);
                }
            }, 7, (Object) null);
            return null;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DefaultBrazeImageLoader.getBitmapFromCache$lambda$15$lambda$14(key);
            }
        }, 6, (Object) null);
        putBitmapIntoMemCache(key, bitmapFromDiskCache);
        return bitmapFromDiskCache;
    }

    public final Bitmap getBitmapFromDiskCache(final String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        ReentrantLock reentrantLock = this.diskCacheLock;
        reentrantLock.lock();
        try {
            a aVar = null;
            if (this.isDiskCacheStarting) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DefaultBrazeImageLoader.getBitmapFromDiskCache$lambda$19$lambda$17(key);
                    }
                }, 6, (Object) null);
            } else {
                a aVar2 = this.diskLruCache;
                if (aVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("diskLruCache");
                    aVar2 = null;
                }
                if (aVar2.a(key)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda7
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return DefaultBrazeImageLoader.getBitmapFromDiskCache$lambda$19$lambda$18(key);
                        }
                    }, 6, (Object) null);
                    a aVar3 = this.diskLruCache;
                    if (aVar3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("diskLruCache");
                    } else {
                        aVar = aVar3;
                    }
                    return aVar.b(key);
                }
            }
            Unit unit = Unit.INSTANCE;
            return null;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final Bitmap getBitmapFromMemCache(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.memoryCache.get(key);
    }

    public final Bitmap getBitmapFromUrl(Context context, final String imageUrl, BrazeViewBounds viewBounds) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        if (StringsKt.isBlank(imageUrl)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DefaultBrazeImageLoader.getBitmapFromUrl$lambda$8();
                }
            }, 7, (Object) null);
            return null;
        }
        try {
            Bitmap bitmapFromCache = getBitmapFromCache(imageUrl);
            if (bitmapFromCache != null) {
                return bitmapFromCache;
            }
            if (this.isOffline) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DefaultBrazeImageLoader.getBitmapFromUrl$lambda$10();
                    }
                }, 7, (Object) null);
            } else {
                Uri uri = Uri.parse(imageUrl);
                Intrinsics.checkNotNull(uri);
                com.braze.support.a aVarDownloadBitmapFromUrl = downloadBitmapFromUrl(context, uri, viewBounds);
                if (aVarDownloadBitmapFromUrl.a != null) {
                    if (!shouldSkipCaching(uri, aVarDownloadBitmapFromUrl.b)) {
                        putBitmapIntoCache(imageUrl, aVarDownloadBitmapFromUrl.a, BrazeFileUtils.isLocalUri(uri));
                    }
                    return aVarDownloadBitmapFromUrl.a;
                }
            }
            return null;
        } catch (Throwable th) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, th, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DefaultBrazeImageLoader.getBitmapFromUrl$lambda$11(imageUrl);
                }
            }, 4, (Object) null);
        }
    }

    @Override // com.braze.images.IBrazeImageLoader
    public Bitmap getInAppMessageBitmapFromUrl(Context context, IInAppMessage inAppMessage, String imageUrl, BrazeViewBounds viewBounds) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(inAppMessage, "inAppMessage");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        return getBitmapFromUrl(context, imageUrl, viewBounds);
    }

    public final LruCache<String, Bitmap> getMemoryCache() {
        return this.memoryCache;
    }

    @Override // com.braze.images.IBrazeImageLoader
    public Bitmap getPushBitmapFromUrl(Context context, Bundle extras, String imageUrl, BrazeViewBounds viewBounds) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        return getBitmapFromUrl(context, imageUrl, viewBounds);
    }

    /* JADX INFO: renamed from: isDiskCacheStarting, reason: from getter */
    public final boolean getIsDiskCacheStarting() {
        return this.isDiskCacheStarting;
    }

    public final void putBitmapIntoCache(final String key, Bitmap bitmap, boolean skipDiskCache) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        if (getBitmapFromMemCache(key) == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DefaultBrazeImageLoader.putBitmapIntoCache$lambda$20(key);
                }
            }, 7, (Object) null);
            this.memoryCache.put(key, bitmap);
        }
        if (skipDiskCache) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DefaultBrazeImageLoader.putBitmapIntoCache$lambda$21(key);
                }
            }, 7, (Object) null);
            return;
        }
        ReentrantLock reentrantLock = this.diskCacheLock;
        reentrantLock.lock();
        try {
            if (!this.isDiskCacheStarting) {
                a aVar = this.diskLruCache;
                a aVar2 = null;
                if (aVar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("diskLruCache");
                    aVar = null;
                }
                if (!aVar.a(key)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda13
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return DefaultBrazeImageLoader.putBitmapIntoCache$lambda$23$lambda$22(key);
                        }
                    }, 7, (Object) null);
                    a aVar3 = this.diskLruCache;
                    if (aVar3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("diskLruCache");
                    } else {
                        aVar2 = aVar3;
                    }
                    aVar2.a(key, bitmap);
                }
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // com.braze.images.IBrazeImageLoader
    public void renderUrlIntoCardView(Context context, Card card, String imageUrl, ImageView imageView, BrazeViewBounds viewBounds) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(card, "card");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        renderUrlIntoView(context, imageUrl, imageView, viewBounds);
    }

    @Override // com.braze.images.IBrazeImageLoader
    public void renderUrlIntoInAppMessageView(Context context, IInAppMessage inAppMessage, String imageUrl, ImageView imageView, BrazeViewBounds viewBounds) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(inAppMessage, "inAppMessage");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        renderUrlIntoView(context, imageUrl, imageView, viewBounds);
    }

    public final void renderUrlIntoViewTask$android_sdk_base_release(Context context, ImageView imageView, BrazeViewBounds viewBounds, String imageUrl) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        imageView.setTag(R.string.com_braze_image_lru_cache_image_url_key, imageUrl);
        BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, null, null, new g(this, context, imageUrl, viewBounds, imageView, null), 3, null);
    }

    @Override // com.braze.images.IBrazeImageLoader
    public void setOffline(final boolean isOffline) {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DefaultBrazeImageLoader.setOffline$lambda$0(isOffline);
            }
        }, 6, (Object) null);
        this.isOffline = isOffline;
    }

    public final boolean shouldSkipCaching(final Uri imageUri, Map<String, ? extends List<String>> headers) {
        Intrinsics.checkNotNullParameter(imageUri, "imageUri");
        if (!imageUri.getBooleanQueryParameter(CACHE_PARAMETER_KEY, true)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DefaultBrazeImageLoader.shouldSkipCaching$lambda$3(imageUri);
                }
            }, 7, (Object) null);
            return true;
        }
        if (headers == null) {
            return false;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ? extends List<String>> entry : headers.entrySet()) {
            if (StringsKt.equals(entry.getKey(), "cache-control", true)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        for (final Map.Entry entry2 : linkedHashMap.entrySet()) {
            Iterable<String> iterable = (Iterable) entry2.getValue();
            if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
                for (String str : iterable) {
                    if (StringsKt.contains((CharSequence) str, (CharSequence) "no-cache", true) || StringsKt.contains((CharSequence) str, (CharSequence) "max-age=0", true)) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.images.DefaultBrazeImageLoader$$ExternalSyntheticLambda15
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return DefaultBrazeImageLoader.shouldSkipCaching$lambda$7$lambda$6(entry2, imageUri);
                            }
                        }, 7, (Object) null);
                        return true;
                    }
                }
            }
        }
        return false;
    }
}

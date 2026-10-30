.class public Lcom/microsoft/xbox/toolkit/ui/TextureManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;,
        Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;,
        Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;
    }
.end annotation


# static fields
.field private static final ANIM_TIME:I = 0x64

.field private static final BITMAP_CACHE_MAX_FILE_SIZE_IN_BYTES:I = 0x500000

.field private static final BMP_FILE_CACHE_DIR_NAME:Ljava/lang/String; = "texture"

.field private static final BMP_FILE_CACHE_SIZE:I = 0x7d0

.field private static final DECODE_THREAD_WAIT_TIMEOUT_MS:I = 0xbb8

.field private static final TEXTURE_TIMEOUT_MS:I = 0x3a98

.field private static final TIME_TO_RETRY_MS:J = 0x493e0L

.field public static instance:Lcom/microsoft/xbox/toolkit/ui/TextureManager;


# instance fields
.field public bitmapCache:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/toolkit/XLEMemoryCache<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;",
            "Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;",
            ">;"
        }
    .end annotation
.end field

.field public bitmapFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

.field private decodeThread:Ljava/lang/Thread;

.field public inProgress:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final listLock:Ljava/lang/Object;

.field private resourceBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;",
            "Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final stopwatch:Lcom/microsoft/xbox/toolkit/TimeMonitor;

.field public timeToRetryCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;",
            ">;"
        }
    .end annotation
.end field

.field public toDecode:Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field public waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/toolkit/MultiMap<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Tz_ZlVJh79HHkBbheQXQsKbQ0es(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->lambda$setXLEImageView$1(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e770ItI8DnAc4veUGZSEx5gTZ5c(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->lambda$setView$0(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->instance:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->stopwatch:Lcom/microsoft/xbox/toolkit/TimeMonitor;

    .line 57
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->getNetworkBitmapCacheSizeInMB()I

    move-result v2

    const/16 v3, 0x32

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x100000

    mul-int/2addr v2, v3

    const/high16 v3, 0x500000

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;-><init>(II)V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapCache:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    .line 58
    const-string v1, "texture"

    const/16 v2, 0x7d0

    invoke-static {v1, v2}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->createCache(Ljava/lang/String;I)Lcom/microsoft/xbox/toolkit/XLEFileCache;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    .line 59
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->inProgress:Ljava/util/HashSet;

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->listLock:Ljava/lang/Object;

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->timeToRetryCache:Ljava/util/HashMap;

    .line 62
    new-instance v1, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->toDecode:Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;

    .line 63
    new-instance v1, Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/MultiMap;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->decodeThread:Ljava/lang/Thread;

    .line 65
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->resourceBitmapCache:Ljava/util/HashMap;

    .line 68
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/TimeMonitor;->start()V

    .line 69
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEThread;

    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;

    invoke-direct {v2, p0, v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread-IA;)V

    const-string v1, "XLETextureDecodeThread"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/xbox/toolkit/XLEThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 70
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->decodeThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEThread;->setDaemon(Z)V

    .line 72
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->decodeThread:Ljava/lang/Thread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 73
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->decodeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;
    .locals 1

    .line 77
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->instance:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    return-object v0
.end method

.method private bindToViewInternal(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .locals 5

    .line 226
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-direct {v0, p1, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;-><init>(Ljava/lang/String;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    .line 227
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->listLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {v2, p2}, Lcom/microsoft/xbox/toolkit/MultiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {v2, p2}, Lcom/microsoft/xbox/toolkit/MultiMap;->removeValue(Ljava/lang/Object;)V

    .line 232
    :cond_0
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->invalidUrl(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_4

    .line 233
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapCache:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    if-nez v2, :cond_6

    .line 235
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->timeToRetryCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;

    if-eqz v4, :cond_1

    .line 237
    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;->isExpired()Z

    move-result v4

    if-nez v4, :cond_1

    .line 238
    iget v4, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    if-eq v4, v3, :cond_1

    .line 239
    iget v2, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v2

    .line 243
    :cond_1
    iget v4, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForLoading:I

    if-eq v4, v3, :cond_3

    .line 244
    iget p3, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForLoading:I

    invoke-virtual {p0, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object p3

    if-nez p3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 248
    :goto_0
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    move-object v2, p3

    .line 250
    :cond_3
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {p3, v0, p2}, Lcom/microsoft/xbox/toolkit/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->inProgress:Ljava/util/HashSet;

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 252
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->inProgress:Ljava/util/HashSet;

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-direct {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->load(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;)V

    goto :goto_1

    .line 256
    :cond_4
    iget v0, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    if-eq v0, v3, :cond_5

    .line 257
    iget p3, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    invoke-virtual {p0, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v2

    .line 258
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 262
    :cond_6
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-virtual {p0, p2, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setImage(Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    .line 264
    instance-of p3, p2, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    if-eqz p3, :cond_7

    .line 265
    check-cast p2, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    iput-object p1, p2, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->TEST_loadingOrLoadedImageUrl:Ljava/lang/String;

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 262
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getNetworkBitmapCacheSizeInMB()I
    .locals 2

    .line 107
    invoke-static {}, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->instance()Lcom/microsoft/xbox/toolkit/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->getMemoryClass()I

    move-result v0

    add-int/lit8 v0, v0, -0x40

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private static invalidUrl(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$setView$0(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 2

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 304
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->listLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {v1, p1, p2}, Lcom/microsoft/xbox/toolkit/MultiMap;->keyValueMatches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 306
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 308
    invoke-virtual {p0, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setImage(Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    .line 309
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->listLock:Ljava/lang/Object;

    monitor-enter p1

    .line 310
    :try_start_1
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {p3, p2}, Lcom/microsoft/xbox/toolkit/MultiMap;->removeValue(Ljava/lang/Object;)V

    .line 311
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_1
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 306
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private synthetic lambda$setXLEImageView$1(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 3

    .line 319
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 320
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->listLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {v1, p1, p2}, Lcom/microsoft/xbox/toolkit/MultiMap;->keyValueMatches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 322
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    .line 324
    invoke-virtual {p2}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->getAlpha()F

    move-result p1

    .line 325
    invoke-virtual {p2}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->getShouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p2}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 334
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setImage(Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    .line 336
    :goto_1
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->listLock:Ljava/lang/Object;

    monitor-enter p1

    .line 337
    :try_start_1
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {p3, p2}, Lcom/microsoft/xbox/toolkit/MultiMap;->removeValue(Ljava/lang/Object;)V

    .line 338
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_2
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 322
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private load(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;)V
    .locals 3

    .line 111
    iget-object v0, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->invalidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->textureThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;

    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    invoke-direct {v2, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;)V

    invoke-direct {v1, p0, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->run(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private setView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 1

    .line 301
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$$ExternalSyntheticLambda1;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setXLEImageView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 1

    .line 317
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static validResizeDimention(II)Z
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-lez p0, :cond_0

    if-lez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 88
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public bindToView(ILandroid/widget/ImageView;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToView(ILandroid/widget/ImageView;IILcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;)V

    return-void
.end method

.method public bindToView(ILandroid/widget/ImageView;IILcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;)V
    .locals 1

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    sget-object p4, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-ne p3, p4, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, p5

    :goto_0
    invoke-static {p3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move p5, v0

    .line 165
    :goto_1
    invoke-static {p5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 166
    instance-of p4, p2, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    if-eqz p4, :cond_2

    .line 167
    move-object p4, p2

    check-cast p4, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->TEST_loadingOrLoadedImageUrl:Ljava/lang/String;

    .line 169
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setImage(Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    return-void
.end method

.method public bindToView(Ljava/net/URI;Landroid/widget/ImageView;II)V
    .locals 2

    .line 187
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 194
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    :goto_1
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {v0, p3, p4}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(II)V

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToViewInternal(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    return-void

    .line 189
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bindToView(Ljava/net/URI;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .locals 2

    .line 201
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 205
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    .line 207
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToViewInternal(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    return-void
.end method

.method public bindToViewFromFile(Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 2

    .line 178
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 182
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {v0, p3, p4}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(II)V

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToViewInternal(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    return-void

    .line 180
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bindToViewFromFile(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .locals 2

    .line 173
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToViewInternal(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    return-void
.end method

.method public computeInSampleSizeOptions(IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 9

    .line 126
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 128
    invoke-static {p1, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->validResizeDimention(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v1, p1, :cond_1

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v1, p2, :cond_1

    .line 129
    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int p1, v3

    iget p3, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr p2, v3

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-int p1, p1

    if-ge p1, v2, :cond_0

    const/4 v2, 0x0

    .line 133
    :cond_0
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    move v2, p1

    .line 135
    :cond_1
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-object v0
.end method

.method public createScaledBitmap(Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;II)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 5

    .line 270
    invoke-static {p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->validResizeDimention(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 273
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    int-to-float v2, p2

    div-float v3, v1, v2

    cmpg-float v3, v3, v0

    const/4 v4, 0x1

    if-gez v3, :cond_1

    div-float/2addr v1, v0

    float-to-int p2, v1

    .line 277
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :cond_1
    mul-float/2addr v2, v0

    float-to-int p3, v2

    .line 279
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 281
    :goto_0
    invoke-static {p1, p2, p3, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->createScaledBitmap8888(Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;IIZ)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public drainWaitingForImage(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/MultiMap;->get(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 287
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 290
    instance-of v2, v1, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    if-eqz v2, :cond_1

    .line 291
    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-direct {p0, p1, v1, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setXLEImageView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    goto :goto_0

    .line 293
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public isBusy()Z
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->listLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->inProgress:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 220
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 3

    .line 141
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;

    invoke-direct {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;-><init>(I)V

    .line 142
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->resourceBitmapCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    if-nez p1, :cond_0

    .line 144
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 145
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 146
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    invoke-static {v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 147
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    invoke-static {p1, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->decodeResource(Landroid/content/res/Resources;I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object p1

    .line 148
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->resourceBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public loadScaledResourceDrawable(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getDrawable()Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    move-result-object p1

    return-object p1
.end method

.method public logMemoryUsage()V
    .locals 0

    return-void
.end method

.method public preload(I)V
    .locals 0

    return-void
.end method

.method public preload(Ljava/net/URI;)V
    .locals 0

    return-void
.end method

.method public preloadFromFile(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public purgeResourceBitmapCache()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->resourceBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public setCachingEnabled(Z)V
    .locals 3

    .line 211
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->getNetworkBitmapCacheSizeInMB()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x500000

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;-><init>(II)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapCache:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    .line 212
    const-string v0, "texture"

    const/16 v1, 0x7d0

    invoke-static {v0, v1, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->createCache(Ljava/lang/String;IZ)Lcom/microsoft/xbox/toolkit/XLEFileCache;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    .line 213
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->resourceBitmapCache:Ljava/util/HashMap;

    return-void
.end method

.method public setImage(Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 3

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 349
    :goto_0
    sget v0, Lcom/microsoft/xboxtcui/R$id;->image_callback:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;

    if-eqz v0, :cond_1

    .line 351
    invoke-interface {v0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;->onBeforeImageSet(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 353
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    sget v1, Lcom/microsoft/xboxtcui/R$id;->image_bound:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 356
    invoke-interface {v0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;->onAfterImageSet(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method

.method public unsafeClearBitmapCache()V
    .locals 0

    return-void
.end method

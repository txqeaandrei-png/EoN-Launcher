.class public final Lcom/microsoft/xbox/idp/util/CacheUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheUtil"

.field private static final bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

.field private static final objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;-><init>(I)V

    sput-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    .line 17
    new-instance v0, Lcom/microsoft/xbox/idp/util/ObjectLoaderCache;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/util/ObjectLoaderCache;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCaches()V
    .locals 2

    .line 28
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->TAG:Ljava/lang/String;

    const-string v1, "clearCaches"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    monitor-enter v0

    .line 30
    :try_start_0
    invoke-interface {v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->clear()V

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    sget-object v1, Lcom/microsoft/xbox/idp/util/CacheUtil;->bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    monitor-enter v1

    .line 33
    :try_start_1
    invoke-interface {v1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;->clear()V

    .line 34
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 31
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static getBitmapCache()Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;
    .locals 1

    .line 24
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    return-object v0
.end method

.method public static getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;
    .locals 1

    .line 20
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    return-object v0
.end method

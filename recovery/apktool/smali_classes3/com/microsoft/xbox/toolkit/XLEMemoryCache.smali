.class public Lcom/microsoft/xbox/toolkit/XLEMemoryCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private itemCount:I

.field private final lruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "TK;",
            "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final maxFileSizeBytes:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    if-ltz p1, :cond_2

    if-ltz p2, :cond_1

    .line 24
    iput p2, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->maxFileSizeBytes:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance p2, Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;

    invoke-direct {p2, p0, p1}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;-><init>(Lcom/microsoft/xbox/toolkit/XLEMemoryCache;I)V

    :goto_0
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    return-void

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxFileSizeInBytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sizeInBytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static access(Lcom/microsoft/xbox/toolkit/XLEMemoryCache;)I
    .locals 1

    .line 42
    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    add-int/lit8 v0, v0, -0x1

    .line 43
    iput v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)Z"
        }
    .end annotation

    .line 66
    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->maxFileSizeBytes:I

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;

    invoke-direct {v0, p2, p3}, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;-><init>(Ljava/lang/Object;I)V

    .line 70
    iget p2, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    .line 71
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {p2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p3

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;

    if-nez p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBytesCurrent()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 51
    :cond_0
    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    return v0
.end method

.method public getBytesFree()I
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    invoke-virtual {v0}, Landroid/util/LruCache;->maxSize()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getItemsInCache()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    return v0
.end method

.class Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/TextureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetryEntry"
.end annotation


# static fields
.field private static final SEC:J = 0x3e8L

.field private static final TIMES_MS:[J


# instance fields
.field private curIdx:I

.field private currStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 362
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;->TIMES_MS:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x1388
        0x2328
        0x4a38
        0x9088
        0x124f8
        0x249f0
        0x493e0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 363
    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;->curIdx:I

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;->currStart:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public isExpired()Z
    .locals 5

    .line 367
    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;->currStart:J

    sget-object v2, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;->TIMES_MS:[J

    iget v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;->curIdx:I

    aget-wide v3, v2, v3

    add-long/2addr v0, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startNext()V
    .locals 2

    .line 371
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;->curIdx:I

    .line 372
    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;->TIMES_MS:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 373
    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;->curIdx:I

    .line 375
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;->currStart:J

    return-void
.end method

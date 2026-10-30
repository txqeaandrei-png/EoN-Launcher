.class public Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;
.super Ljava/lang/Object;


# static fields
.field public static biOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

.field public static nativeOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

.field public static networkOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

.field public static textureThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field public name:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$rbn89O6SZuFL9B95541mJO12G3Q(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;ILjava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->lambda$new$0(ILjava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    const-string v1, "XLEPerfMarkerOperationsPool"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->biOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    .line 17
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    const/4 v1, 0x4

    const-string v4, "XLENativeOperationsPool"

    invoke-direct {v0, v3, v1, v4}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->nativeOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    .line 18
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    const/4 v1, 0x3

    const-string v4, "XLENetworkOperationsPool"

    invoke-direct {v0, v2, v1, v4}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->networkOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    .line 19
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    const-string v1, "XLETexturePool"

    invoke-direct {v0, v2, v3, v1}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->textureThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->name:Ljava/lang/String;

    .line 25
    new-instance p3, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;I)V

    if-eqz p1, :cond_0

    .line 32
    invoke-static {p3}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p3}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(ILjava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 26
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEThread;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->name:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/microsoft/xbox/toolkit/XLEThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Runnable;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

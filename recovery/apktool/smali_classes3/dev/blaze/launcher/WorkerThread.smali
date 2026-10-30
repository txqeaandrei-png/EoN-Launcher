.class public Ldev/blaze/launcher/WorkerThread;
.super Ljava/lang/Thread;


# static fields
.field private static final FRAME_TIME_MILLIS:J = 0x10L


# instance fields
.field private final glView:Ldev/blaze/launcher/GLES3JNIView;

.field private lastFrameTime:J

.field private final lock:Ljava/lang/Object;

.field private renderRequest:Z

.field private volatile running:Z


# direct methods
.method public static synthetic $r8$lambda$fyeeqA50lAtw9iQbFS_UveQOpAk(Ldev/blaze/launcher/WorkerThread;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/blaze/launcher/WorkerThread;->lambda$run$1(J)V

    return-void
.end method

.method public constructor <init>(Ldev/blaze/launcher/GLES3JNIView;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Ldev/blaze/launcher/WorkerThread;->running:Z

    .line 10
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ldev/blaze/launcher/WorkerThread;->lock:Ljava/lang/Object;

    .line 11
    iput-boolean v0, p0, Ldev/blaze/launcher/WorkerThread;->renderRequest:Z

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Ldev/blaze/launcher/WorkerThread;->lastFrameTime:J

    .line 16
    iput-object p1, p0, Ldev/blaze/launcher/WorkerThread;->glView:Ldev/blaze/launcher/GLES3JNIView;

    return-void
.end method

.method static synthetic lambda$run$0()V
    .locals 0

    .line 79
    invoke-static {}, Ldev/blaze/launcher/GLES3JNIView;->step()V

    return-void
.end method

.method private synthetic lambda$run$1(J)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Ldev/blaze/launcher/WorkerThread;->requestRender()V

    return-void
.end method


# virtual methods
.method public requestRender()V
    .locals 2

    .line 38
    iget-object v0, p0, Ldev/blaze/launcher/WorkerThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 39
    :try_start_0
    iput-boolean v1, p0, Ldev/blaze/launcher/WorkerThread;->renderRequest:Z

    .line 40
    iget-object v1, p0, Ldev/blaze/launcher/WorkerThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 41
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 5

    .line 46
    :cond_0
    :goto_0
    iget-boolean v0, p0, Ldev/blaze/launcher/WorkerThread;->running:Z

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Ldev/blaze/launcher/WorkerThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    iget-boolean v1, p0, Ldev/blaze/launcher/WorkerThread;->renderRequest:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Ldev/blaze/launcher/WorkerThread;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 51
    :try_start_1
    iget-object v1, p0, Ldev/blaze/launcher/WorkerThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 53
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Ldev/blaze/launcher/WorkerThread;->renderRequest:Z

    .line 57
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    iget-boolean v0, p0, Ldev/blaze/launcher/WorkerThread;->running:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    iget-wide v2, p0, Ldev/blaze/launcher/WorkerThread;->lastFrameTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x10

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    sub-long/2addr v2, v0

    .line 67
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 74
    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldev/blaze/launcher/WorkerThread;->lastFrameTime:J

    .line 77
    iget-object v0, p0, Ldev/blaze/launcher/WorkerThread;->glView:Ldev/blaze/launcher/GLES3JNIView;

    new-instance v1, Ldev/blaze/launcher/WorkerThread$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ldev/blaze/launcher/WorkerThread$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ldev/blaze/launcher/GLES3JNIView;->queueEvent(Ljava/lang/Runnable;)V

    .line 83
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 84
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Ldev/blaze/launcher/WorkerThread$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Ldev/blaze/launcher/WorkerThread$$ExternalSyntheticLambda1;-><init>(Ldev/blaze/launcher/WorkerThread;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 87
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 57
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_3
    return-void
.end method

.method public startRendering()V
    .locals 1

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Ldev/blaze/launcher/WorkerThread;->running:Z

    .line 21
    invoke-virtual {p0}, Ldev/blaze/launcher/WorkerThread;->start()V

    return-void
.end method

.method public stopRendering()V
    .locals 2

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Ldev/blaze/launcher/WorkerThread;->running:Z

    .line 26
    iget-object v0, p0, Ldev/blaze/launcher/WorkerThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Ldev/blaze/launcher/WorkerThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    invoke-virtual {p0}, Ldev/blaze/launcher/WorkerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 28
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.class public abstract Lcom/microsoft/xbox/toolkit/XLEAsyncTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected cancelled:Z

.field public chainedTask:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

.field private doBackgroundAndPostExecuteRunnable:Ljava/lang/Runnable;

.field protected isBusy:Z

.field private threadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;


# direct methods
.method public static synthetic $r8$lambda$VLebqHq4MnbECBcSm7ezbAXbVmQ(Lcom/microsoft/xbox/toolkit/XLEAsyncTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hU6kCJgZ1KkIgUF4LKpHta-gjyc(Lcom/microsoft/xbox/toolkit/XLEAsyncTask;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->lambda$new$0(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->chainedTask:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    .line 10
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->isBusy:Z

    .line 11
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->doBackgroundAndPostExecuteRunnable:Ljava/lang/Runnable;

    .line 15
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->threadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    .line 16
    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/xbox/toolkit/XLEAsyncTask;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->doBackgroundAndPostExecuteRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static varargs executeAll([Lcom/microsoft/xbox/toolkit/XLEAsyncTask;)V
    .locals 4

    .line 31
    array-length v0, p0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 33
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 34
    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    .line 36
    aget-object v3, p0, v1

    iput-object v3, v2, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->chainedTask:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    goto :goto_0

    .line 38
    :cond_0
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->execute()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->isBusy:Z

    .line 20
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->chainedTask:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->execute()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 17
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$$ExternalSyntheticLambda1;-><init>(Lcom/microsoft/xbox/toolkit/XLEAsyncTask;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 50
    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    return-void
.end method

.method public abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public execute()V
    .locals 4

    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 55
    iput-boolean v3, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    .line 56
    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->isBusy:Z

    .line 57
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->onPreExecute()V

    .line 58
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->executeBackground()V

    return-void
.end method

.method public executeBackground()V
    .locals 2

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    .line 67
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->threadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->doBackgroundAndPostExecuteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getIsBusy()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->isBusy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract onPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method public abstract onPreExecute()V
.end method

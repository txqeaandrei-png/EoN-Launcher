.class public Lcom/microsoft/xbox/toolkit/DataLoadUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZJ",
            "Ljava/util/Date;",
            "Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
            "TT;>;)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "TT;>;"
        }
    .end annotation

    .line 55
    invoke-static {p4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 56
    invoke-static {p5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 58
    invoke-virtual {p4}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->waitForNotLoading()Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;

    move-result-object v0

    .line 59
    iget-boolean v1, v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;->waited:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 60
    iget-object p0, v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;->error:Lcom/microsoft/xbox/toolkit/XLEException;

    if-nez p0, :cond_0

    .line 62
    sget-object p0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v2, p5, v2, p0}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->safeReturnResult(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p0

    return-object p0

    .line 64
    :cond_0
    sget-object p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v2, p5, p0, p1}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->safeReturnResult(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p0

    return-object p0

    .line 65
    :cond_1
    invoke-static {p3, p1, p2}, Lcom/microsoft/xbox/xle/app/XLEUtil;->shouldRefresh(Ljava/util/Date;J)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p0, :cond_2

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p4}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->setSuccess()V

    .line 94
    sget-object p0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v2, p5, v2, p0}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->safeReturnResult(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p0

    return-object p0

    .line 67
    :cond_3
    :goto_0
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda0;

    invoke-direct {p0, p5}, Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadSend(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {p5}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;->getShouldRetryCountOnTokenError()I

    move-result p0

    const/4 p1, 0x0

    move-object p2, v2

    :goto_1
    if-le p1, p0, :cond_4

    .line 90
    invoke-virtual {p4, p2}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->setFailed(Lcom/microsoft/xbox/toolkit/XLEException;)V

    .line 91
    sget-object p0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v2, p5, p2, p0}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->safeReturnResult(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p0

    return-object p0

    .line 76
    :cond_4
    :try_start_0
    invoke-virtual {p5}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;->buildData()Ljava/lang/Object;

    move-result-object p2

    .line 77
    sget-object p3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {p2, p5, v2, p3}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->postExecute(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 78
    invoke-virtual {p4}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->setSuccess()V

    .line 79
    new-instance p3, Lcom/microsoft/xbox/toolkit/AsyncResult;

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-direct {p3, p2, p5, v2, v0}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p2

    .line 87
    new-instance p3, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-virtual {p5}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;->getDefaultErrorCode()J

    move-result-wide v0

    invoke-direct {p3, v0, v1, p2}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    move-object p2, p3

    goto :goto_1

    :catch_1
    move-exception p2

    .line 82
    invoke-virtual {p2}, Lcom/microsoft/xbox/toolkit/XLEException;->getErrorCode()J

    move-result-wide v0

    const-wide/16 v3, 0x3fc

    cmp-long p3, v0, v3

    if-nez p3, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 84
    :cond_5
    invoke-virtual {p2}, Lcom/microsoft/xbox/toolkit/XLEException;->getErrorCode()J

    goto :goto_1
.end method

.method public static StartLoadFromUI(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZJ",
            "Ljava/util/Date;",
            "Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
            "TT;>;)",
            "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;"
        }
    .end annotation

    .line 25
    new-instance p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;-><init>(JLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V

    .line 49
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->execute()V

    return-object p0
.end method

.method static synthetic lambda$postExecute$0(Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1

    .line 106
    new-instance v0, Lcom/microsoft/xbox/toolkit/AsyncResult;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;->onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method private static postExecute(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
            "TT;>;",
            "Lcom/microsoft/xbox/toolkit/XLEException;",
            "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
            ")V"
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda1;-><init>(Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadSend(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static safeReturnResult(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
            "TT;>;",
            "Lcom/microsoft/xbox/toolkit/XLEException;",
            "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "TT;>;"
        }
    .end annotation

    .line 101
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->postExecute(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 102
    new-instance v0, Lcom/microsoft/xbox/toolkit/AsyncResult;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-object v0
.end method

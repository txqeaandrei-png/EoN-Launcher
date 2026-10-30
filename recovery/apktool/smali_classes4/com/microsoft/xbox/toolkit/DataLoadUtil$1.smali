.class Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/DataLoadUtil;->StartLoadFromUI(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$iDataLoaderRunnable:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

.field final synthetic val$j:J

.field final synthetic val$singleEntryLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;


# direct methods
.method constructor <init>(JLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$j:J

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$date:Ljava/util/Date;

    iput-object p4, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$singleEntryLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    iput-object p5, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$iDataLoaderRunnable:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public checkShouldExecute()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->forceLoad:Z

    return v0
.end method

.method public loadDataInBackground()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->forceLoad:Z

    iget-wide v1, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$j:J

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$date:Ljava/util/Date;

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$singleEntryLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$iDataLoaderRunnable:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

    invoke-static/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onError()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onNoAction()V
    .locals 0

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    return-void
.end method

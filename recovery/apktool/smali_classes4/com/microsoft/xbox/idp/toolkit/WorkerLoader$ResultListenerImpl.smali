.class Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener<",
        "TD;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;


# direct methods
.method public static synthetic $r8$lambda$AOne8ZiO4E2tXlUq5S9TRjRpkjY(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;ZLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->lambda$onResult$0(ZLjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->this$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;-><init>(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;)V

    return-void
.end method

.method private synthetic lambda$onResult$0(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->this$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->this$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->deliverResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->this$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->this$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->resultListener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->this$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->dispatcher:Landroid/os/Handler;

    new-instance v3, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, p1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;ZLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.class Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker<",
        "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final cache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

.field public final cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final gson:Lcom/google/gson/Gson;

.field private final httpCall:Lcom/microsoft/xbox/idp/util/HttpCall;

.field public final resultKey:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$1sb26sdgGi5XuIQEP8UlOkBbsNI(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->lambda$start$0(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V

    return-void
.end method

.method private constructor <init>(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/Gson;Lcom/microsoft/xbox/idp/util/HttpCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/gson/Gson;",
            "Lcom/microsoft/xbox/idp/util/HttpCall;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    .line 75
    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->resultKey:Ljava/lang/Object;

    .line 76
    iput-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cls:Ljava/lang/Class;

    .line 77
    iput-object p4, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->gson:Lcom/google/gson/Gson;

    .line 78
    iput-object p5, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->httpCall:Lcom/microsoft/xbox/idp/util/HttpCall;

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/Gson;Lcom/microsoft/xbox/idp/util/HttpCall;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/Gson;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-void
.end method

.method private synthetic lambda$start$0(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 p4, 0xc8

    if-lt p2, p4, :cond_3

    const/16 p4, 0x12b

    if-le p2, p4, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    iget-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cls:Ljava/lang/Class;

    const-class p4, Ljava/lang/Void;

    if-ne p2, p4, :cond_1

    .line 106
    new-instance p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;-><init>(Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    invoke-interface {p1, p2}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    goto :goto_3

    .line 108
    :cond_1
    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 110
    :try_start_0
    new-instance p4, Ljava/io/InputStreamReader;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 112
    :try_start_1
    new-instance p3, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cls:Ljava/lang/Class;

    invoke-virtual {v0, p4, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;-><init>(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    :try_start_2
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->resultKey:Ljava/lang/Object;

    invoke-interface {v1, v2, p3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->put(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    .line 116
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    .line 118
    :cond_2
    :goto_0
    invoke-interface {p1, p3}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    :try_start_4
    invoke-virtual {p4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 123
    invoke-virtual {p2}, Ljava/io/StringWriter;->close()V

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 120
    :try_start_5
    invoke-virtual {p4}, Ljava/io/InputStreamReader;->close()V

    .line 121
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 123
    invoke-virtual {p2}, Ljava/io/StringWriter;->close()V

    .line 124
    throw p1

    .line 98
    :cond_3
    :goto_1
    new-instance p4, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/HttpError;

    invoke-direct {v0, p2, p2, p3}, Lcom/microsoft/xbox/idp/toolkit/HttpError;-><init>(IILjava/io/InputStream;)V

    invoke-direct {p4, v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;-><init>(Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 99
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->hasCache()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 100
    iget-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    monitor-enter p2

    .line 101
    :try_start_6
    iget-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->resultKey:Ljava/lang/Object;

    invoke-interface {p3, v0, p4}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->put(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    .line 102
    monitor-exit p2

    goto :goto_2

    :catchall_3
    move-exception p1

    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1

    .line 104
    :cond_4
    :goto_2
    invoke-interface {p1, p4}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public hasCache()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->resultKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->resultKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->get(Ljava/lang/Object;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    move-result-object v1

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {p1, v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 90
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->httpCall:Lcom/microsoft/xbox/idp/util/HttpCall;

    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;->getResponseAsync(Lcom/microsoft/xbox/idp/util/HttpCall$Callback;)V

    return-void
.end method

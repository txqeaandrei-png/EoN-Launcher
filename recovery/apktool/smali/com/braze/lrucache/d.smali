.class public final Lcom/braze/lrucache/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/braze/lrucache/g;

.field public final b:[Z

.field public c:Z

.field public final synthetic d:Lcom/braze/lrucache/f;


# direct methods
.method public constructor <init>(Lcom/braze/lrucache/f;Lcom/braze/lrucache/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/lrucache/d;->d:Lcom/braze/lrucache/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/braze/lrucache/d;->a:Lcom/braze/lrucache/g;

    .line 3
    iget-boolean p2, p2, Lcom/braze/lrucache/g;->c:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p1, Lcom/braze/lrucache/f;->g:I

    .line 5
    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/braze/lrucache/d;->b:[Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/OutputStream;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/braze/lrucache/d;->d:Lcom/braze/lrucache/f;

    .line 2
    iget v1, v0, Lcom/braze/lrucache/f;->g:I

    if-lez v1, :cond_2

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/braze/lrucache/d;->a:Lcom/braze/lrucache/g;

    iget-object v2, v1, Lcom/braze/lrucache/g;->d:Lcom/braze/lrucache/d;

    if-ne v2, p0, :cond_1

    .line 7
    iget-boolean v2, v1, Lcom/braze/lrucache/g;->c:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 8
    iget-object v2, p0, Lcom/braze/lrucache/d;->b:[Z

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 10
    :cond_0
    invoke-virtual {v1, v3}, Lcom/braze/lrucache/g;->a(I)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/braze/lrucache/d;->d:Lcom/braze/lrucache/f;

    .line 17
    iget-object v2, v2, Lcom/braze/lrucache/f;->a:Ljava/io/File;

    .line 18
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    :goto_0
    :try_start_4
    new-instance v1, Lcom/braze/lrucache/c;

    invoke-direct {v1, p0, v2}, Lcom/braze/lrucache/c;-><init>(Lcom/braze/lrucache/d;Ljava/io/FileOutputStream;)V

    monitor-exit v0

    return-object v1

    .line 27
    :catch_1
    sget-object v1, Lcom/braze/lrucache/f;->q:Lcom/braze/lrucache/b;

    .line 28
    monitor-exit v0

    return-object v1

    .line 29
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 49
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 50
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected index 0 to be greater than 0 and less than the maximum value count of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/braze/lrucache/d;->d:Lcom/braze/lrucache/f;

    .line 51
    iget v2, v2, Lcom/braze/lrucache/f;->g:I

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

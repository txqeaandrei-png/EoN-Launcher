.class public final Lcom/braze/storage/e0;
.super Ljava/lang/Object;


# static fields
.field public static final f:I

.field public static final g:I


# instance fields
.field public final a:Lcom/braze/events/d;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Ljava/util/concurrent/locks/ReentrantLock;

.field public final d:Lkotlinx/coroutines/sync/Mutex;

.field public e:Lcom/braze/models/response/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/braze/storage/e0;->f:I

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/braze/storage/e0;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/braze/events/d;)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "internalEventPublisher"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/braze/storage/e0;->a:Lcom/braze/events/d;

    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 723
    const-string p3, "com.braze.storage.server_config."

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 724
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 725
    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 726
    invoke-static {p3, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p3

    iput-object p3, p0, Lcom/braze/storage/e0;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 729
    const-string p3, ""

    const-string v0, "last_accessed_sdk_version"

    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 731
    const-string v1, "36.0.0"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 732
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v8, Lcom/braze/storage/e0$$ExternalSyntheticLambda0;

    invoke-direct {v8, p3, v1}, Lcom/braze/storage/e0$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 736
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 738
    const-string p3, "config_time"

    const-wide/16 v2, 0x0

    invoke-interface {p1, p3, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 739
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 740
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 741
    :cond_0
    new-instance p1, Lcom/braze/models/response/m;

    invoke-direct {p1}, Lcom/braze/models/response/m;-><init>()V

    .line 742
    invoke-virtual {p0}, Lcom/braze/storage/e0;->e()Ljava/util/Set;

    move-result-object p3

    .line 743
    iput-object p3, p1, Lcom/braze/models/response/m;->c:Ljava/util/Set;

    .line 744
    invoke-virtual {p0}, Lcom/braze/storage/e0;->f()Ljava/util/Set;

    move-result-object p3

    .line 745
    iput-object p3, p1, Lcom/braze/models/response/m;->b:Ljava/util/Set;

    .line 746
    invoke-virtual {p0}, Lcom/braze/storage/e0;->g()Ljava/util/Set;

    move-result-object p3

    .line 747
    iput-object p3, p1, Lcom/braze/models/response/m;->d:Ljava/util/Set;

    .line 748
    invoke-virtual {p0}, Lcom/braze/storage/e0;->i()J

    move-result-wide v0

    .line 749
    iput-wide v0, p1, Lcom/braze/models/response/m;->a:J

    .line 750
    invoke-virtual {p0}, Lcom/braze/storage/e0;->r()J

    move-result-wide v0

    .line 751
    iput-wide v0, p1, Lcom/braze/models/response/m;->k:J

    .line 752
    invoke-virtual {p0}, Lcom/braze/storage/e0;->t()I

    move-result p3

    .line 753
    iput p3, p1, Lcom/braze/models/response/m;->e:I

    .line 754
    invoke-virtual {p0}, Lcom/braze/storage/e0;->s()I

    move-result p3

    .line 755
    iput p3, p1, Lcom/braze/models/response/m;->f:I

    .line 756
    invoke-virtual {p0}, Lcom/braze/storage/e0;->q()I

    move-result p3

    .line 757
    iput p3, p1, Lcom/braze/models/response/m;->g:I

    .line 758
    invoke-virtual {p0}, Lcom/braze/storage/e0;->H()Z

    move-result p3

    .line 759
    iput-boolean p3, p1, Lcom/braze/models/response/m;->i:Z

    .line 760
    invoke-virtual {p0}, Lcom/braze/storage/e0;->I()Z

    move-result p3

    .line 761
    iput-boolean p3, p1, Lcom/braze/models/response/m;->h:Z

    .line 762
    invoke-virtual {p0}, Lcom/braze/storage/e0;->D()Z

    move-result p3

    .line 763
    iput-boolean p3, p1, Lcom/braze/models/response/m;->j:Z

    .line 764
    invoke-virtual {p0}, Lcom/braze/storage/e0;->F()Z

    move-result p3

    .line 765
    iput-boolean p3, p1, Lcom/braze/models/response/m;->l:Z

    .line 766
    invoke-virtual {p0}, Lcom/braze/storage/e0;->G()Z

    move-result p3

    .line 767
    iput-boolean p3, p1, Lcom/braze/models/response/m;->m:Z

    .line 768
    invoke-virtual {p0}, Lcom/braze/storage/e0;->m()I

    move-result p3

    .line 769
    iput p3, p1, Lcom/braze/models/response/m;->n:I

    .line 770
    invoke-virtual {p0}, Lcom/braze/storage/e0;->K()Z

    move-result p3

    .line 771
    iput-boolean p3, p1, Lcom/braze/models/response/m;->o:Z

    .line 772
    invoke-virtual {p0}, Lcom/braze/storage/e0;->u()J

    move-result-wide v0

    .line 773
    iput-wide v0, p1, Lcom/braze/models/response/m;->p:J

    .line 774
    invoke-virtual {p0}, Lcom/braze/storage/e0;->E()Z

    move-result p3

    .line 775
    iput-boolean p3, p1, Lcom/braze/models/response/m;->t:Z

    .line 776
    invoke-virtual {p0}, Lcom/braze/storage/e0;->J()Z

    move-result p3

    .line 777
    iput-boolean p3, p1, Lcom/braze/models/response/m;->q:Z

    .line 778
    invoke-virtual {p0}, Lcom/braze/storage/e0;->o()I

    move-result p3

    .line 779
    iput p3, p1, Lcom/braze/models/response/m;->r:I

    .line 780
    invoke-virtual {p0}, Lcom/braze/storage/e0;->n()I

    move-result p3

    .line 781
    iput p3, p1, Lcom/braze/models/response/m;->s:I

    .line 782
    invoke-virtual {p0}, Lcom/braze/storage/e0;->v()J

    move-result-wide v0

    .line 783
    iput-wide v0, p1, Lcom/braze/models/response/m;->u:J

    .line 784
    invoke-virtual {p0}, Lcom/braze/storage/e0;->l()I

    move-result p3

    .line 785
    iput p3, p1, Lcom/braze/models/response/m;->x:I

    .line 786
    invoke-virtual {p0}, Lcom/braze/storage/e0;->k()I

    move-result p3

    .line 787
    iput p3, p1, Lcom/braze/models/response/m;->v:I

    .line 788
    invoke-virtual {p0}, Lcom/braze/storage/e0;->j()I

    move-result p3

    .line 789
    iput p3, p1, Lcom/braze/models/response/m;->w:I

    .line 790
    invoke-virtual {p0}, Lcom/braze/storage/e0;->L()Z

    move-result p3

    .line 791
    iput-boolean p3, p1, Lcom/braze/models/response/m;->y:Z

    .line 792
    invoke-virtual {p0}, Lcom/braze/storage/e0;->y()Ljava/lang/String;

    move-result-object p3

    .line 793
    iput-object p3, p1, Lcom/braze/models/response/m;->z:Ljava/lang/String;

    .line 794
    invoke-virtual {p0}, Lcom/braze/storage/e0;->A()J

    move-result-wide v0

    .line 795
    iput-wide v0, p1, Lcom/braze/models/response/m;->B:J

    .line 796
    invoke-virtual {p0}, Lcom/braze/storage/e0;->B()J

    move-result-wide v0

    .line 797
    iput-wide v0, p1, Lcom/braze/models/response/m;->C:J

    .line 798
    invoke-virtual {p0}, Lcom/braze/storage/e0;->C()J

    move-result-wide v0

    .line 799
    iput-wide v0, p1, Lcom/braze/models/response/m;->D:J

    .line 800
    invoke-virtual {p0}, Lcom/braze/storage/e0;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 801
    iput-object p3, p1, Lcom/braze/models/response/m;->A:Ljava/lang/Long;

    .line 802
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 803
    :try_start_0
    iget-object p3, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz p3, :cond_1

    .line 804
    iget-object p3, p3, Lcom/braze/models/response/m;->E:Ljava/util/Map;

    if-nez p3, :cond_2

    .line 805
    :cond_1
    invoke-virtual {p0}, Lcom/braze/storage/e0;->w()Ljava/util/LinkedHashMap;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 806
    :cond_2
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 807
    iput-object p3, p1, Lcom/braze/models/response/m;->E:Ljava/util/Map;

    .line 808
    invoke-virtual {p0}, Lcom/braze/storage/e0;->d()Z

    move-result p3

    .line 809
    iput-boolean p3, p1, Lcom/braze/models/response/m;->F:Z

    .line 810
    invoke-virtual {p0}, Lcom/braze/storage/e0;->p()I

    move-result p3

    .line 811
    iput p3, p1, Lcom/braze/models/response/m;->G:I

    .line 812
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    iput-object p1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :catchall_1
    move-exception p1

    .line 813
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public static final N()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Attempting to unlock server config info"

    return-object v0
.end method

.method public static final O()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Unlocking config info lock."

    return-object v0
.end method

.method public static final P()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Could not persist server config to shared preferences."

    return-object v0
.end method

.method public static final Q()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Could not persist server config to shared preferences."

    return-object v0
.end method

.method public static final R()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Server config is older than previous config time. Not sending out ConfigChangeEvent."

    return-object v0
.end method

.method public static final a(Lcom/braze/storage/e0;)Ljava/lang/String;
    .locals 2

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finishing updating server config to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Detected SDK update from \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\' -> \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\'. Clearing config update time."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "Attempting to acquire server config lock"

    return-object v0
.end method

.method public static final b(Lcom/braze/models/response/m;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finishing updating server config to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Not allowing server config info unlock. Returning null."

    return-object v0
.end method

.method public static final h()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Experienced exception retrieving blocklisted strings from local storage. Returning null."

    return-object v0
.end method

.method public static final x()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to parse endpoint override from storage"

    return-object v0
.end method


# virtual methods
.method public final A()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-wide v1, v1, Lcom/braze/models/response/m;->B:J

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "sdk_debugger_flush_interval_bytes"

    const-wide/16 v3, 0x0

    .line 6
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final B()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-wide v1, v1, Lcom/braze/models/response/m;->C:J

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "sdk_debugger_flush_interval_seconds"

    const-wide/16 v3, 0x0

    .line 6
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final C()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-wide v1, v1, Lcom/braze/models/response/m;->D:J

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "sdk_debugger_max_payload_bytes"

    const-wide/16 v3, 0x0

    .line 6
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final D()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, v1, Lcom/braze/models/response/m;->j:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "content_cards_enabled"

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final E()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, v1, Lcom/braze/models/response/m;->t:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "dust_enabled"

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final F()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, v1, Lcom/braze/models/response/m;->l:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "ephemeral_events_enabled"

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final G()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, v1, Lcom/braze/models/response/m;->m:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "feature_flags_enabled"

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final H()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, v1, Lcom/braze/models/response/m;->i:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "geofences_enabled"

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final I()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, v1, Lcom/braze/models/response/m;->h:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "geofences_enabled_set"

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final J()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, v1, Lcom/braze/models/response/m;->q:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "global_req_rate_limit_enabled"

    const/4 v3, 0x1

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final K()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, v1, Lcom/braze/models/response/m;->o:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "push_max_enabled"

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final L()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, v1, Lcom/braze/models/response/m;->y:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "sdk_debugger_enabled"

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final M()V
    .locals 9

    .line 1
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/storage/e0$$ExternalSyntheticLambda11;

    invoke-direct {v5}, Lcom/braze/storage/e0$$ExternalSyntheticLambda11;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/braze/storage/e0;->d:Lkotlinx/coroutines/sync/Mutex;

    invoke-interface {v0}, Lkotlinx/coroutines/sync/Mutex;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v5, Lcom/braze/storage/e0$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/braze/storage/e0$$ExternalSyntheticLambda1;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/braze/storage/e0;->d:Lkotlinx/coroutines/sync/Mutex;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 8

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 530
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_1

    .line 531
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 532
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    .line 534
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 535
    new-instance v2, Lcom/braze/storage/c0;

    invoke-direct {v2, v1}, Lcom/braze/storage/c0;-><init>(Lorg/json/JSONArray;)V

    invoke-static {p1, v2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 536
    new-instance v2, Lcom/braze/storage/d0;

    invoke-direct {v2, v1}, Lcom/braze/storage/d0;-><init>(Lorg/json/JSONArray;)V

    invoke-static {p1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 537
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 538
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 539
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    .line 544
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/storage/e0$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/braze/storage/e0$$ExternalSyntheticLambda2;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 547
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public final a()Lkotlin/Pair;
    .locals 11

    .line 523
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v9, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/storage/e0$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/braze/storage/e0$$ExternalSyntheticLambda6;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v9

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 524
    iget-object v0, p0, Lcom/braze/storage/e0;->d:Lkotlinx/coroutines/sync/Mutex;

    const/4 v10, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v10, v1, v10}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->tryLock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    new-instance v5, Lcom/braze/storage/e0$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lcom/braze/storage/e0$$ExternalSyntheticLambda7;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v9

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v10

    .line 526
    :cond_0
    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/braze/storage/e0;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 527
    invoke-virtual {p0}, Lcom/braze/storage/e0;->i()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 528
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lcom/braze/managers/o0;)V
    .locals 9

    const-string v1, "sdkDebugConfig"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 461
    :try_start_0
    iget-object v2, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v2, :cond_0

    .line 462
    iget-boolean v3, p1, Lcom/braze/managers/o0;->a:Z

    .line 463
    iput-boolean v3, v2, Lcom/braze/models/response/m;->y:Z

    :cond_0
    if-eqz v2, :cond_1

    .line 464
    iget-wide v3, p1, Lcom/braze/managers/o0;->d:J

    .line 465
    iput-wide v3, v2, Lcom/braze/models/response/m;->B:J

    :cond_1
    if-eqz v2, :cond_2

    .line 467
    iget-wide v3, p1, Lcom/braze/managers/o0;->e:J

    .line 468
    iput-wide v3, v2, Lcom/braze/models/response/m;->C:J

    :cond_2
    if-eqz v2, :cond_3

    .line 470
    iget-wide v3, p1, Lcom/braze/managers/o0;->f:J

    .line 471
    iput-wide v3, v2, Lcom/braze/models/response/m;->D:J

    .line 472
    :cond_3
    iget-object v3, p1, Lcom/braze/managers/o0;->c:Ljava/lang/String;

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 473
    iput-object v3, v2, Lcom/braze/models/response/m;->z:Ljava/lang/String;

    .line 474
    :cond_4
    iget-object v0, p1, Lcom/braze/managers/o0;->b:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 475
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 476
    iget-object v0, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v0, :cond_5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 477
    iput-object v2, v0, Lcom/braze/models/response/m;->A:Ljava/lang/Long;

    .line 478
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :cond_6
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 496
    :try_start_1
    iget-object v0, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v0, :cond_8

    .line 497
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 499
    const-string v2, "sdk_debugger_enabled"

    .line 500
    iget-boolean v3, v0, Lcom/braze/models/response/m;->y:Z

    .line 501
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 502
    const-string v3, "sdk_debugger_authorization_code"

    .line 503
    iget-object v4, v0, Lcom/braze/models/response/m;->z:Ljava/lang/String;

    .line 504
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 505
    const-string v3, "sdk_debugger_flush_interval_bytes"

    .line 506
    iget-wide v4, v0, Lcom/braze/models/response/m;->B:J

    .line 507
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 508
    const-string v3, "sdk_debugger_flush_interval_seconds"

    .line 509
    iget-wide v4, v0, Lcom/braze/models/response/m;->C:J

    .line 510
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 511
    const-string v3, "sdk_debugger_max_payload_bytes"

    .line 512
    iget-wide v4, v0, Lcom/braze/models/response/m;->D:J

    .line 513
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 514
    iget-object v0, v0, Lcom/braze/models/response/m;->A:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 515
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 516
    const-string v0, "sdk_debugger_expiration_time"

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 518
    :cond_7
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 519
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/storage/e0$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/braze/storage/e0$$ExternalSyntheticLambda3;-><init>()V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 520
    :cond_8
    :goto_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/storage/e0$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/braze/storage/e0$$ExternalSyntheticLambda4;-><init>(Lcom/braze/storage/e0;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 521
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final a(Lcom/braze/models/response/m;)V
    .locals 10

    const-string v0, "serverConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v9, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    .line 4
    iput-object p1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    .line 5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 13
    iget-object v1, p1, Lcom/braze/models/response/m;->b:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 14
    const-string v1, "blacklisted_events"

    .line 15
    new-instance v2, Lorg/json/JSONArray;

    .line 16
    iget-object v3, p1, Lcom/braze/models/response/m;->b:Ljava/util/Set;

    .line 17
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    :cond_0
    iget-object v1, p1, Lcom/braze/models/response/m;->c:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 20
    const-string v1, "blacklisted_attributes"

    .line 21
    new-instance v2, Lorg/json/JSONArray;

    .line 22
    iget-object v3, p1, Lcom/braze/models/response/m;->c:Ljava/util/Set;

    .line 23
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    :cond_1
    iget-object v1, p1, Lcom/braze/models/response/m;->d:Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 26
    const-string v1, "blacklisted_purchases"

    .line 27
    new-instance v2, Lorg/json/JSONArray;

    .line 28
    iget-object v3, p1, Lcom/braze/models/response/m;->d:Ljava/util/Set;

    .line 29
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    :cond_2
    iget-object v1, p1, Lcom/braze/models/response/m;->E:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 32
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 33
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 342
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/braze/requests/m;

    .line 343
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/braze/models/response/j;

    if-nez v5, :cond_3

    goto :goto_0

    .line 344
    :cond_3
    iget v6, v5, Lcom/braze/models/response/j;->a:I

    .line 345
    iget v5, v5, Lcom/braze/models/response/j;->b:I

    .line 346
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 347
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 348
    const-string v8, "refill"

    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    .line 349
    const-string v7, "capacity"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    .line 350
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 357
    :cond_4
    const-string v1, "global_req_rate_limit_endpoint_overrides"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 360
    :cond_5
    const-string v1, "config_time"

    .line 361
    iget-wide v2, p1, Lcom/braze/models/response/m;->a:J

    .line 362
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 363
    const-string v2, "geofences_min_time_since_last_request"

    .line 364
    iget v3, p1, Lcom/braze/models/response/m;->e:I

    .line 365
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 366
    const-string v2, "geofences_min_time_since_last_report"

    .line 367
    iget v3, p1, Lcom/braze/models/response/m;->f:I

    .line 368
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 369
    const-string v2, "geofences_max_num_to_register"

    .line 370
    iget v3, p1, Lcom/braze/models/response/m;->g:I

    .line 371
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 372
    const-string v2, "geofences_enabled"

    .line 373
    iget-boolean v3, p1, Lcom/braze/models/response/m;->i:Z

    .line 374
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 375
    const-string v2, "geofences_enabled_set"

    .line 376
    iget-boolean v3, p1, Lcom/braze/models/response/m;->h:Z

    .line 377
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 378
    const-string v2, "messaging_session_timeout"

    .line 379
    iget-wide v3, p1, Lcom/braze/models/response/m;->k:J

    .line 380
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 381
    const-string v2, "ephemeral_events_enabled"

    .line 382
    iget-boolean v3, p1, Lcom/braze/models/response/m;->l:Z

    .line 383
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 384
    const-string v2, "feature_flags_enabled"

    .line 385
    iget-boolean v3, p1, Lcom/braze/models/response/m;->m:Z

    .line 386
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 387
    const-string v2, "feature_flags_refresh_rate_limit"

    .line 388
    iget v3, p1, Lcom/braze/models/response/m;->n:I

    .line 389
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 391
    const-string v2, "content_cards_enabled"

    .line 392
    iget-boolean v3, p1, Lcom/braze/models/response/m;->j:Z

    .line 393
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 397
    const-string v2, "push_max_enabled"

    .line 398
    iget-boolean v3, p1, Lcom/braze/models/response/m;->o:Z

    .line 399
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 400
    const-string v2, "push_max_redeliver_buffer"

    .line 401
    iget-wide v3, p1, Lcom/braze/models/response/m;->p:J

    .line 402
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 403
    const-string v2, "dust_enabled"

    .line 404
    iget-boolean v3, p1, Lcom/braze/models/response/m;->t:Z

    .line 405
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 406
    const-string v2, "global_req_rate_limit_enabled"

    .line 407
    iget-boolean v3, p1, Lcom/braze/models/response/m;->q:Z

    .line 408
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 409
    const-string v2, "global_req_rate_capacity"

    .line 410
    iget v3, p1, Lcom/braze/models/response/m;->s:I

    .line 411
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 412
    const-string v2, "global_req_rate_refill_rate"

    .line 413
    iget v3, p1, Lcom/braze/models/response/m;->r:I

    .line 414
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 415
    const-string v2, "push_max_redeliver_dedupe_buffer"

    .line 416
    iget-wide v3, p1, Lcom/braze/models/response/m;->u:J

    .line 417
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 418
    const-string v2, "default_backoff_scale_factor"

    .line 419
    iget v3, p1, Lcom/braze/models/response/m;->x:I

    .line 420
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 421
    const-string v2, "default_backoff_min_sleep_duration__ms"

    .line 422
    iget v3, p1, Lcom/braze/models/response/m;->v:I

    .line 423
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 424
    const-string v2, "default_backoff_max_sleep_duration_ms"

    .line 425
    iget v3, p1, Lcom/braze/models/response/m;->w:I

    .line 426
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 427
    const-string v2, "sdk_debugger_enabled"

    .line 428
    iget-boolean v3, p1, Lcom/braze/models/response/m;->y:Z

    .line 429
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 430
    const-string v2, "sdk_debugger_authorization_code"

    .line 431
    iget-object v3, p1, Lcom/braze/models/response/m;->z:Ljava/lang/String;

    .line 432
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 433
    const-string v2, "sdk_debugger_flush_interval_bytes"

    .line 434
    iget-wide v3, p1, Lcom/braze/models/response/m;->B:J

    .line 435
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 436
    const-string v2, "sdk_debugger_flush_interval_seconds"

    .line 437
    iget-wide v3, p1, Lcom/braze/models/response/m;->C:J

    .line 438
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 439
    const-string v2, "sdk_debugger_max_payload_bytes"

    .line 440
    iget-wide v3, p1, Lcom/braze/models/response/m;->D:J

    .line 441
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 442
    const-string v2, "banners_enabled"

    .line 443
    iget-boolean v3, p1, Lcom/braze/models/response/m;->F:Z

    .line 444
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 445
    const-string v2, "max_banner_placements"

    .line 446
    iget v3, p1, Lcom/braze/models/response/m;->G:I

    .line 447
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 448
    iget-object v1, p1, Lcom/braze/models/response/m;->A:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 449
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 450
    const-string v3, "sdk_debugger_expiration_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 452
    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 453
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/storage/e0$$ExternalSyntheticLambda8;

    invoke-direct {v6}, Lcom/braze/storage/e0$$ExternalSyntheticLambda8;-><init>()V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 454
    :goto_1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/storage/e0$$ExternalSyntheticLambda9;

    invoke-direct {v6, p1}, Lcom/braze/storage/e0$$ExternalSyntheticLambda9;-><init>(Lcom/braze/models/response/m;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    if-eqz v9, :cond_8

    .line 455
    iget-wide v1, p1, Lcom/braze/models/response/m;->a:J

    .line 456
    iget-wide v3, v9, Lcom/braze/models/response/m;->a:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    .line 457
    iget-object v0, p0, Lcom/braze/storage/e0;->a:Lcom/braze/events/d;

    new-instance v1, Lcom/braze/events/internal/d;

    invoke-direct {v1, v9, p1}, Lcom/braze/events/internal/d;-><init>(Lcom/braze/models/response/m;Lcom/braze/models/response/m;)V

    const-class v2, Lcom/braze/events/internal/d;

    invoke-virtual {v0, v1, v2}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_2

    .line 458
    :cond_7
    new-instance v6, Lcom/braze/storage/e0$$ExternalSyntheticLambda10;

    invoke-direct {v6}, Lcom/braze/storage/e0$$ExternalSyntheticLambda10;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_8
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 459
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, v1, Lcom/braze/models/response/m;->F:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "banners_enabled"

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final e()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/braze/models/response/m;->c:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 4
    :cond_0
    const-string v1, "blacklisted_attributes"

    invoke-virtual {p0, v1}, Lcom/braze/storage/e0;->a(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public final f()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/braze/models/response/m;->b:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 4
    :cond_0
    const-string v1, "blacklisted_events"

    invoke-virtual {p0, v1}, Lcom/braze/storage/e0;->a(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public final g()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/braze/models/response/m;->d:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 4
    :cond_0
    const-string v1, "blacklisted_purchases"

    invoke-virtual {p0, v1}, Lcom/braze/storage/e0;->a(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public final i()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-wide v1, v1, Lcom/braze/models/response/m;->a:J

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    const-string v2, "config_time"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final j()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget v1, v1, Lcom/braze/models/response/m;->w:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "default_backoff_max_sleep_duration_ms"

    .line 6
    sget v3, Lcom/braze/storage/e0;->g:I

    .line 7
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final k()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget v1, v1, Lcom/braze/models/response/m;->v:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "default_backoff_min_sleep_duration__ms"

    .line 6
    sget v3, Lcom/braze/storage/e0;->f:I

    .line 7
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final l()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget v1, v1, Lcom/braze/models/response/m;->x:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "default_backoff_scale_factor"

    const/4 v3, 0x3

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final m()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget v1, v1, Lcom/braze/models/response/m;->n:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "feature_flags_refresh_rate_limit"

    const/4 v3, -0x1

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final n()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget v1, v1, Lcom/braze/models/response/m;->s:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "global_req_rate_capacity"

    const/16 v3, 0x1e

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final o()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget v1, v1, Lcom/braze/models/response/m;->r:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "global_req_rate_refill_rate"

    const/16 v3, 0x1e

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final p()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget v1, v1, Lcom/braze/models/response/m;->G:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "max_banner_placements"

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final q()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget v1, v1, Lcom/braze/models/response/m;->g:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "geofences_max_num_to_register"

    const/4 v3, -0x1

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final r()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-wide v1, v1, Lcom/braze/models/response/m;->k:J

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "messaging_session_timeout"

    const-wide/16 v3, -0x1

    .line 6
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final s()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget v1, v1, Lcom/braze/models/response/m;->f:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "geofences_min_time_since_last_report"

    const/4 v3, -0x1

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final t()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget v1, v1, Lcom/braze/models/response/m;->e:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "geofences_min_time_since_last_request"

    const/4 v3, -0x1

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final u()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-wide v1, v1, Lcom/braze/models/response/m;->p:J

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "push_max_redeliver_buffer"

    const-wide/32 v3, 0x15180

    .line 6
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final v()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-wide v1, v1, Lcom/braze/models/response/m;->u:J

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "push_max_redeliver_dedupe_buffer"

    const-wide/16 v3, -0x1

    .line 6
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final w()Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    const-string v2, "global_req_rate_limit_endpoint_overrides"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v3, "keys(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 149
    sget-object v4, Lcom/braze/requests/m;->b:Lcom/braze/requests/l;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcom/braze/requests/l;->a(Ljava/lang/String;)Lcom/braze/requests/m;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 151
    const-string v5, "refill"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 152
    const-string v6, "capacity"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 154
    new-instance v6, Lcom/braze/models/response/j;

    invoke-direct {v6, v3, v5}, Lcom/braze/models/response/j;-><init>(II)V

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v5, v1

    .line 155
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/storage/e0$$ExternalSyntheticLambda5;

    invoke-direct {v7}, Lcom/braze/storage/e0$$ExternalSyntheticLambda5;-><init>()V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/braze/models/response/m;->z:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "sdk_debugger_authorization_code"

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final z()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/braze/models/response/m;->A:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/braze/storage/e0;->b:Landroid/content/SharedPreferences;

    .line 6
    const-string v2, "sdk_debugger_expiration_time"

    const-wide/16 v3, -0x1

    .line 7
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

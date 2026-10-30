.class public Lcom/microsoft/xal/logging/XalLogger;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xal/logging/XalLogger$LogLevel;
    }
.end annotation


# static fields
.field private static final LogDateFormat:Ljava/text/SimpleDateFormat;

.field private static final TAG:Ljava/lang/String; = "XALJAVA"


# instance fields
.field private m_leastVerboseLevel:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

.field private final m_logs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xal/logging/LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final m_subArea:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/xal/logging/XalLogger;->LogDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xal/logging/XalLogger;->m_logs:Ljava/util/ArrayList;

    .line 23
    sget-object v0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->Verbose:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    iput-object v0, p0, Lcom/microsoft/xal/logging/XalLogger;->m_leastVerboseLevel:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    .line 26
    iput-object p1, p0, Lcom/microsoft/xal/logging/XalLogger;->m_subArea:Ljava/lang/String;

    .line 27
    const-string p1, "XalLogger created."

    invoke-virtual {p0, p1}, Lcom/microsoft/xal/logging/XalLogger;->Verbose(Ljava/lang/String;)V

    return-void
.end method

.method private Timestamp()Ljava/lang/String;
    .locals 2

    .line 82
    sget-object v0, Lcom/microsoft/xal/logging/XalLogger;->LogDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeLogBatch(I[Lcom/microsoft/xal/logging/LogEntry;)V
.end method


# virtual methods
.method public Error(Ljava/lang/String;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/microsoft/xal/logging/XalLogger;->m_subArea:Ljava/lang/String;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[%s] %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XALJAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->Error:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xal/logging/XalLogger;->Log(Lcom/microsoft/xal/logging/XalLogger$LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized Flush()V
    .locals 4

    const-string v0, "Failed to flush logs: "

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xal/logging/XalLogger;->m_logs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 39
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/xal/logging/XalLogger;->m_leastVerboseLevel:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    invoke-virtual {v1}, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->ToInt()I

    move-result v1

    iget-object v2, p0, Lcom/microsoft/xal/logging/XalLogger;->m_logs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/microsoft/xal/logging/LogEntry;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/microsoft/xal/logging/LogEntry;

    invoke-static {v1, v2}, Lcom/microsoft/xal/logging/XalLogger;->nativeLogBatch(I[Lcom/microsoft/xal/logging/LogEntry;)V

    .line 40
    iget-object v1, p0, Lcom/microsoft/xal/logging/XalLogger;->m_logs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 41
    sget-object v1, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->Verbose:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    iput-object v1, p0, Lcom/microsoft/xal/logging/XalLogger;->m_leastVerboseLevel:Lcom/microsoft/xal/logging/XalLogger$LogLevel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 43
    :goto_0
    :try_start_2
    const-string v2, "XALJAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Important(Ljava/lang/String;)V
    .locals 2

    .line 66
    sget-object v0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->Important:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    invoke-virtual {v0}, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->ToChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xal/logging/XalLogger;->m_subArea:Ljava/lang/String;

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[%c][%s] %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XALJAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->Important:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xal/logging/XalLogger;->Log(Lcom/microsoft/xal/logging/XalLogger$LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public Information(Ljava/lang/String;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/microsoft/xal/logging/XalLogger;->m_subArea:Ljava/lang/String;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[%s] %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XALJAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->Information:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xal/logging/XalLogger;->Log(Lcom/microsoft/xal/logging/XalLogger$LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized Log(Lcom/microsoft/xal/logging/XalLogger$LogLevel;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xal/logging/XalLogger;->m_logs:Ljava/util/ArrayList;

    new-instance v1, Lcom/microsoft/xal/logging/LogEntry;

    const-string v2, "[%c][%s][%s] %s"

    invoke-virtual {p1}, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->ToChar()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {p0}, Lcom/microsoft/xal/logging/XalLogger;->Timestamp()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/microsoft/xal/logging/XalLogger;->m_subArea:Ljava/lang/String;

    filled-new-array {v3, v4, v5, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/microsoft/xal/logging/LogEntry;-><init>(Lcom/microsoft/xal/logging/XalLogger$LogLevel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p2, p0, Lcom/microsoft/xal/logging/XalLogger;->m_leastVerboseLevel:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    invoke-virtual {p2}, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->ToInt()I

    move-result p2

    invoke-virtual {p1}, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->ToInt()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 51
    iput-object p1, p0, Lcom/microsoft/xal/logging/XalLogger;->m_leastVerboseLevel:Lcom/microsoft/xal/logging/XalLogger$LogLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public Verbose(Ljava/lang/String;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/microsoft/xal/logging/XalLogger;->m_subArea:Ljava/lang/String;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[%s] %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XALJAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->Verbose:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xal/logging/XalLogger;->Log(Lcom/microsoft/xal/logging/XalLogger$LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public Warning(Ljava/lang/String;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/microsoft/xal/logging/XalLogger;->m_subArea:Ljava/lang/String;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[%s] %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XALJAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->Warning:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xal/logging/XalLogger;->Log(Lcom/microsoft/xal/logging/XalLogger$LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    return-void
.end method

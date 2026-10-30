.class public final synthetic Lcom/microsoft/xbox/toolkit/network/XLEThreadPool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic f$0:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool$$ExternalSyntheticLambda0;->f$0:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    iput p2, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool$$ExternalSyntheticLambda0;->f$0:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    iget v1, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->$r8$lambda$rbn89O6SZuFL9B95541mJO12G3Q(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;ILjava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method

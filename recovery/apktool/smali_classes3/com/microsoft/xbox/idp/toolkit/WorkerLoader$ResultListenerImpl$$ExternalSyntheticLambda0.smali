.class public final synthetic Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;ZLjava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;

    iput-boolean p2, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;

    iget-boolean v1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->$r8$lambda$AOne8ZiO4E2tXlUq5S9TRjRpkjY(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;ZLjava/lang/Object;)V

    return-void
.end method

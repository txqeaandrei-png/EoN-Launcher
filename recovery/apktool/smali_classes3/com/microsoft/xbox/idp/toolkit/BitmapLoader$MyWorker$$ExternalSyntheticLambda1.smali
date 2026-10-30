.class public final synthetic Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

.field public final synthetic f$1:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$$ExternalSyntheticLambda1;->f$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$$ExternalSyntheticLambda1;->f$1:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$$ExternalSyntheticLambda1;->f$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$$ExternalSyntheticLambda1;->f$1:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->$r8$lambda$Twn9Eul-0hZhj4b30DPCyQPrE_8(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V

    return-void
.end method

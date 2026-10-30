.class public final synthetic Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# instance fields
.field public final synthetic f$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

.field public final synthetic f$1:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$$ExternalSyntheticLambda0;->f$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$$ExternalSyntheticLambda0;->f$1:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    return-void
.end method


# virtual methods
.method public final processResponse(ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$$ExternalSyntheticLambda0;->f$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$$ExternalSyntheticLambda0;->f$1:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->$r8$lambda$1sb26sdgGi5XuIQEP8UlOkBbsNI(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V

    return-void
.end method

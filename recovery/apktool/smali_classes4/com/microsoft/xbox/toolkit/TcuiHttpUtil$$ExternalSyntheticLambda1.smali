.class public final synthetic Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final processResponse(ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->lambda$getResponseSyncSucceeded$1(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V

    return-void
.end method

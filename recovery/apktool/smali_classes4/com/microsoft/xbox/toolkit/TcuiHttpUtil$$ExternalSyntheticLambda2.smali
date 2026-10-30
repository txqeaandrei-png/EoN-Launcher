.class public final synthetic Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final processResponse(ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->lambda$getResponseBodySync$2(Ljava/util/concurrent/atomic/AtomicReference;ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V

    return-void
.end method

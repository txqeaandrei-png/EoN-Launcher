.class public final synthetic Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$1:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$$ExternalSyntheticLambda0;->f$1:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    return-void
.end method


# virtual methods
.method public final processResponse(ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$$ExternalSyntheticLambda0;->f$1:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->lambda$addUserToFollowingList$0(Ljava/util/concurrent/atomic/AtomicReference;Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V

    return-void
.end method

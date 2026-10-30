.class public Lcom/microsoft/xbox/service/model/sls/UserPresenceBatchRequest;
.super Ljava/lang/Object;


# instance fields
.field public level:Ljava/lang/String;

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "all"

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserPresenceBatchRequest;->level:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/sls/UserPresenceBatchRequest;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static getUserPresenceBatchRequestBody(Lcom/microsoft/xbox/service/model/sls/UserPresenceBatchRequest;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

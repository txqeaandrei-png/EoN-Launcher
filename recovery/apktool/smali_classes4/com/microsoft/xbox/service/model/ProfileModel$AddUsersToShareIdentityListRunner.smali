.class Lcom/microsoft/xbox/service/model/ProfileModel$AddUsersToShareIdentityListRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/ProfileModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddUsersToShareIdentityListRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final caller:Lcom/microsoft/xbox/service/model/ProfileModel;

.field final synthetic this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private final userIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/service/model/ProfileModel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 940
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$AddUsersToShareIdentityListRunner;->this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    .line 941
    iput-object p2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$AddUsersToShareIdentityListRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 942
    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$AddUsersToShareIdentityListRunner;->userIds:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public buildData()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 953
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$AddUsersToShareIdentityListRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    iget-object v1, v1, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    new-instance v2, Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;

    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$AddUsersToShareIdentityListRunner;->userIds:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v2}, Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;->getAddShareIdentityRequestBody(Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->addFriendToShareIdentitySetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 936
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ProfileModel$AddUsersToShareIdentityListRunner;->buildData()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    const-wide/32 v0, 0x9c6b

    return-wide v0
.end method

.method public onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 957
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel$AddUsersToShareIdentityListRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$AddUsersToShareIdentityListRunner;->userIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->onAddUserToShareIdentityCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    return-void
.end method

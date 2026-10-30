.class Lcom/microsoft/xbox/idp/services/EndpointsDnet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/microsoft/xbox/idp/services/Endpoints;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accounts()Ljava/lang/String;
    .locals 1

    .line 14
    const-string v0, "https://accounts.dnet.xboxlive.com"

    return-object v0
.end method

.method public privacy()Ljava/lang/String;
    .locals 1

    .line 18
    const-string v0, "https://privacy.dnet.xboxlive.com"

    return-object v0
.end method

.method public profile()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "https://profile.dnet.xboxlive.com"

    return-object v0
.end method

.method public userAccount()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "https://accountstroubleshooter.dnet.xboxlive.com"

    return-object v0
.end method

.method public userManagement()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "https://user.mgt.dnet.xboxlive.com"

    return-object v0
.end method

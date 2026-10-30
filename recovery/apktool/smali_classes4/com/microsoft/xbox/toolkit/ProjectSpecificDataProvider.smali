.class public Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;


# static fields
.field private static final instance:Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;


# instance fields
.field private provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->instance:Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkProvider()V
    .locals 0

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;
    .locals 1

    .line 14
    sget-object v0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->instance:Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    return-object v0
.end method


# virtual methods
.method public getAllowExplicitContent()Z
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 101
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getAllowExplicitContent()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoSuggestdDataSource()Ljava/lang/String;
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 110
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getAutoSuggestdDataSource()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCombinedContentRating()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 35
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getCombinedContentRating()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectedLocale()Ljava/lang/String;
    .locals 1

    .line 198
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 199
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getConnectedLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectedLocale(Z)Ljava/lang/String;
    .locals 1

    .line 207
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 208
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getConnectedLocale(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentRestrictions()Ljava/lang/String;
    .locals 1

    .line 225
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 226
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getContentRestrictions()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentSandboxID()Ljava/lang/String;
    .locals 1

    .line 180
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 181
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getCurrentSandboxID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInitializeComplete()Z
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 119
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getInitializeComplete()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsForXboxOne()Z
    .locals 1

    .line 171
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 172
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getIsForXboxOne()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsFreeAccount()Z
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 128
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getIsFreeAccount()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getIsXboxMusicSupported()Z
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 137
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getIsXboxMusicSupported()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLegalLocale()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 26
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getLegalLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMembershipLevel()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 44
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getMembershipLevel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivileges()Ljava/lang/String;
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 87
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getPrivileges()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 234
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 235
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSCDRpsTicket()Ljava/lang/String;
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 70
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getSCDRpsTicket()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersionCheckUrl()Ljava/lang/String;
    .locals 1

    .line 154
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 155
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getVersionCheckUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 216
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 217
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getVersionCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowsLiveClientId()Ljava/lang/String;
    .locals 1

    .line 145
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 146
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getWindowsLiveClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXuidString()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 53
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeviceLocaleKnown()Z
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 190
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->isDeviceLocaleKnown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetModels(Z)V
    .locals 1

    .line 163
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 164
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->resetModels(Z)V

    :cond_0
    return-void
.end method

.method public setPrivileges(Ljava/lang/String;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 93
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->setPrivileges(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setProvider(Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    return-void
.end method

.method public setSCDRpsTicket(Ljava/lang/String;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 79
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->setSCDRpsTicket(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setXuidString(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 62
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->setXuidString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

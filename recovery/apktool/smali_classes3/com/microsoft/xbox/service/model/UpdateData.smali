.class public final Lcom/microsoft/xbox/service/model/UpdateData;
.super Ljava/lang/Object;


# instance fields
.field private final extra:Landroid/os/Bundle;

.field private final isFinal:Z

.field private final updateType:Lcom/microsoft/xbox/service/model/UpdateType;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/UpdateData;->updateType:Lcom/microsoft/xbox/service/model/UpdateType;

    .line 18
    iput-boolean p2, p0, Lcom/microsoft/xbox/service/model/UpdateData;->isFinal:Z

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/UpdateData;->extra:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/service/model/UpdateType;ZLandroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/UpdateData;->updateType:Lcom/microsoft/xbox/service/model/UpdateType;

    .line 24
    iput-boolean p2, p0, Lcom/microsoft/xbox/service/model/UpdateData;->isFinal:Z

    .line 25
    iput-object p3, p0, Lcom/microsoft/xbox/service/model/UpdateData;->extra:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getExtra()Landroid/os/Bundle;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/UpdateData;->extra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIsFinal()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/microsoft/xbox/service/model/UpdateData;->isFinal:Z

    return v0
.end method

.method public getUpdateType()Lcom/microsoft/xbox/service/model/UpdateType;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/UpdateData;->updateType:Lcom/microsoft/xbox/service/model/UpdateType;

    return-object v0
.end method

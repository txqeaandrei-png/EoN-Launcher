.class public Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;
.super Ljava/lang/Object;


# instance fields
.field private final errorResourceId:I

.field private final loadingResourceId:I

.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1, v0, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;-><init>(Ljava/net/URI;II)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;II)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    .line 18
    iput p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    .line 19
    iput p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 49
    :cond_1
    instance-of v2, p1, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;

    if-nez v2, :cond_2

    return v0

    .line 52
    :cond_2
    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;

    .line 53
    iget v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    iget v3, p1, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    iget v3, p1, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    if-eq v2, v3, :cond_3

    goto :goto_0

    .line 56
    :cond_3
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    .line 57
    iget-object p1, p1, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    if-eq v2, p1, :cond_4

    if-eqz v2, :cond_5

    .line 58
    invoke-virtual {v2, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    :goto_0
    return v0
.end method

.method public getErrorResourceId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    return v0
.end method

.method public getLoadingResourceId()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    return v0
.end method

.method public getTextureBindingOption()Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;
    .locals 7

    .line 39
    new-instance v6, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    iget v4, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIIIZ)V

    return-object v6
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 62
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    add-int/2addr v0, v1

    .line 63
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x17

    .line 64
    invoke-virtual {v1}, Ljava/net/URI;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

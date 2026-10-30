.class public Lcom/microsoft/xbox/service/network/managers/HttpDeleteWithRequestBody;
.super Lorg/apache/http/client/methods/HttpPost;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "DELETE"

    return-object v0
.end method

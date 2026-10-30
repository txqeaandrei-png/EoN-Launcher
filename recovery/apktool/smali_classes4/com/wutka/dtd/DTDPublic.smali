.class public Lcom/wutka/dtd/DTDPublic;
.super Lcom/wutka/dtd/DTDExternalID;


# instance fields
.field public pub:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/wutka/dtd/DTDExternalID;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 37
    :cond_0
    instance-of v1, p1, Lcom/wutka/dtd/DTDPublic;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 39
    :cond_1
    invoke-super {p0, p1}, Lcom/wutka/dtd/DTDExternalID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 41
    :cond_2
    check-cast p1, Lcom/wutka/dtd/DTDPublic;

    .line 43
    iget-object v1, p0, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 45
    iget-object p1, p1, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    if-eqz p1, :cond_4

    return v2

    .line 49
    :cond_3
    iget-object p1, p1, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getPub()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    return-object v0
.end method

.method public setPub(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    const-string v0, "PUBLIC \""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28
    const-string v1, " \""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

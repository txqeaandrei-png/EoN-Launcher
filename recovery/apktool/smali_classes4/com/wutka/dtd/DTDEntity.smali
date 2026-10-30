.class public Lcom/wutka/dtd/DTDEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field public defaultLocation:Ljava/lang/Object;

.field public externalID:Lcom/wutka/dtd/DTDExternalID;

.field public isParsed:Z

.field public name:Ljava/lang/String;

.field public ndata:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/wutka/dtd/DTDEntity;->defaultLocation:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 146
    :cond_0
    instance-of v1, p1, Lcom/wutka/dtd/DTDEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 148
    :cond_1
    check-cast p1, Lcom/wutka/dtd/DTDEntity;

    .line 150
    iget-object v1, p0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 152
    iget-object v1, p1, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    return v2

    .line 156
    :cond_2
    iget-object v3, p1, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 159
    :cond_3
    iget-boolean v1, p0, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    iget-boolean v3, p1, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    if-eq v1, v3, :cond_4

    return v2

    .line 162
    :cond_4
    iget-object v1, p0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 164
    iget-object v1, p1, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    if-eqz v1, :cond_6

    return v2

    .line 168
    :cond_5
    iget-object v3, p1, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 171
    :cond_6
    iget-object v1, p0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-nez v1, :cond_7

    .line 173
    iget-object v1, p1, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-eqz v1, :cond_8

    return v2

    .line 177
    :cond_7
    iget-object v3, p1, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    invoke-virtual {v1, v3}, Lcom/wutka/dtd/DTDExternalID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 180
    :cond_8
    iget-object v1, p0, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 182
    iget-object p1, p1, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    if-eqz p1, :cond_a

    return v2

    .line 186
    :cond_9
    iget-object p1, p1, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public getExternalID()Lcom/wutka/dtd/DTDExternalID;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    iget-object v0, v0, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNdata()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    iget-object v0, v0, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDEntity;->getReader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getReader(Ljava/lang/String;)Ljava/io/Reader;
    .locals 4

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->defaultLocation:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 91
    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Ljava/io/File;

    .line 95
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v1

    .line 100
    :cond_0
    instance-of v0, v0, Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/wutka/dtd/DTDEntity;->defaultLocation:Ljava/lang/Object;

    check-cast v1, Ljava/net/URL;

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 110
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v1

    .line 116
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 127
    :catch_0
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    .line 131
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isParsed()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    return v0
.end method

.method public setExternalID(Lcom/wutka/dtd/DTDExternalID;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    return-void
.end method

.method public setIsParsed(Z)V
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setNdata(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    const-string v0, "<!ENTITY "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    iget-boolean v0, p0, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    if-eqz v0, :cond_0

    .line 42
    const-string v0, " % "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/16 v1, 0x22

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v1, 0x27

    .line 50
    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 51
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDExternalID;->write(Ljava/io/PrintWriter;)V

    .line 57
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 59
    const-string v0, " NDATA "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    :cond_3
    :goto_0
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

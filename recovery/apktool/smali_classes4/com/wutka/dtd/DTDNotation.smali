.class public Lcom/wutka/dtd/DTDNotation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field public externalID:Lcom/wutka/dtd/DTDExternalID;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 38
    :cond_0
    instance-of v1, p1, Lcom/wutka/dtd/DTDNotation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 40
    :cond_1
    check-cast p1, Lcom/wutka/dtd/DTDNotation;

    .line 42
    iget-object v1, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 44
    iget-object v1, p1, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    return v2

    .line 48
    :cond_2
    iget-object v3, p1, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-nez v1, :cond_4

    .line 53
    iget-object p1, p1, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-eqz p1, :cond_5

    return v2

    .line 57
    :cond_4
    iget-object p1, p1, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    invoke-virtual {v1, p1}, Lcom/wutka/dtd/DTDExternalID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getExternalID()Lcom/wutka/dtd/DTDExternalID;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setExternalID(Lcom/wutka/dtd/DTDExternalID;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    const-string v0, "<!NOTATION "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDExternalID;->write(Ljava/io/PrintWriter;)V

    .line 32
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

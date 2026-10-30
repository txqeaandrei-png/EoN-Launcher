.class public Lcom/wutka/dtd/DTDComment;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field public text:Ljava/lang/String;


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
    iput-object p1, p0, Lcom/wutka/dtd/DTDComment;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lcom/wutka/dtd/DTDComment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 42
    :cond_1
    check-cast p1, Lcom/wutka/dtd/DTDComment;

    .line 43
    iget-object v1, p0, Lcom/wutka/dtd/DTDComment;->text:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v3, p1, Lcom/wutka/dtd/DTDComment;->text:Ljava/lang/String;

    if-eqz v3, :cond_2

    return v2

    :cond_2
    if-eqz v1, :cond_3

    .line 44
    iget-object p1, p1, Lcom/wutka/dtd/DTDComment;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/wutka/dtd/DTDComment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/wutka/dtd/DTDComment;->text:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/wutka/dtd/DTDComment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    const-string v0, "<!--"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/wutka/dtd/DTDComment;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

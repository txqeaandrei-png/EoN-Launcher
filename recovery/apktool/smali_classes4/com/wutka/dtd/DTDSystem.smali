.class public Lcom/wutka/dtd/DTDSystem;
.super Lcom/wutka/dtd/DTDExternalID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/wutka/dtd/DTDExternalID;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 31
    :cond_0
    instance-of v0, p1, Lcom/wutka/dtd/DTDSystem;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 33
    :cond_1
    invoke-super {p0, p1}, Lcom/wutka/dtd/DTDExternalID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/wutka/dtd/DTDSystem;->system:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "SYSTEM \""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/wutka/dtd/DTDSystem;->system:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

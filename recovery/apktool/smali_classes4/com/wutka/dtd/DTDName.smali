.class public Lcom/wutka/dtd/DTDName;
.super Lcom/wutka/dtd/DTDItem;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/wutka/dtd/DTDItem;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/wutka/dtd/DTDItem;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 34
    :cond_0
    instance-of v1, p1, Lcom/wutka/dtd/DTDName;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 35
    :cond_1
    invoke-super {p0, p1}, Lcom/wutka/dtd/DTDItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 37
    :cond_2
    check-cast p1, Lcom/wutka/dtd/DTDName;

    .line 39
    iget-object v1, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 41
    iget-object p1, p1, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    if-eqz p1, :cond_4

    return v2

    .line 45
    :cond_3
    iget-object p1, p1, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/wutka/dtd/DTDName;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDCardinal;->write(Ljava/io/PrintWriter;)V

    return-void
.end method

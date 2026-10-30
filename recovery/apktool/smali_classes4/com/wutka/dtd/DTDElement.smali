.class public Lcom/wutka/dtd/DTDElement;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field public attributes:Ljava/util/Hashtable;

.field public content:Lcom/wutka/dtd/DTDItem;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    .line 31
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 78
    :cond_0
    instance-of v1, p1, Lcom/wutka/dtd/DTDElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 80
    :cond_1
    check-cast p1, Lcom/wutka/dtd/DTDElement;

    .line 82
    iget-object v1, p0, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 84
    iget-object v1, p1, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    return v2

    .line 88
    :cond_2
    iget-object v3, p1, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    if-nez v1, :cond_4

    .line 93
    iget-object v1, p1, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    if-eqz v1, :cond_5

    return v2

    .line 97
    :cond_4
    iget-object v3, p1, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 100
    :cond_5
    iget-object v1, p0, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    if-nez v1, :cond_6

    .line 102
    iget-object p1, p1, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    if-eqz p1, :cond_7

    return v2

    .line 106
    :cond_6
    iget-object p1, p1, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    invoke-virtual {v1, p1}, Lcom/wutka/dtd/DTDItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Lcom/wutka/dtd/DTDAttribute;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wutka/dtd/DTDAttribute;

    return-object p1
.end method

.method public getContent()Lcom/wutka/dtd/DTDItem;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Lcom/wutka/dtd/DTDAttribute;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContent(Lcom/wutka/dtd/DTDItem;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    const-string v0, "<!ELEMENT "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDItem;->write(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 48
    :cond_0
    const-string v0, "ANY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    :goto_0
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

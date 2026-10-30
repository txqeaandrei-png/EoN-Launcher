.class public Lcom/wutka/dtd/DTDNotationList;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field protected items:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTDNotationList;->items:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotationList;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 69
    :cond_0
    instance-of v0, p1, Lcom/wutka/dtd/DTDNotationList;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 71
    :cond_1
    check-cast p1, Lcom/wutka/dtd/DTDNotationList;

    .line 72
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotationList;->items:Ljava/util/Vector;

    iget-object p1, p1, Lcom/wutka/dtd/DTDNotationList;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotationList;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItem()[Ljava/lang/String;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDNotationList;->getItems()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItems()[Ljava/lang/String;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotationList;->items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/wutka/dtd/DTDNotationList;->items:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method public getItemsVec()Ljava/util/Vector;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotationList;->items:Ljava/util/Vector;

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotationList;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public setItem(Ljava/lang/String;I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotationList;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public setItem([Ljava/lang/String;)V
    .locals 3

    .line 81
    new-instance v0, Ljava/util/Vector;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/wutka/dtd/DTDNotationList;->items:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 82
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/wutka/dtd/DTDNotationList;->items:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    const-string v0, "NOTATION ( "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDNotationList;->getItemsVec()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x1

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    .line 59
    const-string v1, " | "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_0

    .line 63
    :cond_1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

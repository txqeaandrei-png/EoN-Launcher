.class public Lcom/bea/xml/stream/SubReader;
.super Lcom/bea/xml/stream/ReaderDelegate;


# instance fields
.field private depth:I

.field private open:Z


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/ReaderDelegate;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/bea/xml/stream/SubReader;->depth:I

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/bea/xml/stream/SubReader;->open:Z

    .line 37
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    iput-boolean v0, p0, Lcom/bea/xml/stream/SubReader;->open:Z

    .line 42
    iget p1, p0, Lcom/bea/xml/stream/SubReader;->depth:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bea/xml/stream/SubReader;->depth:I

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string v0, "Unable to instantiate a subReader because the underlying reader was not on a start element."

    invoke-direct {p1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/bea/xml/stream/MXParser;

    invoke-direct {v0}, Lcom/bea/xml/stream/MXParser;-><init>()V

    .line 160
    new-instance v1, Ljava/io/FileReader;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/MXParser;->setInput(Ljava/io/Reader;)V

    .line 161
    invoke-virtual {v0}, Lcom/bea/xml/stream/MXParser;->moveToStartElement()Z

    invoke-virtual {v0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 162
    :goto_0
    invoke-virtual {v0}, Lcom/bea/xml/stream/MXParser;->moveToStartElement()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 163
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "SE->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bea/xml/stream/MXParser;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Lcom/bea/xml/stream/MXParser;->subReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    const/4 v1, 0x1

    .line 165
    invoke-static {p0, v1}, Lcom/bea/xml/stream/SubReader;->sub(Ljavax/xml/stream/XMLStreamReader;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static print(Ljavax/xml/stream/XMLStreamReader;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 145
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "]Sub: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v1

    invoke-static {v1}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 146
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->hasName()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->hasText()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "->["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    :goto_0
    return-void
.end method

.method public static sub(Ljavax/xml/stream/XMLStreamReader;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    :goto_0
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {p0, p1}, Lcom/bea/xml/stream/SubReader;->print(Ljavax/xml/stream/XMLStreamReader;I)V

    .line 154
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->next()I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 68
    iget-boolean v0, p0, Lcom/bea/xml/stream/SubReader;->open:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    invoke-super {p0}, Lcom/bea/xml/stream/ReaderDelegate;->hasNext()Z

    move-result v0

    return v0
.end method

.method public moveToEndElement()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->isEndElement()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 112
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->next()I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public moveToEndElement(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 124
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->moveToEndElement()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->next()I

    goto :goto_0

    :cond_3
    return v0
.end method

.method public moveToEndElement(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/SubReader;->moveToEndElement(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->next()I

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public moveToStartElement()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->isStartElement()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->next()I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public moveToStartElement(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->moveToStartElement()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->next()I

    goto :goto_0

    :cond_3
    return v0
.end method

.method public moveToStartElement(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/SubReader;->moveToStartElement(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->next()I

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public next()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 48
    iget v0, p0, Lcom/bea/xml/stream/SubReader;->depth:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bea/xml/stream/SubReader;->open:Z

    .line 49
    :cond_0
    invoke-super {p0}, Lcom/bea/xml/stream/ReaderDelegate;->next()I

    move-result v0

    .line 50
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/bea/xml/stream/SubReader;->depth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bea/xml/stream/SubReader;->depth:I

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->isEndElement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    iget v1, p0, Lcom/bea/xml/stream/SubReader;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/bea/xml/stream/SubReader;->depth:I

    :cond_2
    return v0
.end method

.method public nextElement()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->next()I

    .line 61
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->isStartElement()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->isEndElement()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/SubReader;->next()I

    goto :goto_0

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/bea/xml/stream/ReaderDelegate;->getEventType()I

    move-result v0

    return v0
.end method

.class public Lcom/bea/xml/stream/XMLEventReaderBase;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/xml/stream/XMLEventReader;
.implements Ljavax/xml/stream/util/XMLEventConsumer;


# instance fields
.field protected allocator:Ljavax/xml/stream/util/XMLEventAllocator;

.field private configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

.field private elementQ:Lcom/bea/xml/stream/util/CircularQueue;

.field private open:Z

.field private reachedEOF:Z

.field protected reader:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/bea/xml/stream/XMLEventAllocatorBase;

    invoke-direct {v0}, Lcom/bea/xml/stream/XMLEventAllocatorBase;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/bea/xml/stream/XMLEventReaderBase;-><init>(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventAllocator;)V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventAllocator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/bea/xml/stream/util/CircularQueue;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/CircularQueue;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->open:Z

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reachedEOF:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 60
    iput-object p1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    .line 61
    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->open:Z

    .line 63
    iput-object p2, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->allocator:Ljavax/xml/stream/util/XMLEventAllocator;

    .line 68
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    .line 69
    iget-object p2, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->allocator:Ljavax/xml/stream/util/XMLEventAllocator;

    invoke-interface {p2, p1}, Ljavax/xml/stream/util/XMLEventAllocator;->allocate(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object p2

    .line 70
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 71
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLEventReaderBase;->add(Ljavax/xml/stream/events/XMLEvent;)V

    :cond_0
    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "XMLEventAllocator may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "XMLStreamReader may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    const-string v0, "javax.xml.stream.XMLInputFactory"

    const-string v1, "com.bea.xml.stream.MXParserFactory"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    const-string v0, "javax.xml.stream.XMLEventFactory"

    const-string v1, "com.bea.xml.stream.EventFactory"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    .line 226
    new-instance v1, Ljava/io/FileReader;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;

    move-result-object p0

    .line 228
    :goto_0
    invoke-interface {p0}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {p0}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 230
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v3

    invoke-static {v3}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljavax/xml/stream/events/XMLEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/util/CircularQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->internal_close()V

    return-void
.end method

.method protected get()Ljavax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/XMLEvent;

    return-object v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 86
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    move-object v2, v1

    check-cast v2, Ljavax/xml/stream/events/Characters;

    invoke-interface {v2}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_0
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    goto :goto_0

    .line 91
    :cond_2
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected Element start"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_3
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of Document"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_4
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Precondition for readText is nextEvent().getTypeEventType() == START_ELEMENT (got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasNext()Z
    .locals 3

    .line 134
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->open:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 137
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return v2

    .line 141
    :cond_2
    iput-boolean v1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->open:Z

    :catch_0
    return v1
.end method

.method protected internal_close()V
    .locals 1

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reachedEOF:Z

    return-void
.end method

.method protected isOpen()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reachedEOF:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected needsMore()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public nextEvent()Ljavax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->needsMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->parseSome()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Attempt to call nextEvent() on a stream with no more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->get()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public nextTag()Ljavax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljavax/xml/stream/events/Characters;

    invoke-interface {v1}, Ljavax/xml/stream/events/Characters;->isWhiteSpace()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected text"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    return-object v0

    .line 110
    :cond_4
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of Document"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parseSome()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 193
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reachedEOF:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->allocator:Ljavax/xml/stream/util/XMLEventAllocator;

    iget-object v1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, v1, p0}, Ljavax/xml/stream/util/XMLEventAllocator;->allocate(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventConsumer;)V

    .line 199
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->allocator:Ljavax/xml/stream/util/XMLEventAllocator;

    iget-object v1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, v1, p0}, Ljavax/xml/stream/util/XMLEventAllocator;->allocate(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventConsumer;)V

    .line 203
    iput-boolean v2, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reachedEOF:Z

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->needsMore()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public peek()Ljavax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/XMLEvent;

    return-object v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->parseSome()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/XMLEvent;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 216
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAllocator(Ljavax/xml/stream/util/XMLEventAllocator;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 80
    iput-object p1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->allocator:Ljavax/xml/stream/util/XMLEventAllocator;

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "XMLEvent Allocator may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConfigurationContext(Lcom/bea/xml/stream/ConfigurationContextBase;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

    return-void
.end method

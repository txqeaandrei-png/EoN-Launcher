.class public Lcom/bea/xml/stream/XMLWriterBase;
.super Lcom/bea/xml/stream/ReaderToWriter;

# interfaces
.implements Ljavax/xml/stream/XMLStreamWriter;


# static fields
.field protected static final DEFAULTNS:Ljava/lang/String; = ""


# instance fields
.field private config:Lcom/bea/xml/stream/ConfigurationContextBase;

.field protected context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

.field private defaultPrefixCount:I

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private isEmpty:Z

.field private isPrefixDefaulting:Z

.field private localNameStack:Lcom/bea/xml/stream/util/Stack;

.field private needToWrite:Ljava/util/HashSet;

.field private prefixStack:Lcom/bea/xml/stream/util/Stack;

.field private setNeedsWritingNs:Ljava/util/HashSet;

.field private startElementOpened:Z

.field private uriStack:Lcom/bea/xml/stream/util/Stack;

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/bea/xml/stream/ReaderToWriter;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->startElementOpened:Z

    .line 42
    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isEmpty:Z

    .line 48
    new-instance v1, Lcom/bea/xml/stream/util/Stack;

    invoke-direct {v1}, Lcom/bea/xml/stream/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->localNameStack:Lcom/bea/xml/stream/util/Stack;

    .line 49
    new-instance v1, Lcom/bea/xml/stream/util/Stack;

    invoke-direct {v1}, Lcom/bea/xml/stream/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->prefixStack:Lcom/bea/xml/stream/util/Stack;

    .line 50
    new-instance v1, Lcom/bea/xml/stream/util/Stack;

    invoke-direct {v1}, Lcom/bea/xml/stream/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->uriStack:Lcom/bea/xml/stream/util/Stack;

    .line 51
    new-instance v1, Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-direct {v1}, Lcom/bea/xml/stream/util/NamespaceContextImpl;-><init>()V

    iput-object v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    .line 55
    iput v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->defaultPrefixCount:I

    .line 526
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->setNeedsWritingNs:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/bea/xml/stream/ReaderToWriter;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->startElementOpened:Z

    .line 42
    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isEmpty:Z

    .line 48
    new-instance v1, Lcom/bea/xml/stream/util/Stack;

    invoke-direct {v1}, Lcom/bea/xml/stream/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->localNameStack:Lcom/bea/xml/stream/util/Stack;

    .line 49
    new-instance v1, Lcom/bea/xml/stream/util/Stack;

    invoke-direct {v1}, Lcom/bea/xml/stream/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->prefixStack:Lcom/bea/xml/stream/util/Stack;

    .line 50
    new-instance v1, Lcom/bea/xml/stream/util/Stack;

    invoke-direct {v1}, Lcom/bea/xml/stream/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->uriStack:Lcom/bea/xml/stream/util/Stack;

    .line 51
    new-instance v1, Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-direct {v1}, Lcom/bea/xml/stream/util/NamespaceContextImpl;-><init>()V

    iput-object v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    .line 55
    iput v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->defaultPrefixCount:I

    .line 526
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->setNeedsWritingNs:Ljava/util/HashSet;

    .line 58
    iput-object p1, p0, Lcom/bea/xml/stream/XMLWriterBase;->writer:Ljava/io/Writer;

    .line 59
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->setWriter(Ljava/io/Writer;)V

    return-void
.end method

.method private clearNeedsWritingNs()V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->setNeedsWritingNs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private flushNamespace()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 317
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isPrefixDefaulting:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    if-nez v0, :cond_0

    goto :goto_1

    .line 318
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 319
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 321
    iget-object v2, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v2, v1}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 326
    invoke-virtual {p0, v2, v1}, Lcom/bea/xml/stream/XMLWriterBase;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Unable to default prefix with uri:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_3
    :goto_1
    return-void
.end method

.method private getPrefixInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 267
    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 711
    invoke-static {}, Lcom/bea/xml/stream/XMLOutputFactoryBase;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object p0

    .line 712
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v2, "javax.xml.stream.isRepairingNamespaces"

    invoke-virtual {p0, v2, v0}, Ljavax/xml/stream/XMLOutputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 713
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "tmp"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v3, "us-ascii"

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0, v0}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p0

    .line 716
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    .line 717
    const-string v0, "c"

    const-string v2, "http://c"

    invoke-interface {p0, v0, v2}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v0, "http://d"

    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    .line 719
    const-string v3, "a"

    invoke-interface {p0, v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v3, "b"

    const-string v4, "blah"

    invoke-interface {p0, v3, v4}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v3, "d"

    invoke-interface {p0, v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v3, "e"

    invoke-interface {p0, v0, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v0, "http://e"

    const-string v3, "f"

    invoke-interface {p0, v0, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v0, "http://f"

    const-string v3, "g"

    invoke-interface {p0, v0, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v0, "chris"

    const-string v3, "fry"

    invoke-interface {p0, v2, v0, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v0, "foo bar foo"

    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 727
    const-string v0, "bad char coming["

    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 730
    new-array v0, v1, [C

    const/16 v1, 0x1024

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 731
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 732
    const-string v0, "]"

    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 733
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 734
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method private needToWrite(Ljava/lang/String;)Z
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 291
    iget-object v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method private needsWritingNs(Ljava/lang/String;)Z
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->setNeedsWritingNs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 533
    iget-object v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->setNeedsWritingNs:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return v0
.end method

.method private openStartElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 243
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->startElementOpened:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartTag()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->startElementOpened:Z

    :goto_0
    return-void
.end method

.method private prepareNamespace(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 298
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isPrefixDefaulting:Z

    if-nez v0, :cond_0

    return-void

    .line 299
    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 300
    :cond_1
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return-void

    .line 304
    :cond_2
    iget v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->defaultPrefixCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->defaultPrefixCount:I

    .line 305
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ns"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->defaultPrefixCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p0, v0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private removeNamespace(Ljava/lang/String;)V
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isPrefixDefaulting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    if-nez v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private slowWriteCharacters([CIIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_7

    add-int v1, v0, p2

    .line 177
    aget-char v1, p1, v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_5

    const/16 v2, 0x26

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    const/16 v3, 0x3b

    .line 195
    const-string v4, "&#"

    if-ge v1, v2, :cond_1

    if-nez p4, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_6

    const/16 v2, 0xa

    if-eq v1, v2, :cond_6

    .line 197
    :cond_0
    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/XMLWriterBase;->write(C)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x7f

    if-le v1, v2, :cond_6

    .line 202
    iget-object v2, p0, Lcom/bea/xml/stream/XMLWriterBase;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v2

    if-nez v2, :cond_6

    .line 204
    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/XMLWriterBase;->write(C)V

    goto :goto_1

    .line 186
    :cond_2
    const-string v1, "&gt;"

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_3
    const-string v1, "&lt;"

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_4
    const-string v1, "&amp;"

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-eqz p4, :cond_6

    .line 190
    const-string v1, "&quot;"

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :cond_6
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(C)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->flush()V

    return-void
.end method

.method protected closeEndTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 419
    const-string v0, ">"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected closeStartElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 217
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->startElementOpened:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartTag()V

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->startElementOpened:Z

    :cond_0
    return-void
.end method

.method protected closeStartTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Lcom/bea/xml/stream/XMLWriterBase;->flushNamespace()V

    .line 231
    invoke-direct {p0}, Lcom/bea/xml/stream/XMLWriterBase;->clearNeedsWritingNs()V

    .line 232
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isEmpty:Z

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "/>"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isEmpty:Z

    goto :goto_0

    .line 237
    :cond_0
    const-string v0, ">"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 459
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getURIInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 274
    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method protected isOpen()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->startElementOpened:Z

    return v0
.end method

.method protected openEndTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 414
    const-string v0, "</"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected openStartTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 283
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-void
.end method

.method public setConfigurationContext(Lcom/bea/xml/stream/ConfigurationContextBase;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/bea/xml/stream/XMLWriterBase;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    .line 75
    invoke-virtual {p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->isPrefixDefaulting()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bea/xml/stream/XMLWriterBase;->isPrefixDefaulting:Z

    return-void
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 667
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite(Ljava/lang/String;)Z

    .line 668
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->bindDefaultNameSpace(Ljava/lang/String;)V

    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 677
    new-instance v0, Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-direct {v0, p1}, Lcom/bea/xml/stream/util/NamespaceContextImpl;-><init>(Ljavax/xml/namespace/NamespaceContext;)V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    return-void

    .line 674
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The namespace  context may not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 659
    invoke-direct {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite(Ljava/lang/String;)Z

    .line 660
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1, p2}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->bindNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 1

    .line 63
    iput-object p1, p0, Lcom/bea/xml/stream/XMLWriterBase;->writer:Ljava/io/Writer;

    .line 64
    invoke-virtual {p0, p0}, Lcom/bea/xml/stream/XMLWriterBase;->setStreamWriter(Ljavax/xml/stream/XMLStreamWriter;)V

    .line 65
    instance-of v0, p1, Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    iput-object p1, p0, Lcom/bea/xml/stream/XMLWriterBase;->encoder:Ljava/nio/charset/CharsetEncoder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/bea/xml/stream/XMLWriterBase;->encoder:Ljava/nio/charset/CharsetEncoder;

    :goto_0
    return-void
.end method

.method protected write(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 94
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected write(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 84
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected write([C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 104
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 114
    new-instance p2, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p2, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 473
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/bea/xml/stream/XMLWriterBase;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->prepareNamespace(Ljava/lang/String;)V

    .line 483
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 484
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/bea/xml/stream/XMLWriterBase;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 485
    const-string p1, "=\""

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/bea/xml/stream/XMLWriterBase;->writeCharactersInternal([CIIZ)V

    .line 487
    const-string p1, "\""

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-void

    .line 481
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "A start element must be written before an attribute"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 496
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    invoke-direct {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->prepareNamespace(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1, p2}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->bindNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0, p1, p2, p3}, Lcom/bea/xml/stream/XMLWriterBase;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 502
    const-string p1, "=\""

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/bea/xml/stream/XMLWriterBase;->writeCharactersInternal([CIIZ)V

    .line 504
    const-string p1, "\""

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-void

    .line 497
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "A start element must be written before an attribute"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 595
    const-string v0, "<![CDATA["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 597
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 598
    :cond_0
    const-string p1, "]]>"

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeCharacters(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 638
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 639
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1, v1}, Lcom/bea/xml/stream/XMLWriterBase;->writeCharactersInternal([CIIZ)V

    return-void
.end method

.method public writeCharacters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 645
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    const/4 v0, 0x0

    .line 646
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bea/xml/stream/XMLWriterBase;->writeCharactersInternal([CIIZ)V

    return-void
.end method

.method protected writeCharactersInternal([CIIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_4

    add-int v1, v0, p2

    .line 136
    aget-char v1, p1, v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2

    const/16 v2, 0x26

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_4

    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    if-nez p4, :cond_4

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_1
    const/16 v2, 0x7f

    if-le v1, v2, :cond_3

    .line 156
    iget-object v2, p0, Lcom/bea/xml/stream/XMLWriterBase;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    if-nez p4, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-ge v0, p3, :cond_5

    .line 163
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bea/xml/stream/XMLWriterBase;->slowWriteCharacters([CIIZ)V

    goto :goto_2

    .line 165
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/bea/xml/stream/XMLWriterBase;->write([CII)V

    :goto_2
    return-void
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 556
    const-string v0, "<!--"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 558
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 559
    :cond_0
    const-string p1, "-->"

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeDTD(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 589
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeDefaultNamespace(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->needsWritingNs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    const-string v1, " xmlns"

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 545
    const-string v1, "=\""

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 547
    const-string v1, "\""

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0, v0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 542
    :cond_1
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string v0, "A start element must be written before the default namespace"

    invoke-direct {p1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeEmptyElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 408
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 384
    invoke-direct {p0}, Lcom/bea/xml/stream/XMLWriterBase;->openStartElement()V

    .line 385
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->prepareNamespace(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isEmpty:Z

    .line 387
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 388
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/bea/xml/stream/XMLWriterBase;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 396
    invoke-direct {p0}, Lcom/bea/xml/stream/XMLWriterBase;->openStartElement()V

    .line 397
    invoke-direct {p0, p3}, Lcom/bea/xml/stream/XMLWriterBase;->prepareNamespace(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 398
    iput-boolean p3, p0, Lcom/bea/xml/stream/XMLWriterBase;->isEmpty:Z

    .line 399
    const-string p3, "<"

    invoke-virtual {p0, p3}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 401
    const-string p1, ":"

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeEndDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 466
    :goto_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->localNameStack:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->writeEndElement()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeEndElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 431
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->prefixStack:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 435
    iget-object v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->localNameStack:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v1}, Lcom/bea/xml/stream/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 436
    iget-object v2, p0, Lcom/bea/xml/stream/XMLWriterBase;->uriStack:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v2}, Lcom/bea/xml/stream/util/Stack;->pop()Ljava/lang/Object;

    .line 438
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->openEndTag()V

    .line 439
    const-string v2, ""

    invoke-virtual {p0, v0, v2, v1}, Lcom/bea/xml/stream/XMLWriterBase;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeEndTag()V

    .line 442
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->closeScope()V

    return-void
.end method

.method public writeEntityRef(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 604
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 605
    const-string v0, "&"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 607
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 253
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    invoke-direct {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->getPrefixInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 255
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 256
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 257
    const-string p2, ":"

    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 259
    :cond_1
    invoke-virtual {p0, p3}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-object p1
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 512
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->needsWritingNs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    const-string v0, " xmlns:"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 519
    const-string v0, "=\""

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 521
    const-string v0, "\""

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0, p1, p2}, Lcom/bea/xml/stream/XMLWriterBase;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 513
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->writeDefaultNamespace(Ljava/lang/String;)V

    return-void

    .line 511
    :cond_3
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "A start element must be written before a namespace"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeProcessingInstruction(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    const/4 v0, 0x0

    .line 566
    invoke-virtual {p0, p1, v0}, Lcom/bea/xml/stream/XMLWriterBase;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 573
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 574
    const-string v0, "<?"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 576
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0x20

    .line 580
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(C)V

    .line 581
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 583
    :cond_1
    const-string p1, "?>"

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 449
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeStartDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 613
    const-string v0, "<?xml version=\'1.0\' encoding=\'utf-8\'?>"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 619
    const-string v0, "<?xml version=\'"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 621
    const-string p1, "\'?>"

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 628
    const-string v0, "<?xml version=\'"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 630
    const-string p2, "\' encoding=\'"

    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 632
    const-string p1, "\'?>"

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->openScope()V

    .line 378
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->openScope()V

    .line 352
    invoke-virtual {p0, p1, p2}, Lcom/bea/xml/stream/XMLWriterBase;->writeStartElementInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->openScope()V

    .line 369
    invoke-direct {p0, p3}, Lcom/bea/xml/stream/XMLWriterBase;->prepareNamespace(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1, p3}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->bindNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0, p3, p2}, Lcom/bea/xml/stream/XMLWriterBase;->writeStartElementInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 367
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The prefix may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The local name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 363
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The namespace URI may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected writeStartElementInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/bea/xml/stream/XMLWriterBase;->openStartElement()V

    .line 341
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->openStartTag()V

    .line 342
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->prepareNamespace(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->prefixStack:Lcom/bea/xml/stream/util/Stack;

    const-string v1, ""

    invoke-virtual {p0, v1, p1, p2}, Lcom/bea/xml/stream/XMLWriterBase;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/util/Stack;->push(Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->localNameStack:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v0, p2}, Lcom/bea/xml/stream/util/Stack;->push(Ljava/lang/Object;)V

    .line 345
    iget-object p2, p0, Lcom/bea/xml/stream/XMLWriterBase;->uriStack:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {p2, p1}, Lcom/bea/xml/stream/util/Stack;->push(Ljava/lang/Object;)V

    return-void

    .line 338
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The local name  may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 336
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The namespace URI may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class public Lcom/bea/xml/stream/events/EntityReferenceEvent;
.super Lcom/bea/xml/stream/events/BaseEvent;

# interfaces
.implements Ljavax/xml/stream/events/EntityReference;


# instance fields
.field private ed:Ljavax/xml/stream/events/EntityDeclaration;

.field private name:Ljava/lang/String;

.field private replacementText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/bea/xml/stream/events/BaseEvent;-><init>()V

    invoke-virtual {p0}, Lcom/bea/xml/stream/events/EntityReferenceEvent;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/bea/xml/stream/events/BaseEvent;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/EntityReferenceEvent;->init()V

    .line 33
    iput-object p1, p0, Lcom/bea/xml/stream/events/EntityReferenceEvent;->name:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/bea/xml/stream/events/EntityReferenceEvent;->ed:Ljavax/xml/stream/events/EntityDeclaration;

    return-void
.end method


# virtual methods
.method protected doWriteAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x26

    .line 65
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 66
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/EntityReferenceEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3b

    .line 67
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclaration()Ljavax/xml/stream/events/EntityDeclaration;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/bea/xml/stream/events/EntityReferenceEvent;->ed:Ljavax/xml/stream/events/EntityDeclaration;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/bea/xml/stream/events/EntityReferenceEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReplacementText()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/bea/xml/stream/events/EntityReferenceEvent;->ed:Ljavax/xml/stream/events/EntityDeclaration;

    invoke-interface {v0}, Ljavax/xml/stream/events/EntityDeclaration;->getReplacementText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected init()V
    .locals 1

    const/16 v0, 0x9

    .line 60
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/events/EntityReferenceEvent;->setEventType(I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/bea/xml/stream/events/EntityReferenceEvent;->name:Ljava/lang/String;

    return-void
.end method

.method public setReplacementText(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/bea/xml/stream/events/EntityReferenceEvent;->replacementText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/EntityReferenceEvent;->getReplacementText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    const-string v0, ""

    .line 77
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bea/xml/stream/events/EntityReferenceEvent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

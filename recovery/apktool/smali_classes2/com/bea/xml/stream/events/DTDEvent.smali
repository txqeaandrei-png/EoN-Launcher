.class public Lcom/bea/xml/stream/events/DTDEvent;
.super Lcom/bea/xml/stream/events/BaseEvent;

# interfaces
.implements Ljavax/xml/stream/events/DTD;


# instance fields
.field private dtd:Ljava/lang/String;

.field private entities:Ljava/util/List;

.field private notations:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/bea/xml/stream/events/BaseEvent;-><init>()V

    invoke-virtual {p0}, Lcom/bea/xml/stream/events/DTDEvent;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/bea/xml/stream/events/BaseEvent;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/DTDEvent;->init()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/events/DTDEvent;->setDTD(Ljava/lang/String;)V

    return-void
.end method

.method public static createEntityDeclaration(Lcom/wutka/dtd/DTDEntity;)Ljavax/xml/stream/events/EntityDeclaration;
    .locals 2

    .line 50
    new-instance v0, Lcom/bea/xml/stream/events/EntityDeclarationEvent;

    invoke-virtual {p0}, Lcom/wutka/dtd/DTDEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wutka/dtd/DTDEntity;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/bea/xml/stream/events/EntityDeclarationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createNotationDeclaration(Lcom/wutka/dtd/DTDNotation;)Ljavax/xml/stream/events/NotationDeclaration;
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDNotation;->getExternalID()Lcom/wutka/dtd/DTDExternalID;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/wutka/dtd/DTDExternalID;->getSystem()Ljava/lang/String;

    move-result-object v1

    .line 57
    instance-of v2, v0, Lcom/wutka/dtd/DTDPublic;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/wutka/dtd/DTDPublic;

    invoke-virtual {v0}, Lcom/wutka/dtd/DTDPublic;->getPub()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    new-instance v2, Lcom/bea/xml/stream/events/NotationDeclarationEvent;

    invoke-virtual {p0}, Lcom/wutka/dtd/DTDNotation;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0, v1}, Lcom/bea/xml/stream/events/NotationDeclarationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method protected doWriteAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    const-string v0, "<!DOCTYPE "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/bea/xml/stream/events/DTDEvent;->dtd:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x5b

    .line 94
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 95
    iget-object v0, p0, Lcom/bea/xml/stream/events/DTDEvent;->dtd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x5d

    .line 96
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_0
    const/16 v0, 0x3e

    .line 98
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public getDocumentTypeDeclaration()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/bea/xml/stream/events/DTDEvent;->dtd:Ljava/lang/String;

    return-object v0
.end method

.method public getEntities()Ljava/util/List;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/bea/xml/stream/events/DTDEvent;->entities:Ljava/util/List;

    return-object v0
.end method

.method public getNotations()Ljava/util/List;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/bea/xml/stream/events/DTDEvent;->notations:Ljava/util/List;

    return-object v0
.end method

.method public getProcessedDTD()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected init()V
    .locals 1

    const/16 v0, 0xb

    .line 46
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/events/DTDEvent;->setEventType(I)V

    return-void
.end method

.method public setDTD(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/bea/xml/stream/events/DTDEvent;->dtd:Ljava/lang/String;

    return-void
.end method

.method public setEntities(Ljava/util/List;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/bea/xml/stream/events/DTDEvent;->entities:Ljava/util/List;

    return-void
.end method

.method public setNotations(Ljava/util/List;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/bea/xml/stream/events/DTDEvent;->notations:Ljava/util/List;

    return-void
.end method

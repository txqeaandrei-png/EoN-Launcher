.class public Lcom/bea/xml/stream/events/CharactersEvent;
.super Lcom/bea/xml/stream/events/BaseEvent;

# interfaces
.implements Ljavax/xml/stream/events/Characters;


# instance fields
.field private data:Ljava/lang/String;

.field private isCData:Z

.field private isIgnorable:Z

.field private isSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/bea/xml/stream/events/BaseEvent;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isCData:Z

    .line 29
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isSpace:Z

    .line 30
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isIgnorable:Z

    .line 33
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/CharactersEvent;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/bea/xml/stream/events/BaseEvent;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isCData:Z

    .line 29
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isSpace:Z

    .line 30
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isIgnorable:Z

    .line 37
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/CharactersEvent;->init()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/events/CharactersEvent;->setData(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/bea/xml/stream/events/BaseEvent;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isCData:Z

    .line 29
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isSpace:Z

    .line 30
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isIgnorable:Z

    .line 42
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/CharactersEvent;->init()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/events/CharactersEvent;->setData(Ljava/lang/String;)V

    .line 44
    iput-boolean p2, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isCData:Z

    return-void
.end method


# virtual methods
.method protected doWriteAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isCData:Z

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "<![CDATA["

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/CharactersEvent;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 73
    const-string v0, "]]>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/CharactersEvent;->getData()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x3e

    const/16 v5, 0x3c

    const/16 v6, 0x26

    if-ge v3, v1, :cond_1

    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v6, :cond_1

    if-eq v7, v5, :cond_1

    if-eq v7, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_2

    .line 93
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-lez v3, :cond_3

    .line 96
    invoke-virtual {p1, v0, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_3
    :goto_1
    if-ge v3, v1, :cond_7

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_6

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_4

    .line 111
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 108
    :cond_4
    const-string v2, "&gt;"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 105
    :cond_5
    const-string v2, "&lt;"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 102
    :cond_6
    const-string v2, "&amp;"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDataAsArray()[C
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->data:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected init()V
    .locals 1

    const/4 v0, 0x4

    .line 58
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/events/CharactersEvent;->setEventType(I)V

    return-void
.end method

.method public isCData()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isCData:Z

    return v0
.end method

.method public isIgnorableWhiteSpace()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isIgnorable:Z

    return v0
.end method

.method public isWhiteSpace()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isSpace:Z

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/bea/xml/stream/events/CharactersEvent;->data:Ljava/lang/String;

    return-void
.end method

.method public setIgnorable(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isIgnorable:Z

    return-void
.end method

.method public setSpace(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isSpace:Z

    return-void
.end method

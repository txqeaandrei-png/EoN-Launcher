.class public Lcom/bea/xml/stream/EventScanner;
.super Ljava/lang/Object;


# instance fields
.field protected currentChar:C

.field protected currentLine:I

.field private readEndDocument:Z

.field protected reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/bea/xml/stream/EventScanner;->currentLine:I

    .line 46
    iput-boolean v0, p0, Lcom/bea/xml/stream/EventScanner;->readEndDocument:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/bea/xml/stream/EventScanner;->currentLine:I

    .line 46
    iput-boolean v0, p0, Lcom/bea/xml/stream/EventScanner;->readEndDocument:Z

    .line 51
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/EventScanner;->setReader(Ljava/io/Reader;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 383
    new-instance v0, Lcom/bea/xml/stream/EventScanner;

    new-instance v1, Ljava/io/FileReader;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventScanner;-><init>(Ljava/io/Reader;)V

    .line 384
    :goto_0
    invoke-virtual {v0}, Lcom/bea/xml/stream/EventScanner;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 385
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventScanner;->readElement()Lcom/bea/xml/stream/EventState;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public endDocumentIsPresent()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/bea/xml/stream/EventScanner;->readEndDocument:Z

    return v0
.end method

.method protected getChar()C
    .locals 1

    .line 82
    iget-char v0, p0, Lcom/bea/xml/stream/EventScanner;->currentChar:C

    return v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 245
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/bea/xml/stream/EventScanner;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bea/xml/stream/EventScanner;->readEndDocument:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected read()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/bea/xml/stream/EventScanner;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/bea/xml/stream/EventScanner;->currentChar:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 94
    iget v1, p0, Lcom/bea/xml/stream/EventScanner;->currentLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bea/xml/stream/EventScanner;->currentLine:I

    :cond_0
    return v0
.end method

.method protected read(C)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-char v0, p0, Lcom/bea/xml/stream/EventScanner;->currentChar:C

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->read()C

    move-result p1

    return p1

    .line 102
    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unexpected character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-char v2, p0, Lcom/bea/xml/stream/EventScanner;->currentChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' , expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\' at line "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget v1, p0, Lcom/bea/xml/stream/EventScanner;->currentLine:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected read(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readAttribute()Ljavax/xml/stream/events/Attribute;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5b

    .line 292
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 293
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    const/16 v0, 0x5d

    .line 294
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 296
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readName()Ljavax/xml/namespace/QName;

    move-result-object v2

    .line 297
    const-string v3, "=["

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/EventScanner;->read(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 300
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 301
    const-string v0, "ATTRIBUTE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Lcom/bea/xml/stream/AttributeBase;

    invoke-direct {v0, v2, v3}, Lcom/bea/xml/stream/AttributeBase;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    return-object v0

    .line 303
    :cond_0
    const-string v0, "DEFAULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    new-instance v0, Lcom/bea/xml/stream/NamespaceBase;

    invoke-direct {v0, v3}, Lcom/bea/xml/stream/NamespaceBase;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 305
    :cond_1
    const-string v0, "NAMESPACE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    new-instance v0, Lcom/bea/xml/stream/NamespaceBase;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/bea/xml/stream/NamespaceBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 308
    :cond_2
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Parser Error expected (ATTRIBUTE||DEFAULT|NAMESPACE"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readAttributes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readAttribute()Ljavax/xml/stream/events/Attribute;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readCDATA()Lcom/bea/xml/stream/EventState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    const/16 v1, 0x5b

    .line 185
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    const/16 v1, 0x5d

    .line 186
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    .line 187
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    return-object v0
.end method

.method public readCharacterData()Lcom/bea/xml/stream/EventState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    const/16 v1, 0x5b

    .line 175
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    const/16 v1, 0x5d

    .line 176
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->setData(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    return-object v0
.end method

.method public readComment()Lcom/bea/xml/stream/EventState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    const/16 v1, 0x5b

    .line 237
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    const/16 v1, 0x5d

    .line 238
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->setData(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    return-object v0
.end method

.method public readDTD()Lcom/bea/xml/stream/EventState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    const/16 v1, 0x5b

    .line 219
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    const/16 v1, 0x5d

    .line 220
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 222
    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->setData(Ljava/lang/String;)V

    return-object v0
.end method

.method public readElement()Lcom/bea/xml/stream/EventState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 364
    :pswitch_0
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Attempt to read unknown element ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :pswitch_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readCDATA()Lcom/bea/xml/stream/EventState;

    move-result-object v0

    goto :goto_0

    .line 360
    :pswitch_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readDTD()Lcom/bea/xml/stream/EventState;

    move-result-object v0

    goto :goto_0

    .line 356
    :pswitch_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readEntityReference()Lcom/bea/xml/stream/EventState;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    .line 353
    iput-boolean v0, p0, Lcom/bea/xml/stream/EventScanner;->readEndDocument:Z

    .line 354
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readEndDocument()Lcom/bea/xml/stream/EventState;

    move-result-object v0

    goto :goto_0

    .line 351
    :pswitch_5
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readStartDocument()Lcom/bea/xml/stream/EventState;

    move-result-object v0

    goto :goto_0

    .line 358
    :pswitch_6
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readSpace()Lcom/bea/xml/stream/EventState;

    move-result-object v0

    goto :goto_0

    .line 349
    :pswitch_7
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readComment()Lcom/bea/xml/stream/EventState;

    move-result-object v0

    goto :goto_0

    .line 347
    :pswitch_8
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readCharacterData()Lcom/bea/xml/stream/EventState;

    move-result-object v0

    goto :goto_0

    .line 345
    :pswitch_9
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readProcessingInstruction()Lcom/bea/xml/stream/EventState;

    move-result-object v0

    goto :goto_0

    .line 343
    :pswitch_a
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readEndElement()Lcom/bea/xml/stream/EventState;

    move-result-object v0

    goto :goto_0

    .line 341
    :pswitch_b
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readStartElement()Lcom/bea/xml/stream/EventState;

    move-result-object v0

    :goto_0
    const/16 v1, 0x3b

    .line 366
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 367
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->skipSpace()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public readEndDocument()Lcom/bea/xml/stream/EventState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 228
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    return-object v0
.end method

.method public readEndElement()Lcom/bea/xml/stream/EventState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    const/16 v1, 0x5b

    .line 146
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 147
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/EventState;->setName(Ljavax/xml/namespace/QName;)V

    const/16 v1, 0x5d

    .line 148
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    return-object v0
.end method

.method public readEntityReference()Lcom/bea/xml/stream/EventState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    const/16 v1, 0x5b

    .line 317
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    const/16 v1, 0x5d

    .line 318
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->setData(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    return-object v0
.end method

.method public readName()Ljavax/xml/namespace/QName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5b

    .line 255
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    const/16 v0, 0x5d

    .line 256
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->readName(C)Ljavax/xml/namespace/QName;

    move-result-object v1

    .line 257
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    return-object v1
.end method

.method public readName(C)Ljavax/xml/namespace/QName;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v0

    const-string v1, ""

    const/16 v2, 0x27

    if-ne v0, v2, :cond_0

    .line 267
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 268
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    const/16 v2, 0x3a

    .line 270
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 272
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/EventScanner;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 275
    :goto_1
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/EventScanner;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 276
    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, v0, p1, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public readProcessingInstruction()Lcom/bea/xml/stream/EventState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    const/16 v1, 0x5b

    .line 157
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    const/16 v1, 0x5d

    .line 158
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 161
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_0

    .line 162
    const-string v3, ",["

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/EventScanner;->read(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 166
    :goto_0
    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->setData(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v3}, Lcom/bea/xml/stream/EventState;->setExtraData(Ljava/lang/String;)V

    return-object v0
.end method

.method public readSpace()Lcom/bea/xml/stream/EventState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    const/16 v1, 0x5b

    .line 327
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    const/16 v1, 0x5d

    .line 328
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 330
    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->setData(Ljava/lang/String;)V

    return-object v0
.end method

.method public readStartDocument()Lcom/bea/xml/stream/EventState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    .line 197
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    const/16 v1, 0x5b

    .line 198
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 199
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    const/16 v2, 0x5d

    .line 200
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    const/16 v4, 0x2c

    .line 202
    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 203
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 204
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 206
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 207
    invoke-virtual {v0, v3}, Lcom/bea/xml/stream/EventState;->setData(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/EventState;->setExtraData(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public readStartElement()Lcom/bea/xml/stream/EventState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    const/16 v1, 0x5b

    .line 124
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 125
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->setName(Ljavax/xml/namespace/QName;)V

    .line 126
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v2

    if-ne v2, v1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readAttributes()Ljava/util/List;

    move-result-object v1

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 129
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 131
    instance-of v3, v2, Ljavax/xml/stream/events/Namespace;

    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->addNamespace(Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->addAttribute(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    .line 138
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    return-object v0
.end method

.method protected readString(C)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v1

    if-eq v1, p1, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    const/16 v1, 0x5d

    if-ne p1, v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->read()C

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v2

    if-eq v2, v1, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->read()C

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected readType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5b

    .line 114
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    const/16 v0, 0x5d

    .line 115
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventType(Ljava/lang/String;)I

    move-result v1

    .line 117
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    return v1
.end method

.method public setReader(Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/bea/xml/stream/EventScanner;->reader:Ljava/io/Reader;

    .line 57
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->read()C

    .line 58
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->skipSpace()V

    return-void
.end method

.method protected skipSpace()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    :goto_0
    iget-char v0, p0, Lcom/bea/xml/stream/EventScanner;->currentChar:C

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_1
    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    move v4, v2

    goto :goto_2

    :cond_1
    move v4, v3

    :goto_2
    or-int/2addr v1, v4

    const/16 v4, 0x9

    if-ne v0, v4, :cond_2

    move v4, v2

    goto :goto_3

    :cond_2
    move v4, v3

    :goto_3
    or-int/2addr v1, v4

    const/16 v4, 0xd

    if-ne v0, v4, :cond_3

    goto :goto_4

    :cond_3
    move v2, v3

    :goto_4
    or-int v0, v1, v2

    if-eqz v0, :cond_4

    .line 88
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->read()C

    goto :goto_0

    :cond_4
    return-void
.end method

.class public Lcom/bea/xml/stream/AttributeBase;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/xml/stream/events/Attribute;
.implements Ljavax/xml/stream/Location;


# instance fields
.field private attributeType:Ljavax/xml/namespace/QName;

.field private characterOffset:I

.field private column:I

.field private eventType:I

.field private line:I

.field private locationURI:Ljava/lang/String;

.field private name:Ljavax/xml/namespace/QName;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->eventType:I

    .line 38
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->line:I

    .line 39
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->column:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->characterOffset:I

    .line 58
    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 59
    :cond_0
    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, v0, p2, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    .line 60
    iput-object p3, p0, Lcom/bea/xml/stream/AttributeBase;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->eventType:I

    .line 38
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->line:I

    .line 39
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->column:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->characterOffset:I

    if-nez p1, :cond_0

    .line 47
    const-string p1, ""

    .line 49
    :cond_0
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p2, p3, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    .line 50
    iput-object p4, p0, Lcom/bea/xml/stream/AttributeBase;->value:Ljava/lang/String;

    .line 51
    new-instance p1, Ljavax/xml/namespace/QName;

    invoke-direct {p1, p5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bea/xml/stream/AttributeBase;->attributeType:Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->eventType:I

    .line 38
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->line:I

    .line 39
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->column:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->characterOffset:I

    .line 65
    iput-object p1, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    .line 66
    iput-object p2, p0, Lcom/bea/xml/stream/AttributeBase;->value:Ljava/lang/String;

    return-void
.end method

.method public static writeEncodedChar(Ljava/io/Writer;C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    const-string v0, "&#"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x3b

    .line 198
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    return-void
.end method


# virtual methods
.method public asCharacters()Ljavax/xml/stream/events/Characters;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "cannnot cast AttributeBase to Characters"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asEndElement()Ljavax/xml/stream/events/EndElement;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "cannnot cast AttributeBase to EndElement"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asStartElement()Ljavax/xml/stream/events/StartElement;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "cannnot cast AttributeBase to StartElement"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCharacterOffset()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/bea/xml/stream/AttributeBase;->characterOffset:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/bea/xml/stream/AttributeBase;->column:I

    return v0
.end method

.method public getDTDType()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/bea/xml/stream/AttributeBase;->line:I

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 0

    return-object p0
.end method

.method public getLocationURI()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->locationURI:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaType()Ljavax/xml/namespace/QName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttribute()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCharacters()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDefault()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEndDocument()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEndElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEndEntity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEntityReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNamespace()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNamespaceDeclaration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isProcessingInstruction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSpecified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStartDocument()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStartElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStartEntity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 0

    return-void
.end method

.method public setCharacterOffset(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/bea/xml/stream/AttributeBase;->characterOffset:I

    return-void
.end method

.method public setColumnNumber(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/bea/xml/stream/AttributeBase;->column:I

    return-void
.end method

.method public setLineNumber(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/bea/xml/stream/AttributeBase;->line:I

    return-void
.end method

.method public setLocationURI(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/bea/xml/stream/AttributeBase;->locationURI:Ljava/lang/String;

    return-void
.end method

.method public setNamespaceURI(Ljava/lang/String;)V
    .locals 2

    .line 92
    new-instance v0, Ljavax/xml/namespace/QName;

    iget-object v1, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "=\'"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "[\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\']:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/bea/xml/stream/AttributeBase;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/bea/xml/stream/AttributeBase;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 128
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3a

    .line 129
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 133
    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->value:Ljava/lang/String;

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x22

    if-lez v1, :cond_9

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x20

    const/16 v6, 0x3c

    const/16 v7, 0x26

    if-ge v4, v1, :cond_2

    .line 143
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v2, :cond_2

    if-eq v8, v7, :cond_2

    if-eq v8, v6, :cond_2

    if-ge v8, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v4, v1, :cond_3

    .line 158
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    if-lez v4, :cond_4

    .line 161
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_4
    :goto_2
    if-ge v4, v1, :cond_9

    .line 164
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_8

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_6

    if-ge v3, v5, :cond_5

    .line 177
    invoke-static {p1, v3}, Lcom/bea/xml/stream/AttributeBase;->writeEncodedChar(Ljava/io/Writer;C)V

    goto :goto_3

    .line 179
    :cond_5
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    .line 170
    :cond_6
    const-string v3, "&lt;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 167
    :cond_7
    const-string v3, "&amp;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 173
    :cond_8
    const-string v3, "&quot;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 186
    :cond_9
    :goto_4
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 188
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

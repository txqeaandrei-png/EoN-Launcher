.class public Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;
.super Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;

# interfaces
.implements Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;


# static fields
.field private static final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#xmldecl-standalone"

.field private static final TRACE_SIZING:Z


# instance fields
.field protected currentNs:Ljava/lang/String;

.field protected fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

.field protected namespaceDepth:[I

.field protected namespaceEnd:I

.field protected namespacePrefix:[Ljava/lang/String;

.field protected namespaceUri:[Ljava/lang/String;

.field protected wf:Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlSerializer;Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    const/16 p1, 0x8

    .line 99
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    .line 100
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceUri:[Ljava/lang/String;

    .line 101
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceDepth:[I

    .line 34
    iput-object p2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->wf:Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;

    return-void
.end method

.method private ensureNamespacesCapacity()V
    .locals 6

    .line 104
    iget v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 109
    :goto_0
    new-array v2, v1, [Ljava/lang/String;

    .line 110
    new-array v3, v1, [Ljava/lang/String;

    .line 111
    new-array v1, v1, [I

    .line 112
    iget-object v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    .line 113
    invoke-static {v4, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceUri:[Ljava/lang/String;

    iget v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceDepth:[I

    iget v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    :cond_1
    iput-object v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    .line 118
    iput-object v3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceUri:[Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceDepth:[I

    return-void
.end method

.method private writeStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v0

    .line 257
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 259
    :cond_0
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-virtual {p0, v2, v3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    .line 266
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    return-void

    .line 267
    :cond_2
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-object p0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;

    move-result-object p1

    return-object p1
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 82
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-nez p3, :cond_0

    .line 84
    iget-object p3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "nil"

    const-string v1, "true"

    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-interface {p3, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    :goto_0
    iget-object p3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p3, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-object p0

    .line 79
    :cond_1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "name for element can not be null"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endTag(Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-object p0
.end method

.method public escapeAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v0, 0x3c

    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x26

    .line 280
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v4, 0x22

    .line 281
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x27

    .line 282
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v1, v8, :cond_0

    if-ne v3, v8, :cond_0

    if-ne v5, v8, :cond_0

    if-ne v7, v8, :cond_0

    return-object p1

    .line 286
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v3, :cond_1

    .line 308
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 290
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v4, :cond_5

    if-eq v7, v0, :cond_4

    if-eq v7, v2, :cond_3

    if-eq v7, v6, :cond_2

    .line 305
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 299
    :cond_2
    const-string v7, "&apos;"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 296
    :cond_3
    const-string v7, "&amp;"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 293
    :cond_4
    const-string v7, "&lt;"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 302
    :cond_5
    const-string v7, "&quot;"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x3c

    .line 316
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x26

    .line 317
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    if-ne v3, v4, :cond_0

    return-object p1

    .line 321
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-ne v1, v4, :cond_1

    if-ne v3, v4, :cond_1

    .line 326
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eq v1, v4, :cond_6

    if-eq v1, v4, :cond_2

    if-eq v3, v4, :cond_2

    if-ge v3, v1, :cond_2

    goto :goto_2

    :cond_2
    if-eq v3, v4, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v3, v4, :cond_3

    if-ge v1, v3, :cond_3

    goto :goto_1

    .line 343
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "wrong state posLt="

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " posAmp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    if-ge v6, v1, :cond_5

    .line 338
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    :cond_5
    const-string v6, "&lt;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v1, 0x1

    .line 341
    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    :cond_6
    :goto_2
    if-ge v6, v3, :cond_7

    .line 331
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    :cond_7
    const-string v6, "&amp;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v3, 0x1

    .line 334
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_0
.end method

.method public event(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 249
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->docdecl(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->comment(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->processingInstruction(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :pswitch_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->entityRef(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :pswitch_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->cdsect(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :pswitch_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-lez v0, :cond_0

    .line 226
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 228
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :pswitch_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 211
    :pswitch_8
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->writeStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 207
    :pswitch_9
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->endDocument()V

    goto :goto_0

    .line 202
    :pswitch_a
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xmldecl-standalone"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 203
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fragment(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    mul-int/lit8 v2, v2, 0x1e

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 155
    const-string v1, "<fragment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-gez v1, :cond_2

    .line 173
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string p1, "</fragment>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    if-nez p1, :cond_0

    .line 178
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->wf:Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;

    invoke-virtual {p1}, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;->newPullParserWrapper()Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    .line 180
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;->setInput(Ljava/io/Reader;)V

    .line 183
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    invoke-interface {p1}, Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;->nextTag()I

    .line 184
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    const/4 v0, 0x2

    const/4 v3, 0x0

    const-string v4, "fragment"

    invoke-interface {p1, v0, v3, v4}, Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_1
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    invoke-interface {p1}, Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;->nextToken()I

    .line 187
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    invoke-interface {p1}, Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;->getDepth()I

    move-result p1

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    invoke-interface {p1}, Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;->getEventType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 194
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    invoke-interface {p1, v0, v3, v4}, Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 192
    :cond_1
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->event(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 158
    :cond_2
    iget-object v3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 159
    iget v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    sub-int/2addr v4, v2

    :goto_2
    if-gt v4, v1, :cond_4

    .line 164
    const-string v4, " xmlns"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    const/16 v4, 0x3a

    .line 166
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :cond_3
    const-string v3, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    iget-object v3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceUri:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->escapeAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 160
    :cond_4
    iget-object v5, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method public getCurrentNamespaceForElements()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentNamespaceForElements(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    return-object v0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->getDepth()I

    move-result v0

    .line 135
    iget v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    iget-object v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceDepth:[I

    aget v2, v2, v1

    if-gt v2, v0, :cond_2

    .line 142
    :goto_1
    iget v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    iget-object v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 143
    invoke-direct {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->ensureNamespacesCapacity()V

    .line 145
    :cond_1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    aput-object p1, v0, v1

    .line 146
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceUri:[Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 147
    iput v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    return-void

    .line 139
    :cond_2
    iget v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-object p0
.end method

.method public wiriteStringElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 418
    invoke-virtual {p0, p3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->writeString(Ljava/lang/String;)V

    .line 419
    iget-object p3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p3, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 355
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    const-string p2, "INF"

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    .line 357
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    const-string p2, "-INF"

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    return-void
.end method

.method public writeDoubleElement(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 394
    invoke-virtual {p0, p3, p4}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->writeDouble(D)V

    .line 395
    iget-object p3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p3, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 367
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "INF"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 369
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "-INF"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    return-void
.end method

.method public writeFloatElement(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 402
    invoke-virtual {p0, p3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->writeFloat(F)V

    .line 403
    iget-object p3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p3, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeIntElement(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    invoke-virtual {p0, p3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->writeInt(I)V

    .line 411
    iget-object p3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p3, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 387
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 385
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null string can not be written"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

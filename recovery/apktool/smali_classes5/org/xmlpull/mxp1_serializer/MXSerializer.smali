.class public Lorg/xmlpull/mxp1_serializer/MXSerializer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final TRACE_SIZING:Z = false

.field protected static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field protected static final XML_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field protected static final precomputedPrefixes:[Ljava/lang/String;


# instance fields
.field protected final FEATURE_NAMES_INTERNED:Ljava/lang/String;

.field protected final FEATURE_SERIALIZER_ATTVALUE_USE_APOSTROPHE:Ljava/lang/String;

.field protected final PROPERTY_SERIALIZER_INDENTATION:Ljava/lang/String;

.field protected final PROPERTY_SERIALIZER_LINE_SEPARATOR:Ljava/lang/String;

.field protected attributeUseApostrophe:Z

.field protected autoDeclaredPrefixes:I

.field private checkNamesInterned:Z

.field protected depth:I

.field protected doIndent:Z

.field protected elName:[Ljava/lang/String;

.field protected elNamespace:[Ljava/lang/String;

.field protected elNamespaceCount:[I

.field protected finished:Z

.field protected indentationBuf:[C

.field protected indentationJump:I

.field protected indentationString:Ljava/lang/String;

.field protected lineSeparator:Ljava/lang/String;

.field protected maxIndentLevel:I

.field protected namesInterned:Z

.field protected namespaceEnd:I

.field protected namespacePrefix:[Ljava/lang/String;

.field protected namespaceUri:[Ljava/lang/String;

.field protected offsetNewLine:I

.field protected out:Ljava/io/Writer;

.field protected pastRoot:Z

.field protected seenTag:Z

.field protected setPrefixCalled:Z

.field protected startTagIncomplete:Z

.field protected writeIndentation:Z

.field protected writeLineSepartor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x20

    .line 73
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->precomputedPrefixes:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    :goto_0
    sget-object v1, Lorg/xmlpull/mxp1_serializer/MXSerializer;->precomputedPrefixes:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    .line 76
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "http://xmlpull.org/v1/doc/features.html#serializer-attvalue-use-apostrophe"

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->FEATURE_SERIALIZER_ATTVALUE_USE_APOSTROPHE:Ljava/lang/String;

    .line 33
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->FEATURE_NAMES_INTERNED:Ljava/lang/String;

    .line 35
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-indentation"

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->PROPERTY_SERIALIZER_INDENTATION:Ljava/lang/String;

    .line 37
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-line-separator"

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->PROPERTY_SERIALIZER_LINE_SEPARATOR:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    .line 44
    const-string v0, "\n"

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lineSeparator:Ljava/lang/String;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    const/4 v1, 0x2

    .line 53
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    .line 54
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    .line 55
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    .line 58
    iput v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    const/16 v1, 0x8

    .line 59
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    .line 60
    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    .line 80
    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    return-void
.end method

.method private static addPrintable(Ljava/lang/StringBuffer;C)V
    .locals 3

    const/16 v0, 0xc

    if-eq p1, v0, :cond_6

    const/16 v0, 0xd

    if-eq p1, v0, :cond_5

    const/16 v0, 0x22

    if-eq p1, v0, :cond_4

    const/16 v0, 0x27

    if-eq p1, v0, :cond_3

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x20

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7e

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 925
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 922
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "0000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 923
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 903
    :pswitch_0
    const-string p1, "\\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 900
    :pswitch_1
    const-string p1, "\\t"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 897
    :pswitch_2
    const-string p1, "\\b"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 918
    :cond_2
    const-string p1, "\\\\"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 915
    :cond_3
    const-string p1, "\\\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 912
    :cond_4
    const-string p1, "\\\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 909
    :cond_5
    const-string p1, "\\r"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 906
    :cond_6
    const-string p1, "\\f"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkInterning(Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "all names passed as arguments must be internedwhen NAMES INTERNED feature is enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private generatePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 450
    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->autoDeclaredPrefixes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->autoDeclaredPrefixes:I

    .line 452
    sget-object v1, Lorg/xmlpull/mxp1_serializer/MXSerializer;->precomputedPrefixes:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->autoDeclaredPrefixes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 455
    :goto_0
    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_2

    .line 463
    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 464
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->ensureNamespacesCapacity()V

    .line 466
    :cond_1
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    aput-object v0, v1, v2

    .line 467
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 468
    iput v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    return-object v0

    .line 457
    :cond_2
    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v2, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method protected static final printable(C)Ljava/lang/String;
    .locals 1

    .line 887
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 888
    invoke-static {v0, p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->addPrintable(Ljava/lang/StringBuffer;C)V

    .line 889
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static final printable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    .line 875
    const-string p0, "null"

    return-object p0

    .line 876
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 877
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 879
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 882
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 883
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 880
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v0, v3}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->addPrintable(Ljava/lang/StringBuffer;C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private writeNamespaceDeclarations()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    if-lt v0, v1, :cond_0

    return-void

    .line 606
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, ""

    if-eq v1, v2, :cond_1

    .line 607
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v2, " xmlns:"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 611
    :cond_1
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v2, " xmlns="

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 613
    :goto_1
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->attributeUseApostrophe:Z

    const/16 v3, 0x27

    const/16 v4, 0x22

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 616
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p0, v1, v2}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeAttributeValue(Ljava/lang/String;Ljava/io/Writer;)V

    .line 618
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->attributeUseApostrophe:Z

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-eqz v0, :cond_6

    .line 554
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    if-eqz p1, :cond_3

    .line 556
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 558
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v0, :cond_0

    .line 559
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 560
    :cond_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_1

    .line 561
    invoke-direct {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    .line 563
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lookupOrDeclarePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 567
    invoke-direct {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->generatePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    :cond_2
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 570
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 573
    :cond_3
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 574
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 p2, 0x3d

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    .line 576
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean p2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->attributeUseApostrophe:Z

    const/16 v0, 0x27

    const/16 v1, 0x22

    if-eqz p2, :cond_4

    move p2, v0

    goto :goto_1

    :cond_4
    move p2, v1

    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    .line 577
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p0, p3, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeAttributeValue(Ljava/lang/String;Ljava/io/Writer;)V

    .line 578
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean p2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->attributeUseApostrophe:Z

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-object p0

    .line 551
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startTag() must be called before attribute()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 704
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 705
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 707
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v0, "]]>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected closeStartTag()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->finished:Z

    if-nez v0, :cond_2

    .line 586
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-nez v0, :cond_1

    .line 590
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-eqz v0, :cond_0

    .line 595
    invoke-direct {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeNamespaceDeclarations()V

    .line 596
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 597
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    aput v2, v0, v1

    const/4 v0, 0x0

    .line 598
    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    return-void

    .line 591
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trying to close start tag that is not opened"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startTag() must be called immediately after setPrefix()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trying to write past already finished output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 731
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 732
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 734
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 740
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 741
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<!DOCTYPE"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 743
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    :goto_0
    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 363
    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->pastRoot:Z

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->finished:Z

    .line 364
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void

    .line 359
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {p0, v1, v0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 630
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v0, :cond_0

    .line 631
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 632
    :cond_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_1

    .line 633
    invoke-direct {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    .line 637
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget-object v0, v0, v1

    const-string v1, " and not "

    if-ne p1, v0, :cond_a

    if-eqz p2, :cond_9

    .line 646
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-eqz v0, :cond_2

    .line 647
    invoke-direct {p0, p2}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    .line 650
    :cond_2
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget-object v0, v0, v2

    if-ne p2, v0, :cond_4

    goto :goto_1

    .line 653
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "expected element name "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    iget v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p2}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 656
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 657
    invoke-direct {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeNamespaceDeclarations()V

    .line 658
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string p2, " />"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 659
    iget p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    goto :goto_2

    .line 661
    :cond_6
    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    .line 663
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeIndent()V

    .line 664
    :cond_7
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 665
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 667
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lookupOrDeclarePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 669
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 670
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 671
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 674
    :cond_8
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 675
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    .line 678
    :goto_2
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    iget p2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget p1, p1, p2

    iput p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    const/4 p1, 0x0

    .line 679
    iput-boolean p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    .line 680
    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    return-object p0

    .line 644
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end tag name can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 639
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "expected namespace "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    iget v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected ensureElementsCapacity()V
    .locals 6

    .line 133
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    array-length v1, v0

    .line 136
    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-lez v1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 144
    :goto_1
    new-array v5, v2, [Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 145
    invoke-static {v0, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    :cond_2
    iput-object v5, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    .line 147
    new-array v0, v2, [Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 148
    iget-object v5, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    invoke-static {v5, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    :cond_3
    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    .line 151
    new-array v0, v2, [I

    if-eqz v4, :cond_4

    .line 153
    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 156
    :cond_4
    aput v3, v0, v3

    .line 158
    :goto_2
    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    return-void
.end method

.method protected ensureNamespacesCapacity()V
    .locals 5

    .line 167
    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 172
    :goto_0
    new-array v2, v1, [Ljava/lang/String;

    .line 173
    new-array v1, v1, [Ljava/lang/String;

    .line 174
    iget-object v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    .line 175
    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    iget v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    :cond_1
    iput-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    .line 181
    iput-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    return-void
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 713
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 714
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 715
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 716
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 756
    :cond_0
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public getDepth()I
    .locals 1

    .line 476
    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 218
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-boolean p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    return p1

    .line 220
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#serializer-attvalue-use-apostrophe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 221
    iget-boolean p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->attributeUseApostrophe:Z

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 216
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "feature name can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 486
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .line 481
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 415
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 418
    :cond_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_1

    .line 419
    invoke-direct {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_6

    .line 426
    :goto_0
    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gez v0, :cond_3

    if-nez p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 444
    :cond_2
    invoke-direct {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->generatePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 428
    :cond_3
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_5

    .line 429
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, p1, v0

    .line 431
    iget p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-gt p1, v0, :cond_4

    return-object v1

    .line 433
    :cond_4
    iget-object p2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 422
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "namespace must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 310
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-indentation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    return-object p1

    .line 312
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-line-separator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 313
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lineSeparator:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 308
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "property name can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 749
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 750
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected lookupOrDeclarePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 409
    invoke-virtual {p0, p1, v0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 721
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 722
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 723
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 725
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v0, "?>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected rebuildIndentationBuf()V
    .locals 7

    .line 240
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 243
    iput v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->offsetNewLine:I

    .line 244
    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeLineSepartor:Z

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->offsetNewLine:I

    goto :goto_0

    :cond_1
    move v1, v0

    .line 248
    :goto_0
    iput v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->maxIndentLevel:I

    .line 249
    iget-boolean v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeIndentation:Z

    if-eqz v2, :cond_2

    .line 250
    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationJump:I

    const/16 v3, 0x41

    .line 251
    div-int/2addr v3, v2

    iput v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->maxIndentLevel:I

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 254
    :cond_2
    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationBuf:[C

    if-eqz v2, :cond_3

    array-length v2, v2

    if-ge v2, v1, :cond_4

    :cond_3
    add-int/lit8 v1, v1, 0x8

    .line 255
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationBuf:[C

    .line 258
    :cond_4
    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeLineSepartor:Z

    if-eqz v1, :cond_6

    move v1, v0

    move v2, v1

    .line 259
    :goto_1
    iget-object v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_5

    goto :goto_2

    .line 261
    :cond_5
    iget-object v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationBuf:[C

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_1

    :cond_6
    move v2, v0

    .line 264
    :goto_2
    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeIndentation:Z

    if-eqz v1, :cond_9

    move v1, v0

    .line 265
    :goto_3
    iget v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->maxIndentLevel:I

    if-lt v1, v3, :cond_7

    goto :goto_5

    :cond_7
    move v3, v0

    .line 267
    :goto_4
    iget-object v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 269
    :cond_8
    iget-object v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationBuf:[C

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v4, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_4

    :cond_9
    :goto_5
    return-void
.end method

.method protected reset()V
    .locals 5

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/4 v1, 0x0

    .line 92
    iput v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->autoDeclaredPrefixes:I

    .line 93
    iput v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    move v2, v1

    .line 96
    :goto_0
    iget-object v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    array-length v4, v3

    if-lt v2, v4, :cond_0

    .line 115
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    const-string v2, "xmlns"

    aput-object v2, v0, v1

    .line 116
    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    const-string v3, "http://www.w3.org/2000/xmlns/"

    aput-object v3, v2, v1

    .line 119
    const-string v3, "xml"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 120
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    aput-object v0, v2, v4

    add-int/2addr v4, v4

    .line 121
    iput v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    .line 123
    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->finished:Z

    .line 124
    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->pastRoot:Z

    .line 125
    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    .line 126
    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    .line 128
    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    return-void

    .line 98
    :cond_0
    iget-object v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    aput-object v0, v4, v2

    .line 99
    iget-object v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    aput-object v0, v4, v2

    const/4 v4, 0x2

    .line 100
    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 204
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iput-boolean p2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    goto :goto_0

    .line 206
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#serializer-attvalue-use-apostrophe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iput-boolean p2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->attributeUseApostrophe:Z

    :goto_0
    return-void

    .line 209
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "unsupported feature "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 202
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "feature name can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 329
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->reset()V

    if-eqz p2, :cond_0

    .line 331
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    goto :goto_0

    .line 333
    :cond_0
    new-instance p2, Ljava/io/OutputStreamWriter;

    invoke-direct {p2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    :goto_0
    return-void

    .line 328
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output stream can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0

    .line 322
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->reset()V

    .line 323
    iput-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    :cond_0
    if-nez p1, :cond_1

    .line 373
    const-string p1, ""

    .line 375
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v0, :cond_2

    .line 376
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 377
    :cond_2
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_3

    .line 378
    invoke-direct {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_a

    .line 384
    :goto_0
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget v0, v0, v1

    :goto_1
    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    if-lt v0, v1, :cond_8

    .line 391
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v0, :cond_4

    .line 392
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 393
    :cond_4
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_5

    .line 394
    invoke-direct {p0, p2}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_7

    .line 399
    :goto_2
    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_6

    .line 400
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->ensureNamespacesCapacity()V

    .line 402
    :cond_6
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    aput-object p1, v0, v1

    .line 403
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    aput-object p2, p1, v1

    const/4 p1, 0x1

    add-int/2addr v1, p1

    .line 404
    iput v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    .line 405
    iput-boolean p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    return-void

    .line 396
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "namespace must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 386
    :cond_8
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eq p1, v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 387
    :cond_9
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "duplicated prefix "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 380
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "prefix must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 288
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-indentation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    goto :goto_0

    .line 290
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-line-separator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lineSeparator:Ljava/lang/String;

    .line 295
    :goto_0
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lineSeparator:Ljava/lang/String;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeLineSepartor:Z

    .line 296
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    move p1, p2

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    iput-boolean p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeIndentation:Z

    .line 298
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeLineSepartor:Z

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move p2, v0

    :cond_4
    :goto_3
    iput-boolean p2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    .line 301
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->rebuildIndentationBuf()V

    .line 302
    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    return-void

    .line 293
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "unsupported property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 286
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "property name can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<?xml version=\"1.0\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 341
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, " encoding=\'"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_0
    if-eqz p2, :cond_2

    .line 346
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 347
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string p2, " standalone=\'yes\'"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string p2, " standalone=\'no\'"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 352
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string p2, "?>"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 495
    :cond_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeIndent()V

    :cond_1
    const/4 v0, 0x1

    .line 498
    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    const/4 v1, 0x0

    .line 499
    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    .line 500
    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    .line 501
    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    add-int/lit8 v1, v1, 0x2

    .line 502
    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 503
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->ensureElementsCapacity()V

    .line 507
    :cond_2
    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    .line 508
    :cond_3
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    iget-boolean v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v3, :cond_5

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    :goto_0
    move-object v3, p1

    :goto_1
    aput-object v3, v1, v2

    .line 511
    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-eqz v1, :cond_6

    invoke-direct {p0, p2}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    .line 512
    :cond_6
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    iget-boolean v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v3, :cond_8

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_8
    :goto_2
    move-object v3, p2

    :goto_3
    aput-object v3, v1, v2

    .line 513
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    if-eqz p1, :cond_e

    .line 515
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 516
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lookupOrDeclarePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 520
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 521
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_5

    .line 525
    :cond_9
    iget p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    sub-int/2addr p1, v0

    :goto_4
    if-gez p1, :cond_a

    goto :goto_5

    .line 527
    :cond_a
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    if-ne v0, v1, :cond_d

    .line 528
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    if-nez p1, :cond_b

    .line 531
    invoke-virtual {p0, v1, v1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 532
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_5

    .line 533
    :cond_c
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "start tag can not be written in empty default namespace as default namespace is currently bound to \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_d
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 543
    :cond_e
    :goto_5
    iget-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 688
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 689
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1, v0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeElementContent(Ljava/lang/String;Ljava/io/Writer;)V

    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 696
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 697
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeElementContent([CIILjava/io/Writer;)V

    return-object p0
.end method

.method protected writeAttributeValue(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->attributeUseApostrophe:Z

    if-eqz v0, :cond_0

    const/16 v1, 0x27

    goto :goto_0

    :cond_0
    const/16 v1, 0x22

    :goto_0
    if-eqz v0, :cond_1

    .line 765
    const-string v0, "&apos;"

    goto :goto_1

    :cond_1
    const-string v0, "&quot;"

    :goto_1
    const/16 v2, 0x3c

    .line 766
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v4, 0x26

    .line 767
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 768
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    const/4 v8, -0x1

    if-ne v3, v8, :cond_3

    if-ne v5, v8, :cond_3

    if-ne v6, v8, :cond_3

    if-lez v7, :cond_2

    .line 774
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 776
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_3
    if-eq v6, v8, :cond_7

    if-eq v5, v8, :cond_4

    if-eq v5, v8, :cond_7

    if-ge v6, v5, :cond_7

    :cond_4
    if-eq v3, v8, :cond_5

    if-eq v3, v8, :cond_7

    if-ge v6, v3, :cond_7

    :cond_5
    if-ge v7, v6, :cond_6

    .line 784
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 785
    :cond_6
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v7, v6, 0x1

    .line 787
    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    goto :goto_2

    :cond_7
    if-eq v5, v8, :cond_b

    if-eq v6, v8, :cond_8

    if-eq v6, v8, :cond_b

    if-ge v5, v6, :cond_b

    :cond_8
    if-eq v3, v8, :cond_9

    if-eq v3, v8, :cond_b

    if-ge v5, v3, :cond_b

    :cond_9
    if-ge v7, v5, :cond_a

    .line 793
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 794
    :cond_a
    const-string v7, "&amp;"

    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v7, v5, 0x1

    .line 796
    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto :goto_2

    :cond_b
    if-eq v3, v8, :cond_f

    if-eq v6, v8, :cond_c

    if-eq v6, v8, :cond_f

    if-ge v3, v6, :cond_f

    :cond_c
    if-eq v5, v8, :cond_d

    if-eq v5, v8, :cond_f

    if-ge v3, v5, :cond_f

    :cond_d
    if-ge v7, v3, :cond_e

    .line 802
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 803
    :cond_e
    const-string v7, "&lt;"

    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v7, v3, 0x1

    .line 805
    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_2

    .line 807
    :cond_f
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "wrong state #1 posLt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " posAmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " posQuot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected writeElementContent(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3c

    .line 817
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x26

    .line 818
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    if-ne v3, v5, :cond_0

    .line 823
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eq v1, v5, :cond_5

    if-eq v1, v5, :cond_1

    if-eq v3, v5, :cond_1

    if-ge v3, v1, :cond_1

    goto :goto_2

    :cond_1
    if-eq v3, v5, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v3, v5, :cond_2

    if-ge v1, v3, :cond_2

    goto :goto_1

    .line 840
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "wrong state posLt="

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " posAmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    if-ge v4, v1, :cond_4

    .line 835
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 836
    :cond_4
    const-string v4, "&lt;"

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    .line 838
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    :cond_5
    :goto_2
    if-ge v4, v3, :cond_6

    .line 828
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 829
    :cond_6
    const-string v4, "&amp;"

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v4, v3, 0x1

    .line 831
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_0
.end method

.method protected writeElementContent([CIILjava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    move v0, p2

    :goto_0
    if-lt p2, p3, :cond_1

    if-le p3, v0, :cond_0

    sub-int/2addr p3, v0

    .line 869
    invoke-virtual {p4, p1, v0, p3}, Ljava/io/Writer;->write([CII)V

    :cond_0
    return-void

    .line 853
    :cond_1
    aget-char v1, p1, p2

    const/16 v2, 0x26

    if-ne v1, v2, :cond_3

    if-le p2, v0, :cond_2

    sub-int v1, p2, v0

    .line 856
    invoke-virtual {p4, p1, v0, v1}, Ljava/io/Writer;->write([CII)V

    .line 858
    :cond_2
    const-string v0, "&amp;"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, p2, 0x1

    goto :goto_2

    :cond_3
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_5

    if-le p2, v0, :cond_4

    sub-int v1, p2, v0

    .line 862
    invoke-virtual {p4, p1, v0, v1}, Ljava/io/Writer;->write([CII)V

    .line 864
    :cond_4
    const-string v0, "&lt;"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method protected writeIndent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeLineSepartor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->offsetNewLine:I

    .line 278
    :goto_0
    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->maxIndentLevel:I

    if-le v1, v2, :cond_1

    move v1, v2

    .line 279
    :cond_1
    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    iget-object v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationBuf:[C

    iget v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationJump:I

    mul-int/2addr v1, v4

    iget v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->offsetNewLine:I

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

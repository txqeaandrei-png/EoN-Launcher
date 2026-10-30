.class public Lorg/xmlpull/mxp1/MXParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# static fields
.field protected static final FEATURE_NAMES_INTERNED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#names-interned"

.field protected static final FEATURE_XML_ROUNDTRIP:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

.field protected static final LOOKUP_MAX:I = 0x400

.field protected static final LOOKUP_MAX_CHAR:C = '\u0400'

.field protected static final NCODING:[C

.field protected static final NO:[C

.field protected static final PROPERTY_XMLDECL_CONTENT:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-content"

.field protected static final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

.field protected static final PROPERTY_XMLDECL_VERSION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

.field protected static final READ_CHUNK_SIZE:I = 0x2000

.field protected static final TANDALONE:[C

.field private static final TRACE_SIZING:Z = false

.field protected static final VERSION:[C

.field protected static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field protected static final XML_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field protected static final YES:[C

.field protected static lookupNameChar:[Z

.field protected static lookupNameStartChar:[Z


# instance fields
.field protected allStringsInterned:Z

.field protected attributeCount:I

.field protected attributeName:[Ljava/lang/String;

.field protected attributeNameHash:[I

.field protected attributePrefix:[Ljava/lang/String;

.field protected attributeUri:[Ljava/lang/String;

.field protected attributeValue:[Ljava/lang/String;

.field protected buf:[C

.field protected bufAbsoluteStart:I

.field protected bufEnd:I

.field protected bufLoadFactor:I

.field protected bufSoftLimit:I

.field protected bufStart:I

.field protected charRefOneCharBuf:[C

.field protected columnNumber:I

.field protected depth:I

.field protected elName:[Ljava/lang/String;

.field protected elNamespaceCount:[I

.field protected elPrefix:[Ljava/lang/String;

.field protected elRawName:[[C

.field protected elRawNameEnd:[I

.field protected elRawNameLine:[I

.field protected elUri:[Ljava/lang/String;

.field protected emptyElementTag:Z

.field protected entityEnd:I

.field protected entityName:[Ljava/lang/String;

.field protected entityNameBuf:[[C

.field protected entityNameHash:[I

.field protected entityRefName:Ljava/lang/String;

.field protected entityReplacement:[Ljava/lang/String;

.field protected entityReplacementBuf:[[C

.field protected eventType:I

.field protected inputEncoding:Ljava/lang/String;

.field protected lineNumber:I

.field protected namespaceEnd:I

.field protected namespacePrefix:[Ljava/lang/String;

.field protected namespacePrefixHash:[I

.field protected namespaceUri:[Ljava/lang/String;

.field protected pastEndTag:Z

.field protected pc:[C

.field protected pcEnd:I

.field protected pcStart:I

.field protected pos:I

.field protected posEnd:I

.field protected posStart:I

.field protected preventBufferCompaction:Z

.field protected processNamespaces:Z

.field protected reachedEnd:Z

.field protected reader:Ljava/io/Reader;

.field protected roundtripSupported:Z

.field protected seenAmpersand:Z

.field protected seenDocdecl:Z

.field protected seenEndTag:Z

.field protected seenMarkup:Z

.field protected seenRoot:Z

.field protected seenStartTag:Z

.field protected text:Ljava/lang/String;

.field protected tokenize:Z

.field protected usePC:Z

.field protected xmlDeclContent:Ljava/lang/String;

.field protected xmlDeclStandalone:Ljava/lang/Boolean;

.field protected xmlDeclVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    .line 2450
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/xmlpull/mxp1/MXParser;->VERSION:[C

    .line 2451
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/xmlpull/mxp1/MXParser;->NCODING:[C

    const/16 v0, 0x9

    .line 2452
    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lorg/xmlpull/mxp1/MXParser;->TANDALONE:[C

    const/4 v0, 0x3

    .line 2453
    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lorg/xmlpull/mxp1/MXParser;->YES:[C

    const/4 v0, 0x2

    .line 2454
    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lorg/xmlpull/mxp1/MXParser;->NO:[C

    const/16 v0, 0x400

    .line 3008
    new-array v1, v0, [Z

    sput-object v1, Lorg/xmlpull/mxp1/MXParser;->lookupNameStartChar:[Z

    .line 3009
    new-array v1, v0, [Z

    sput-object v1, Lorg/xmlpull/mxp1/MXParser;->lookupNameChar:[Z

    const/16 v1, 0x3a

    .line 3019
    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    const/16 v1, 0x41

    :goto_0
    const/16 v2, 0x5a

    if-le v1, v2, :cond_6

    const/16 v1, 0x5f

    .line 3021
    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    const/16 v1, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-le v1, v2, :cond_5

    const/16 v1, 0xc0

    :goto_2
    const/16 v2, 0x2ff

    if-le v1, v2, :cond_4

    const/16 v1, 0x370

    :goto_3
    const/16 v2, 0x37d

    if-le v1, v2, :cond_3

    const/16 v1, 0x37f

    :goto_4
    if-lt v1, v0, :cond_2

    const/16 v0, 0x2d

    .line 3027
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    const/16 v0, 0x2e

    .line 3028
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    const/16 v0, 0x30

    :goto_5
    const/16 v1, 0x39

    if-le v0, v1, :cond_1

    const/16 v0, 0xb7

    .line 3030
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    const/16 v0, 0x300

    :goto_6
    const/16 v1, 0x36f

    if-le v0, v1, :cond_0

    return-void

    .line 3031
    :cond_0
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_6

    .line 3029
    :cond_1
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_5

    .line 3025
    :cond_2
    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_4

    .line 3024
    :cond_3
    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_3

    .line 3023
    :cond_4
    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_2

    .line 3022
    :cond_5
    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_1

    .line 3020
    :cond_6
    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0x76s
        0x65s
        0x72s
        0x73s
        0x69s
        0x6fs
        0x6es
    .end array-data

    nop

    :array_1
    .array-data 2
        0x6es
        0x63s
        0x6fs
        0x64s
        0x69s
        0x6es
        0x67s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x74s
        0x61s
        0x6es
        0x64s
        0x61s
        0x6cs
        0x6fs
        0x6es
        0x65s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x79s
        0x65s
        0x73s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x6es
        0x6fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5f

    .line 335
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufLoadFactor:I

    .line 338
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    cmp-long v0, v0, v2

    const/16 v1, 0x2000

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    :goto_0
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    .line 340
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufLoadFactor:I

    array-length v0, v0

    mul-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x64

    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufSoftLimit:I

    .line 350
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x40

    :goto_1
    new-array v0, v1, [C

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    const/4 v0, 0x1

    .line 2093
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    return-void
.end method

.method protected static final fastHash([CII)I
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 273
    :cond_0
    aget-char v0, p0, p1

    shl-int/lit8 v0, v0, 0x7

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    .line 275
    aget-char v1, p0, v1

    add-int/2addr v0, v1

    const/16 v1, 0x10

    if-le p2, v1, :cond_1

    shl-int/lit8 v0, v0, 0x7

    .line 280
    div-int/lit8 v1, p2, 0x4

    add-int/2addr v1, p1

    aget-char v1, p0, v1

    add-int/2addr v0, v1

    :cond_1
    const/16 v1, 0x8

    if-le p2, v1, :cond_2

    shl-int/lit8 v0, v0, 0x7

    .line 281
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    aget-char p0, p0, p1

    add-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method private static findFragment(I[CII)I
    .locals 4

    if-ge p2, p0, :cond_1

    if-le p0, p3, :cond_0

    move p0, p3

    :cond_0
    return p0

    :cond_1
    sub-int v0, p3, p2

    const/16 v1, 0x41

    if-le v0, v1, :cond_2

    add-int/lit8 p2, p3, -0xa

    :cond_2
    add-int/lit8 v0, p2, 0x1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-gt v0, p0, :cond_4

    goto :goto_0

    :cond_4
    sub-int v2, p3, v0

    if-le v2, v1, :cond_5

    goto :goto_0

    .line 658
    :cond_5
    aget-char v2, p1, v0

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_3

    sub-int v2, p2, v0

    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    :goto_0
    return v0
.end method

.method private static final setName(C)V
    .locals 2

    .line 3013
    sget-object v0, Lorg/xmlpull/mxp1/MXParser;->lookupNameChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    return-void
.end method

.method private static final setNameStart(C)V
    .locals 2

    .line 3016
    sget-object v0, Lorg/xmlpull/mxp1/MXParser;->lookupNameStartChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    invoke-static {p0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    return-void
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 556
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->ensureEntityCapacity()V

    .line 559
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 560
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    aput-object p1, v0, v1

    .line 562
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    aput-object p2, p1, v0

    .line 563
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    aput-object p2, p1, v0

    .line 564
    iget-boolean p1, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez p1, :cond_0

    .line 565
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    iget p2, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    aget-object v0, v0, p2

    array-length v1, v0

    invoke-static {v0, v4, v1}, Lorg/xmlpull/mxp1/MXParser;->fastHash([CII)I

    move-result v0

    aput v0, p1, p2

    .line 568
    :cond_0
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    return-void
.end method

.method protected ensureAttributesCapacity(I)V
    .locals 5

    .line 191
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lt p1, v2, :cond_8

    const/4 v3, 0x7

    if-le p1, v3, :cond_1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    if-lez v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v1

    .line 200
    :goto_2
    new-array v4, p1, [Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 201
    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    :cond_3
    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    .line 204
    new-array v0, p1, [Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 205
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    :cond_4
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    .line 208
    new-array v0, p1, [Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 209
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    :cond_5
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    .line 212
    new-array v0, p1, [Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 213
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    :cond_6
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    .line 216
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_8

    .line 217
    new-array p1, p1, [I

    if-eqz v3, :cond_7

    .line 218
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    :cond_7
    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    :cond_8
    return-void
.end method

.method protected ensureElementsCapacity()V
    .locals 6

    .line 108
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 109
    :goto_0
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    add-int/lit8 v4, v3, 0x1

    if-lt v4, v2, :cond_a

    const/4 v4, 0x7

    if-lt v3, v4, :cond_1

    mul-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    add-int/lit8 v3, v3, 0x2

    if-lez v2, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v1

    .line 118
    :goto_2
    new-array v5, v3, [Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 119
    invoke-static {v0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    :cond_3
    iput-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    .line 121
    new-array v0, v3, [Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 122
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    :cond_4
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    .line 124
    new-array v0, v3, [Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 125
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    :cond_5
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    .line 128
    new-array v0, v3, [I

    if-eqz v4, :cond_6

    .line 130
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 133
    :cond_6
    aput v1, v0, v1

    .line 135
    :goto_3
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    .line 138
    new-array v0, v3, [I

    if-eqz v4, :cond_7

    .line 140
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    :cond_7
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    .line 144
    new-array v0, v3, [I

    if-eqz v4, :cond_8

    .line 146
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    :cond_8
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    .line 150
    new-array v0, v3, [[C

    if-eqz v4, :cond_9

    .line 152
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    :cond_9
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    :cond_a
    return-void
.end method

.method protected ensureEntityCapacity()V
    .locals 8

    .line 298
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 299
    :goto_0
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    if-lt v2, v0, :cond_4

    const/4 v0, 0x7

    if-le v2, v0, :cond_1

    mul-int/lit8 v0, v2, 0x2

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 304
    :goto_1
    new-array v3, v0, [Ljava/lang/String;

    .line 305
    new-array v4, v0, [[C

    .line 306
    new-array v5, v0, [Ljava/lang/String;

    .line 307
    new-array v6, v0, [[C

    .line 308
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 309
    invoke-static {v7, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-static {v2, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-static {v2, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-static {v2, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    :cond_2
    iput-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    .line 315
    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    .line 316
    iput-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    .line 317
    iput-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    .line 319
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v2, :cond_4

    .line 320
    new-array v0, v0, [I

    .line 321
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    if-eqz v2, :cond_3

    .line 322
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    :cond_3
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    :cond_4
    return-void
.end method

.method protected ensureNamespacesCapacity(I)V
    .locals 5

    .line 234
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lt p1, v2, :cond_4

    const/4 v2, 0x7

    if-le p1, v2, :cond_1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    .line 240
    :goto_1
    new-array v2, p1, [Ljava/lang/String;

    .line 241
    new-array v3, p1, [Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 243
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    :cond_2
    iput-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    .line 249
    iput-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    .line 252
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_4

    .line 253
    new-array p1, p1, [I

    .line 254
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    if-eqz v0, :cond_3

    .line 255
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    :cond_3
    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    :cond_4
    return-void
.end method

.method protected ensurePC(I)V
    .locals 3

    const/16 v0, 0x2000

    if-le p1, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    const/16 p1, 0x4000

    .line 2950
    :goto_0
    new-array p1, p1, [C

    .line 2952
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2953
    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    return-void
.end method

.method protected fillBuf()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2818
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_12

    .line 2822
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufSoftLimit:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_7

    .line 2825
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    if-le v4, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2827
    :goto_0
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    if-eqz v5, :cond_1

    move v5, v2

    move v1, v3

    goto :goto_1

    :cond_1
    if-nez v1, :cond_3

    .line 2832
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    array-length v5, v5

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    move v5, v3

    :goto_1
    if-eqz v1, :cond_4

    .line 2845
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int/2addr v0, v4

    invoke-static {v1, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_6

    .line 2854
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    array-length v5, v1

    mul-int/lit8 v5, v5, 0x2

    .line 2855
    new-array v5, v5, [C

    sub-int/2addr v0, v4

    .line 2857
    invoke-static {v1, v4, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2858
    iput-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    .line 2859
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufLoadFactor:I

    if-lez v0, :cond_5

    .line 2860
    array-length v1, v5

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufSoftLimit:I

    .line 2866
    :cond_5
    :goto_2
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    .line 2867
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 2868
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2869
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2870
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    .line 2871
    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    goto :goto_3

    .line 2864
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "internal error in fillBuffer()"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2878
    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    array-length v1, v0

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    sub-int/2addr v1, v4

    const/16 v5, 0x2000

    if-le v1, v5, :cond_8

    goto :goto_4

    :cond_8
    array-length v1, v0

    sub-int v5, v1, v4

    .line 2879
    :goto_4
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_9

    .line 2881
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    return-void

    :cond_9
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 2889
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    if-nez v0, :cond_b

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    if-eqz v0, :cond_a

    goto :goto_5

    .line 2890
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "input contained no data"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2893
    :cond_b
    :goto_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2894
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-lez v1, :cond_10

    .line 2897
    const-string v1, " - expected end tag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2898
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-le v1, v2, :cond_c

    .line 2899
    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2901
    :cond_c
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2902
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    :goto_6
    if-gtz v1, :cond_f

    .line 2907
    const-string v1, " to close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2908
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    :goto_7
    if-lez v1, :cond_e

    .line 2910
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-eq v1, v2, :cond_d

    .line 2911
    const-string v2, " and"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2913
    :cond_d
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    aget v5, v5, v1

    invoke-direct {v2, v4, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 2914
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, " start tag <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2915
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, " from line "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 2917
    :cond_e
    const-string v1, ", parser stopped on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 2904
    :cond_f
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    aget v5, v5, v1

    invoke-direct {v2, v4, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 2905
    const-string v4, "</"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 2919
    :cond_10
    :goto_8
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "no more data available"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2923
    :cond_11
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "error reading input, returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2818
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "reader must be set before parsing is started"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeCount()I
    .locals 2

    .line 855
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 856
    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 3

    .line 871
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 873
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 875
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 873
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 3

    .line 861
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 863
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    if-ltz p1, :cond_1

    .line 864
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    .line 866
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 864
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 3

    .line 880
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 882
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ltz p1, :cond_1

    .line 883
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    .line 885
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 883
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 3

    .line 889
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 891
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 893
    const-string p1, "CDATA"

    return-object p1

    .line 891
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 3

    .line 906
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 908
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 910
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 908
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 916
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    if-eqz p2, :cond_9

    .line 922
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    .line 924
    const-string p1, ""

    :cond_0
    move-object v0, p1

    .line 927
    :goto_0
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt v2, p1, :cond_1

    goto :goto_2

    .line 928
    :cond_1
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object p1, p1, v2

    if-eq v0, p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 934
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object p1, p1, v2

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 938
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    move-object p1, v1

    :cond_5
    if-nez p1, :cond_8

    .line 943
    :goto_1
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt v2, p1, :cond_6

    :goto_2
    return-object v1

    .line 944
    :cond_6
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 946
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object p1, p1, v2

    return-object p1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 941
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "when namespaces processing is disabled attribute namespace must be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 919
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attribute name can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 916
    :cond_a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnNumber()I
    .locals 1

    .line 695
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    return v0
.end method

.method public getDepth()I
    .locals 1

    .line 641
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 957
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_4

    .line 473
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-boolean p1, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    return p1

    .line 477
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 479
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 483
    :cond_2
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 485
    iget-boolean p1, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    return p1

    :cond_3
    return v1

    .line 472
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "feature name should not be nulll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 690
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 816
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 818
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 820
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 822
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 823
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 825
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 3

    .line 789
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    const-string v2, ""

    if-ne v0, v1, :cond_1

    .line 791
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v2, v0, v1

    :cond_0
    return-object v2

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 793
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v2, v0, v1

    :cond_2
    return-object v2

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_3

    .line 617
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    .line 622
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    const-string p1, "http://www.w3.org/XML/1998/namespace"

    return-object p1

    .line 624
    :cond_0
    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 625
    const-string p1, "http://www.w3.org/2000/xmlns/"

    return-object p1

    .line 618
    :cond_1
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 619
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 628
    :cond_3
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-gez p1, :cond_5

    :cond_4
    const/4 p1, 0x0

    return-object p1

    .line 629
    :cond_5
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_6

    .line 630
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_1
.end method

.method public getNamespaceCount(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 576
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 581
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-gt p1, v0, :cond_1

    .line 583
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    aget p1, v0, p1

    return p1

    .line 581
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "napespace count mayt be for depth 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 592
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    if-ge p1, v0, :cond_0

    .line 593
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 595
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " exceeded number of available namespaces "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 604
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    if-ge p1, v0, :cond_0

    .line 605
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 607
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " exceedded number of available namespaces "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 6

    .line 672
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    const-string v2, "..."

    const/4 v3, 0x0

    if-gt v0, v1, :cond_2

    const/4 v4, 0x0

    .line 673
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    invoke-static {v4, v5, v0, v1}, Lorg/xmlpull/mxp1/MXParser;->findFragment(I[CII)I

    move-result v0

    .line 675
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    if-ge v0, v1, :cond_0

    .line 676
    new-instance v3, Ljava/lang/String;

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v4, v0

    invoke-direct {v3, v1, v0, v4}, Ljava/lang/String;-><init>([CII)V

    .line 678
    :cond_0
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    if-gtz v1, :cond_1

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 683
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, " seen "

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .line 833
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 835
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 837
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_3

    .line 501
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclVersion:Ljava/lang/String;

    return-object p1

    .line 503
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    return-object p1

    .line 505
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 506
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclContent:Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 500
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "property name should not be nulll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 723
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 731
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    return-object v0

    .line 733
    :cond_1
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 734
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 737
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    goto :goto_1

    .line 735
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 740
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    return-object v0

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 4

    .line 745
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 746
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v0, :cond_0

    .line 747
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    aput v0, p1, v2

    .line 748
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    sub-int/2addr v1, v0

    aput v1, p1, v3

    .line 749
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    return-object p1

    .line 751
    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    aput v0, p1, v2

    .line 752
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v1, v0

    aput v1, p1, v3

    .line 753
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    return-object p1

    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_3

    goto :goto_0

    .line 774
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "unknown text eventType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    .line 771
    aput v0, p1, v3

    aput v0, p1, v2

    const/4 p1, 0x0

    return-object p1

    .line 765
    :cond_5
    :goto_1
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    aput v0, p1, v2

    .line 766
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v1, v0

    aput v1, p1, v3

    .line 767
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    return-object p1
.end method

.method public isAttributeDefault(I)Z
    .locals 3

    .line 897
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 899
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmptyElementTag()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 848
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 850
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    return v0

    .line 848
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "parser must be on START_TAG to check for empty element"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected isNameChar(C)Z
    .locals 2

    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    .line 3070
    sget-object v1, Lorg/xmlpull/mxp1/MXParser;->lookupNameChar:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_3

    :cond_0
    if-lt p1, v0, :cond_1

    const/16 v0, 0x2027

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x202a

    if-lt p1, v0, :cond_2

    const/16 v0, 0x218f

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2800

    if-lt p1, v0, :cond_4

    const v0, 0xffef

    if-gt p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isNameStartChar(C)Z
    .locals 2

    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    .line 3036
    sget-object v1, Lorg/xmlpull/mxp1/MXParser;->lookupNameStartChar:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_3

    :cond_0
    if-lt p1, v0, :cond_1

    const/16 v0, 0x2027

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x202a

    if-lt p1, v0, :cond_2

    const/16 v0, 0x218f

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2800

    if-lt p1, v0, :cond_4

    const v0, 0xffef

    if-gt p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isS(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isWhitespace()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 701
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    return v2

    .line 718
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "no content available to check for whitespaces"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 703
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    :goto_1
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    if-lt v0, v3, :cond_3

    return v2

    .line 705
    :cond_3
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 709
    :cond_5
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    :goto_2
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    if-lt v0, v3, :cond_6

    return v2

    .line 711
    :cond_6
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_7

    return v1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected joinPC()V
    .locals 6

    .line 2960
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v0, v1

    .line 2961
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/2addr v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 2962
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v3, v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2964
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-static {v1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2965
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 2966
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    return-void
.end method

.method protected lookuEntityReplacement(I)[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2207
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_5

    .line 2208
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->fastHash([CII)I

    move-result v0

    .line 2210
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_0

    goto :goto_4

    .line 2212
    :cond_0
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    aget v2, v2, v1

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    aget-object v2, v2, v1

    array-length v3, v2

    if-ne p1, v3, :cond_4

    const/4 v3, 0x0

    :goto_1
    if-lt v3, p1, :cond_2

    .line 2218
    iget-boolean p1, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object p1, p1, v1

    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2219
    :cond_1
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    aget-object p1, p1, v1

    return-object p1

    .line 2216
    :cond_2
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    add-int/2addr v5, v3

    aget-char v4, v4, v5

    aget-char v5, v2, v3

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2223
    :cond_5
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 2224
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    add-int/lit8 p1, p1, -0x1

    :goto_3
    if-gez p1, :cond_6

    :goto_4
    const/4 p1, 0x0

    return-object p1

    .line 2227
    :cond_6
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-ne v0, v1, :cond_8

    .line 2228
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2229
    :cond_7
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    aget-object p1, v0, p1

    return-object p1

    :cond_8
    add-int/lit8 p1, p1, -0x1

    goto :goto_3
.end method

.method protected more()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2928
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->fillBuf()V

    .line 2929
    :cond_0
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 2931
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    goto :goto_0

    .line 2932
    :cond_1
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    :goto_0
    return v0
.end method

.method protected newString([CII)Ljava/lang/String;
    .locals 1

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected newStringIntern([CII)Ljava/lang/String;
    .locals 1

    .line 73
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1060
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    .line 1061
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method protected nextImpl()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1075
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1076
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 1077
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1078
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    .line 1079
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1080
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    .line 1081
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    .line 1082
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    aget v2, v4, v2

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    .line 1084
    :cond_0
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    if-eqz v2, :cond_1

    .line 1085
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 1086
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    const/4 v0, 0x3

    .line 1087
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1091
    :cond_1
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-lez v2, :cond_2d

    .line 1093
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    if-eqz v2, :cond_2

    .line 1094
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    .line 1095
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseStartTag()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1097
    :cond_2
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    if-eqz v2, :cond_3

    .line 1098
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    .line 1099
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseEndTag()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1105
    :cond_3
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    const/16 v4, 0x26

    const/16 v5, 0x3c

    if-eqz v2, :cond_4

    .line 1106
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    move v2, v5

    goto :goto_0

    .line 1108
    :cond_4
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    if-eqz v2, :cond_5

    .line 1109
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    move v2, v4

    goto :goto_0

    .line 1112
    :cond_5
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    .line 1114
    :goto_0
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v6, v3

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move v6, v1

    move v7, v6

    :goto_1
    const/4 v8, 0x4

    if-ne v2, v5, :cond_14

    if-eqz v6, :cond_6

    .line 1128
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v2, :cond_6

    .line 1129
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1130
    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v8

    .line 1133
    :cond_6
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    const/16 v9, 0x2f

    if-ne v2, v9, :cond_8

    .line 1135
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-nez v0, :cond_7

    if-eqz v6, :cond_7

    .line 1136
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    .line 1138
    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v8

    .line 1140
    :cond_7
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseEndTag()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    :cond_8
    const/16 v9, 0x21

    .line 1141
    const-string v10, "unexpected character in markup "

    if-ne v2, v9, :cond_e

    .line 1142
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    const/16 v8, 0x2d

    if-ne v2, v8, :cond_b

    .line 1145
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseComment()V

    .line 1146
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v2, :cond_9

    const/16 v0, 0x9

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1147
    :cond_9
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v2, :cond_a

    if-eqz v6, :cond_a

    goto :goto_2

    .line 1150
    :cond_a
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    goto/16 :goto_5

    :cond_b
    const/16 v8, 0x5b

    if-ne v2, v8, :cond_d

    .line 1157
    invoke-virtual {p0, v6}, Lorg/xmlpull/mxp1/MXParser;->parseCDSect(Z)V

    .line 1158
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v2, :cond_c

    const/4 v0, 0x5

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1159
    :cond_c
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1160
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v8, v2

    if-lez v8, :cond_1b

    .line 1165
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v2, :cond_1b

    move v6, v3

    move v7, v6

    goto/16 :goto_5

    .line 1209
    :cond_d
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_e
    const/16 v9, 0x3f

    if-ne v2, v9, :cond_11

    .line 1213
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parsePI()Z

    .line 1214
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v2, :cond_f

    const/16 v0, 0x8

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1215
    :cond_f
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v2, :cond_10

    if-eqz v6, :cond_10

    :goto_2
    move v7, v3

    goto/16 :goto_5

    .line 1218
    :cond_10
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    goto/16 :goto_5

    .line 1221
    :cond_11
    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1222
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-nez v0, :cond_12

    if-eqz v6, :cond_12

    .line 1223
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    .line 1225
    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v8

    .line 1227
    :cond_12
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseStartTag()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1229
    :cond_13
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_14
    if-ne v2, v4, :cond_1e

    .line 1237
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v2, :cond_15

    if-eqz v6, :cond_15

    .line 1238
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    .line 1239
    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v8

    .line 1241
    :cond_15
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v2, v8

    .line 1242
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    add-int/2addr v9, v8

    .line 1243
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseEntityRef()[C

    move-result-object v8

    .line 1244
    iget-boolean v10, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v10, :cond_16

    const/4 v0, 0x6

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    :cond_16
    if-nez v8, :cond_18

    .line 1247
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 1248
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v3, v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 1250
    :cond_17
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "could not resolve entity named \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1256
    :cond_18
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v2, v10

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v9, v10

    .line 1257
    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1258
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v2, :cond_1a

    if-eqz v6, :cond_19

    .line 1260
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    move v9, v1

    goto :goto_3

    .line 1263
    :cond_19
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1264
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    :cond_1a
    move v9, v7

    :goto_3
    move v2, v1

    .line 1269
    :goto_4
    array-length v7, v8

    if-lt v2, v7, :cond_1c

    move v7, v9

    .line 1345
    :cond_1b
    :goto_5
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    goto/16 :goto_1

    .line 1271
    :cond_1c
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v10, v10

    if-lt v7, v10, :cond_1d

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1272
    :cond_1d
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aget-char v11, v8, v2

    aput-char v11, v7, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1e
    if-eqz v7, :cond_1f

    .line 1280
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    move v7, v1

    .line 1296
    :cond_1f
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v6, :cond_21

    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v6, :cond_20

    goto :goto_6

    :cond_20
    move v6, v1

    goto :goto_7

    :cond_21
    :goto_6
    move v6, v3

    :goto_7
    move v8, v1

    :cond_22
    if-eqz v6, :cond_2b

    const/16 v9, 0xd

    const/16 v10, 0xa

    if-ne v2, v9, :cond_26

    .line 1312
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1314
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v8, :cond_24

    .line 1315
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v2, v8, :cond_23

    .line 1316
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_8

    .line 1318
    :cond_23
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1319
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 1323
    :cond_24
    :goto_8
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v8, v8

    if-lt v2, v8, :cond_25

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1324
    :cond_25
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v10, v2, v8

    move v8, v3

    goto :goto_a

    :cond_26
    if-ne v2, v10, :cond_28

    if-nez v8, :cond_2a

    .line 1327
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v2, :cond_2a

    .line 1328
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v8, v8

    if-lt v2, v8, :cond_27

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1329
    :cond_27
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v10, v2, v8

    goto :goto_9

    .line 1333
    :cond_28
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v8, :cond_2a

    .line 1334
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v9, v9

    if-lt v8, v9, :cond_29

    invoke-virtual {p0, v8}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1335
    :cond_29
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v2, v8, v9

    :cond_2a
    :goto_9
    move v8, v1

    .line 1340
    :cond_2b
    :goto_a
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    if-eq v2, v5, :cond_2c

    if-ne v2, v4, :cond_22

    .line 1342
    :cond_2c
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v6, v3

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    move v6, v3

    goto/16 :goto_1

    .line 1348
    :cond_2d
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenRoot:Z

    if-eqz v0, :cond_2e

    .line 1349
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseEpilog()I

    move-result v0

    return v0

    .line 1351
    :cond_2e
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseProlog()I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1046
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    .line 1047
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->isWhitespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    .line 1050
    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1051
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "expected START_TAG or END_TAG not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1022
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 1026
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    move-result v0

    const/4 v1, 0x4

    const/4 v3, 0x3

    if-ne v0, v1, :cond_1

    .line 1028
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1029
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    move-result v1

    if-ne v1, v3, :cond_0

    return-object v0

    .line 1031
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "TEXT must be immediately followed by END_TAG and not "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 1037
    const-string v0, ""

    return-object v0

    .line 1039
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "parser must be on START_TAG or TEXT to read text"

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1023
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "parser must be on START_TAG to read next text"

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1067
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    .line 1068
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method protected parseAttribute()C
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1849
    iget v1, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v2, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v1, v2

    .line 1850
    iget v3, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v4, v3, -0x1

    add-int/2addr v4, v2

    .line 1852
    iget-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    aget-char v2, v2, v3

    const/4 v3, 0x0

    const/16 v6, 0x3a

    if-ne v2, v6, :cond_1

    .line 1853
    iget-boolean v7, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "when namespaces processing enabled colon can not be at attribute name start"

    invoke-direct {v1, v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1858
    :cond_1
    :goto_0
    iget-boolean v7, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    const/16 v7, 0x78

    if-ne v2, v7, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v8

    .line 1861
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    const/4 v9, -0x1

    move v10, v8

    move v11, v9

    .line 1862
    :goto_2
    invoke-virtual {v0, v7}, Lorg/xmlpull/mxp1/MXParser;->isNameChar(C)Z

    move-result v12

    const/4 v13, 0x4

    const/4 v14, 0x2

    if-nez v12, :cond_2d

    .line 1887
    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    invoke-virtual {v0, v6}, Lorg/xmlpull/mxp1/MXParser;->ensureAttributesCapacity(I)V

    .line 1893
    iget-boolean v6, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v6, :cond_8

    if-ge v10, v13, :cond_3

    move v2, v8

    :cond_3
    if-eqz v2, :cond_6

    if-eq v11, v9, :cond_5

    .line 1898
    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v4, v14

    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v10, v11, v6

    sub-int/2addr v4, v10

    if-eqz v4, :cond_4

    .line 1904
    iget-object v10, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int v6, v11, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v10, v6, v4}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 1900
    :cond_4
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "namespace prefix is required after xmlns:  when namespaces are enabled"

    invoke-direct {v1, v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move-object v4, v3

    goto/16 :goto_4

    :cond_6
    if-eq v11, v9, :cond_7

    sub-int v6, v11, v4

    .line 1911
    iget-object v10, v0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v12, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    iget-object v13, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v15, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v4, v15

    invoke-virtual {v0, v13, v4, v6}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v12

    .line 1914
    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v4, v14

    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v10, v11, v6

    sub-int/2addr v4, v10

    .line 1915
    iget-object v10, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    iget v12, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    iget-object v13, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int v6, v11, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v13, v6, v4}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v12

    goto :goto_3

    .line 1921
    :cond_7
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v10, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    aput-object v3, v6, v10

    .line 1922
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    iget-object v12, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v14, v4, v13

    iget v15, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v15, v5

    sub-int/2addr v4, v13

    sub-int/2addr v15, v4

    invoke-virtual {v0, v12, v14, v15}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v10

    .line 1926
    :goto_3
    iget-boolean v6, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v6, :cond_9

    .line 1927
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    iget v10, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v12

    aput v12, v6, v10

    goto :goto_4

    .line 1933
    :cond_8
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    iget v10, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    iget-object v12, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v14, v4, v13

    iget v15, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v15, v5

    sub-int/2addr v4, v13

    sub-int/2addr v15, v4

    invoke-virtual {v0, v12, v14, v15}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v10

    .line 1937
    iget-boolean v6, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v6, :cond_9

    .line 1938
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    iget v10, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v12

    aput v12, v6, v10

    .line 1943
    :cond_9
    :goto_4
    invoke-virtual {v0, v7}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v6

    if-nez v6, :cond_2c

    const/16 v6, 0x3d

    if-ne v7, v6, :cond_2b

    .line 1946
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v6

    .line 1947
    :goto_5
    invoke-virtual {v0, v6}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v7

    if-nez v7, :cond_2a

    const/16 v7, 0x22

    if-eq v6, v7, :cond_b

    const/16 v7, 0x27

    if-ne v6, v7, :cond_a

    goto :goto_6

    .line 1952
    :cond_a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "attribute value must start with quotation or apostrophe not "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1961
    :cond_b
    :goto_6
    iput-boolean v8, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1962
    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v7, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 1963
    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v7, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move v7, v8

    .line 1966
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v10

    .line 1967
    const-string v12, "\'"

    if-ne v10, v6, :cond_18

    .line 2033
    iget-boolean v6, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v6, :cond_16

    if-eqz v2, :cond_16

    .line 2035
    iget-boolean v2, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v2, :cond_c

    .line 2036
    iget-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v7, v5

    sub-int/2addr v7, v6

    invoke-virtual {v0, v2, v6, v7}, Lorg/xmlpull/mxp1/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 2038
    :cond_c
    iget-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    sub-int/2addr v7, v6

    invoke-virtual {v0, v2, v6, v7}, Lorg/xmlpull/mxp1/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v2

    .line 2040
    :goto_8
    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-virtual {v0, v6}, Lorg/xmlpull/mxp1/MXParser;->ensureNamespacesCapacity(I)V

    if-eq v11, v9, :cond_e

    .line 2043
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_d

    .line 2048
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    aput-object v4, v6, v7

    .line 2049
    iget-boolean v6, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v6, :cond_f

    .line 2050
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    aput v9, v6, v7

    goto :goto_9

    .line 2044
    :cond_d
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "non-default namespace can not be declared to be empty string"

    invoke-direct {v1, v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2054
    :cond_e
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    aput-object v3, v6, v7

    .line 2055
    iget-boolean v6, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v6, :cond_f

    .line 2056
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    aput v9, v6, v7

    .line 2059
    :cond_f
    :goto_9
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    aput-object v2, v6, v7

    .line 2062
    iget-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    sub-int/2addr v6, v5

    aget v2, v2, v6

    sub-int/2addr v7, v5

    :goto_a
    if-ge v7, v2, :cond_10

    .line 2077
    iget v2, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    add-int/2addr v2, v5

    iput v2, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    goto/16 :goto_e

    .line 2065
    :cond_10
    iget-boolean v6, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v6, :cond_11

    if-nez v4, :cond_12

    :cond_11
    iget-object v8, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v8, v8, v7

    if-eq v8, v4, :cond_14

    :cond_12
    if-nez v6, :cond_13

    if-eqz v4, :cond_13

    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    aget v6, v6, v7

    if-ne v6, v9, :cond_13

    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_b

    :cond_13
    add-int/lit8 v7, v7, -0x1

    goto :goto_a

    :cond_14
    :goto_b
    if-nez v4, :cond_15

    .line 2071
    const-string v1, "default"

    goto :goto_c

    :cond_15
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2072
    :goto_c
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "duplicated namespace declaration for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, " prefix"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2080
    :cond_16
    iget-boolean v2, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v2, :cond_17

    .line 2081
    iget-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    iget v3, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    new-instance v4, Ljava/lang/String;

    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v8, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v8, v5

    sub-int/2addr v8, v7

    invoke-direct {v4, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    aput-object v4, v2, v3

    goto :goto_d

    .line 2084
    :cond_17
    iget-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    iget v3, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    new-instance v4, Ljava/lang/String;

    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iget v8, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    sub-int/2addr v8, v7

    invoke-direct {v4, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    aput-object v4, v2, v3

    .line 2087
    :goto_d
    iget v2, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/2addr v2, v5

    iput v2, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    .line 2089
    :goto_e
    iget v2, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    return v10

    :cond_18
    const/16 v13, 0x3c

    if-eq v10, v13, :cond_29

    const/16 v13, 0x26

    const/16 v14, 0xd

    if-ne v10, v13, :cond_1f

    .line 1974
    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v7, v5

    iput v7, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1975
    iget-boolean v13, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v13, :cond_1a

    .line 1976
    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v7, v13, :cond_19

    .line 1979
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_f

    .line 1981
    :cond_19
    iput-boolean v5, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1982
    iput v8, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v8, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 1987
    :cond_1a
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->parseEntityRef()[C

    move-result-object v13

    if-nez v13, :cond_1c

    .line 1990
    iget-object v1, v0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v1, :cond_1b

    .line 1991
    iget-object v1, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v2, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v4}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 1993
    :cond_1b
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "could not resolve entity named \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_1c
    move v7, v8

    .line 1998
    :goto_10
    array-length v12, v13

    if-lt v7, v12, :cond_1d

    goto/16 :goto_13

    .line 2000
    :cond_1d
    iget v12, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v15, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v15, v15

    if-lt v12, v15, :cond_1e

    invoke-virtual {v0, v12}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2001
    :cond_1e
    iget-object v12, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v15, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v9, v15, 0x1

    iput v9, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aget-char v9, v13, v7

    aput-char v9, v12, v15

    add-int/lit8 v7, v7, 0x1

    const/4 v9, -0x1

    goto :goto_10

    :cond_1f
    const/16 v9, 0x9

    const/16 v12, 0xa

    if-eq v10, v9, :cond_22

    if-eq v10, v12, :cond_22

    if-ne v10, v14, :cond_20

    goto :goto_11

    .line 2024
    :cond_20
    iget-boolean v7, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v7, :cond_27

    .line 2025
    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v9, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v9, v9

    if-lt v7, v9, :cond_21

    invoke-virtual {v0, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2026
    :cond_21
    iget-object v7, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v10, v7, v9

    goto :goto_13

    .line 2008
    :cond_22
    :goto_11
    iget-boolean v9, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v9, :cond_24

    .line 2009
    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v9, v5

    iput v9, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2010
    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v9, v13, :cond_23

    .line 2011
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_12

    .line 2013
    :cond_23
    iput-boolean v5, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2014
    iput v8, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iput v8, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 2018
    :cond_24
    :goto_12
    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v13, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v13, v13

    if-lt v9, v13, :cond_25

    invoke-virtual {v0, v9}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    :cond_25
    if-ne v10, v12, :cond_26

    if-nez v7, :cond_27

    .line 2020
    :cond_26
    iget-object v7, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/16 v12, 0x20

    aput-char v12, v7, v9

    :cond_27
    :goto_13
    if-ne v10, v14, :cond_28

    move v7, v5

    goto :goto_14

    :cond_28
    move v7, v8

    :goto_14
    const/4 v9, -0x1

    goto/16 :goto_7

    .line 1970
    :cond_29
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "markup not allowed inside attribute value - illegal < "

    invoke-direct {v1, v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1947
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v6

    const/4 v9, -0x1

    goto/16 :goto_5

    .line 1944
    :cond_2b
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "expected = after attribute name"

    invoke-direct {v1, v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1943
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    const/4 v9, -0x1

    goto/16 :goto_4

    .line 1863
    :cond_2d
    iget-boolean v9, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v9, :cond_35

    if-eqz v2, :cond_33

    const/4 v9, 0x5

    if-ge v10, v9, :cond_33

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v5, :cond_2e

    const/16 v9, 0x6d

    if-eq v7, v9, :cond_33

    :goto_15
    move v2, v8

    goto :goto_16

    :cond_2e
    if-ne v10, v14, :cond_2f

    const/16 v9, 0x6c

    if-eq v7, v9, :cond_33

    goto :goto_15

    :cond_2f
    const/4 v12, 0x3

    if-ne v10, v12, :cond_30

    const/16 v9, 0x6e

    if-eq v7, v9, :cond_33

    goto :goto_15

    :cond_30
    if-ne v10, v13, :cond_31

    const/16 v9, 0x73

    if-eq v7, v9, :cond_33

    goto :goto_15

    :cond_31
    if-ne v10, v9, :cond_33

    if-ne v7, v6, :cond_32

    goto :goto_16

    .line 1871
    :cond_32
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "after xmlns in attribute name must be colonwhen namespaces are enabled"

    invoke-direct {v1, v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_33
    :goto_16
    if-ne v7, v6, :cond_35

    const/4 v7, -0x1

    if-ne v11, v7, :cond_34

    .line 1881
    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v9, v5

    iget v11, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v11, v9

    goto :goto_17

    .line 1878
    :cond_34
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "only one colon is allowed in attribute name when namespaces are enabled"

    invoke-direct {v1, v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_35
    const/4 v7, -0x1

    .line 1884
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v9

    move/from16 v16, v9

    move v9, v7

    move/from16 v7, v16

    goto/16 :goto_2
.end method

.method protected parseCDSect(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2708
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v1, 0x43

    const/4 v2, 0x0

    .line 2709
    const-string v3, "expected <[CDATA[ for comment start"

    if-ne v0, v1, :cond_17

    .line 2711
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v1, 0x44

    if-ne v0, v1, :cond_16

    .line 2714
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_15

    .line 2717
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v4, 0x54

    if-ne v0, v4, :cond_14

    .line 2720
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    if-ne v0, v1, :cond_13

    .line 2723
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_12

    .line 2728
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v0, v1

    .line 2729
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    .line 2730
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    .line 2731
    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 2735
    :try_start_0
    iget-boolean p1, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez p1, :cond_3

    .line 2737
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le p1, v6, :cond_2

    .line 2738
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_2

    .line 2740
    :cond_2
    iput-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2741
    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    :cond_3
    :goto_2
    move p1, v5

    move v6, p1

    move v7, v6

    .line 2751
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v8
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0x5d

    if-ne v8, v9, :cond_6

    if-nez p1, :cond_5

    move p1, v4

    goto :goto_4

    :cond_5
    move v6, v4

    goto :goto_4

    :cond_6
    const/16 p1, 0x3e

    if-ne v8, p1, :cond_9

    if-eqz v6, :cond_8

    if-eqz v3, :cond_7

    .line 2809
    iget-boolean p1, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz p1, :cond_7

    .line 2810
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 2813
    :cond_7
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2814
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 p1, p1, -0x3

    iput p1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    return-void

    :cond_8
    move p1, v5

    move v6, p1

    goto :goto_4

    :cond_9
    move p1, v5

    :goto_4
    if-eqz v3, :cond_4

    const/16 v9, 0xd

    const/16 v10, 0xa

    if-ne v8, v9, :cond_d

    .line 2774
    :try_start_1
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v7, v0, v7

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2775
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2776
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v9, :cond_b

    if-le v8, v7, :cond_a

    .line 2778
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_5

    .line 2780
    :cond_a
    iput-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2781
    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 2785
    :cond_b
    :goto_5
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v8, v8

    if-lt v7, v8, :cond_c

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2786
    :cond_c
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v10, v7, v8

    move v7, v4

    goto :goto_3

    :cond_d
    if-ne v8, v10, :cond_10

    if-nez v7, :cond_f

    .line 2788
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v7, :cond_f

    .line 2789
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v8, v8

    if-lt v7, v8, :cond_e

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2790
    :cond_e
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v10, v7, v8

    :cond_f
    :goto_6
    move v7, v5

    goto/16 :goto_3

    .line 2794
    :cond_10
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v7, :cond_f

    .line 2795
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v9, v9

    if-lt v7, v9, :cond_11

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2796
    :cond_11
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v8, v7, v9
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 2804
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "CDATA section started on line "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " and column "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " was not closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2724
    :cond_12
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2721
    :cond_13
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2718
    :cond_14
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2715
    :cond_15
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2712
    :cond_16
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2709
    :cond_17
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected parseComment()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2243
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_12

    .line 2246
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_0

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2248
    :cond_0
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    .line 2249
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v5, :cond_1

    .line 2251
    :try_start_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v0, :cond_1

    move v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    move v0, v6

    :goto_0
    move v7, v6

    move v8, v7

    move v9, v8

    .line 2258
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v10

    const/16 v11, 0x3e

    if-eqz v7, :cond_4

    if-ne v10, v11, :cond_3

    goto :goto_2

    .line 2260
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "in comment after two dashes (--) next character must be > not "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v10}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    if-ne v10, v2, :cond_6

    if-nez v8, :cond_5

    move v8, v5

    goto :goto_4

    :cond_5
    move v7, v5

    goto :goto_3

    :cond_6
    if-ne v10, v11, :cond_9

    if-eqz v7, :cond_8

    .line 2321
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_7

    .line 2322
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2323
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v0, :cond_7

    .line 2324
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    :cond_7
    return-void

    :cond_8
    move v7, v6

    move v8, v7

    goto :goto_4

    :cond_9
    :goto_3
    move v8, v6

    :goto_4
    if-eqz v0, :cond_2

    const/16 v11, 0xd

    const/16 v12, 0xa

    if-ne v10, v11, :cond_d

    .line 2287
    :try_start_1
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v9, :cond_b

    .line 2288
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v9, v5

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2289
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v9, v10, :cond_a

    .line 2290
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_5

    .line 2292
    :cond_a
    iput-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2293
    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 2297
    :cond_b
    :goto_5
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v10, v10

    if-lt v9, v10, :cond_c

    invoke-virtual {p0, v9}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2298
    :cond_c
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v12, v9, v10

    move v9, v5

    goto/16 :goto_1

    :cond_d
    if-ne v10, v12, :cond_10

    if-nez v9, :cond_f

    .line 2300
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v9, :cond_f

    .line 2301
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v10, v10

    if-lt v9, v10, :cond_e

    invoke-virtual {p0, v9}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2302
    :cond_e
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v12, v9, v10

    :cond_f
    :goto_6
    move v9, v6

    goto/16 :goto_1

    .line 2306
    :cond_10
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v9, :cond_f

    .line 2307
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v11, v11

    if-lt v9, v11, :cond_11

    invoke-virtual {p0, v9}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2308
    :cond_11
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v10, v9, v11
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 2317
    :goto_7
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "comment started on line "

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " and column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " was not closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2244
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "expected <!-- for comment start"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected parseDocdecl()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2629
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v1, 0x4f

    const/4 v2, 0x0

    .line 2630
    const-string v3, "expected <!DOCTYPE"

    if-ne v0, v1, :cond_12

    .line 2632
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_11

    .line 2635
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_10

    .line 2638
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v1, 0x59

    if-ne v0, v1, :cond_f

    .line 2641
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_e

    .line 2644
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v1, 0x45

    if-ne v0, v1, :cond_d

    .line 2647
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2653
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v2, v1

    move v3, v2

    .line 2656
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    const/16 v6, 0x5d

    if-ne v5, v6, :cond_3

    add-int/lit8 v2, v2, -0x1

    :cond_3
    const/16 v6, 0x3e

    if-ne v5, v6, :cond_4

    if-nez v2, :cond_4

    .line 2694
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    return-void

    :cond_4
    if-eqz v0, :cond_1

    const/16 v6, 0xd

    const/16 v7, 0xa

    if-ne v5, v6, :cond_8

    .line 2666
    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v3, :cond_6

    .line 2667
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2668
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v3, v5, :cond_5

    .line 2669
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_2

    .line 2671
    :cond_5
    iput-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2672
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 2676
    :cond_6
    :goto_2
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v5, v5

    if-lt v3, v5, :cond_7

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2677
    :cond_7
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v7, v3, v5

    move v3, v4

    goto :goto_1

    :cond_8
    if-ne v5, v7, :cond_a

    if-nez v3, :cond_c

    .line 2679
    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v3, :cond_c

    .line 2680
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v5, v5

    if-lt v3, v5, :cond_9

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2681
    :cond_9
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v7, v3, v5

    goto :goto_3

    .line 2685
    :cond_a
    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v3, :cond_c

    .line 2686
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v6, v6

    if-lt v3, v6, :cond_b

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2687
    :cond_b
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v5, v3, v6

    :cond_c
    :goto_3
    move v3, v1

    goto/16 :goto_1

    .line 2645
    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2642
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2639
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2636
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2633
    :cond_11
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2630
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parseEndTag()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1603
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 1604
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 1608
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v1, v0, -0x3

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1609
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v3, v0

    .line 1611
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 1612
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isNameChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1621
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v3, v4

    .line 1623
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    .line 1624
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v5, v5, v6

    .line 1625
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    aget v6, v7, v6

    const-string v7, "> from line "

    const-string v8, "end tag name </"

    const/4 v9, 0x0

    if-ne v6, v4, :cond_5

    move v6, v9

    :goto_0
    if-lt v6, v4, :cond_3

    .line 1645
    :goto_1
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_1

    .line 1655
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1656
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    const/4 v0, 0x3

    .line 1657
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1647
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "expected > to finsh end tag not "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " from line "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1645
    :cond_2
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    goto :goto_1

    .line 1635
    :cond_3
    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    add-int/lit8 v11, v3, 0x1

    aget-char v3, v10, v3

    aget-char v10, v5, v6

    if-ne v3, v10, :cond_4

    add-int/lit8 v6, v6, 0x1

    move v3, v11

    goto :goto_0

    .line 1637
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v9, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1638
    new-instance v3, Ljava/lang/String;

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int/2addr v11, v6

    sub-int/2addr v11, v1

    invoke-direct {v3, v5, v11, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1639
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "> must be the same as start tag <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1627
    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget v1, v1, v6

    invoke-direct {v0, v5, v9, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1628
    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    invoke-direct {v1, v5, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1629
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "> must match start tag name <"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 1605
    :cond_6
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "expected name start and not "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseEntityRef()[C
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2099
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 2100
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2101
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    const/16 v2, 0x23

    const/16 v3, 0x61

    const/16 v4, 0x3b

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_8

    .line 2105
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    const/16 v2, 0x78

    const/16 v7, 0x39

    const/16 v8, 0x30

    if-ne v1, v2, :cond_4

    move v1, v6

    .line 2109
    :goto_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    if-lt v2, v8, :cond_0

    if-gt v2, v7, :cond_0

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, v2, -0x30

    :goto_1
    add-int/2addr v1, v2

    int-to-char v1, v1

    goto :goto_0

    :cond_0
    if-lt v2, v3, :cond_1

    const/16 v9, 0x66

    if-gt v2, v9, :cond_1

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, v2, -0x57

    goto :goto_1

    :cond_1
    const/16 v9, 0x41

    if-lt v2, v9, :cond_2

    const/16 v9, 0x46

    if-gt v2, v9, :cond_2

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, v2, -0x37

    goto :goto_1

    :cond_2
    if-ne v2, v4, :cond_3

    goto :goto_3

    .line 2119
    :cond_3
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "character reference (with hex value) may not contain "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move v2, v6

    :goto_2
    if-lt v1, v8, :cond_5

    if-gt v1, v7, :cond_5

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    int-to-char v2, v2

    .line 2136
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    goto :goto_2

    :cond_5
    if-ne v1, v4, :cond_7

    move v1, v2

    .line 2139
    :goto_3
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2140
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    aput-char v1, v0, v6

    .line 2141
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v1, :cond_6

    .line 2142
    invoke-virtual {p0, v0, v6, v5}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2144
    :cond_6
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    return-object v0

    .line 2132
    :cond_7
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "character reference (with decimal value) may not contain "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2149
    :cond_8
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    if-ne v1, v4, :cond_8

    .line 2150
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v1, v5

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2152
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v1, v2

    const/16 v4, 0x74

    const/4 v5, 0x2

    if-ne v1, v5, :cond_a

    .line 2153
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v8, v7, v2

    const/16 v9, 0x6c

    if-ne v8, v9, :cond_a

    add-int/lit8 v8, v2, 0x1

    aget-char v7, v7, v8

    if-ne v7, v4, :cond_a

    .line 2154
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_9

    .line 2155
    const-string v0, "<"

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2157
    :cond_9
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x3c

    aput-char v1, v0, v6

    return-object v0

    :cond_a
    const/16 v7, 0x70

    const/4 v8, 0x3

    if-ne v1, v8, :cond_c

    .line 2163
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v10, v9, v2

    if-ne v10, v3, :cond_c

    add-int/lit8 v10, v2, 0x1

    aget-char v10, v9, v10

    const/16 v11, 0x6d

    if-ne v10, v11, :cond_c

    add-int/lit8 v10, v2, 0x2

    aget-char v9, v9, v10

    if-ne v9, v7, :cond_c

    .line 2165
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_b

    .line 2166
    const-string v0, "&"

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2168
    :cond_b
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x26

    aput-char v1, v0, v6

    return-object v0

    :cond_c
    if-ne v1, v5, :cond_e

    .line 2170
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v9, v5, v2

    const/16 v10, 0x67

    if-ne v9, v10, :cond_e

    add-int/lit8 v9, v2, 0x1

    aget-char v5, v5, v9

    if-ne v5, v4, :cond_e

    .line 2171
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_d

    .line 2172
    const-string v0, ">"

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2174
    :cond_d
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x3e

    aput-char v1, v0, v6

    return-object v0

    :cond_e
    const/16 v5, 0x6f

    const/4 v9, 0x4

    if-ne v1, v9, :cond_10

    .line 2176
    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v11, v10, v2

    if-ne v11, v3, :cond_10

    add-int/lit8 v3, v2, 0x1

    aget-char v3, v10, v3

    if-ne v3, v7, :cond_10

    add-int/lit8 v3, v2, 0x2

    aget-char v3, v10, v3

    if-ne v3, v5, :cond_10

    add-int/lit8 v3, v2, 0x3

    aget-char v3, v10, v3

    const/16 v7, 0x73

    if-ne v3, v7, :cond_10

    .line 2179
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_f

    .line 2180
    const-string v0, "\'"

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2182
    :cond_f
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x27

    aput-char v1, v0, v6

    return-object v0

    :cond_10
    if-ne v1, v9, :cond_12

    .line 2184
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v7, v3, v2

    const/16 v9, 0x71

    if-ne v7, v9, :cond_12

    add-int/lit8 v7, v2, 0x1

    aget-char v7, v3, v7

    const/16 v9, 0x75

    if-ne v7, v9, :cond_12

    add-int/lit8 v7, v2, 0x2

    aget-char v7, v3, v7

    if-ne v7, v5, :cond_12

    add-int/2addr v2, v8

    aget-char v2, v3, v2

    if-ne v2, v4, :cond_12

    .line 2187
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_11

    .line 2188
    const-string v0, "\""

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2190
    :cond_11
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x22

    aput-char v1, v0, v6

    return-object v0

    .line 2193
    :cond_12
    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->lookuEntityReplacement(I)[C

    move-result-object v1

    if-eqz v1, :cond_13

    return-object v1

    .line 2198
    :cond_13
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v1, :cond_14

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    :cond_14
    return-object v0
.end method

.method protected parseEpilog()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1486
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_17

    .line 1489
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    if-eqz v0, :cond_0

    .line 1490
    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v2

    .line 1493
    :cond_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/4 v4, 0x7

    .line 1498
    :try_start_0
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    if-eqz v5, :cond_2

    .line 1499
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v6, v2

    aget-char v5, v5, v6

    goto :goto_1

    .line 1501
    :cond_2
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v5

    .line 1503
    :goto_1
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1504
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v6, v2

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    move v6, v3

    move v7, v6

    :goto_2
    const/16 v8, 0x3c

    const/16 v9, 0xa

    if-ne v5, v8, :cond_a

    if-eqz v6, :cond_3

    .line 1509
    :try_start_1
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v5, :cond_3

    .line 1510
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1511
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1512
    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v4

    .line 1514
    :cond_3
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v5

    const/16 v8, 0x3f

    if-ne v5, v8, :cond_4

    .line 1518
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parsePI()Z

    .line 1519
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v5, :cond_14

    const/16 v0, 0x8

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    :cond_4
    const/16 v8, 0x21

    if-ne v5, v8, :cond_7

    .line 1522
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v5

    const/16 v8, 0x44

    if-ne v5, v8, :cond_5

    .line 1524
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseDocdecl()V

    .line 1525
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v5, :cond_14

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v9

    :cond_5
    const/16 v8, 0x2d

    if-ne v5, v8, :cond_6

    .line 1527
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseComment()V

    .line 1528
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v5, :cond_14

    const/16 v0, 0x9

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1530
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "unexpected markup <!"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    const/16 v0, 0x2f

    if-eq v5, v0, :cond_9

    .line 1536
    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1537
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "start tag not allowed in epilog but got "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1540
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "in epilog expected ignorable content and not "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1534
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "end tag not allowed in epilog but got "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1544
    :cond_a
    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v8
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_15

    if-eqz v0, :cond_13

    const/16 v6, 0xd

    if-ne v5, v6, :cond_e

    .line 1552
    :try_start_2
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v5, :cond_c

    .line 1553
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v5, v2

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1554
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v5, v6, :cond_b

    .line 1555
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_3

    .line 1557
    :cond_b
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1558
    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 1562
    :cond_c
    :goto_3
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v6, v6

    if-lt v5, v6, :cond_d

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1563
    :cond_d
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v9, v5, v6

    move v6, v2

    move v7, v6

    goto :goto_5

    :catch_0
    move v3, v2

    goto :goto_6

    :cond_e
    if-ne v5, v9, :cond_11

    if-nez v7, :cond_10

    .line 1565
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v5, :cond_10

    .line 1566
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v6, v6

    if-lt v5, v6, :cond_f

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1567
    :cond_f
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v9, v5, v6

    :cond_10
    :goto_4
    move v6, v2

    move v7, v3

    goto :goto_5

    .line 1571
    :cond_11
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v6, :cond_10

    .line 1572
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v7, v7

    if-lt v6, v7, :cond_12

    invoke-virtual {p0, v6}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1573
    :cond_12
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v5, v6, v7
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_13
    move v6, v2

    .line 1583
    :cond_14
    :goto_5
    :try_start_3
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v5

    goto/16 :goto_2

    .line 1579
    :cond_15
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "in epilog non whitespace content is not allowed but got "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move v3, v6

    .line 1590
    :catch_2
    :goto_6
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    .line 1591
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_16

    if-eqz v3, :cond_16

    .line 1592
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1593
    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v4

    .line 1595
    :cond_16
    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v2

    .line 1487
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "already reached end of XML input"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected parsePI()Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2337
    iget-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_0

    iget v2, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v2, v1, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2338
    :cond_0
    iget v2, v1, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    .line 2339
    iget v3, v1, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    .line 2340
    iget v4, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iget v5, v1, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v4, v5

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    .line 2342
    iget-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v7, -0x1

    move v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2350
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v11
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v12, 0x3f

    if-ne v11, v12, :cond_2

    move v9, v6

    goto/16 :goto_3

    :cond_2
    const/16 v12, 0x3e

    if-ne v11, v12, :cond_4

    if-eqz v9, :cond_c

    .line 2441
    iget-boolean v2, v1, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v2, :cond_3

    .line 2442
    iget v2, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    if-eqz v0, :cond_3

    .line 2444
    iget v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    sub-int/2addr v0, v6

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    :cond_3
    return v6

    :cond_4
    if-ne v8, v7, :cond_c

    .line 2359
    :try_start_1
    invoke-virtual {v1, v11}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2360
    iget v8, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v8, v6

    iget v9, v1, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v8, v9

    sub-int v9, v8, v4

    const/4 v12, 0x3

    if-ne v9, v12, :cond_c

    .line 2364
    iget-object v9, v1, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v13, v9, v4

    const/16 v14, 0x78

    if-eq v13, v14, :cond_5

    const/16 v15, 0x58

    if-ne v13, v15, :cond_c

    :cond_5
    add-int/lit8 v15, v4, 0x1

    aget-char v15, v9, v15

    const/16 v7, 0x6d

    if-eq v15, v7, :cond_6

    const/16 v6, 0x4d

    if-ne v15, v6, :cond_c

    :cond_6
    add-int/lit8 v6, v4, 0x2

    aget-char v6, v9, v6

    const/16 v9, 0x6c

    if-eq v6, v9, :cond_7

    const/16 v5, 0x4c

    if-ne v6, v5, :cond_c

    :cond_7
    const/4 v0, 0x0

    if-gt v4, v12, :cond_b

    if-eq v13, v14, :cond_9

    if-eq v15, v7, :cond_9

    if-ne v6, v9, :cond_8

    goto :goto_2

    .line 2378
    :cond_8
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "XMLDecl must have xml name in lowercase"

    invoke-direct {v4, v5, v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2383
    :cond_9
    :goto_2
    invoke-virtual {v1, v11}, Lorg/xmlpull/mxp1/MXParser;->parseXmlDecl(C)V

    .line 2384
    iget-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_a

    iget v0, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2385
    :cond_a
    iget v0, v1, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v4, v0

    add-int/2addr v4, v12

    .line 2386
    iget v0, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, v4

    .line 2387
    iget-object v5, v1, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    invoke-virtual {v1, v5, v4, v0}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/xmlpull/mxp1/MXParser;->xmlDeclContent:Ljava/lang/String;

    const/4 v0, 0x0

    return v0

    .line 2370
    :cond_b
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "processing instruction can not have PITarget with reserveld xml name"

    invoke-direct {v4, v5, v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    :cond_c
    const/4 v9, 0x0

    :goto_3
    if-eqz v0, :cond_15

    const/16 v5, 0xd

    const/16 v6, 0xa

    if-ne v11, v5, :cond_10

    .line 2400
    iget-boolean v5, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v5, :cond_e

    .line 2401
    iget v5, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    iput v5, v1, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2402
    iget v10, v1, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v5, v10, :cond_d

    .line 2403
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    const/4 v5, 0x0

    goto :goto_4

    .line 2405
    :cond_d
    iput-boolean v7, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    const/4 v5, 0x0

    .line 2406
    iput v5, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v5, v1, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    goto :goto_4

    :cond_e
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 2410
    :goto_4
    iget v10, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v11, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v11, v11

    if-lt v10, v11, :cond_f

    invoke-virtual {v1, v10}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2411
    :cond_f
    iget-object v10, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v11, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v6, v10, v11

    move v6, v7

    move v10, v6

    goto :goto_6

    :cond_10
    const/4 v5, 0x0

    const/4 v7, 0x1

    if-ne v11, v6, :cond_13

    if-nez v10, :cond_12

    .line 2413
    iget-boolean v10, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v10, :cond_12

    .line 2414
    iget v10, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v11, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v11, v11

    if-lt v10, v11, :cond_11

    invoke-virtual {v1, v10}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2415
    :cond_11
    iget-object v10, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v11, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v6, v10, v11

    :cond_12
    :goto_5
    move v10, v5

    move v6, v7

    goto :goto_6

    .line 2419
    :cond_13
    iget-boolean v6, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v6, :cond_12

    .line 2420
    iget v6, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v10, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v10, v10

    if-lt v6, v10, :cond_14

    invoke-virtual {v1, v6}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2421
    :cond_14
    iget-object v6, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v10, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v10, 0x1

    iput v12, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v11, v6, v10
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_15
    const/4 v6, 0x1

    :goto_6
    const/4 v7, -0x1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 2429
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "processing instruction started on line "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, " and column "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " was not closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected parseProlog()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1363
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v2, v1

    aget-char v0, v0, v2

    goto :goto_0

    .line 1366
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 1369
    :goto_0
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const v2, 0xfffe

    if-eq v0, v2, :cond_1

    const v2, 0xfeff

    if-ne v0, v2, :cond_2

    .line 1380
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    goto :goto_1

    .line 1374
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "first character in input was UNICODE noncharacter (0xFFFE)- input requires int swapping"

    invoke-direct {v0, v1, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 1383
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1385
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v4, v1

    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1386
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-ne v4, v1, :cond_3

    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    move v5, v2

    move v6, v5

    :goto_3
    const/16 v7, 0x3c

    const/16 v8, 0xa

    if-ne v0, v7, :cond_d

    if-eqz v5, :cond_4

    .line 1394
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_4

    .line 1395
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1396
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    const/4 v0, 0x7

    .line 1397
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1399
    :cond_4
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v7, 0x3f

    if-ne v0, v7, :cond_6

    .line 1403
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parsePI()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1404
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x8

    .line 1405
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1409
    :cond_5
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move v5, v2

    goto/16 :goto_6

    :cond_6
    const/16 v7, 0x21

    if-ne v0, v7, :cond_a

    .line 1414
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v7, 0x44

    if-ne v0, v7, :cond_8

    .line 1416
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenDocdecl:Z

    if-nez v0, :cond_7

    .line 1420
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenDocdecl:Z

    .line 1421
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseDocdecl()V

    .line 1422
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_17

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v8

    .line 1417
    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "only one docdecl allowed in XML document"

    invoke-direct {v0, v1, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_9

    .line 1424
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseComment()V

    .line 1425
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x9

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1427
    :cond_9
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "unexpected markup <!"

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    const/16 v2, 0x2f

    .line 1430
    const-string v4, "expected start tag name and not "

    if-eq v0, v2, :cond_c

    .line 1433
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1434
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenRoot:Z

    .line 1435
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseStartTag()I

    move-result v0

    return v0

    .line 1437
    :cond_b
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1431
    :cond_c
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1440
    :cond_d
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v5

    if-eqz v5, :cond_18

    if-eqz v4, :cond_16

    const/16 v5, 0xd

    if-ne v0, v5, :cond_11

    .line 1448
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v0, :cond_f

    .line 1449
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1450
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v0, v5, :cond_e

    .line 1451
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_4

    .line 1453
    :cond_e
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1454
    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 1458
    :cond_f
    :goto_4
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v5, v5

    if-lt v0, v5, :cond_10

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1459
    :cond_10
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v8, v0, v5

    move v5, v1

    move v6, v5

    goto :goto_6

    :cond_11
    if-ne v0, v8, :cond_13

    if-nez v6, :cond_15

    .line 1461
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v0, :cond_15

    .line 1462
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v5, v5

    if-lt v0, v5, :cond_12

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1463
    :cond_12
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v8, v0, v5

    goto :goto_5

    .line 1467
    :cond_13
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v5, :cond_15

    .line 1468
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v6, v6

    if-lt v5, v6, :cond_14

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1469
    :cond_14
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v0, v5, v6

    :cond_15
    :goto_5
    move v5, v1

    move v6, v2

    goto :goto_6

    :cond_16
    move v5, v1

    .line 1479
    :cond_17
    :goto_6
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    goto/16 :goto_3

    .line 1475
    :cond_18
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "only whitespace content allowed before start tag and not "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseStartTag()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1664
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    .line 1666
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v2, v0, -0x2

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    const/4 v2, 0x0

    .line 1668
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 1669
    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v3, v0, -0x1

    .line 1671
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v3, v4

    .line 1673
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int/2addr v0, v1

    aget-char v0, v4, v0

    const/4 v4, 0x0

    const/16 v5, 0x3a

    if-ne v0, v5, :cond_1

    .line 1674
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "when namespaces processing enabled colon can not be at element name start"

    invoke-direct {v0, v1, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    move v6, v0

    .line 1678
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    .line 1679
    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->isNameChar(C)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 1689
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->ensureElementsCapacity()V

    .line 1694
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v5, v1

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v9, v3, v8

    sub-int/2addr v5, v9

    .line 1695
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v11, v9, v10

    if-eqz v11, :cond_3

    array-length v11, v11

    if-ge v11, v5, :cond_4

    :cond_3
    mul-int/lit8 v11, v5, 0x2

    .line 1696
    new-array v11, v11, [C

    aput-object v11, v9, v10

    .line 1698
    :cond_4
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int v8, v3, v8

    aget-object v9, v9, v10

    invoke-static {v11, v8, v9, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1699
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aput v5, v8, v9

    .line 1700
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    aput v10, v8, v9

    .line 1706
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    const/4 v10, 0x2

    if-eqz v8, :cond_6

    if-eq v6, v0, :cond_5

    .line 1708
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v8, v3, v8

    sub-int v3, v6, v3

    invoke-virtual {p0, v5, v8, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    .line 1710
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    add-int/lit8 v9, v6, 0x1

    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v9, v11

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v12, v10

    sub-int/2addr v6, v11

    sub-int/2addr v12, v6

    invoke-virtual {p0, v8, v9, v12}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    goto :goto_3

    .line 1714
    :cond_5
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    aput-object v4, v0, v9

    .line 1715
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v3, v8

    invoke-virtual {p0, v6, v3, v5}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    goto :goto_2

    .line 1719
    :cond_6
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v3, v8

    invoke-virtual {p0, v6, v3, v5}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    :goto_2
    move-object v3, v4

    .line 1726
    :goto_3
    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v0

    if-nez v0, :cond_1e

    const/16 v0, 0x3e

    if-ne v7, v0, :cond_7

    goto :goto_4

    :cond_7
    const/16 v5, 0x2f

    if-ne v7, v5, :cond_1c

    .line 1731
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    if-nez v5, :cond_1b

    .line 1733
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 1734
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v5

    if-ne v5, v0, :cond_1a

    .line 1750
    :goto_4
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    const-string v6, " and "

    const-string v7, "duplicated attributes "

    if-eqz v0, :cond_14

    .line 1751
    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1752
    const-string v5, ""

    if-nez v0, :cond_9

    if-nez v3, :cond_8

    move-object v0, v5

    goto :goto_5

    .line 1756
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "could not determine namespace bound to element prefix "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1762
    :cond_9
    :goto_5
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aput-object v0, v3, v8

    move v0, v2

    .line 1770
    :goto_6
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt v0, v3, :cond_11

    move v3, v1

    .line 1791
    :goto_7
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt v3, v0, :cond_a

    goto/16 :goto_b

    :cond_a
    move v0, v2

    :goto_8
    if-lt v0, v3, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1795
    :cond_b
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v5, v1, v0

    aget-object v1, v1, v3

    if-ne v5, v1, :cond_10

    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v5, v1, v0

    aget-object v1, v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    aget v5, v1, v0

    aget v1, v1, v3

    if-ne v5, v1, :cond_10

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v5, v1, v0

    aget-object v1, v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1803
    :cond_d
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 1804
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v5, ":"

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v0, v8, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1805
    :cond_e
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, v3

    .line 1806
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v2, v2, v3

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1807
    :cond_f
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 1772
    :cond_11
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_13

    .line 1774
    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 1781
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aput-object v8, v3, v0

    goto :goto_9

    .line 1776
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "could not determine namespace bound to attribute prefix "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1783
    :cond_13
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aput-object v5, v3, v0

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 1818
    :cond_14
    :goto_a
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt v1, v0, :cond_15

    .line 1838
    :goto_b
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    aput v2, v0, v1

    .line 1839
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1840
    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v10

    :cond_15
    move v0, v2

    :goto_c
    if-lt v0, v1, :cond_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1822
    :cond_16
    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-eqz v3, :cond_17

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v5, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_17
    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v3, :cond_19

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    aget v5, v3, v0

    aget v3, v3, v1

    if-ne v5, v3, :cond_19

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v5, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_d

    .line 1829
    :cond_18
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v2, v0

    .line 1830
    aget-object v1, v2, v1

    .line 1831
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    :cond_19
    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1735
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "expected > to end empty tag not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1731
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "repeated / in tag declaration"

    invoke-direct {v0, v1, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1738
    :cond_1c
    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1739
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseAttribute()C

    .line 1740
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    goto/16 :goto_3

    .line 1743
    :cond_1d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "start tag unexpected character "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1726
    :cond_1e
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    goto/16 :goto_3

    :cond_1f
    if-ne v7, v5, :cond_2

    .line 1680
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v7, :cond_2

    if-ne v6, v0, :cond_20

    .line 1684
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v6, v1

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v6, v7

    goto/16 :goto_1

    .line 1681
    :cond_20
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "only one colon is allowed in name of element when namespaces are enabled"

    invoke-direct {v0, v1, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected parseXmlDecl(C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2463
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    const/4 v1, 0x0

    .line 2464
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    .line 2470
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result p1

    .line 2471
    sget-object v2, Lorg/xmlpull/mxp1/MXParser;->VERSION:[C

    invoke-virtual {p0, p1, v2}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result p1

    .line 2473
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result p1

    const/16 v2, 0x3d

    const/4 v3, 0x0

    if-ne p1, v2, :cond_8

    .line 2478
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    .line 2479
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v2

    const/16 p1, 0x27

    if-eq v2, p1, :cond_1

    const/16 p1, 0x22

    if-ne v2, p1, :cond_0

    goto :goto_0

    .line 2481
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "expected apostrophe (\') or quotation mark (\") after version and not "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2487
    :cond_1
    :goto_0
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 2488
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    :goto_1
    if-ne p1, v2, :cond_2

    .line 2500
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr p1, v0

    .line 2501
    invoke-virtual {p0, v4, p1}, Lorg/xmlpull/mxp1/MXParser;->parseXmlDeclWithVersion(II)V

    .line 2502
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    return-void

    :cond_2
    const/16 v5, 0x61

    if-lt p1, v5, :cond_3

    const/16 v5, 0x7a

    if-le p1, v5, :cond_7

    :cond_3
    const/16 v5, 0x41

    if-lt p1, v5, :cond_4

    const/16 v5, 0x5a

    if-le p1, v5, :cond_7

    :cond_4
    const/16 v5, 0x30

    if-lt p1, v5, :cond_5

    const/16 v5, 0x39

    if-le p1, v5, :cond_7

    :cond_5
    const/16 v5, 0x5f

    if-eq p1, v5, :cond_7

    const/16 v5, 0x2e

    if-eq p1, v5, :cond_7

    const/16 v5, 0x3a

    if-eq p1, v5, :cond_7

    const/16 v5, 0x2d

    if-ne p1, v5, :cond_6

    goto :goto_2

    .line 2494
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "<?xml version value expected to be in ([a-zA-Z0-9_.:] | \'-\') not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2498
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    goto :goto_1

    .line 2475
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "expected equals sign (=) after version and not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected parseXmlDeclWithVersion(II)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    sub-int v2, p2, v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_16

    .line 2510
    iget-object v3, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v5, v3, v1

    const/16 v6, 0x31

    if-ne v5, v6, :cond_16

    add-int/lit8 v5, v1, 0x1

    aget-char v5, v3, v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_16

    add-int/lit8 v5, v1, 0x2

    aget-char v5, v3, v5

    const/16 v7, 0x30

    if-ne v5, v7, :cond_16

    .line 2519
    invoke-virtual {v0, v3, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclVersion:Ljava/lang/String;

    .line 2522
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2523
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    const/16 v2, 0x65

    .line 2524
    const-string v3, "expected apostrophe (\') or quotation mark (\") after encoding and not "

    const/16 v5, 0x22

    const/16 v8, 0x27

    const/16 v9, 0x3d

    const/4 v10, 0x1

    if-ne v1, v2, :cond_c

    .line 2525
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2526
    sget-object v2, Lorg/xmlpull/mxp1/MXParser;->NCODING:[C

    invoke-virtual {v0, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v1

    .line 2527
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    if-ne v1, v9, :cond_b

    .line 2532
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2533
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    if-eq v1, v8, :cond_1

    if-ne v1, v5, :cond_0

    goto :goto_0

    .line 2535
    :cond_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2540
    :cond_1
    :goto_0
    iget v2, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 2541
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v11

    const/16 v12, 0x5a

    const/16 v13, 0x7a

    const/16 v14, 0x41

    const/16 v15, 0x61

    if-lt v11, v15, :cond_2

    if-le v11, v13, :cond_3

    :cond_2
    if-lt v11, v14, :cond_a

    if-gt v11, v12, :cond_a

    .line 2549
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v11

    :goto_1
    if-ne v11, v1, :cond_4

    .line 2560
    iget v1, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v1, v10

    .line 2564
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int/2addr v1, v2

    invoke-virtual {v0, v6, v2, v1}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    .line 2565
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    goto :goto_3

    :cond_4
    if-lt v11, v15, :cond_5

    if-le v11, v13, :cond_9

    :cond_5
    if-lt v11, v14, :cond_6

    if-le v11, v12, :cond_9

    :cond_6
    if-lt v11, v7, :cond_7

    const/16 v7, 0x39

    if-le v11, v7, :cond_9

    :cond_7
    if-eq v11, v6, :cond_9

    const/16 v7, 0x5f

    if-eq v11, v7, :cond_9

    const/16 v7, 0x2d

    if-ne v11, v7, :cond_8

    goto :goto_2

    .line 2554
    :cond_8
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "<?xml encoding value expected to be in ([A-Za-z0-9._] | \'-\') not "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2558
    :cond_9
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v11

    const/16 v7, 0x30

    goto :goto_1

    .line 2545
    :cond_a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "<?xml encoding name expected to start with [A-Za-z] not "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2529
    :cond_b
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "expected equals sign (=) after encoding and not "

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2568
    :cond_c
    :goto_3
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_13

    .line 2571
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2572
    sget-object v2, Lorg/xmlpull/mxp1/MXParser;->TANDALONE:[C

    invoke-virtual {v0, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v1

    .line 2573
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    if-ne v1, v9, :cond_12

    .line 2579
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2580
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    if-eq v1, v8, :cond_e

    if-ne v1, v5, :cond_d

    goto :goto_4

    .line 2582
    :cond_d
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2588
    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    const/16 v3, 0x79

    if-ne v2, v3, :cond_f

    .line 2590
    sget-object v3, Lorg/xmlpull/mxp1/MXParser;->YES:[C

    invoke-virtual {v0, v2, v3}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v2

    .line 2592
    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v10}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v3, v0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    goto :goto_5

    :cond_f
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_11

    .line 2594
    sget-object v3, Lorg/xmlpull/mxp1/MXParser;->NO:[C

    invoke-virtual {v0, v2, v3}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v2

    .line 2596
    new-instance v3, Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v3, v0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    :goto_5
    if-ne v2, v1, :cond_10

    .line 2607
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    goto :goto_6

    .line 2603
    :cond_10
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "expected "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, " after standalone value not "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 2598
    :cond_11
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "expected \'yes\' or \'no\' after standalone and not "

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2575
    :cond_12
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "expected equals sign (=) after standalone and not "

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2611
    :cond_13
    :goto_6
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    const/16 v2, 0x3f

    .line 2612
    const-string v3, "expected ?> as last part of <?xml not "

    if-ne v1, v2, :cond_15

    .line 2617
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_14

    return-void

    .line 2619
    :cond_14
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2613
    :cond_15
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2515
    :cond_16
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "only 1.0 is supported as <?xml version not \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    invoke-direct {v6, v7, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v6}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected printable(C)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 3103
    const-string p1, "\\n"

    return-object p1

    :cond_0
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 3105
    const-string p1, "\\r"

    return-object p1

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 3107
    const-string p1, "\\t"

    return-object p1

    :cond_2
    const/16 v0, 0x27

    if-ne p1, v0, :cond_3

    .line 3109
    const-string p1, "\\\'"

    return-object p1

    :cond_3
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_5

    const/16 v0, 0x20

    if-ge p1, v0, :cond_4

    goto :goto_0

    .line 3113
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3111
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected printable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3118
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3119
    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    .line 3123
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3121
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 963
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    const-string v1, ")"

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 964
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "processing namespaces must be enabled on parser (or factory) to have possible namespaces delcared on elements (postion:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 969
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return-void

    .line 973
    :cond_4
    :goto_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "expected event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    const-string v4, ""

    if-eqz p3, :cond_5

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, " with name \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    move-object v5, v4

    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, " and"

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    move-object v6, v5

    goto :goto_3

    :cond_6
    move-object v6, v4

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p2, :cond_7

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, " with namespace \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_7
    move-object v6, v4

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, " but got"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v6

    if-eq p1, v6, :cond_8

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v6, " "

    invoke-direct {p1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v6, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_8
    move-object p1, v4

    :goto_5
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    if-eqz p3, :cond_9

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v6, " name \'"

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_9
    move-object v2, v4

    :goto_6
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    goto :goto_7

    :cond_a
    move-object v5, v4

    :goto_7
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, " namespace \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_b
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, " (postion:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected requireInput(C[C)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2973
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    return p1

    .line 2975
    :cond_0
    aget-char v1, p2, v0

    if-ne p1, v1, :cond_1

    .line 2980
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2976
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-char v0, p2, v0

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " and not "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v1, p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected requireNextS()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2988
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2989
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2993
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v0

    return v0

    .line 2990
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "white space is required and not "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected reset()V
    .locals 2

    const/4 v0, 0x1

    .line 380
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    const/4 v0, 0x0

    .line 381
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    .line 382
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenRoot:Z

    .line 383
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    .line 384
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    .line 385
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 387
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    .line 389
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    .line 391
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    .line 393
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    const/4 v1, 0x0

    .line 395
    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    .line 396
    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    .line 398
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    .line 399
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    .line 400
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    .line 401
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 403
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 405
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 407
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    .line 408
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    .line 409
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    .line 410
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    .line 411
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 412
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenDocdecl:Z

    .line 414
    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclVersion:Ljava/lang/String;

    .line 415
    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    .line 416
    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclContent:Ljava/lang/String;

    .line 418
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->resetStringCache()V

    return-void
.end method

.method protected resetStringCache()V
    .locals 0

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 438
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    if-nez p1, :cond_0

    .line 441
    iput-boolean p2, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    goto :goto_0

    .line 439
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "namespace processing feature can only be changed before parsing"

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 446
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 448
    :cond_2
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "interning names in this implementation is not supported"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 451
    :cond_3
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    goto :goto_0

    .line 453
    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "processing DOCDECL is not supported"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 458
    :cond_5
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 463
    iput-boolean p2, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    :goto_0
    return-void

    .line 465
    :cond_6
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "unsupporte feature "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 437
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "feature name should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p2, :cond_0

    .line 529
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 534
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "could not create reader for encoding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v1, " : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 538
    :cond_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 540
    :goto_0
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->setInput(Ljava/io/Reader;)V

    .line 542
    iput-object p2, p0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    return-void

    .line 523
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input stream can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 514
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->reset()V

    .line 515
    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 494
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "unsupported property: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected skipS(C)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2999
    :goto_0
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    goto :goto_0
.end method

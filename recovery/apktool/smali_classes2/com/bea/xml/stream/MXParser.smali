.class public Lcom/bea/xml/stream/MXParser;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/xml/stream/XMLStreamReader;
.implements Ljavax/xml/stream/Location;


# static fields
.field protected static final CHAR_UTF8_BOM:C = '\ufeff'

.field private static final DOCDECL:I = 0x8000

.field protected static final ENCODING:[C

.field static final EOF_MSG:Ljava/lang/String; = "Unexpected end of stream"

.field protected static final FEATURE_NAMES_INTERNED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#names-interned"

.field public static final FEATURE_PROCESS_DOCDECL:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#process-docdecl"

.field public static final FEATURE_PROCESS_NAMESPACES:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#process-namespaces"

.field public static final FEATURE_STAX_ENTITIES:Ljava/lang/String; = "javax.xml.stream.entities"

.field public static final FEATURE_STAX_NOTATIONS:Ljava/lang/String; = "javax.xml.stream.notations"

.field protected static final FEATURE_XML_ROUNDTRIP:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

.field protected static final LOOKUP_MAX:I = 0x400

.field protected static final LOOKUP_MAX_CHAR:C = '\u0400'

.field protected static final MAX_UNICODE_CHAR:I = 0x10ffff

.field protected static final NO:[C

.field private static final NO_CHARS:[C

.field private static final NO_INTS:[I

.field public static final NO_NAMESPACE:Ljava/lang/String;

.field private static final NO_STRINGS:[Ljava/lang/String;

.field protected static final READ_CHUNK_SIZE:I = 0x2000

.field protected static final STANDALONE:[C

.field private static final TEXT:I = 0x4000

.field private static final TRACE_SIZING:Z

.field public static final TYPES:[Ljava/lang/String;

.field protected static final VERSION:[C

.field protected static final YES:[C

.field static synthetic class$com$wutka$dtd$DTDAttlist:Ljava/lang/Class;

.field static synthetic class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

.field static synthetic class$com$wutka$dtd$DTDNotation:Ljava/lang/Class;

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

.field protected charEncodingScheme:Ljava/lang/String;

.field protected charRefOneCharBuf:[C

.field protected charRefTwoCharBuf:[C

.field protected columnNumber:I

.field private configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

.field protected defaultAttributes:Ljava/util/HashMap;

.field protected depth:I

.field protected elName:[Ljava/lang/String;

.field protected elNamespaceCount:[I

.field protected elPrefix:[Ljava/lang/String;

.field protected elRawName:[[C

.field protected elRawNameEnd:[I

.field protected elUri:[Ljava/lang/String;

.field protected emptyElementTag:Z

.field protected entityEnd:I

.field protected entityName:[Ljava/lang/String;

.field protected entityNameBuf:[[C

.field protected entityNameHash:[I

.field protected entityRefName:Ljava/lang/String;

.field protected entityReplacement:[Ljava/lang/String;

.field protected entityReplacementBuf:[[C

.field protected entityValue:[C

.field protected eventType:I

.field protected inputEncoding:Ljava/lang/String;

.field protected lineNumber:I

.field protected localNamespaceEnd:I

.field protected localNamespacePrefix:[Ljava/lang/String;

.field protected localNamespacePrefixHash:[I

.field protected localNamespaceUri:[Ljava/lang/String;

.field protected mDtdIntSubset:Lcom/wutka/dtd/DTD;

.field protected namespaceEnd:I

.field protected namespacePrefix:[Ljava/lang/String;

.field protected namespacePrefixHash:[I

.field protected namespaceUri:[Ljava/lang/String;

.field protected pastEndTag:Z

.field protected pc:[C

.field protected pcEnd:I

.field protected pcStart:I

.field protected piData:Ljava/lang/String;

.field protected piTarget:Ljava/lang/String;

.field protected pos:I

.field protected posEnd:I

.field protected posStart:I

.field protected processNamespaces:Z

.field protected reachedEnd:Z

.field protected reader:Ljava/io/Reader;

.field private reportCdataEvent:Z

.field protected roundtripSupported:Z

.field protected seenAmpersand:Z

.field protected seenDocdecl:Z

.field protected seenEndTag:Z

.field protected seenMarkup:Z

.field protected seenRoot:Z

.field protected seenStartTag:Z

.field protected standalone:Z

.field protected standaloneSet:Z

.field protected text:Ljava/lang/String;

.field protected tokenize:Z

.field protected usePC:Z

.field protected xmlVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x10

    .line 76
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "[UNKNOWN]"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "START_ELEMENT"

    aput-object v3, v0, v1

    const-string v1, "END_ELEMENT"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "PROCESSING_INSTRUCTION"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v5, "CHARACTERS"

    aput-object v5, v0, v1

    const/4 v1, 0x5

    const-string v5, "COMMENT"

    aput-object v5, v0, v1

    const/4 v1, 0x6

    const-string v5, "SPACE"

    aput-object v5, v0, v1

    const-string v1, "START_DOCUMENT"

    const/4 v5, 0x7

    aput-object v1, v0, v5

    const-string v1, "END_DOCUMENT"

    const/16 v6, 0x8

    aput-object v1, v0, v6

    const/16 v1, 0x9

    const-string v7, "ENTITY_REFERENCE"

    aput-object v7, v0, v1

    const-string v1, "ATTRIBUTE"

    const/16 v7, 0xa

    aput-object v1, v0, v7

    const/16 v1, 0xb

    const-string v8, "DTD"

    aput-object v8, v0, v1

    const/16 v1, 0xc

    const-string v8, "CDATA"

    aput-object v8, v0, v1

    const/16 v1, 0xd

    const-string v8, "NAMESPACE"

    aput-object v8, v0, v1

    const/16 v1, 0xe

    const-string v8, "NOTATION_DECLARATION"

    aput-object v8, v0, v1

    const/16 v1, 0xf

    const-string v8, "ENTITY_DECLARATION"

    aput-object v8, v0, v1

    sput-object v0, Lcom/bea/xml/stream/MXParser;->TYPES:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 110
    sput-object v0, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    const/16 v0, 0x400

    .line 257
    new-array v1, v0, [Z

    sput-object v1, Lcom/bea/xml/stream/MXParser;->lookupNameStartChar:[Z

    .line 258
    new-array v1, v0, [Z

    sput-object v1, Lcom/bea/xml/stream/MXParser;->lookupNameChar:[Z

    const/16 v1, 0x3a

    .line 268
    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    const/16 v1, 0x41

    :goto_0
    const/16 v8, 0x5a

    if-gt v1, v8, :cond_0

    .line 269
    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x5f

    .line 270
    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    const/16 v1, 0x61

    :goto_1
    const/16 v8, 0x7a

    if-gt v1, v8, :cond_1

    .line 271
    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xc0

    :goto_2
    const/16 v8, 0x2ff

    if-gt v1, v8, :cond_2

    .line 272
    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_2

    :cond_2
    const/16 v1, 0x370

    :goto_3
    const/16 v8, 0x37d

    if-gt v1, v8, :cond_3

    .line 273
    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_3

    :cond_3
    const/16 v1, 0x37f

    :goto_4
    if-ge v1, v0, :cond_4

    .line 274
    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_4

    :cond_4
    const/16 v0, 0x2d

    .line 276
    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    const/16 v0, 0x2e

    .line 277
    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    const/16 v0, 0x30

    :goto_5
    const/16 v1, 0x39

    if-gt v0, v1, :cond_5

    .line 278
    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_5

    :cond_5
    const/16 v0, 0xb7

    .line 279
    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    const/16 v0, 0x300

    :goto_6
    const/16 v1, 0x36f

    if-gt v0, v1, :cond_6

    .line 280
    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_6

    .line 424
    :cond_6
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/bea/xml/stream/MXParser;->NO_STRINGS:[Ljava/lang/String;

    .line 425
    new-array v0, v2, [I

    sput-object v0, Lcom/bea/xml/stream/MXParser;->NO_INTS:[I

    .line 426
    new-array v0, v2, [C

    sput-object v0, Lcom/bea/xml/stream/MXParser;->NO_CHARS:[C

    .line 3165
    new-array v0, v5, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bea/xml/stream/MXParser;->VERSION:[C

    .line 3166
    new-array v0, v6, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/bea/xml/stream/MXParser;->ENCODING:[C

    .line 3167
    new-array v0, v7, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/bea/xml/stream/MXParser;->STANDALONE:[C

    .line 3168
    new-array v0, v4, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/bea/xml/stream/MXParser;->YES:[C

    .line 3169
    new-array v0, v3, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/bea/xml/stream/MXParser;->NO:[C

    return-void

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
        0x65s
        0x6es
        0x63s
        0x6fs
        0x64s
        0x69s
        0x6es
        0x67s
    .end array-data

    :array_2
    .array-data 2
        0x73s
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
    .locals 9

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->reportCdataEvent:Z

    const/4 v1, 0x1

    .line 141
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    .line 142
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->roundtripSupported:Z

    const/4 v2, 0x0

    .line 165
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->xmlVersion:Ljava/lang/String;

    .line 171
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->standalone:Z

    .line 172
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->standaloneSet:Z

    .line 431
    sget-object v0, Lcom/bea/xml/stream/MXParser;->NO_STRINGS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    .line 433
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    const/16 v0, 0x5f

    .line 598
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufLoadFactor:I

    .line 606
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    cmp-long v0, v3, v5

    const/16 v3, 0x2000

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    :goto_0
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    .line 607
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->bufLoadFactor:I

    array-length v0, v0

    mul-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->bufSoftLimit:I

    .line 617
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x40

    :goto_1
    new-array v0, v3, [C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    .line 653
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    .line 2750
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    .line 2756
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->charRefTwoCharBuf:[C

    return-void
.end method

.method private static final checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    .line 1634
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private final checkTextEvent()V
    .locals 3

    .line 1511
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1512
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Current state ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v2}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") does not have textual content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final checkTextEventXxx()V
    .locals 3

    .line 1517
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1521
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "getTextXxx methods cannot be called for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v2}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 3519
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static eventTypeDesc(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_1

    .line 1638
    sget-object v0, Lcom/bea/xml/stream/MXParser;->TYPES:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "[UNKNOWN]"

    :goto_1
    return-object p0
.end method

.method protected static final fastHash([CII)I
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 536
    :cond_0
    aget-char v0, p0, p1

    shl-int/lit8 v0, v0, 0x7

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    .line 538
    aget-char v1, p0, v1

    add-int/2addr v0, v1

    const/16 v1, 0x10

    if-le p2, v1, :cond_1

    shl-int/lit8 v0, v0, 0x7

    .line 543
    div-int/lit8 v1, p2, 0x4

    add-int/2addr v1, p1

    aget-char v1, p0, v1

    add-int/2addr v0, v1

    :cond_1
    const/16 v1, 0x8

    if-le p2, v1, :cond_2

    shl-int/lit8 v0, v0, 0x7

    .line 544
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

    if-le v0, p0, :cond_5

    sub-int v2, p3, v0

    if-le v2, v1, :cond_4

    goto :goto_0

    .line 989
    :cond_4
    aget-char v2, p1, v0

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_3

    sub-int v2, p2, v0

    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    :cond_5
    :goto_0
    return v0
.end method

.method private getLocalNamespacePrefix(I)Ljava/lang/String;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getLocalNamespaceURI(I)Ljava/lang/String;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static isElementEvent(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x1

    .line 657
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    const/4 v0, 0x0

    .line 658
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    .line 659
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenRoot:Z

    .line 660
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->reachedEnd:Z

    const/4 v1, 0x7

    .line 661
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    .line 662
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    .line 664
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    .line 666
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    .line 668
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    .line 669
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceEnd:I

    .line 671
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    const/4 v1, 0x0

    .line 673
    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    .line 674
    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->inputEncoding:Ljava/lang/String;

    .line 676
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    .line 677
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    .line 678
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    .line 680
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    .line 682
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 684
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenStartTag:Z

    .line 685
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenEndTag:Z

    .line 686
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->pastEndTag:Z

    .line 687
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenAmpersand:Z

    .line 688
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 689
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenDocdecl:Z

    .line 690
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->resetStringCache()V

    return-void
.end method

.method private static final setName(C)V
    .locals 2

    .line 262
    sget-object v0, Lcom/bea/xml/stream/MXParser;->lookupNameChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    return-void
.end method

.method private static final setNameStart(C)V
    .locals 2

    .line 265
    sget-object v0, Lcom/bea/xml/stream/MXParser;->lookupNameStartChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    invoke-static {p0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    return-void
.end method

.method private throwIllegalState(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3833
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Current state ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v2}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIllegalState([I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3839
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 3840
    aget v2, p1, v1

    invoke-static {v2}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3841
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ge v1, v2, :cond_0

    .line 3843
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3844
    aget v3, p1, v1

    invoke-static {v3}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3846
    :cond_0
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3847
    aget p1, p1, v2

    invoke-static {p1}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3849
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Current state ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v2}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private throwNotNameStart(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3855
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "expected name start character and not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
.end method


# virtual methods
.method protected addDefaultAttributes(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 2422
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 2423
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDAttlist;

    if-eqz p1, :cond_5

    if-nez v0, :cond_1

    goto :goto_3

    .line 2425
    :cond_1
    invoke-virtual {v0}, Lcom/wutka/dtd/DTDAttlist;->getAttribute()[Lcom/wutka/dtd/DTDAttribute;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 2426
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 2427
    aget-object v2, p1, v1

    .line 2428
    invoke-virtual {v2}, Lcom/wutka/dtd/DTDAttribute;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2430
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 2432
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v2}, Lcom/wutka/dtd/DTDAttribute;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2438
    :cond_3
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    .line 2439
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->ensureAttributesCapacity(I)V

    .line 2440
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    aput-object v6, v3, v5

    .line 2441
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    add-int/lit8 v5, v4, -0x1

    sget-object v6, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    aput-object v6, v3, v5

    .line 2442
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2}, Lcom/wutka/dtd/DTDAttribute;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2443
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2}, Lcom/wutka/dtd/DTDAttribute;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method protected checkCharValidity(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/16 v0, 0x20

    if-ge p1, v0, :cond_1

    int-to-char p2, p1

    .line 352
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_0

    .line 353
    :cond_0
    new-instance p2, Ljavax/xml/stream/XMLStreamException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Illegal white space character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const v0, 0xd800

    if-lt p1, v0, :cond_5

    const v0, 0xdfff

    .line 356
    const-string v1, "Illegal character (code 0x"

    if-gt p1, v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    .line 358
    :cond_2
    new-instance p2, Ljavax/xml/stream/XMLStreamException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "): surrogate characters are not valid XML characters"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw p2

    :cond_3
    const p2, 0x10ffff

    if-gt p1, p2, :cond_4

    goto :goto_0

    .line 362
    :cond_4
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "), past max. Unicode character 0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_5
    :goto_0
    return-void
.end method

.method public checkForXMLDecl()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 775
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 776
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    .line 777
    invoke-virtual {v0, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 780
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const v3, 0xfeff

    if-ne v1, v3, :cond_0

    .line 782
    invoke-virtual {v0, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 783
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    :cond_0
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    .line 786
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    .line 791
    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V

    const/4 v0, 0x1

    return v0

    .line 794
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 797
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    return-void
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 866
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->ensureEntityCapacity()V

    .line 869
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 870
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 871
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    aput-object v0, p1, v1

    .line 873
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->entityReplacement:[Ljava/lang/String;

    aput-object p2, p1, v1

    if-nez p2, :cond_0

    .line 878
    sget-object p1, Lcom/bea/xml/stream/MXParser;->NO_CHARS:[C

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 879
    :goto_0
    iget-object p2, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    aput-object p1, p2, v0

    .line 880
    iget-boolean p1, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez p1, :cond_1

    .line 881
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->entityNameHash:[I

    iget-object p2, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    aget-object p2, p2, v0

    array-length v1, p2

    invoke-static {p2, v3, v1}, Lcom/bea/xml/stream/MXParser;->fastHash([CII)I

    move-result p2

    aput p2, p1, v0

    .line 884
    :cond_1
    iget p1, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    return-void
.end method

.method protected ensureAttributesCapacity(I)V
    .locals 5

    .line 385
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

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

    .line 394
    :goto_2
    new-array v4, p1, [Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 395
    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    :cond_3
    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    .line 398
    new-array v0, p1, [Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 399
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    :cond_4
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    .line 402
    new-array v0, p1, [Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 403
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    :cond_5
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    .line 406
    new-array v0, p1, [Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 407
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    :cond_6
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    .line 410
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_8

    .line 411
    new-array p1, p1, [I

    if-eqz v3, :cond_7

    .line 412
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    :cond_7
    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    :cond_8
    return-void
.end method

.method protected ensureElementsCapacity()V
    .locals 6

    .line 194
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 195
    :goto_0
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    add-int/lit8 v4, v3, 0x1

    if-lt v4, v2, :cond_9

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

    .line 203
    :goto_2
    new-array v5, v3, [Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 204
    invoke-static {v0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    :cond_3
    iput-object v5, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    .line 206
    new-array v0, v3, [Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 207
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elPrefix:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    :cond_4
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->elPrefix:[Ljava/lang/String;

    .line 209
    new-array v0, v3, [Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 210
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elUri:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    :cond_5
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->elUri:[Ljava/lang/String;

    .line 213
    new-array v0, v3, [I

    if-eqz v4, :cond_6

    .line 215
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 218
    :cond_6
    aput v1, v0, v1

    .line 220
    :goto_3
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    .line 223
    new-array v0, v3, [I

    if-eqz v4, :cond_7

    .line 225
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elRawNameEnd:[I

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :cond_7
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->elRawNameEnd:[I

    .line 229
    new-array v0, v3, [[C

    if-eqz v4, :cond_8

    .line 231
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->elRawName:[[C

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    :cond_8
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->elRawName:[[C

    :cond_9
    return-void
.end method

.method protected ensureEntityCapacity()V
    .locals 8

    .line 561
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 562
    :goto_0
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    if-lt v2, v0, :cond_4

    const/4 v0, 0x7

    if-le v2, v0, :cond_1

    mul-int/lit8 v0, v2, 0x2

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 567
    :goto_1
    new-array v3, v0, [Ljava/lang/String;

    .line 568
    new-array v4, v0, [[C

    .line 569
    new-array v5, v0, [Ljava/lang/String;

    .line 570
    new-array v6, v0, [[C

    .line 571
    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 572
    invoke-static {v7, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-static {v2, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityReplacement:[Ljava/lang/String;

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-static {v2, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-static {v2, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    :cond_2
    iput-object v3, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    .line 578
    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    .line 579
    iput-object v5, p0, Lcom/bea/xml/stream/MXParser;->entityReplacement:[Ljava/lang/String;

    .line 580
    iput-object v6, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    .line 582
    iget-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v2, :cond_4

    .line 583
    new-array v0, v0, [I

    .line 584
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityNameHash:[I

    if-eqz v2, :cond_3

    .line 585
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    :cond_3
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityNameHash:[I

    :cond_4
    return-void
.end method

.method protected ensureLocalNamespacesCapacity(I)V
    .locals 5

    .line 474
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefix:[Ljava/lang/String;

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

    .line 480
    :goto_1
    new-array v2, p1, [Ljava/lang/String;

    .line 481
    new-array v3, p1, [Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 483
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceEnd:I

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceUri:[Ljava/lang/String;

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceEnd:I

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    :cond_2
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefix:[Ljava/lang/String;

    .line 489
    iput-object v3, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceUri:[Ljava/lang/String;

    .line 492
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_4

    .line 493
    new-array p1, p1, [I

    .line 494
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefixHash:[I

    if-eqz v0, :cond_3

    .line 495
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceEnd:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    :cond_3
    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefixHash:[I

    :cond_4
    return-void
.end method

.method protected ensureNamespacesCapacity(I)V
    .locals 5

    .line 436
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

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

    .line 442
    :goto_1
    new-array v2, p1, [Ljava/lang/String;

    .line 443
    new-array v3, p1, [Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 445
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    :cond_2
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    .line 451
    iput-object v3, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    .line 454
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_4

    .line 455
    new-array p1, p1, [I

    .line 456
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

    if-eqz v0, :cond_3

    .line 457
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    :cond_3
    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

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

    .line 3755
    :goto_0
    new-array p1, p1, [C

    .line 3757
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3758
    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    return-void
.end method

.method protected fillBuf()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 3645
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_a

    .line 3649
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->bufSoftLimit:I

    if-le v0, v1, :cond_6

    .line 3652
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v2, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-nez v1, :cond_1

    .line 3656
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    array-length v5, v5

    div-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_2

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_1

    :cond_1
    move v3, v1

    :cond_2
    move v1, v4

    :goto_1
    if-eqz v3, :cond_3

    .line 3669
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    sub-int/2addr v0, v2

    invoke-static {v1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_5

    .line 3673
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    .line 3674
    new-array v3, v3, [C

    sub-int/2addr v0, v2

    .line 3676
    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3677
    iput-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    .line 3678
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->bufLoadFactor:I

    if-lez v0, :cond_4

    .line 3679
    array-length v1, v3

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufSoftLimit:I

    .line 3685
    :cond_4
    :goto_2
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    .line 3686
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    .line 3687
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3688
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3689
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    .line 3690
    iput v4, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    goto :goto_3

    .line 3683
    :cond_5
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "internal error in fillBuffer()"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3693
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    array-length v1, v0

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    sub-int/2addr v1, v2

    const/16 v3, 0x2000

    if-le v1, v3, :cond_7

    move v1, v3

    .line 3698
    :cond_7
    :try_start_0
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    invoke-virtual {v3, v0, v2, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_8

    .line 3703
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    return-void

    :cond_8
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 3707
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "no more data available"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3709
    :cond_9
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "error reading input, returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    .line 3700
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3645
    :cond_a
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "reader must be set before parsing is started"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeCount()I
    .locals 2

    .line 1108
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1110
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1112
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    return v0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 4

    .line 1128
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1129
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    :cond_0
    if-ltz p1, :cond_1

    .line 1131
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 1131
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "attribute position must be 0.."

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

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
.end method

.method public getAttributeName(I)Ljavax/xml/namespace/QName;
    .locals 3

    .line 1647
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1648
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1650
    :cond_0
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bea/xml/stream/MXParser;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 4

    .line 1117
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1118
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1120
    :cond_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-nez v0, :cond_1

    sget-object p1, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    return-object p1

    :cond_1
    if-ltz p1, :cond_2

    .line 1121
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_2

    .line 1123
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 1121
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "attribute position must be 0.."

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

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
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 4

    .line 1138
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1139
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1141
    :cond_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    if-ltz p1, :cond_2

    .line 1142
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_2

    .line 1144
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 1142
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "attribute position must be 0.."

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

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
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 4

    .line 1148
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1149
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    :cond_0
    if-ltz p1, :cond_1

    .line 1151
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    .line 1153
    const-string p1, "CDATA"

    return-object p1

    .line 1151
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "attribute position must be 0.."

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

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
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 4

    .line 1167
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1168
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    :cond_0
    if-ltz p1, :cond_1

    .line 1170
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 1170
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "attribute position must be 0.."

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

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
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1178
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1179
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1186
    :goto_0
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge v0, v1, :cond_4

    .line 1190
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1193
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1197
    :cond_2
    :goto_1
    iget p1, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge v0, p1, :cond_4

    .line 1198
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1199
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    return-object p1

    .line 1182
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attribute name can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributes()Ljava/util/Iterator;
    .locals 10

    .line 1454
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bea/xml/stream/util/EmptyIterator;->emptyIterator:Lcom/bea/xml/stream/util/EmptyIterator;

    return-object v0

    .line 1455
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getAttributeCount()I

    move-result v0

    .line 1456
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1458
    new-instance v9, Lcom/bea/xml/stream/AttributeBase;

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/bea/xml/stream/AttributeBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1464
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .line 1691
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charEncodingScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 1

    .line 1629
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .line 1026
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    return v0
.end method

.method public getConfigurationContext()Lcom/bea/xml/stream/ConfigurationContextBase;
    .locals 1

    .line 3790
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .line 972
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    return v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1314
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1315
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 1319
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    .line 1321
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isStartElement()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1323
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isCharacters()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 1324
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1325
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isEndElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1326
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1322
    :cond_3
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected Element start"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1320
    :cond_4
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of Document"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1316
    :cond_5
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Precondition for readText is getEventType() == START_ELEMENT"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 1624
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .line 1207
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_4

    .line 747
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-boolean p1, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    return p1

    .line 751
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 753
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 757
    :cond_2
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1

    .line 746
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "feature name should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 1021
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 4

    .line 1071
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/16 v3, 0x9

    if-ne v0, v3, :cond_3

    .line 1077
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1078
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 1080
    :cond_2
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    return-object v0

    .line 1085
    :cond_3
    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalNamespaceCount()I
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    .line 507
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 0

    return-object p0
.end method

.method public getLocationURI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 4

    .line 1661
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bea/xml/stream/MXParser;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1662
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current state not START_ELEMENT or END_ELEMENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 4

    .line 3026
    new-instance v0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-direct {v0, v1, v2, v3}, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;-><init>([Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 2

    .line 892
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 893
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    .line 895
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->getNamespaceCount(I)I

    move-result v0

    return v0
.end method

.method public getNamespaceCount(I)I
    .locals 3

    .line 900
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 906
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    aget v1, v0, p1

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    sub-int/2addr v1, p1

    return v1

    .line 905
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "namespace count may be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->depth:I

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
    .locals 4

    .line 911
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 912
    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    .line 914
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    .line 915
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->getNamespaceCount(I)I

    move-result v2

    .line 916
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    sub-int/2addr v0, v1

    aget v0, v3, v0

    add-int/2addr v0, p1

    if-ge p1, v2, :cond_1

    .line 918
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    .line 920
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "position "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " exceeded number of available namespaces "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 3

    .line 1062
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1066
    :cond_0
    filled-new-array {v1, v2}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1064
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elUri:[Ljava/lang/String;

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v0, v0, v1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 4

    .line 927
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 928
    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    .line 930
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    .line 931
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->getNamespaceCount(I)I

    move-result v2

    .line 932
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    sub-int/2addr v0, v1

    aget v0, v3, v0

    add-int/2addr v0, p1

    if-ge p1, v2, :cond_1

    .line 934
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    .line 936
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "position "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " exceedded number of available namespaces "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 944
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 945
    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_4

    .line 948
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 949
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 950
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 954
    :cond_2
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 955
    const-string p1, "http://www.w3.org/XML/1998/namespace"

    return-object p1

    .line 956
    :cond_3
    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 957
    const-string p1, "http://www.w3.org/2000/xmlns/"

    return-object p1

    .line 960
    :cond_4
    iget p1, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    sub-int/2addr p1, v1

    :goto_1
    if-ltz p1, :cond_6

    .line 961
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_5

    .line 962
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNamespaces()Ljava/util/Iterator;
    .locals 2

    .line 1485
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNamespaces()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bea/xml/stream/util/EmptyIterator;->emptyIterator:Lcom/bea/xml/stream/util/EmptyIterator;

    return-object v0

    .line 1486
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalNamespaceCount()I

    move-result v0

    .line 1487
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    invoke-virtual {p0, v1, v0}, Lcom/bea/xml/stream/MXParser;->internalGetNamespaces(II)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getOutOfScopeNamespaces()Ljava/util/Iterator;
    .locals 3

    .line 1491
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    .line 1492
    aget v0, v0, v1

    sub-int/2addr v0, v2

    .line 1494
    invoke-virtual {p0, v1, v0}, Lcom/bea/xml/stream/MXParser;->internalGetNamespaces(II)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 2

    .line 3020
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3021
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 3023
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->piData:Ljava/lang/String;

    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 2

    .line 3014
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3015
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 3017
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->piTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 6

    .line 1003
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    const-string v2, "..."

    const/4 v3, 0x0

    if-gt v0, v1, :cond_2

    const/4 v4, 0x0

    .line 1004
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    invoke-static {v4, v5, v0, v1}, Lcom/bea/xml/stream/MXParser;->findFragment(I[CII)I

    move-result v0

    .line 1006
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    if-ge v0, v1, :cond_0

    .line 1007
    new-instance v3, Ljava/lang/String;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v4, v0

    invoke-direct {v3, v1, v0, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1009
    :cond_0
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    if-gtz v1, :cond_1

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1014
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, " seen "

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    .line 1090
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    filled-new-array {v1, v2}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1092
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elPrefix:[Ljava/lang/String;

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 3795
    const-string v0, "javax.xml.stream.entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3796
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->mDtdIntSubset:Lcom/wutka/dtd/DTD;

    if-eqz p1, :cond_2

    .line 3797
    sget-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.wutka.dtd.DTDEntity"

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p1, v0}, Lcom/wutka/dtd/DTD;->getItemsByType(Ljava/lang/Class;)Ljava/util/Vector;

    move-result-object p1

    .line 3798
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 3799
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3800
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3801
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wutka/dtd/DTDEntity;

    .line 3802
    invoke-static {p1}, Lcom/bea/xml/stream/events/DTDEvent;->createEntityDeclaration(Lcom/wutka/dtd/DTDEntity;)Ljavax/xml/stream/events/EntityDeclaration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3804
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1

    .line 3811
    :cond_3
    const-string v0, "javax.xml.stream.notations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3812
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->mDtdIntSubset:Lcom/wutka/dtd/DTD;

    if-eqz p1, :cond_6

    .line 3813
    sget-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDNotation:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "com.wutka.dtd.DTDNotation"

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDNotation:Ljava/lang/Class;

    :cond_4
    invoke-virtual {p1, v0}, Lcom/wutka/dtd/DTD;->getItemsByType(Ljava/lang/Class;)Ljava/util/Vector;

    move-result-object p1

    .line 3814
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 3815
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3816
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3817
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wutka/dtd/DTDNotation;

    .line 3818
    invoke-static {p1}, Lcom/bea/xml/stream/events/DTDEvent;->createNotationDeclaration(Lcom/wutka/dtd/DTDNotation;)Ljavax/xml/stream/events/NotationDeclaration;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3820
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object v1

    .line 3827
    :cond_7
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 1527
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->checkTextEvent()V

    .line 1528
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 1530
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    if-eqz v0, :cond_0

    .line 1531
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 1533
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    return-object v0

    .line 1535
    :cond_1
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_2

    .line 1536
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    goto :goto_0

    .line 1538
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 1540
    :goto_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextCharacters(I[CII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1546
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->checkTextEventXxx()V

    .line 1548
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getTextLength()I

    move-result v0

    if-ltz p1, :cond_2

    if-gt p1, v0, :cond_2

    sub-int/2addr v0, p1

    if-ge v0, p4, :cond_0

    move p4, v0

    :cond_0
    if-lez p4, :cond_1

    .line 1569
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getTextCharacters()[C

    move-result-object v0

    .line 1570
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getTextStart()I

    move-result v1

    add-int/2addr v1, p1

    .line 1571
    invoke-static {v0, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return p4

    .line 1555
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getTextCharacters()[C
    .locals 2

    .line 1578
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->checkTextEventXxx()V

    .line 1580
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1581
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    return-object v0

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    return-object v0

    .line 1587
    :cond_1
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    return-object v0
.end method

.method public getTextLength()I
    .locals 2

    .line 1602
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->checkTextEventXxx()V

    .line 1603
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_0

    .line 1604
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    :goto_0
    sub-int/2addr v0, v1

    return v0

    .line 1606
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    goto :goto_0
.end method

.method public getTextStart()I
    .locals 1

    .line 1592
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->checkTextEventXxx()V

    .line 1594
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_0

    .line 1595
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    return v0

    .line 1597
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    return v0
.end method

.method public getTextStream()Ljava/io/Reader;
    .locals 1

    .line 1507
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1620
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1680
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->xmlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .line 1442
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .line 1676
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    return v0
.end method

.method public hasNamespaces()Z
    .locals 1

    .line 1448
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1346
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasText()Z
    .locals 2

    .line 1611
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public internalGetNamespaces(II)Ljava/util/Iterator;
    .locals 5

    .line 1469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1470
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v1, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v2, v1, p1

    .line 1472
    invoke-direct {p0, v2}, Lcom/bea/xml/stream/MXParser;->getLocalNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1474
    new-instance v3, Lcom/bea/xml/stream/NamespaceBase;

    invoke-direct {p0, v2}, Lcom/bea/xml/stream/MXParser;->getLocalNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/bea/xml/stream/NamespaceBase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1476
    :cond_0
    new-instance v4, Lcom/bea/xml/stream/NamespaceBase;

    invoke-direct {p0, v2}, Lcom/bea/xml/stream/MXParser;->getLocalNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Lcom/bea/xml/stream/NamespaceBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1480
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public isAttributeSpecified(I)Z
    .locals 4

    .line 1157
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1158
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    :cond_0
    if-ltz p1, :cond_1

    .line 1160
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "attribute position must be 0.."

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

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
.end method

.method public isCharacters()Z
    .locals 2

    .line 1366
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEOF()Z
    .locals 2

    .line 1370
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1100
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1103
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    return v0

    .line 1100
    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "parser must be on XMLStreamConstants.START_ELEMENT to check for empty element"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
.end method

.method public isEndElement()Z
    .locals 2

    .line 1362
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isNameChar(C)Z
    .locals 2

    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    .line 319
    sget-object v1, Lcom/bea/xml/stream/MXParser;->lookupNameChar:[Z

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

    .line 285
    sget-object v1, Lcom/bea/xml/stream/MXParser;->lookupNameStartChar:[Z

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

.method public isStandalone()Z
    .locals 1

    .line 1684
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->standalone:Z

    return v0
.end method

.method public isStartElement()Z
    .locals 2

    .line 1358
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWhiteSpace()Z
    .locals 4

    .line 1034
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    return v2

    .line 1035
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_5

    .line 1036
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    :goto_1
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    if-ge v0, v1, :cond_4

    .line 1038
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    aget-char v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return v3

    .line 1042
    :cond_5
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    :goto_2
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    if-ge v0, v1, :cond_7

    .line 1044
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    aget-char v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return v3
.end method

.method protected joinPC()V
    .locals 6

    .line 3765
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v0, v1

    .line 3766
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/2addr v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 3767
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v3, v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 3769
    :cond_0
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    invoke-static {v1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3770
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    .line 3771
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    return-void
.end method

.method protected lookupEntityReplacement(I)[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 2900
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_4

    .line 2901
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Lcom/bea/xml/stream/MXParser;->fastHash([CII)I

    move-result v0

    .line 2903
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_7

    .line 2905
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityNameHash:[I

    aget v2, v2, v1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    aget-object v2, v2, v1

    array-length v3, v2

    if-ne p1, v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    .line 2909
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    add-int/2addr v5, v3

    aget-char v4, v4, v5

    aget-char v5, v2, v3

    if-eq v4, v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2911
    :cond_1
    iget-boolean p1, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz p1, :cond_2

    .line 2912
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2914
    :cond_2
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 2915
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    aget-object p1, p1, v1

    return-object p1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2919
    :cond_4
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 2920
    iget p1, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    add-int/lit8 p1, p1, -0x1

    :goto_3
    if-ltz p1, :cond_7

    .line 2923
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-ne v0, v1, :cond_6

    .line 2924
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v0, :cond_5

    .line 2925
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2927
    :cond_5
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    aget-object p1, v0, p1

    return-object p1

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method protected more()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 3715
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->fillBuf()V

    .line 3716
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 3721
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    goto :goto_0

    .line 3722
    :cond_1
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    :goto_0
    return v0
.end method

.method public moveToEndElement()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1408
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isEndElement()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1409
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1410
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1412
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public moveToEndElement(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1421
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->moveToEndElement()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1422
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1423
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1424
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    goto :goto_0

    :cond_3
    return v0
.end method

.method public moveToEndElement(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 1433
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->moveToEndElement(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1434
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1435
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1436
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public moveToStartElement()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1374
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isStartElement()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1375
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1376
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1378
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public moveToStartElement(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1387
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->moveToStartElement()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1388
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1389
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1390
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    goto :goto_0

    :cond_3
    return v0
.end method

.method public moveToStartElement(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 1399
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->moveToStartElement(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1400
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1401
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1402
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method protected newString([CII)Ljava/lang/String;
    .locals 1

    .line 126
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected newStringIntern([CII)Ljava/lang/String;
    .locals 1

    .line 130
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
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1330
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    const/4 v0, 0x0

    .line 1331
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    .line 1332
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 1333
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method public nextElement()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1342
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->nextTag()I

    move-result v0

    return v0
.end method

.method protected nextImpl()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1700
    :try_start_0
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 1701
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    .line 1702
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->pastEndTag:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1703
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->pastEndTag:Z

    .line 1704
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    .line 1705
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    aget v0, v3, v0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    .line 1707
    :cond_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    if-eqz v0, :cond_1

    .line 1708
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    .line 1709
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->pastEndTag:Z

    const/4 v0, 0x2

    .line 1710
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 1714
    :cond_1
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    if-lez v0, :cond_2d

    .line 1716
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenStartTag:Z

    if-eqz v0, :cond_2

    .line 1717
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenStartTag:Z

    .line 1718
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseStartTag()I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 1720
    :cond_2
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenEndTag:Z

    if-eqz v0, :cond_3

    .line 1721
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenEndTag:Z

    .line 1722
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseEndTag()I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 1728
    :cond_3
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    const/16 v3, 0x26

    const/16 v4, 0x3c

    if-eqz v0, :cond_4

    .line 1729
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    move v0, v4

    goto :goto_0

    .line 1731
    :cond_4
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenAmpersand:Z

    if-eqz v0, :cond_5

    .line 1732
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenAmpersand:Z

    move v0, v3

    goto :goto_0

    .line 1735
    :cond_5
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 1737
    :goto_0
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    move v5, v1

    move v6, v5

    :goto_1
    const/4 v7, 0x4

    if-ne v0, v4, :cond_17

    if-eqz v5, :cond_6

    .line 1751
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v0, :cond_6

    .line 1752
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 1753
    iput v7, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v7

    .line 1756
    :cond_6
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v8, 0x2f

    if-ne v0, v8, :cond_8

    .line 1758
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-nez v0, :cond_7

    if-eqz v5, :cond_7

    .line 1759
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->seenEndTag:Z

    .line 1761
    iput v7, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v7

    .line 1763
    :cond_7
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseEndTag()I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_8
    const/16 v8, 0x21

    .line 1764
    const-string v9, "unexpected character in markup "

    if-ne v0, v8, :cond_12

    .line 1765
    :try_start_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v7, 0x2d

    if-ne v0, v7, :cond_a

    .line 1768
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseComment()V

    .line 1769
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 1770
    :cond_9
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v0, :cond_20

    if-eqz v5, :cond_20

    goto/16 :goto_5

    :cond_a
    const/16 v7, 0x5b

    if-ne v0, v7, :cond_11

    .line 1774
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1775
    iget v7, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1776
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseCDATA()V

    .line 1778
    iget v8, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1779
    iget v9, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1780
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1781
    iput v7, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int v10, v9, v8

    if-lez v10, :cond_f

    if-eqz v5, :cond_e

    .line 1786
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v5, :cond_c

    if-le v7, v0, :cond_b

    .line 1789
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    goto :goto_2

    .line 1791
    :cond_b
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 1792
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    .line 1795
    :cond_c
    :goto_2
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int v5, v0, v10

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v7, v7

    if-lt v5, v7, :cond_d

    add-int/2addr v0, v10

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 1797
    :cond_d
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    invoke-static {v0, v8, v5, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1798
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    goto :goto_3

    .line 1801
    :cond_e
    iput v8, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1802
    iput v9, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    move v6, v2

    :goto_3
    move v5, v2

    goto :goto_4

    .line 1806
    :cond_f
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v0, :cond_10

    if-eqz v5, :cond_10

    move v6, v2

    .line 1809
    :cond_10
    :goto_4
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->reportCdataEvent:Z

    if-eqz v0, :cond_20

    const/16 v0, 0xc

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 1811
    :cond_11
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    :cond_12
    const/16 v8, 0x3f

    if-ne v0, v8, :cond_14

    .line 1817
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parsePI()Z

    .line 1818
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x3

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 1819
    :cond_13
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v0, :cond_20

    if-eqz v5, :cond_20

    :goto_5
    move v6, v2

    goto/16 :goto_8

    .line 1820
    :cond_14
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1821
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-nez v0, :cond_15

    if-eqz v5, :cond_15

    .line 1822
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->seenStartTag:Z

    .line 1824
    iput v7, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v7

    .line 1826
    :cond_15
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseStartTag()I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 1828
    :cond_16
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    :cond_17
    if-ne v0, v3, :cond_21

    .line 1838
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v0, :cond_18

    if-eqz v5, :cond_18

    .line 1839
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->seenAmpersand:Z

    .line 1840
    iput v7, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v7

    .line 1843
    :cond_18
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1844
    iget v8, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1845
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getConfigurationContext()Lcom/bea/xml/stream/ConfigurationContextBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bea/xml/stream/ConfigurationContextBase;->isReplacingEntities()Z

    move-result v9

    .line 1846
    invoke-virtual {p0, v9}, Lcom/bea/xml/stream/MXParser;->parseEntityRef(Z)[C

    move-result-object v10

    if-nez v9, :cond_19

    const/16 v0, 0x9

    .line 1848
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 1850
    :cond_19
    iput v7, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-nez v10, :cond_1b

    .line 1853
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 1854
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 1856
    :cond_1a
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "could not resolve entity named \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 1862
    :cond_1b
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1863
    iput v8, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1864
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v0, :cond_1d

    if-eqz v5, :cond_1c

    .line 1866
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    move v6, v1

    goto :goto_6

    .line 1869
    :cond_1c
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 1870
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    :cond_1d
    :goto_6
    move v0, v1

    .line 1875
    :goto_7
    array-length v5, v10

    if-ge v0, v5, :cond_1f

    .line 1877
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v7, v7

    if-lt v5, v7, :cond_1e

    invoke-virtual {p0, v5}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 1878
    :cond_1e
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aget-char v8, v10, v0

    aput-char v8, v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1f
    move v5, v2

    .line 1941
    :cond_20
    :goto_8
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    goto/16 :goto_1

    :cond_21
    if-eqz v6, :cond_22

    .line 1890
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    move v6, v1

    :cond_22
    move v5, v1

    :cond_23
    const/16 v7, 0xd

    const/16 v8, 0xa

    if-ne v0, v7, :cond_27

    .line 1908
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1910
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v5, :cond_25

    .line 1911
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    if-le v0, v5, :cond_24

    .line 1912
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    goto :goto_9

    .line 1914
    :cond_24
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 1915
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    .line 1919
    :cond_25
    :goto_9
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v5, v5

    if-lt v0, v5, :cond_26

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 1920
    :cond_26
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aput-char v8, v0, v5

    move v5, v2

    goto :goto_b

    :cond_27
    if-ne v0, v8, :cond_2a

    if-nez v5, :cond_29

    .line 1923
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_29

    .line 1924
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v5, v5

    if-lt v0, v5, :cond_28

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 1925
    :cond_28
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aput-char v8, v0, v5

    :cond_29
    :goto_a
    move v5, v1

    goto :goto_b

    .line 1929
    :cond_2a
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v5, :cond_29

    .line 1930
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v7, v7

    if-lt v5, v7, :cond_2b

    invoke-virtual {p0, v5}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 1931
    :cond_2b
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aput-char v0, v5, v7

    goto :goto_a

    .line 1936
    :goto_b
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    if-eq v0, v4, :cond_2c

    if-ne v0, v3, :cond_23

    .line 1938
    :cond_2c
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    move v5, v2

    goto/16 :goto_1

    .line 1944
    :cond_2d
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenRoot:Z

    if-eqz v0, :cond_2e

    .line 1945
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseEpilog()I

    move-result v0

    return v0

    .line 1947
    :cond_2e
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseProlog()I

    move-result v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1952
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public nextTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1294
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1300
    :goto_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1303
    :cond_1
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 1304
    :cond_2
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "expected XMLStreamConstants.START_ELEMENT or XMLStreamConstants.END_ELEMENT not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v2

    invoke-static {v2}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_3
    :goto_1
    return v0

    .line 1301
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    goto :goto_0
.end method

.method public nextText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1266
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1271
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 1273
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1274
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    move-result v1

    if-ne v1, v2, :cond_0

    return-object v0

    .line 1276
    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "TEXT must be immediately followed by END_ELEMENT and not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v2

    invoke-static {v2}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_1
    if-ne v0, v2, :cond_2

    .line 1283
    const-string v0, ""

    return-object v0

    .line 1285
    :cond_2
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "parser must be on START_ELEMENT or TEXT to read text"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 1267
    :cond_3
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "parser must be on START_ELEMENT to read next text"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1337
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    .line 1338
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method protected parseAttribute()C
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2457
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    :try_start_0
    iget v2, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v3, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v2, v3

    .line 2458
    iget v4, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v5, v4, -0x1

    add-int/2addr v5, v3

    .line 2460
    iget-object v3, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    aget-char v3, v3, v4

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1

    .line 2461
    iget-boolean v7, v1, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "when namespaces processing enabled colon can not be at attribute name start"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2466
    :cond_1
    :goto_0
    iget-boolean v7, v1, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    const/16 v7, 0x78

    if-ne v3, v7, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v8

    .line 2469
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v7

    const/4 v9, -0x1

    move v10, v8

    move v11, v9

    .line 2470
    :goto_2
    invoke-virtual {v1, v7}, Lcom/bea/xml/stream/MXParser;->isNameChar(C)Z

    move-result v12

    const/4 v13, 0x4

    const/4 v14, 0x2

    if-eqz v12, :cond_b

    .line 2471
    iget-boolean v12, v1, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v12, :cond_a

    if-eqz v3, :cond_8

    const/4 v12, 0x5

    if-ge v10, v12, :cond_8

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v6, :cond_3

    const/16 v12, 0x6d

    if-eq v7, v12, :cond_8

    :goto_3
    move v3, v8

    goto :goto_4

    :cond_3
    if-ne v10, v14, :cond_4

    const/16 v12, 0x6c

    if-eq v7, v12, :cond_8

    goto :goto_3

    :cond_4
    const/4 v14, 0x3

    if-ne v10, v14, :cond_5

    const/16 v12, 0x6e

    if-eq v7, v12, :cond_8

    goto :goto_3

    :cond_5
    if-ne v10, v13, :cond_6

    const/16 v12, 0x73

    if-eq v7, v12, :cond_8

    goto :goto_3

    :cond_6
    if-ne v10, v12, :cond_8

    if-ne v7, v4, :cond_7

    goto :goto_4

    .line 2479
    :cond_7
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "after xmlns in attribute name must be colonwhen namespaces are enabled"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_8
    :goto_4
    if-ne v7, v4, :cond_a

    if-ne v11, v9, :cond_9

    .line 2491
    iget v7, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v7, v6

    iget v11, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v11, v7

    goto :goto_5

    .line 2487
    :cond_9
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "only one colon is allowed in attribute name when namespaces are enabled"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2494
    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v7

    goto :goto_2

    .line 2497
    :cond_b
    iget v4, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    invoke-virtual {v1, v4}, Lcom/bea/xml/stream/MXParser;->ensureAttributesCapacity(I)V

    .line 2503
    iget-boolean v4, v1, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    const/4 v12, 0x0

    if-eqz v4, :cond_11

    if-ge v10, v13, :cond_c

    move v3, v8

    :cond_c
    if-eqz v3, :cond_f

    if-eq v11, v9, :cond_e

    .line 2508
    iget-object v4, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v5, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v10, v11, v5

    add-int/2addr v10, v6

    iget v13, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v13, v14

    sub-int v5, v11, v5

    sub-int/2addr v13, v5

    invoke-virtual {v1, v4, v10, v13}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    .line 2519
    const-string v5, "xmlns"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto/16 :goto_7

    .line 2520
    :cond_d
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "trying to bind reserved NS prefix \'xmlns\'"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_e
    move-object v4, v12

    goto/16 :goto_7

    :cond_f
    if-eq v11, v9, :cond_10

    .line 2526
    iget-object v4, v1, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v10, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    iget-object v13, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v15, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v15, v5, v15

    sub-int v5, v11, v5

    invoke-virtual {v1, v13, v15, v5}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 2530
    iget-object v4, v1, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    iget v5, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    iget-object v10, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v13, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v15, v11, v13

    add-int/2addr v15, v6

    iget v9, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v9, v14

    sub-int v13, v11, v13

    sub-int/2addr v9, v13

    invoke-virtual {v1, v10, v15, v9}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    move-object v4, v9

    goto :goto_6

    .line 2536
    :cond_10
    iget-object v4, v1, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v9, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    aput-object v12, v4, v9

    .line 2537
    iget-object v4, v1, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    iget-object v10, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v13, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v14, v5, v13

    iget v15, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v15, v6

    sub-int/2addr v5, v13

    sub-int/2addr v15, v5

    invoke-virtual {v1, v10, v14, v15}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    move-object v4, v5

    .line 2541
    :goto_6
    iget-boolean v5, v1, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v5, :cond_13

    .line 2542
    iget-object v5, v1, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    iget v9, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    aput v10, v5, v9

    goto :goto_7

    .line 2548
    :cond_11
    iget-object v4, v1, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    iget v9, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    iget-object v10, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v13, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v14, v5, v13

    iget v15, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v15, v6

    sub-int/2addr v5, v13

    sub-int/2addr v15, v5

    invoke-virtual {v1, v10, v14, v15}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 2552
    iget-boolean v4, v1, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v4, :cond_12

    .line 2553
    iget-object v4, v1, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    iget v9, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    aput v10, v4, v9

    :cond_12
    move-object v4, v5

    .line 2558
    :cond_13
    :goto_7
    invoke-virtual {v1, v7}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v7

    goto :goto_7

    :cond_14
    const/16 v5, 0x3d

    if-ne v7, v5, :cond_3b

    .line 2562
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    .line 2563
    :goto_8
    invoke-virtual {v1, v5}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    goto :goto_8

    :cond_15
    const/16 v7, 0x22

    if-eq v5, v7, :cond_17

    const/16 v7, 0x27

    if-ne v5, v7, :cond_16

    goto :goto_9

    .line 2568
    :cond_16
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "attribute value must start with quotation or apostrophe not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v5}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2578
    :cond_17
    :goto_9
    iput-boolean v8, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 2579
    iget v7, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iput v7, v1, Lcom/bea/xml/stream/MXParser;->pcStart:I

    .line 2580
    iget v7, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v7, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    move v7, v8

    .line 2583
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v9
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2584
    const-string v10, "\'"

    if-ne v9, v5, :cond_2a

    .line 2651
    :try_start_1
    iget-boolean v5, v1, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v5, :cond_28

    if-eqz v3, :cond_28

    .line 2654
    iget-boolean v3, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v3, :cond_18

    .line 2655
    iget-object v3, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v5, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v7, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v7, v6

    sub-int/2addr v7, v5

    invoke-virtual {v1, v3, v5, v7}, Lcom/bea/xml/stream/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    .line 2657
    :cond_18
    iget-object v3, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v5, v1, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iget v7, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    sub-int/2addr v7, v5

    invoke-virtual {v1, v3, v5, v7}, Lcom/bea/xml/stream/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v3

    .line 2659
    :goto_b
    iget v5, v1, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-virtual {v1, v5}, Lcom/bea/xml/stream/MXParser;->ensureNamespacesCapacity(I)V

    .line 2666
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "xml"

    if-eqz v5, :cond_1a

    .line 2667
    :try_start_2
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_c

    .line 2668
    :cond_19
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "trying to bind reserved NS URI  \'http://www.w3.org/XML/1998/namespace\' to prefix other than \'xml\'"

    invoke-direct {v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2670
    :cond_1a
    const-string v5, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    :goto_c
    const/4 v5, -0x1

    if-eq v11, v5, :cond_1e

    .line 2676
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1d

    .line 2685
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2686
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_d

    .line 2687
    :cond_1b
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "trying to bind reserved NS prefix \'xml\' to URI other than its standard value (http://www.w3.org/XML/1998/namespace)"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2693
    :cond_1c
    :goto_d
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v5, v1, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    aput-object v4, v0, v5

    .line 2694
    iget-boolean v0, v1, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_20

    .line 2695
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    aput v7, v0, v5

    move v13, v7

    goto :goto_e

    .line 2677
    :cond_1d
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "non-default namespace can not be declared to be empty string (in xml 1.0)"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2699
    :cond_1e
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v5, v1, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    aput-object v12, v0, v5

    .line 2700
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1f

    .line 2701
    sget-object v3, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    .line 2703
    :cond_1f
    iget-boolean v0, v1, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_20

    .line 2704
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

    iget v5, v1, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    const/4 v13, -0x1

    aput v13, v0, v5

    goto :goto_e

    :cond_20
    const/4 v13, -0x1

    .line 2707
    :goto_e
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v5, v1, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    aput-object v3, v0, v5

    .line 2710
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    iget v3, v1, Lcom/bea/xml/stream/MXParser;->depth:I

    sub-int/2addr v3, v6

    aget v0, v0, v3

    sub-int/2addr v5, v6

    :goto_f
    if-lt v5, v0, :cond_26

    .line 2713
    iget-boolean v3, v1, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v3, :cond_21

    if-nez v4, :cond_22

    :cond_21
    iget-object v7, v1, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v7, v7, v5

    if-eq v7, v4, :cond_24

    :cond_22
    if-nez v3, :cond_23

    if-eqz v4, :cond_23

    iget-object v3, v1, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

    aget v3, v3, v5

    if-ne v3, v13, :cond_23

    iget-object v3, v1, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_10

    :cond_23
    add-int/lit8 v5, v5, -0x1

    goto :goto_f

    :cond_24
    :goto_10
    if-nez v4, :cond_25

    .line 2719
    const-string v0, "default"

    goto :goto_11

    :cond_25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2720
    :goto_11
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "duplicated namespace declaration for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " prefix"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 2726
    :cond_26
    iget v0, v1, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    add-int/2addr v0, v6

    iput v0, v1, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    goto :goto_13

    .line 2672
    :cond_27
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "trying to bind reserved NS URI  \'http://www.w3.org/2000/xmlns/\'"

    invoke-direct {v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2729
    :cond_28
    iget-boolean v0, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v0, :cond_29

    .line 2730
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    iget v3, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    new-instance v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v7, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v8, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v8, v6

    sub-int/2addr v8, v7

    invoke-direct {v4, v5, v7, v8}, Ljava/lang/String;-><init>([CII)V

    aput-object v4, v0, v3

    goto :goto_12

    .line 2733
    :cond_29
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    iget v3, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    new-instance v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v7, v1, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iget v8, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    sub-int/2addr v8, v7

    invoke-direct {v4, v5, v7, v8}, Ljava/lang/String;-><init>([CII)V

    aput-object v4, v0, v3

    .line 2736
    :goto_12
    iget v0, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/2addr v0, v6

    iput v0, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    .line 2738
    :goto_13
    iget v0, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    return v9

    :cond_2a
    const/4 v13, -0x1

    const/16 v14, 0x3c

    if-eq v9, v14, :cond_3a

    const/16 v14, 0x26

    const/16 v15, 0xd

    if-ne v9, v14, :cond_30

    .line 2591
    iget v7, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v7, v6

    iput v7, v1, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2592
    iget-boolean v14, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v14, :cond_2c

    .line 2593
    iget v14, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    if-le v7, v14, :cond_2b

    .line 2596
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    goto :goto_14

    .line 2598
    :cond_2b
    iput-boolean v6, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 2599
    iput v8, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iput v8, v1, Lcom/bea/xml/stream/MXParser;->pcStart:I

    .line 2604
    :cond_2c
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getConfigurationContext()Lcom/bea/xml/stream/ConfigurationContextBase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bea/xml/stream/ConfigurationContextBase;->isReplacingEntities()Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/bea/xml/stream/MXParser;->parseEntityRef(Z)[C

    move-result-object v7

    if-nez v7, :cond_2e

    .line 2607
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 2608
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v3, v1, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 2610
    :cond_2d
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "could not resolve entity named \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, v1, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/bea/xml/stream/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_2e
    move v10, v8

    .line 2615
    :goto_15
    array-length v14, v7

    if-ge v10, v14, :cond_38

    .line 2617
    iget v14, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v12, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v12, v12

    if-lt v14, v12, :cond_2f

    invoke-virtual {v1, v14}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 2618
    :cond_2f
    iget-object v12, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v14, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v13, v14, 0x1

    iput v13, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aget-char v13, v7, v10

    aput-char v13, v12, v14

    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    goto :goto_15

    :cond_30
    const/16 v10, 0x9

    const/16 v12, 0xa

    if-eq v9, v10, :cond_33

    if-eq v9, v12, :cond_33

    if-ne v9, v15, :cond_31

    goto :goto_16

    .line 2642
    :cond_31
    iget-boolean v7, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v7, :cond_38

    .line 2643
    iget v7, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v10, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v10, v10

    if-lt v7, v10, :cond_32

    invoke-virtual {v1, v7}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 2644
    :cond_32
    iget-object v7, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v10, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v12, v10, 0x1

    iput v12, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aput-char v9, v7, v10

    goto :goto_18

    .line 2626
    :cond_33
    :goto_16
    iget-boolean v10, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v10, :cond_35

    .line 2627
    iget v10, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v10, v6

    iput v10, v1, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2628
    iget v13, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    if-le v10, v13, :cond_34

    .line 2629
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    goto :goto_17

    .line 2631
    :cond_34
    iput-boolean v6, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 2632
    iput v8, v1, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iput v8, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    .line 2636
    :cond_35
    :goto_17
    iget v10, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v13, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v13, v13

    if-lt v10, v13, :cond_36

    invoke-virtual {v1, v10}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    :cond_36
    if-ne v9, v12, :cond_37

    if-nez v7, :cond_38

    .line 2638
    :cond_37
    iget-object v7, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v10, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v12, v10, 0x1

    iput v12, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    const/16 v12, 0x20

    aput-char v12, v7, v10

    :cond_38
    :goto_18
    if-ne v9, v15, :cond_39

    move v7, v6

    goto :goto_19

    :cond_39
    move v7, v8

    :goto_19
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 2587
    :cond_3a
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "markup not allowed inside attribute value - illegal < "

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2559
    :cond_3b
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "expected = after attribute name"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 2742
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    const-string v3, "Unexpected end of stream"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected parseCDATA()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3565
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x44

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v2, 0x54

    if-ne v0, v2, :cond_7

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_7

    .line 3581
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3582
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    .line 3583
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, -0x1

    move v5, v2

    move v6, v5

    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 3592
    :try_start_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v8

    const/16 v9, 0x5d

    if-ne v8, v9, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    const/16 v9, 0x3e

    if-ne v8, v9, :cond_2

    const/4 v4, 0x2

    if-lt v5, v4, :cond_5

    if-eqz v6, :cond_1

    .line 3631
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    goto :goto_1

    .line 3633
    :cond_1
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    :goto_1
    return-void

    :cond_2
    const/16 v5, 0xd

    const/16 v9, 0xa

    const/4 v10, 0x1

    if-ne v8, v5, :cond_4

    .line 3604
    iput v10, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    add-int/lit8 v3, v4, 0x2

    if-nez v6, :cond_3

    .line 3608
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v5, v10

    aput-char v9, v4, v5

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v2

    move v8, v9

    goto :goto_2

    :cond_4
    if-ne v8, v9, :cond_5

    if-ne v3, v7, :cond_5

    .line 3616
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v4, v10

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    move v5, v2

    move v4, v7

    move v6, v10

    goto :goto_0

    :cond_5
    move v5, v2

    :goto_2
    if-eqz v6, :cond_6

    .line 3626
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    aput-char v8, v4, v9

    add-int/lit8 v9, v9, 0x1

    .line 3627
    iput v9, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_3
    move v4, v7

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3637
    new-instance v3, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "CDATA section on line "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, " and column "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " was not closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v3, v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v3

    .line 3572
    :cond_7
    :try_start_2
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected <[CDATA[ for CDATA start"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 3575
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected EOF in directive"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseComment()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 2941
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_8

    .line 2945
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 2947
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    .line 2948
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    move v6, v5

    move v5, v4

    move v4, v3

    .line 2956
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v7

    add-int/lit8 v8, v5, 0x1

    const/4 v9, 0x1

    if-ne v7, v1, :cond_3

    if-ge v3, v8, :cond_0

    add-int/lit8 v5, v5, 0x2

    move v3, v5

    goto :goto_2

    .line 2963
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    const/16 v3, 0x3e

    if-ne v1, v3, :cond_2

    if-eqz v6, :cond_1

    .line 2997
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v1, v9

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    goto :goto_1

    .line 2999
    :cond_1
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    :goto_1
    return-void

    .line 2965
    :cond_2
    new-instance v3, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "in COMMENT after two dashes (--) next character must be \'>\' not "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v3

    :cond_3
    const/16 v10, 0xd

    const/16 v11, 0xa

    if-ne v7, v10, :cond_5

    .line 2970
    iput v9, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    add-int/lit8 v4, v5, 0x2

    if-nez v6, :cond_4

    .line 2974
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v7, v9

    aput-char v11, v5, v7

    goto :goto_3

    :cond_4
    move v7, v11

    goto :goto_2

    :cond_5
    if-ne v7, v11, :cond_6

    if-ne v4, v8, :cond_6

    if-nez v6, :cond_7

    .line 2983
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v5, v9

    iput v5, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    move v5, v8

    move v6, v9

    goto :goto_0

    :cond_6
    :goto_2
    if-eqz v6, :cond_7

    .line 2992
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    aput-char v7, v5, v9

    add-int/lit8 v9, v9, 0x1

    .line 2993
    iput v9, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_3
    move v5, v8

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3003
    :try_start_2
    new-instance v3, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "COMMENT started on line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, " and column "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " was not closed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v3, v0, v2, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v3

    .line 2943
    :cond_8
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected <!-- for COMMENT start"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 3009
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseDocdecl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3396
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3399
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v2, 0x54

    if-ne v0, v2, :cond_13

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v3, 0x59

    if-ne v0, v3, :cond_13

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v4, 0x50

    if-ne v0, v4, :cond_13

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v5, 0x45

    if-ne v0, v5, :cond_13

    .line 3419
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->requireNextS()C

    move-result v0

    .line 3422
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3423
    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwNotNameStart(C)V

    .line 3427
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3428
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isNameChar(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3431
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    const/16 v6, 0x27

    const/16 v7, 0x22

    const/16 v8, 0x53

    if-eq v0, v8, :cond_1

    if-ne v0, v4, :cond_a

    :cond_1
    if-ne v0, v8, :cond_3

    .line 3435
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    if-ne v1, v8, :cond_2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 3437
    :cond_2
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected keyword SYSTEM"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3440
    :cond_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    const/16 v3, 0x55

    if-ne v2, v3, :cond_12

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_12

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_12

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    const/16 v3, 0x49

    if-ne v2, v3, :cond_12

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    if-ne v2, v1, :cond_12

    .line 3445
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->requireNextS()C

    move-result v1

    if-eq v1, v7, :cond_5

    if-ne v1, v6, :cond_4

    goto :goto_0

    .line 3447
    :cond_4
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Public identifier has to be enclosed in quotes, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3449
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    if-eq v0, v1, :cond_6

    goto :goto_0

    .line 3454
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->requireNextS()C

    move-result v1

    if-eq v1, v7, :cond_8

    if-ne v1, v6, :cond_7

    goto :goto_2

    .line 3456
    :cond_7
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "System identifier has to be enclosed in quotes, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3458
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    if-eq v0, v1, :cond_9

    goto :goto_2

    .line 3462
    :cond_9
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    :cond_a
    const/16 v1, 0x3e

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_10

    .line 3466
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    const/4 v0, 0x1

    .line 3474
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v3

    if-eq v3, v7, :cond_f

    if-eq v3, v6, :cond_f

    if-eq v3, v1, :cond_e

    if-eq v3, v2, :cond_d

    const/16 v4, 0x5d

    if-eq v3, v4, :cond_c

    goto :goto_3

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    if-gtz v0, :cond_b

    .line 3495
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3496
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->processDTD()V

    goto :goto_5

    .line 3489
    :cond_f
    :goto_4
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v4

    if-eq v4, v3, :cond_b

    goto :goto_4

    .line 3499
    :cond_10
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3500
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    if-ne v0, v1, :cond_11

    :goto_5
    return-void

    .line 3502
    :cond_11
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Expected closing \'>\' after internal DTD subset, not \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3442
    :cond_12
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected keyword PUBLIC"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3405
    :cond_13
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected <!DOCTYPE"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 3507
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseEndTag()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const-string v0, "expected name start and not "

    const/4 v1, 0x2

    .line 2152
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    .line 2155
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    .line 2156
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2161
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v2, v0, -0x3

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 2162
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v0, v3

    .line 2164
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v3

    .line 2165
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->isNameChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2173
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v4, v2

    .line 2174
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v0, v5

    sub-int/2addr v4, v0

    .line 2176
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elRawName:[[C

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v5, v5, v6

    .line 2177
    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->elRawNameEnd:[I

    aget v6, v7, v6
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "\'"

    const-string v8, "end tag name \'"

    const/4 v9, 0x0

    if-ne v6, v4, :cond_5

    move v6, v9

    :goto_0
    if-ge v6, v4, :cond_2

    .line 2187
    :try_start_1
    iget-object v10, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    add-int/lit8 v11, v0, 0x1

    aget-char v0, v10, v0

    aget-char v10, v5, v6

    if-ne v0, v10, :cond_1

    add-int/lit8 v6, v6, 0x1

    move v0, v11

    goto :goto_0

    .line 2189
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v9, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2190
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    sub-int/2addr v11, v6

    sub-int/2addr v11, v2

    invoke-direct {v1, v3, v11, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2191
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\' must be the same as start tag \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 2197
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v3

    goto :goto_1

    :cond_3
    const/16 v0, 0x3e

    if-ne v3, v0, :cond_4

    .line 2206
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2207
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->pastEndTag:Z

    return v1

    .line 2198
    :cond_4
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected > to finsh end tag not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2179
    :cond_5
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->elRawNameEnd:[I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget v2, v2, v3

    invoke-direct {v1, v5, v9, v2}, Ljava/lang/String;-><init>([CII)V

    .line 2180
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    invoke-direct {v2, v3, v0, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2181
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' must match start tag name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2157
    :cond_6
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 2210
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseEntityRef(Z)[C
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2767
    :try_start_0
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 2768
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 2769
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x23

    const/16 v2, 0x61

    const/16 v3, 0x3b

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v1, :cond_b

    .line 2775
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result p1

    const/16 v0, 0x78

    const v1, 0x10ffff

    const/16 v7, 0x39

    const/16 v8, 0x30

    if-ne p1, v0, :cond_5

    move p1, v6

    .line 2779
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_3

    :cond_1
    shl-int/lit8 p1, p1, 0x4

    if-lt v0, v8, :cond_2

    if-gt v0, v7, :cond_2

    add-int/lit8 v0, v0, -0x30

    :goto_0
    add-int/2addr p1, v0

    goto :goto_1

    :cond_2
    if-lt v0, v2, :cond_3

    const/16 v9, 0x66

    if-gt v0, v9, :cond_3

    add-int/lit8 v0, v0, -0x57

    goto :goto_0

    :cond_3
    const/16 v9, 0x41

    if-lt v0, v9, :cond_4

    const/16 v9, 0x46

    if-gt v0, v9, :cond_4

    add-int/lit8 v0, v0, -0x37

    goto :goto_0

    :goto_1
    if-le p1, v1, :cond_0

    goto :goto_3

    .line 2791
    :cond_4
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "character reference (with hex value) may not contain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw p1

    :cond_5
    move v0, v6

    :cond_6
    if-lt p1, v8, :cond_7

    if-gt p1, v7, :cond_7

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 p1, p1, -0x30

    add-int/2addr v0, p1

    .line 2808
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result p1

    if-le v0, v1, :cond_6

    goto :goto_2

    :cond_7
    if-ne p1, v3, :cond_a

    :goto_2
    move p1, v0

    .line 2811
    :goto_3
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2816
    invoke-virtual {p0, p1, v6}, Lcom/bea/xml/stream/MXParser;->checkCharValidity(IZ)V

    const v0, 0xffff

    if-le p1, v0, :cond_9

    .line 2819
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefTwoCharBuf:[C

    if-nez v0, :cond_8

    .line 2820
    new-array v0, v4, [C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefTwoCharBuf:[C

    :cond_8
    const/high16 v0, 0x10000

    sub-int/2addr p1, v0

    .line 2823
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefTwoCharBuf:[C

    shr-int/lit8 v1, p1, 0xa

    const v2, 0xd800

    add-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v0, v6

    and-int/lit16 p1, p1, 0x3ff

    const v1, 0xdc00

    add-int/2addr p1, v1

    int-to-char p1, p1

    .line 2824
    aput-char p1, v0, v5

    .line 2825
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    return-object v0

    .line 2828
    :cond_9
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    int-to-char p1, p1

    aput-char p1, v0, v6

    .line 2829
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    return-object v0

    .line 2804
    :cond_a
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "character reference (with decimal value) may not contain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2835
    :cond_b
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    if-ne v0, v3, :cond_b

    .line 2836
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2838
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v0, v1

    const/16 v3, 0x74

    if-ne v0, v4, :cond_f

    .line 2840
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    aget-char v4, v2, v1

    const/16 v7, 0x6c

    if-ne v4, v7, :cond_d

    add-int/lit8 v7, v1, 0x1

    aget-char v7, v2, v7

    if-ne v7, v3, :cond_d

    if-nez p1, :cond_c

    .line 2842
    const-string p1, "<"

    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2843
    :cond_c
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/16 v0, 0x3c

    aput-char v0, p1, v6

    .line 2845
    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    return-object p1

    :cond_d
    const/16 v7, 0x67

    if-ne v4, v7, :cond_15

    add-int/2addr v1, v5

    .line 2851
    aget-char v1, v2, v1

    if-ne v1, v3, :cond_15

    if-nez p1, :cond_e

    .line 2853
    const-string p1, ">"

    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2854
    :cond_e
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/16 v0, 0x3e

    aput-char v0, p1, v6

    .line 2856
    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    return-object p1

    :cond_f
    const/16 v5, 0x70

    const/4 v7, 0x3

    if-ne v0, v7, :cond_11

    .line 2859
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    aget-char v7, v3, v1

    if-ne v7, v2, :cond_15

    add-int/lit8 v2, v1, 0x1

    aget-char v2, v3, v2

    const/16 v7, 0x6d

    if-ne v2, v7, :cond_15

    add-int/2addr v1, v4

    aget-char v1, v3, v1

    if-ne v1, v5, :cond_15

    if-nez p1, :cond_10

    .line 2862
    const-string p1, "&"

    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2863
    :cond_10
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/16 v0, 0x26

    aput-char v0, p1, v6

    .line 2865
    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    return-object p1

    :cond_11
    const/4 v4, 0x4

    if-ne v0, v4, :cond_15

    .line 2868
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    aget-char v8, v4, v1

    const/16 v9, 0x6f

    if-ne v8, v2, :cond_13

    add-int/lit8 v2, v1, 0x1

    aget-char v2, v4, v2

    if-ne v2, v5, :cond_13

    add-int/lit8 v2, v1, 0x2

    aget-char v2, v4, v2

    if-ne v2, v9, :cond_13

    add-int/lit8 v2, v1, 0x3

    aget-char v2, v4, v2

    const/16 v5, 0x73

    if-ne v2, v5, :cond_13

    if-nez p1, :cond_12

    .line 2871
    const-string p1, "\'"

    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2872
    :cond_12
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/16 v0, 0x27

    aput-char v0, p1, v6

    .line 2874
    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    return-object p1

    :cond_13
    const/16 v2, 0x71

    if-ne v8, v2, :cond_15

    add-int/lit8 v2, v1, 0x1

    .line 2876
    aget-char v2, v4, v2

    const/16 v5, 0x75

    if-ne v2, v5, :cond_15

    add-int/lit8 v2, v1, 0x2

    aget-char v2, v4, v2

    if-ne v2, v9, :cond_15

    add-int/2addr v1, v7

    aget-char v1, v4, v1

    if-ne v1, v3, :cond_15

    if-nez p1, :cond_14

    .line 2879
    const-string p1, "\""

    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2880
    :cond_14
    iget-object p1, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/16 v0, 0x22

    aput-char v0, p1, v6

    .line 2882
    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    return-object p1

    .line 2887
    :cond_15
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->lookupEntityReplacement(I)[C

    move-result-object p1

    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2889
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected parseEpilog()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 2059
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_d

    .line 2064
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->reachedEnd:Z

    if-eqz v0, :cond_0

    .line 2065
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v1

    :cond_0
    const/4 v0, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2071
    :try_start_0
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    if-eqz v4, :cond_1

    .line 2072
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v5, v3

    aget-char v4, v4, v5

    goto :goto_0

    .line 2074
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v4

    .line 2076
    :goto_0
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 2077
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    :goto_1
    const/16 v5, 0x3c

    if-ne v4, v5, :cond_9

    if-eqz v2, :cond_2

    .line 2082
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v4, :cond_2

    .line 2083
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2084
    iput-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 2085
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 2087
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v4

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_3

    .line 2091
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parsePI()Z

    .line 2092
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v4, :cond_a

    const/4 v4, 0x3

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v4

    :cond_3
    const/16 v5, 0x21

    if-ne v4, v5, :cond_6

    .line 2095
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v4

    const/16 v5, 0x44

    if-ne v4, v5, :cond_4

    .line 2097
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseDocdecl()V

    .line 2098
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v4, :cond_a

    const/16 v4, 0xb

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v4

    :cond_4
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_5

    .line 2100
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseComment()V

    .line 2101
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v4, :cond_a

    const/4 v4, 0x5

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v4

    .line 2103
    :cond_5
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "unexpected markup <!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v5

    :cond_6
    const/16 v5, 0x2f

    if-eq v4, v5, :cond_8

    .line 2111
    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2112
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "start tag not allowed in epilog but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v5

    .line 2116
    :cond_7
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "in epilog expected ignorable content and not "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v5

    .line 2108
    :cond_8
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "end tag not allowed in epilog but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v5

    .line 2120
    :cond_9
    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v5

    if-eqz v5, :cond_b

    move v2, v3

    .line 2127
    :cond_a
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v4

    goto/16 :goto_1

    .line 2123
    :cond_b
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "in epilog non whitespace content is not allowed but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v5
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2134
    :catch_0
    iput-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->reachedEnd:Z

    .line 2135
    iget-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v3, :cond_c

    if-eqz v2, :cond_c

    .line 2136
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2137
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 2139
    :cond_c
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v1

    .line 2060
    :cond_d
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "already reached end document"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
.end method

.method protected parsePI()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3042
    const-string v0, "xml"

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    .line 3043
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    const/4 v3, 0x0

    .line 3046
    :try_start_0
    iput-object v3, p0, Lcom/bea/xml/stream/MXParser;->piTarget:Ljava/lang/String;

    .line 3047
    iput-object v3, p0, Lcom/bea/xml/stream/MXParser;->piData:Ljava/lang/String;

    .line 3052
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v3, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3055
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 3059
    :cond_0
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->isNameChar(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 3061
    :cond_1
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3068
    :goto_1
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-eqz v5, :cond_d

    .line 3075
    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    invoke-direct {v7, v8, v9, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v7, p0, Lcom/bea/xml/stream/MXParser;->piTarget:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    .line 3081
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v3

    .line 3084
    :cond_2
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->piTarget:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x2

    if-eqz v5, :cond_5

    .line 3093
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v4, v5

    if-gt v4, v7, :cond_4

    .line 3097
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->piTarget:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3101
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3102
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->parseXmlDecl(C)V

    .line 3104
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    goto :goto_4

    .line 3098
    :cond_3
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v3, "XMLDecl must have xml name in lowercase"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3094
    :cond_4
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v3, "processing instruction can not have PITarget with reserved name \'xml\'"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3106
    :cond_5
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    const/4 v0, -0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    move v10, v9

    move v9, v8

    move v8, v3

    move v3, v0

    :goto_2
    add-int/lit8 v11, v9, 0x1

    if-ne v8, v4, :cond_6

    add-int/lit8 v0, v9, 0x2

    goto :goto_5

    :cond_6
    const/16 v12, 0x3e

    if-ne v8, v12, :cond_8

    if-ne v11, v0, :cond_b

    if-eqz v10, :cond_7

    .line 3149
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    goto :goto_3

    .line 3151
    :cond_7
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    :goto_3
    move v6, v5

    .line 3154
    :goto_4
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v5, v4

    invoke-direct {v0, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->piData:Ljava/lang/String;

    return v6

    :cond_8
    const/16 v12, 0xd

    const/16 v13, 0xa

    if-ne v8, v12, :cond_a

    .line 3122
    iput v6, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    add-int/lit8 v3, v9, 0x2

    if-nez v10, :cond_9

    .line 3126
    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v9, v6

    aput-char v13, v8, v9

    goto :goto_6

    :cond_9
    move v8, v13

    goto :goto_5

    :cond_a
    if-ne v8, v13, :cond_b

    if-ne v3, v11, :cond_b

    if-nez v10, :cond_c

    .line 3135
    iget v8, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v8, v6

    iput v8, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    move v10, v6

    goto :goto_6

    :cond_b
    :goto_5
    if-eqz v10, :cond_c

    .line 3144
    iget-object v9, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v12, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    aput-char v8, v9, v12

    add-int/lit8 v12, v12, 0x1

    .line 3145
    iput v12, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3113
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v8

    move v9, v11

    goto :goto_2

    .line 3071
    :cond_d
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v3, "processing instruction must have PITarget name"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3064
    :cond_e
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "unexpected character "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " after processing instruction name; expected a white space or \'?>\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 3159
    new-instance v3, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "processing instruction started on line "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, " and column "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " was not closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v3, v1, v2, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected parseProlog()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1965
    :try_start_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v2, v1

    aget-char v0, v0, v2

    goto :goto_0

    .line 1968
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 1971
    :goto_0
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    const v2, 0xfffe

    if-eq v0, v2, :cond_1

    const v2, 0xfeff

    if-ne v0, v2, :cond_2

    .line 1983
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    goto :goto_1

    .line 1976
    :cond_1
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "first character in input was UNICODE noncharacter (0xFFFE)- input requires int swapping"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 1986
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 1988
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    :goto_2
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_c

    if-eqz v2, :cond_3

    .line 1995
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v0, :cond_3

    .line 1996
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1997
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    const/4 v0, 0x6

    .line 1998
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 2000
    :cond_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v4, 0x3f

    if-ne v0, v4, :cond_5

    .line 2004
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parsePI()Z

    move-result v0

    .line 2005
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v4, :cond_d

    if-eqz v0, :cond_4

    .line 2007
    iput v3, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v3

    :cond_4
    const/4 v0, 0x3

    .line 2008
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    :cond_5
    const/16 v4, 0x21

    if-ne v0, v4, :cond_9

    .line 2011
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v4, 0x44

    if-ne v0, v4, :cond_7

    .line 2013
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenDocdecl:Z

    if-nez v0, :cond_6

    .line 2018
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenDocdecl:Z

    .line 2019
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseDocdecl()V

    .line 2020
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v0, :cond_d

    const/16 v0, 0xb

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 2014
    :cond_6
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "only one docdecl allowed in XML document"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_7
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_8

    .line 2022
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseComment()V

    .line 2023
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 2025
    :cond_8
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unexpected markup <!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    const/16 v2, 0x2f

    .line 2029
    const-string v3, "expected start tag name and not "

    if-eq v0, v2, :cond_b

    .line 2033
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2034
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenRoot:Z

    .line 2035
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseStartTag()I

    move-result v0

    return v0

    .line 2037
    :cond_a
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 2030
    :cond_b
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 2041
    :cond_c
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v1

    .line 2048
    :cond_d
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    goto/16 :goto_2

    .line 2044
    :cond_e
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "only whitespace content allowed before start tag and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 2052
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseStartTag()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2225
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    .line 2229
    :try_start_0
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    .line 2231
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v2, v1, -0x2

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    const/4 v2, 0x0

    .line 2233
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    .line 2234
    iput v2, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    .line 2235
    iput v2, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceEnd:I

    add-int/lit8 v3, v1, -0x1

    .line 2237
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v3, v4

    .line 2239
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    sub-int/2addr v1, v0

    aget-char v1, v4, v1

    const/16 v4, 0x3a

    if-ne v1, v4, :cond_1

    .line 2240
    iget-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "when namespaces processing enabled colon can not be at element name start"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v1, -0x1

    move v5, v1

    .line 2244
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v6

    .line 2245
    invoke-virtual {p0, v6}, Lcom/bea/xml/stream/MXParser;->isNameChar(C)Z

    move-result v7

    if-nez v7, :cond_22

    .line 2255
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->ensureElementsCapacity()V

    .line 2260
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v4, v0

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v8, v3, v7

    sub-int/2addr v4, v8

    .line 2261
    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->elRawName:[[C

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v10, v8, v9

    if-eqz v10, :cond_3

    array-length v10, v10

    if-ge v10, v4, :cond_4

    :cond_3
    mul-int/lit8 v10, v4, 0x2

    .line 2262
    new-array v10, v10, [C

    aput-object v10, v8, v9

    .line 2264
    :cond_4
    iget-object v10, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    sub-int v7, v3, v7

    aget-object v8, v8, v9

    invoke-static {v10, v7, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2265
    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->elRawNameEnd:[I

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aput v4, v7, v8

    .line 2271
    iget-boolean v7, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    const/4 v9, 0x0

    if-eqz v7, :cond_6

    if-eq v5, v1, :cond_5

    .line 2273
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->elPrefix:[Ljava/lang/String;

    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v7, v3, v7

    sub-int v3, v5, v3

    invoke-virtual {p0, v4, v7, v3}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    .line 2275
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    add-int/lit8 v7, v5, 0x1

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v7, v8

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v10, v10, -0x2

    sub-int/2addr v5, v8

    sub-int/2addr v10, v5

    invoke-virtual {p0, v4, v7, v10}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_2

    .line 2279
    :cond_5
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->elPrefix:[Ljava/lang/String;

    aput-object v9, v1, v8

    .line 2280
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v3, v7

    invoke-virtual {p0, v5, v3, v4}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    goto :goto_2

    .line 2283
    :cond_6
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v3, v7

    invoke-virtual {p0, v5, v3, v4}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 2287
    :goto_2
    invoke-virtual {p0, v6}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2289
    :cond_7
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v6

    invoke-virtual {p0, v6}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_8
    const/16 v3, 0x3e

    if-ne v6, v3, :cond_9

    goto :goto_3

    :cond_9
    const/16 v5, 0x2f

    if-ne v6, v5, :cond_1e

    .line 2294
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    .line 2295
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    if-ne v1, v3, :cond_1d

    .line 2315
    :goto_3
    iget-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " and "

    const-string v5, "duplicated attributes "

    const-string v6, ":"

    if-eqz v1, :cond_15

    .line 2316
    :try_start_1
    invoke-virtual {p0, v9}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    if-nez v9, :cond_a

    .line 2319
    sget-object v1, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    goto :goto_4

    .line 2321
    :cond_a
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "could not determine namespace bound to element prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2327
    :cond_b
    :goto_4
    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->elUri:[Ljava/lang/String;

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aput-object v1, v7, v8

    move v1, v2

    .line 2335
    :goto_5
    iget v7, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge v1, v7, :cond_e

    .line 2337
    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object v7, v7, v1

    if-eqz v7, :cond_d

    .line 2339
    invoke-virtual {p0, v7}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 2346
    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aput-object v8, v7, v1

    goto :goto_6

    .line 2341
    :cond_c
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "could not determine namespace bound to attribute prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2348
    :cond_d
    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    sget-object v8, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    aput-object v8, v7, v1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    move v1, v0

    .line 2356
    :goto_7
    iget v7, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge v1, v7, :cond_1a

    move v7, v2

    :goto_8
    if-ge v7, v1, :cond_14

    .line 2360
    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v10, v8, v7

    aget-object v8, v8, v1

    if-ne v10, v8, :cond_13

    iget-boolean v8, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v10, v8, v7

    aget-object v8, v8, v1

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    :cond_f
    iget-boolean v8, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v8, :cond_13

    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    aget v10, v8, v7

    aget v8, v8, v1

    if-ne v10, v8, :cond_13

    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v10, v8, v7

    aget-object v8, v8, v1

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 2367
    :cond_10
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, v7

    .line 2368
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v2, v2, v7

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2369
    :cond_11
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 2370
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_12

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v1, v7, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2371
    :cond_12
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_15
    move v1, v0

    .line 2383
    :goto_9
    iget v7, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge v1, v7, :cond_1a

    move v7, v2

    :goto_a
    if-ge v7, v1, :cond_19

    .line 2387
    iget-boolean v8, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v10, v8, v7

    aget-object v8, v8, v1

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    :cond_16
    iget-boolean v8, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v8, :cond_18

    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    aget v10, v8, v7

    aget v8, v8, v1

    if-ne v10, v8, :cond_18

    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v10, v8, v7

    aget-object v8, v8, v1

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    goto :goto_b

    .line 2394
    :cond_17
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v2, v0, v7

    .line 2395
    aget-object v0, v0, v1

    .line 2396
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    :cond_18
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2404
    :cond_1a
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    aput v3, v1, v2

    .line 2405
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2407
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    if-eqz v1, :cond_1c

    if-eqz v9, :cond_1b

    .line 2409
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->addDefaultAttributes(Ljava/lang/String;)V

    goto :goto_c

    .line 2411
    :cond_1b
    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->addDefaultAttributes(Ljava/lang/String;)V

    :cond_1c
    :goto_c
    return v0

    .line 2296
    :cond_1d
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected > to end empty tag not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2299
    :cond_1e
    invoke-virtual {p0, v6}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v5

    if-eqz v5, :cond_21

    if-nez v1, :cond_20

    if-ne v6, v3, :cond_1f

    goto :goto_d

    .line 2301
    :cond_1f
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected a white space between attributes"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2303
    :cond_20
    :goto_d
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseAttribute()C

    .line 2304
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v6

    goto/16 :goto_2

    .line 2307
    :cond_21
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "start tag unexpected character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_22
    if-ne v6, v4, :cond_2

    .line 2246
    iget-boolean v6, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v6, :cond_2

    if-ne v5, v1, :cond_23

    .line 2250
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v5, v6

    goto/16 :goto_1

    .line 2247
    :cond_23
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "only one colon is allowed in name of element when namespaces are enabled"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 2413
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseXmlDecl(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const-string v0, "expected apostrophe (\') or quotation mark (\") after version and not "

    const-string v1, "expected equals sign (=) after version and not "

    .line 3230
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result p1

    .line 3231
    sget-object v2, Lcom/bea/xml/stream/MXParser;->VERSION:[C

    invoke-virtual {p0, p1, v2}, Lcom/bea/xml/stream/MXParser;->requireInput(C[C)C

    move-result p1

    .line 3233
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result p1

    const/16 v2, 0x3d

    if-ne p1, v2, :cond_8

    .line 3238
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result p1

    .line 3239
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result p1

    const/16 v1, 0x27

    if-eq p1, v1, :cond_1

    const/16 v1, 0x22

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3241
    :cond_0
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3246
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    .line 3247
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    :goto_1
    if-eq v1, p1, :cond_7

    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7a

    if-le v1, v2, :cond_6

    :cond_2
    const/16 v2, 0x41

    if-lt v1, v2, :cond_3

    const/16 v2, 0x5a

    if-le v1, v2, :cond_6

    :cond_3
    const/16 v2, 0x30

    if-lt v1, v2, :cond_4

    const/16 v2, 0x39

    if-le v1, v2, :cond_6

    :cond_4
    const/16 v2, 0x5f

    if-eq v1, v2, :cond_6

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_6

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_6

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_5

    goto :goto_2

    .line 3253
    :cond_5
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<?xml version value expected to be in ([a-zA-Z0-9_.:] | \'-\') not "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw p1

    .line 3257
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    goto :goto_1

    .line 3259
    :cond_7
    iget p1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 p1, p1, -0x1

    .line 3260
    invoke-virtual {p0, v0, p1}, Lcom/bea/xml/stream/MXParser;->parseXmlDeclWithVersion(II)V

    return-void

    .line 3235
    :cond_8
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 3263
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected parseXmlDeclWithVersion(II)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    const-string v3, "<?xml encoding name expected to start with [A-Za-z] not "

    const-string v4, "expected equals sign (=) after encoding and not "

    const-string v5, "only 1.0 is supported as <?xml version not \'"

    sub-int v6, v2, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_16

    .line 3275
    :try_start_0
    iget-object v7, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    aget-char v8, v7, v0

    const/16 v9, 0x31

    if-ne v8, v9, :cond_16

    add-int/lit8 v8, v0, 0x1

    aget-char v8, v7, v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_16

    add-int/lit8 v8, v0, 0x2

    aget-char v7, v7, v8

    const/16 v8, 0x30

    if-ne v7, v8, :cond_16

    .line 3284
    new-instance v2, Ljava/lang/String;

    iget-object v5, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    invoke-direct {v2, v5, v0, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, v1, Lcom/bea/xml/stream/MXParser;->xmlVersion:Ljava/lang/String;

    .line 3287
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3288
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_13

    .line 3290
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    .line 3292
    sget-object v5, Lcom/bea/xml/stream/MXParser;->ENCODING:[C

    const/4 v6, 0x0

    aget-char v7, v5, v6
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v10, 0x22

    const/16 v11, 0x27

    const/16 v12, 0x3d

    const/4 v13, 0x1

    const-string v14, "expected apostrophe (\') or quotation mark (\") after encoding and not "

    if-ne v0, v7, :cond_c

    .line 3293
    :try_start_1
    invoke-virtual {v1, v0, v5}, Lcom/bea/xml/stream/MXParser;->requireInput(C[C)C

    move-result v0

    .line 3294
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    if-ne v0, v12, :cond_b

    .line 3299
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3300
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    if-eq v0, v11, :cond_1

    if-ne v0, v10, :cond_0

    goto :goto_0

    .line 3302
    :cond_0
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 3307
    :cond_1
    :goto_0
    iget v4, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    .line 3308
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    const/16 v7, 0x5a

    const/16 v15, 0x7a

    const/16 v6, 0x41

    const/16 v10, 0x61

    if-lt v5, v10, :cond_2

    if-le v5, v15, :cond_3

    :cond_2
    if-lt v5, v6, :cond_a

    if-gt v5, v7, :cond_a

    .line 3316
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v3

    :goto_1
    if-eq v3, v0, :cond_9

    if-lt v3, v10, :cond_4

    if-le v3, v15, :cond_8

    :cond_4
    if-lt v3, v6, :cond_5

    if-le v3, v7, :cond_8

    :cond_5
    if-lt v3, v8, :cond_6

    const/16 v5, 0x39

    if-le v3, v5, :cond_8

    :cond_6
    if-eq v3, v9, :cond_8

    const/16 v5, 0x5f

    if-eq v3, v5, :cond_8

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_7

    goto :goto_2

    .line 3321
    :cond_7
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "<?xml encoding value expected to be in ([A-Za-z0-9._] | \'-\') not "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v3}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3325
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v3

    goto :goto_1

    .line 3327
    :cond_9
    iget v0, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v0, v13

    .line 3330
    iget-object v3, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    sub-int/2addr v0, v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bea/xml/stream/MXParser;->charEncodingScheme:Ljava/lang/String;

    .line 3331
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3332
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    goto :goto_3

    .line 3312
    :cond_a
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3296
    :cond_b
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    :cond_c
    :goto_3
    if-eq v0, v2, :cond_13

    .line 3336
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    .line 3337
    sget-object v3, Lcom/bea/xml/stream/MXParser;->STANDALONE:[C

    invoke-virtual {v1, v0, v3}, Lcom/bea/xml/stream/MXParser;->requireInput(C[C)C

    move-result v0

    .line 3338
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    if-ne v0, v12, :cond_12

    .line 3344
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3345
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    if-eq v0, v11, :cond_e

    const/16 v3, 0x22

    if-ne v0, v3, :cond_d

    goto :goto_4

    .line 3347
    :cond_d
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 3353
    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v3

    const/16 v4, 0x79

    if-ne v3, v4, :cond_f

    .line 3355
    sget-object v4, Lcom/bea/xml/stream/MXParser;->YES:[C

    invoke-virtual {v1, v3, v4}, Lcom/bea/xml/stream/MXParser;->requireInput(C[C)C

    move-result v3

    .line 3356
    iput-boolean v13, v1, Lcom/bea/xml/stream/MXParser;->standalone:Z

    goto :goto_5

    :cond_f
    const/16 v4, 0x6e

    if-ne v3, v4, :cond_11

    .line 3358
    sget-object v4, Lcom/bea/xml/stream/MXParser;->NO:[C

    invoke-virtual {v1, v3, v4}, Lcom/bea/xml/stream/MXParser;->requireInput(C[C)C

    move-result v3

    const/4 v4, 0x0

    .line 3359
    iput-boolean v4, v1, Lcom/bea/xml/stream/MXParser;->standalone:Z

    .line 3365
    :goto_5
    iput-boolean v13, v1, Lcom/bea/xml/stream/MXParser;->standaloneSet:Z

    if-ne v3, v0, :cond_10

    .line 3371
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    goto :goto_6

    .line 3367
    :cond_10
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, " after standalone value not "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1, v3}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 3361
    :cond_11
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected \'yes\' or \'no\' after standalone and not "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v3}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3340
    :cond_12
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected equals sign (=) after standalone and not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 3374
    :cond_13
    :goto_6
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3375
    const-string v3, "expected ?> as last part of <?xml not "

    if-ne v0, v2, :cond_15

    .line 3380
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_14

    return-void

    .line 3382
    :cond_14
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 3376
    :cond_15
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 3280
    :cond_16
    new-instance v3, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    invoke-direct {v5, v6, v0, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v5}, Lcom/bea/xml/stream/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v3
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 3388
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    const-string v3, "Unexpected end of stream"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected printable(C)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 3729
    const-string p1, "\\n"

    return-object p1

    :cond_0
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 3731
    const-string p1, "\\r"

    return-object p1

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 3733
    const-string p1, "\\t"

    return-object p1

    :cond_2
    const/16 v0, 0x27

    if-ne p1, v0, :cond_3

    .line 3735
    const-string p1, "\\\'"

    return-object p1

    :cond_3
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_5

    const/16 v0, 0x20

    if-ge p1, v0, :cond_4

    goto :goto_0

    .line 3739
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3737
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
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3744
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 3745
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3746
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3748
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected processDTD()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3515
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 3516
    new-instance v1, Lcom/wutka/dtd/DTDParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/wutka/dtd/DTDParser;-><init>(Ljava/io/Reader;)V

    .line 3517
    invoke-virtual {v1}, Lcom/wutka/dtd/DTDParser;->parse()Lcom/wutka/dtd/DTD;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->mDtdIntSubset:Lcom/wutka/dtd/DTD;

    .line 3519
    sget-object v1, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "com.wutka.dtd.DTDEntity"

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, v1}, Lcom/wutka/dtd/DTD;->getItemsByType(Ljava/lang/Class;)Ljava/util/Vector;

    move-result-object v0

    .line 3520
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 3521
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3522
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wutka/dtd/DTDEntity;

    .line 3523
    invoke-virtual {v1}, Lcom/wutka/dtd/DTDEntity;->isParsed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3524
    invoke-virtual {v1}, Lcom/wutka/dtd/DTDEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/wutka/dtd/DTDEntity;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/bea/xml/stream/MXParser;->defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3530
    :cond_2
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->mDtdIntSubset:Lcom/wutka/dtd/DTD;

    sget-object v1, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDAttlist:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "com.wutka.dtd.DTDAttlist"

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDAttlist:Ljava/lang/Class;

    :cond_3
    invoke-virtual {v0, v1}, Lcom/wutka/dtd/DTD;->getItemsByType(Ljava/lang/Class;)Ljava/util/Vector;

    move-result-object v0

    .line 3531
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 3532
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3533
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wutka/dtd/DTDAttlist;

    .line 3534
    invoke-virtual {v1}, Lcom/wutka/dtd/DTDAttlist;->getAttribute()[Lcom/wutka/dtd/DTDAttribute;

    move-result-object v2

    const/4 v3, 0x0

    .line 3535
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 3536
    aget-object v4, v2, v3

    .line 3537
    invoke-virtual {v4}, Lcom/wutka/dtd/DTDAttribute;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 3538
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    if-nez v4, :cond_5

    .line 3539
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    .line 3540
    :cond_5
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/wutka/dtd/DTDAttlist;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-void

    :catch_0
    move-exception v0

    .line 3547
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public recycle()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1503
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->reset()V

    return-void
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1213
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    if-eqz p3, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 1221
    :cond_1
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "Using non-null local name argument for require(); "

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, " event does not have local name"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw p1

    .line 1219
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_3
    if-eqz v3, :cond_7

    if-eqz p2, :cond_7

    if-eq v0, v2, :cond_4

    if-ne v0, v2, :cond_7

    .line 1234
    :cond_4
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 1235
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    if-nez v0, :cond_5

    move v1, v2

    :cond_5
    move v3, v1

    goto :goto_2

    .line 1238
    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_7
    :goto_2
    if-nez v3, :cond_f

    .line 1244
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "expected event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    const-string v3, ""

    if-eqz p3, :cond_8

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, " with name \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_8
    move-object v4, v3

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, " and"

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    move-object v5, v4

    goto :goto_4

    :cond_9
    move-object v5, v3

    :goto_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz p2, :cond_a

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, " with namespace \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_a
    move-object v5, v3

    :goto_5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, " but got"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v5

    if-eq p1, v5, :cond_b

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v5, " "

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v5

    invoke-static {v5}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_b
    move-object p1, v3

    :goto_6
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    if-eqz p3, :cond_c

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v5, " name \'"

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_c
    move-object v1, v3

    :goto_7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    if-eqz p2, :cond_d

    if-eqz p3, :cond_d

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_d

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_d

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_d

    goto :goto_8

    :cond_d
    move-object v4, v3

    :goto_8
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_e

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, " namespace \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_e
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, " (position:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_f
    return-void
.end method

.method protected requireInput(C[C)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3174
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 3176
    aget-char v1, p2, v0

    if-ne p1, v1, :cond_0

    .line 3182
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3184
    new-instance p2, Ljavax/xml/stream/XMLStreamException;

    const-string v0, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw p2

    .line 3177
    :cond_0
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-char v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    :cond_1
    return p1
.end method

.method protected requireNextS()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3196
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3200
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3204
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    return v0

    .line 3201
    :cond_0
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "white space is required and not "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    :catch_0
    move-exception v0

    .line 3198
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected resetStringCache()V
    .locals 0

    return-void
.end method

.method public setConfigurationContext(Lcom/bea/xml/stream/ConfigurationContextBase;)V
    .locals 2

    .line 3785
    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

    .line 3786
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "javax.xml.stream.isCoalescing"

    invoke-virtual {p1, v1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 3787
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "http://java.sun.com/xml/stream/properties/report-cdata-event"

    invoke-virtual {p1, v1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bea/xml/stream/MXParser;->reportCdataEvent:Z

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 711
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    iget p1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 715
    iput-boolean p2, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    goto :goto_0

    .line 712
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "namespace processing feature can only be changed before parsing"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw p1

    .line 721
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 723
    :cond_2
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "interning names in this implementation is not supported"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 726
    :cond_3
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    goto :goto_0

    .line 728
    :cond_4
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "processing DOCDECL is not supported"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 733
    :cond_5
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_6

    :goto_0
    return-void

    .line 735
    :cond_6
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "roundtrip feature can not be switched off"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 739
    :cond_7
    new-instance p2, Ljavax/xml/stream/XMLStreamException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "unknown feature "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 710
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "feature name should not be nulll"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInput(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 814
    :try_start_0
    invoke-static {p1}, Lcom/bea/xml/stream/reader/XmlReader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p1

    .line 820
    instance-of v0, p1, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;

    if-eqz v0, :cond_0

    .line 821
    move-object v0, p1

    check-cast v0, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;

    invoke-virtual {v0}, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 823
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->setInput(Ljava/io/Reader;)V

    if-eqz v0, :cond_1

    .line 825
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->inputEncoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 828
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    .line 840
    :try_start_0
    invoke-static {p1, p2}, Lcom/bea/xml/stream/reader/XmlReader;->createReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bea/xml/stream/reader/XmlReader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->setInput(Ljava/io/Reader;)V

    if-eqz p2, :cond_1

    .line 851
    iput-object p2, p0, Lcom/bea/xml/stream/MXParser;->inputEncoding:Ljava/lang/String;

    :cond_1
    return-void

    :catch_0
    move-exception p1

    if-nez p2, :cond_2

    .line 844
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "(for encoding \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, "\')"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string p2, ""

    .line 845
    :goto_1
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "could not create reader "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p2, v1, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v0

    .line 836
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input stream can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 804
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->reset()V

    .line 805
    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    .line 806
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->checkForXMLDecl()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    :cond_0
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 767
    new-instance p2, Ljavax/xml/stream/XMLStreamException;

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

    invoke-direct {p2, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public skip()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1350
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->nextToken()I

    return-void
.end method

.method protected skipS(C)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3211
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return p1

    :catch_0
    move-exception p1

    .line 3214
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public standaloneSet()Z
    .locals 1

    .line 1687
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->standaloneSet:Z

    return v0
.end method

.method public subReader()Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1499
    new-instance v0, Lcom/bea/xml/stream/SubReader;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/SubReader;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.class public final Lcom/bea/xml/stream/reader/XmlReader;
.super Ljava/io/Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;,
        Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;,
        Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;,
        Lcom/bea/xml/stream/reader/XmlReader$BaseReader;
    }
.end annotation


# static fields
.field private static final MAXPUSHBACK:I = 0x200

.field private static final charsets:Ljava/util/Hashtable;


# instance fields
.field private assignedEncoding:Ljava/lang/String;

.field private closed:Z

.field private in:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 163
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    .line 166
    const-string v1, "UTF-16"

    const-string v2, "Unicode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "ISO-10646-UCS-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "EBCDIC-CP-US"

    const-string v2, "cp037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "EBCDIC-CP-CA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "EBCDIC-CP-NL"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "EBCDIC-CP-WT"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "EBCDIC-CP-DK"

    const-string v2, "cp277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "EBCDIC-CP-NO"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "EBCDIC-CP-FI"

    const-string v2, "cp278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "EBCDIC-CP-SE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "EBCDIC-CP-IT"

    const-string v2, "cp280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v1, "EBCDIC-CP-ES"

    const-string v2, "cp284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v1, "EBCDIC-CP-GB"

    const-string v2, "cp285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "EBCDIC-CP-FR"

    const-string v2, "cp297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v1, "EBCDIC-CP-AR1"

    const-string v2, "cp420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "EBCDIC-CP-HE"

    const-string v2, "cp424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "EBCDIC-CP-BE"

    const-string v2, "cp500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "EBCDIC-CP-CH"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "EBCDIC-CP-ROECE"

    const-string v2, "cp870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "EBCDIC-CP-YU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "EBCDIC-CP-IS"

    const-string v2, "cp871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "EBCDIC-CP-AR2"

    const-string v2, "cp918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 235
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x200

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 p1, 0x4

    .line 241
    new-array v1, p1, [B

    .line 242
    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 244
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    :cond_0
    if-ne v2, p1, :cond_b

    .line 246
    aget-byte p1, v1, v3

    const/16 v2, 0xff

    and-int/2addr p1, v2

    const/16 v3, 0x3c

    const/16 v4, 0x3f

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz p1, :cond_a

    if-eq p1, v3, :cond_6

    const/16 v3, 0x4c

    if-eq p1, v3, :cond_5

    const-string v3, "UTF-16"

    const/16 v4, 0xfe

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_1

    goto/16 :goto_0

    .line 306
    :cond_1
    aget-byte p1, v1, v7

    and-int/2addr p1, v2

    if-eq p1, v4, :cond_2

    goto :goto_0

    .line 308
    :cond_2
    invoke-direct {p0, v0, v3}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void

    .line 299
    :cond_3
    aget-byte p1, v1, v7

    and-int/2addr p1, v2

    if-eq p1, v2, :cond_4

    goto :goto_0

    .line 301
    :cond_4
    invoke-direct {p0, v0, v3}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void

    .line 288
    :cond_5
    aget-byte p1, v1, v7

    const/16 v3, 0x6f

    if-ne p1, v3, :cond_b

    aget-byte p1, v1, v6

    and-int/2addr p1, v2

    const/16 v3, 0xa7

    if-ne p1, v3, :cond_b

    aget-byte p1, v1, v5

    and-int/2addr p1, v2

    const/16 v1, 0x94

    if-ne p1, v1, :cond_b

    .line 291
    const-string p1, "CP037"

    invoke-direct {p0, v0, p1}, Lcom/bea/xml/stream/reader/XmlReader;->useEncodingDecl(Ljava/io/PushbackInputStream;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_6
    aget-byte p1, v1, v7

    and-int/2addr p1, v2

    if-eqz p1, :cond_9

    if-eq p1, v4, :cond_7

    goto :goto_0

    .line 275
    :cond_7
    aget-byte p1, v1, v6

    const/16 v2, 0x78

    if-ne p1, v2, :cond_b

    aget-byte p1, v1, v5

    const/16 v1, 0x6d

    if-eq p1, v1, :cond_8

    goto :goto_0

    .line 281
    :cond_8
    const-string p1, "UTF8"

    invoke-direct {p0, v0, p1}, Lcom/bea/xml/stream/reader/XmlReader;->useEncodingDecl(Ljava/io/PushbackInputStream;Ljava/lang/String;)V

    return-void

    .line 266
    :cond_9
    aget-byte p1, v1, v6

    if-ne p1, v4, :cond_b

    aget-byte p1, v1, v5

    if-nez p1, :cond_b

    .line 267
    const-string p1, "UnicodeLittle"

    invoke-direct {p0, v0, p1}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void

    .line 249
    :cond_a
    aget-byte p1, v1, v7

    if-ne p1, v3, :cond_b

    aget-byte p1, v1, v6

    if-nez p1, :cond_b

    aget-byte p1, v1, v5

    if-ne p1, v4, :cond_b

    .line 250
    const-string p1, "UnicodeBig"

    invoke-direct {p0, v0, p1}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void

    .line 320
    :cond_b
    :goto_0
    const-string p1, "UTF-8"

    invoke-direct {p0, v0, p1}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static createReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/bea/xml/stream/reader/XmlReader;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/reader/XmlReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static createReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 135
    new-instance p1, Lcom/bea/xml/stream/reader/XmlReader;

    invoke-direct {p1, p0}, Lcom/bea/xml/stream/reader/XmlReader;-><init>(Ljava/io/InputStream;)V

    return-object p1

    .line 137
    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "UTF8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    const-string v0, "US-ASCII"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ASCII"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 145
    :cond_2
    const-string v0, "ISO-8859-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    new-instance p1, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;

    invoke-direct {p1, p0}, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;-><init>(Ljava/io/InputStream;)V

    return-object p1

    .line 157
    :cond_3
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lcom/bea/xml/stream/reader/XmlReader;->std2java(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    .line 143
    :cond_4
    :goto_0
    new-instance p1, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;

    invoke-direct {p1, p0}, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;-><init>(Ljava/io/InputStream;)V

    return-object p1

    .line 139
    :cond_5
    :goto_1
    new-instance p1, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;

    invoke-direct {p1, p0}, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;-><init>(Ljava/io/InputStream;)V

    return-object p1
.end method

.method private setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    iput-object p2, p0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    .line 469
    invoke-static {p1, p2}, Lcom/bea/xml/stream/reader/XmlReader;->createReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    iput-object p1, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    return-void
.end method

.method private static std2java(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 206
    sget-object v1, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method private useEncodingDecl(Ljava/io/PushbackInputStream;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x200

    .line 336
    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 347
    invoke-virtual {v1, v3, v4, v2}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v2

    .line 348
    invoke-virtual {v1, v3, v4, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 349
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    const/4 v7, 0x4

    invoke-direct {v6, v3, v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object/from16 v2, p2

    invoke-direct {v5, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v5}, Ljava/io/Reader;->read()I

    move-result v2

    const/16 v3, 0x6c

    const-string v6, "UTF-8"

    if-eq v2, v3, :cond_0

    .line 358
    invoke-direct {v0, v1, v6}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void

    .line 371
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v7, v4

    move v8, v7

    move v10, v8

    move v12, v10

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v13, 0x1fb

    if-ge v7, v13, :cond_1a

    .line 380
    invoke-virtual {v5}, Ljava/io/Reader;->read()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1

    goto/16 :goto_6

    :cond_1
    const/16 v14, 0x20

    if-eq v13, v14, :cond_19

    const/16 v14, 0x9

    if-eq v13, v14, :cond_19

    const/16 v14, 0xa

    if-eq v13, v14, :cond_19

    const/16 v14, 0xd

    if-ne v13, v14, :cond_2

    goto/16 :goto_5

    :cond_2
    if-nez v7, :cond_3

    goto/16 :goto_6

    :cond_3
    const/16 v14, 0x3f

    const/4 v15, 0x1

    if-ne v13, v14, :cond_4

    move v8, v15

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_6

    const/16 v8, 0x3e

    if-ne v13, v8, :cond_5

    goto/16 :goto_6

    :cond_5
    move v8, v4

    :cond_6
    :goto_1
    if-eqz v9, :cond_13

    if-nez v10, :cond_7

    goto/16 :goto_4

    :cond_7
    int-to-char v14, v13

    .line 423
    invoke-static {v14}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v15

    if-eqz v15, :cond_8

    goto/16 :goto_5

    :cond_8
    const/16 v15, 0x22

    if-eq v13, v15, :cond_9

    const/16 v15, 0x27

    if-ne v13, v15, :cond_12

    :cond_9
    if-nez v12, :cond_a

    .line 428
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    move v12, v14

    goto/16 :goto_5

    :cond_a
    if-ne v13, v12, :cond_12

    .line 431
    const-string v13, "encoding"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 432
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    .line 435
    :goto_2
    iget-object v2, v0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_10

    .line 436
    iget-object v2, v0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_b

    const/16 v3, 0x5a

    if-le v2, v3, :cond_f

    :cond_b
    const/16 v3, 0x61

    if-lt v2, v3, :cond_c

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_c

    goto :goto_3

    :cond_c
    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    if-lez v4, :cond_1a

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_f

    const/16 v3, 0x30

    if-lt v2, v3, :cond_e

    const/16 v3, 0x39

    if-le v2, v3, :cond_f

    :cond_e
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_f

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_1a

    :cond_f
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 450
    :cond_10
    iget-object v2, v0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void

    :cond_11
    const/4 v9, 0x0

    goto :goto_5

    .line 459
    :cond_12
    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_13
    :goto_4
    if-nez v11, :cond_15

    int-to-char v13, v13

    .line 403
    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_14

    goto :goto_5

    .line 406
    :cond_14
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 407
    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object v11, v2

    move v10, v4

    goto :goto_5

    :cond_15
    int-to-char v14, v13

    .line 409
    invoke-static {v14}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v16

    if-eqz v16, :cond_16

    .line 410
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_16
    const/16 v3, 0x3d

    if-ne v13, v3, :cond_18

    if-nez v9, :cond_17

    .line 413
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_17
    move v12, v4

    move v10, v15

    const/4 v11, 0x0

    goto :goto_5

    .line 418
    :cond_18
    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_19
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 462
    :cond_1a
    :goto_6
    invoke-direct {v0, v1, v6}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    iget-boolean v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    const/4 v0, 0x0

    .line 554
    iput-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    const/4 v0, 0x1

    .line 555
    iput-boolean v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->closed:Z

    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public mark(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V

    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    iget-boolean v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->closed:Z

    if-nez v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader;->close()V

    :cond_0
    return v0

    .line 495
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([CII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    iget-boolean v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->closed:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader;->close()V

    :cond_1
    return p1
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    :cond_0
    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

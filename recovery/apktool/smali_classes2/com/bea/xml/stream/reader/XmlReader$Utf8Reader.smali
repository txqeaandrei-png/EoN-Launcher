.class final Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;
.super Lcom/bea/xml/stream/reader/XmlReader$BaseReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bea/xml/stream/reader/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Utf8Reader"
.end annotation


# instance fields
.field private nextChar:C


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 615
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 618
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public read([CII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    return v0

    :cond_0
    add-int v1, p2, p3

    .line 629
    array-length v2, p1

    if-gt v1, v2, :cond_12

    if-ltz p2, :cond_12

    .line 633
    iget-char v1, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 634
    aput-char v1, p1, p2

    .line 635
    iput-char v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    move v3, v0

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    move v3, v1

    :goto_0
    const/4 v4, -0x1

    if-ge v1, p3, :cond_f

    .line 640
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    iget v5, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    if-gt v3, v5, :cond_3

    .line 641
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->instream:Ljava/io/InputStream;

    if-nez v3, :cond_2

    :goto_1
    move v3, v4

    goto/16 :goto_8

    .line 645
    :cond_2
    iput v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    .line 646
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->instream:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    array-length v6, v6

    invoke-virtual {v3, v5, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    iput v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    .line 647
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    if-gtz v3, :cond_3

    .line 648
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->close()V

    goto :goto_1

    .line 663
    :cond_3
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    aget-byte v3, v3, v4

    and-int/lit16 v4, v3, 0xff

    const/16 v5, 0x80

    and-int/2addr v3, v5

    if-nez v3, :cond_4

    .line 666
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, p2

    int-to-char v5, v4

    .line 667
    aput-char v5, p1, v1

    move v1, v3

    move v3, v4

    goto :goto_0

    .line 675
    :cond_4
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    const/16 v4, 0xc0

    .line 679
    :try_start_0
    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    aget-byte v6, v6, v3

    const/16 v7, 0xe0

    and-int/2addr v6, v7

    if-ne v6, v4, :cond_5

    .line 680
    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    add-int/lit8 v7, v3, 0x1

    :try_start_1
    aget-byte v6, v6, v3

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x6

    .line 681
    iget-object v8, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x2

    :try_start_2
    aget-byte v7, v8, v7

    :goto_2
    and-int/lit8 v7, v7, 0x3f

    :goto_3
    add-int/2addr v6, v7

    goto/16 :goto_5

    :catch_0
    move v3, v7

    goto/16 :goto_4

    .line 686
    :cond_5
    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    aget-byte v6, v6, v3

    const/16 v8, 0xf0

    and-int/2addr v6, v8

    if-ne v6, v7, :cond_6

    .line 687
    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v7, v3, 0x1

    :try_start_3
    aget-byte v6, v6, v3

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0xc

    .line 688
    iget-object v8, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v9, v3, 0x2

    :try_start_4
    aget-byte v7, v8, v7

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    .line 689
    iget-object v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v3, v3, 0x3

    :try_start_5
    aget-byte v7, v7, v9

    goto :goto_2

    :catch_1
    move v3, v9

    goto/16 :goto_4

    .line 694
    :cond_6
    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xf8

    if-ne v6, v8, :cond_8

    .line 695
    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    add-int/lit8 v7, v3, 0x1

    :try_start_6
    aget-byte v6, v6, v3

    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x12

    .line 696
    iget-object v8, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    add-int/lit8 v9, v3, 0x2

    :try_start_7
    aget-byte v7, v8, v7

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0xc

    add-int/2addr v6, v7

    .line 697
    iget-object v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    add-int/lit8 v8, v3, 0x3

    :try_start_8
    aget-byte v7, v7, v9

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    .line 698
    iget-object v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_2

    add-int/lit8 v3, v3, 0x4

    :try_start_9
    aget-byte v7, v7, v8

    and-int/lit8 v7, v7, 0x3f

    add-int/2addr v6, v7

    const v7, 0x10ffff

    if-gt v6, v7, :cond_7

    const v7, 0xffff

    if-le v6, v7, :cond_9

    const/high16 v7, 0x10000

    sub-int/2addr v6, v7

    and-int/lit16 v7, v6, 0x3ff

    const v8, 0xdc00

    add-int/2addr v7, v8

    int-to-char v7, v7

    .line 713
    iput-char v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    shr-int/lit8 v6, v6, 0xa

    const v7, 0xd800

    goto :goto_3

    .line 704
    :cond_7
    new-instance v7, Ljava/io/CharConversionException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "UTF-8 encoding of character 0x00"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, " can\'t be converted to Unicode."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_2
    move v3, v8

    goto :goto_4

    .line 719
    :cond_8
    new-instance v6, Ljava/io/CharConversionException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unconvertible UTF-8 character beginning with 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v9, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    :goto_4
    move v6, v0

    .line 737
    :cond_9
    :goto_5
    iget v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    if-le v3, v7, :cond_b

    .line 738
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    iget-object v5, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    iget v8, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 740
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    iget v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    .line 741
    iput v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    .line 742
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->instream:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v5, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    iget-object v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    array-length v7, v7

    iget v8, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_a

    .line 749
    iget v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    :goto_6
    move v3, v6

    goto/16 :goto_0

    .line 745
    :cond_a
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->close()V

    .line 746
    new-instance p1, Ljava/io/CharConversionException;

    const-string p2, "Partial UTF-8 char"

    invoke-direct {p1, p2}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 756
    :cond_b
    :goto_7
    iget v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    iget v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    if-ge v7, v3, :cond_d

    .line 757
    iget-object v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v8, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    aget-byte v7, v7, v8

    and-int/2addr v7, v4

    if-ne v7, v5, :cond_c

    goto :goto_7

    .line 758
    :cond_c
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->close()V

    .line 759
    new-instance p1, Ljava/io/CharConversionException;

    const-string p2, "Malformed UTF-8 char -- is an XML encoding declaration missing?"

    invoke-direct {p1, p2}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    add-int/lit8 v3, v1, 0x1

    add-int v4, p2, v1

    int-to-char v5, v6

    .line 769
    aput-char v5, p1, v4

    .line 770
    iget-char v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    if-eqz v4, :cond_e

    if-ge v3, p3, :cond_e

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v3, p2

    .line 771
    aput-char v4, p1, v3

    .line 772
    iput-char v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    goto :goto_6

    :cond_e
    move v1, v3

    goto :goto_6

    :cond_f
    :goto_8
    if-lez v1, :cond_10

    return v1

    :cond_10
    if-ne v3, v4, :cond_11

    move v0, v4

    :cond_11
    return v0

    .line 630
    :cond_12
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

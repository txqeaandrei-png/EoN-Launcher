.class final Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;
.super Lcom/bea/xml/stream/reader/XmlReader$BaseReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bea/xml/stream/reader/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsciiReader"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 791
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 793
    const-string v0, "US-ASCII"

    return-object v0
.end method

.method public read([CII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->instream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int v0, p2, p3

    .line 803
    array-length v2, p1

    if-gt v0, v2, :cond_6

    if-ltz p2, :cond_6

    .line 811
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->finish:I

    iget v2, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->start:I

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_2

    .line 813
    iput v2, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->start:I

    .line 814
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->instream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->buffer:[B

    iget-object v4, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->buffer:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->finish:I

    .line 815
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->finish:I

    if-gtz v0, :cond_1

    .line 816
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->close()V

    return v1

    .line 819
    :cond_1
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->finish:I

    if-le p3, v0, :cond_3

    .line 820
    iget p3, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->finish:I

    goto :goto_0

    :cond_2
    if-le p3, v0, :cond_3

    move p3, v0

    :cond_3
    :goto_0
    if-ge v2, p3, :cond_5

    .line 829
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->buffer:[B

    iget v1, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->start:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->start:I

    aget-byte v0, v0, v1

    if-ltz v0, :cond_4

    add-int v1, p2, v2

    int-to-char v0, v0

    .line 834
    aput-char v0, p1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 831
    :cond_4
    new-instance p1, Ljava/io/CharConversionException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "Illegal ASCII character, 0x"

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return p3

    .line 804
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

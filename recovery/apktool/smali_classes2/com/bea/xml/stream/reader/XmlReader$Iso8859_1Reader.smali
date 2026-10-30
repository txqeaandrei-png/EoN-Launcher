.class final Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;
.super Lcom/bea/xml/stream/reader/XmlReader$BaseReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bea/xml/stream/reader/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Iso8859_1Reader"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 842
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 844
    const-string v0, "ISO-8859-1"

    return-object v0
.end method

.method public read([CII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->instream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int v0, p2, p3

    .line 853
    array-length v2, p1

    if-gt v0, v2, :cond_5

    if-ltz p2, :cond_5

    .line 861
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->finish:I

    iget v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->start:I

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_2

    .line 863
    iput v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->start:I

    .line 864
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->instream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->buffer:[B

    iget-object v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->buffer:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->finish:I

    .line 865
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->finish:I

    if-gtz v0, :cond_1

    .line 866
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->close()V

    return v1

    .line 869
    :cond_1
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->finish:I

    if-le p3, v0, :cond_3

    .line 870
    iget p3, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->finish:I

    goto :goto_0

    :cond_2
    if-le p3, v0, :cond_3

    move p3, v0

    :cond_3
    :goto_0
    if-ge v2, p3, :cond_4

    add-int v0, p2, v2

    .line 879
    iget-object v1, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->buffer:[B

    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->start:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->start:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    aput-char v1, p1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return p3

    .line 854
    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

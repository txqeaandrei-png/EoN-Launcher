.class public Lcom/wutka/dtd/DTDParseException;
.super Ljava/io/IOException;


# instance fields
.field public column:I

.field public lineNumber:I

.field public uriID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/wutka/dtd/DTDParseException;->uriID:Ljava/lang/String;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/wutka/dtd/DTDParseException;->lineNumber:I

    .line 12
    iput v0, p0, Lcom/wutka/dtd/DTDParseException;->column:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 5
    const-string p1, ""

    iput-object p1, p0, Lcom/wutka/dtd/DTDParseException;->uriID:Ljava/lang/String;

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/wutka/dtd/DTDParseException;->lineNumber:I

    .line 19
    iput p1, p0, Lcom/wutka/dtd/DTDParseException;->column:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "At line "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 5
    const-string p1, ""

    iput-object p1, p0, Lcom/wutka/dtd/DTDParseException;->uriID:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/wutka/dtd/DTDParseException;->lineNumber:I

    .line 26
    iput p3, p0, Lcom/wutka/dtd/DTDParseException;->column:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "At "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 5
    const-string p2, ""

    iput-object p2, p0, Lcom/wutka/dtd/DTDParseException;->uriID:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 34
    iput-object p1, p0, Lcom/wutka/dtd/DTDParseException;->uriID:Ljava/lang/String;

    .line 36
    :cond_1
    iput p3, p0, Lcom/wutka/dtd/DTDParseException;->lineNumber:I

    .line 37
    iput p4, p0, Lcom/wutka/dtd/DTDParseException;->column:I

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/wutka/dtd/DTDParseException;->column:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/wutka/dtd/DTDParseException;->uriID:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/wutka/dtd/DTDParseException;->lineNumber:I

    return v0
.end method

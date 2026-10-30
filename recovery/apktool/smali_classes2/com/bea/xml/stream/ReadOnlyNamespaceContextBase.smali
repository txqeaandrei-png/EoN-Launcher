.class public Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# instance fields
.field private prefixes:[Ljava/lang/String;

.field private uris:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    .line 40
    new-array p3, p3, [Ljava/lang/String;

    iput-object p3, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    .line 41
    array-length p3, v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-object p1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length p3, p1

    invoke-static {p2, v1, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 117
    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/bea/xml/stream/MXParser;

    invoke-direct {v0}, Lcom/bea/xml/stream/MXParser;-><init>()V

    .line 168
    new-instance v1, Ljava/io/FileReader;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/MXParser;->setInput(Ljava/io/Reader;)V

    .line 169
    :goto_0
    invoke-virtual {v0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/bea/xml/stream/MXParser;->isStartElement()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 171
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "context["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bea/xml/stream/MXParser;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Lcom/bea/xml/stream/MXParser;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object p0

    const-string v1, "a"

    invoke-interface {p0, v1}, Ljavax/xml/namespace/NamespaceContext;->getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    .line 173
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Found prefix:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {v0}, Lcom/bea/xml/stream/MXParser;->next()I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getDefaultNameSpace()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 109
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_6

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 50
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 54
    :cond_1
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    const-string p1, "http://www.w3.org/XML/1998/namespace"

    return-object p1

    .line 56
    :cond_2
    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 57
    const-string p1, "http://www.w3.org/2000/xmlns/"

    return-object p1

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_5

    .line 61
    iget-object v0, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_4

    .line 62
    iget-object v0, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Prefix may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_a

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 75
    iget-object v0, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    .line 76
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-le v1, v0, :cond_1

    .line 83
    iget-object v2, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 87
    :cond_1
    const-string p1, ""

    return-object p1

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-le v2, v0, :cond_4

    .line 91
    iget-object v3, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    return-object v1

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 98
    :cond_6
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 99
    const-string p1, "xml"

    return-object p1

    .line 101
    :cond_7
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 102
    const-string p1, "xmlns"

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1

    .line 72
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uri may not be empty string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uri may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 5

    if-eqz p1, :cond_8

    .line 124
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_6

    .line 130
    iget-object v2, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    iget-object v3, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_3

    .line 138
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 139
    iget-object v3, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-le v3, v1, :cond_4

    .line 140
    iget-object v4, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-le v3, v1, :cond_4

    .line 147
    iget-object v4, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 153
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 155
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    .line 125
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uri may not be empty string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uri may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 160
    :goto_0
    iget-object v2, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 161
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "<->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

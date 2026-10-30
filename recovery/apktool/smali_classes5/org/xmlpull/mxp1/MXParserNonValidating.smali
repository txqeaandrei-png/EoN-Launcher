.class public Lorg/xmlpull/mxp1/MXParserNonValidating;
.super Lorg/xmlpull/mxp1/MXParserCachingStrings;


# instance fields
.field private processDocDecl:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 1

    .line 50
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-boolean p1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->processDocDecl:Z

    return p1

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->getFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected lookuEntityReplacement(I)[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->allStringsInterned:Z

    if-nez v0, :cond_5

    .line 68
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->buf:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posEnd:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->fastHash([CII)I

    move-result v0

    .line 70
    iget v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityEnd:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_0

    goto :goto_4

    .line 72
    :cond_0
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityNameHash:[I

    aget v2, v2, v1

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityNameBuf:[[C

    aget-object v2, v2, v1

    array-length v2, v2

    if-ne p1, v2, :cond_4

    .line 73
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityNameBuf:[[C

    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, p1, :cond_2

    .line 78
    iget-boolean p1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->tokenize:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityReplacement:[Ljava/lang/String;

    aget-object p1, p1, v1

    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->text:Ljava/lang/String;

    .line 79
    :cond_1
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityReplacementBuf:[[C

    aget-object p1, p1, v1

    return-object p1

    .line 76
    :cond_2
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->buf:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

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

    .line 83
    :cond_5
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->buf:[C

    iget v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posEnd:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->newString([CII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityRefName:Ljava/lang/String;

    .line 84
    iget p1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityEnd:I

    add-int/lit8 p1, p1, -0x1

    :goto_3
    if-gez p1, :cond_6

    :goto_4
    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_6
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityRefName:Ljava/lang/String;

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityName:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-ne v0, v1, :cond_8

    .line 88
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->tokenize:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityReplacement:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->text:Ljava/lang/String;

    .line 89
    :cond_7
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityReplacementBuf:[[C

    aget-object p1, v0, p1

    return-object p1

    :cond_8
    add-int/lit8 p1, p1, -0x1

    goto :goto_3
.end method

.method protected more()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 60
    invoke-super {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->more()C

    move-result v0

    return v0
.end method

.method protected parseDocdecl()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "expected > to finish <[DOCTYPE but got "

    .line 101
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->tokenize:Z

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x4f

    .line 105
    const-string v4, "expected <!DOCTYPE"

    const/4 v5, 0x0

    if-ne v2, v3, :cond_9

    .line 107
    :try_start_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v2

    const/16 v3, 0x43

    if-ne v2, v3, :cond_8

    .line 110
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v2

    const/16 v3, 0x54

    if-ne v2, v3, :cond_7

    .line 113
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v2

    const/16 v3, 0x59

    if-ne v2, v3, :cond_6

    .line 116
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v2

    const/16 v3, 0x50

    if-ne v2, v3, :cond_5

    .line 119
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v2

    const/16 v6, 0x45

    if-ne v2, v6, :cond_4

    .line 122
    iget v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->pos:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    .line 127
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->requireNextS()C

    move-result v2

    .line 128
    iget v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->pos:I

    .line 129
    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParserNonValidating;->readName(C)C

    move-result v2

    .line 130
    iget v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->pos:I

    .line 131
    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParserNonValidating;->skipS(C)C

    move-result v2

    const/16 v4, 0x53

    if-eq v2, v4, :cond_0

    if-ne v2, v3, :cond_1

    .line 134
    :cond_0
    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processExternalId(C)C

    move-result v2

    .line 135
    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParserNonValidating;->skipS(C)C

    move-result v2

    :cond_1
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_2

    .line 138
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processInternalSubset()V

    .line 140
    :cond_2
    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParserNonValidating;->skipS(C)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_3

    .line 145
    iget v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posEnd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->tokenize:Z

    return-void

    .line 142
    :cond_3
    :try_start_2
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 120
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v4, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 117
    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v4, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 114
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v4, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 111
    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v4, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 108
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v4, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 105
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v4, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 149
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->tokenize:Z

    .line 147
    throw v0
.end method

.method protected processAttlistDecl(C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected processElementDecl(C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->requireNextS()C

    move-result p1

    .line 252
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->readName(C)C

    .line 253
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->requireNextS()C

    return-void
.end method

.method protected processEntityDecl(C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected processExternalId(C)C
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    return p1
.end method

.method protected processInternalSubset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    :goto_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x25

    if-ne v0, v1, :cond_1

    .line 174
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processPEReference()V

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->isS(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->skipS(C)C

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processMarkupDecl(C)V

    goto :goto_0
.end method

.method protected processMarkupDecl(C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3c

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    .line 200
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result p1

    const/16 v0, 0x3f

    if-ne p1, v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->parsePI()Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    if-ne p1, v0, :cond_7

    .line 204
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result p1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->parseComment()V

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result p1

    const/16 v0, 0x41

    if-ne p1, v0, :cond_2

    .line 211
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processAttlistDecl(C)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x45

    const/16 v2, 0x4e

    if-ne p1, v0, :cond_5

    .line 213
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result p1

    const/16 v0, 0x4c

    if-ne p1, v0, :cond_3

    .line 215
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processElementDecl(C)V

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    .line 217
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processEntityDecl(C)V

    goto :goto_0

    .line 219
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "expected ELEMENT or ENTITY after <! in DTD not "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    if-ne p1, v2, :cond_6

    .line 224
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processNotationDecl(C)V

    :goto_0
    return-void

    .line 226
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "expected markupdecl after <! in DTD not "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 232
    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "expected markupdecl in DTD not "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 197
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "expected < for markupdecl in DTD not "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected processNotationDecl(C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected processPEReference()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected readName(C)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->isNameStartChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    :goto_0
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->isNameChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 315
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result p1

    goto :goto_0

    .line 311
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "XML name must start with name start character not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 36
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget p1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->eventType:I

    if-nez p1, :cond_0

    .line 39
    iput-boolean p2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->processDocDecl:Z

    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "process DOCDECL feature can only be changed before parsing"

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 44
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->setFeature(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

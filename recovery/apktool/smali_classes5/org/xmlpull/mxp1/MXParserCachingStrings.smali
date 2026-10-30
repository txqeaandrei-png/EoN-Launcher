.class public Lorg/xmlpull/mxp1/MXParserCachingStrings;
.super Lorg/xmlpull/mxp1/MXParser;


# static fields
.field private static final CACHE_LOAD:I = 0x4d

.field private static final CACHE_STATISTICS:Z = false

.field private static final INITIAL_CAPACITY:I = 0xd

.field private static final TRACE_SIZING:Z

.field private static globalCacheEntriesCount:I

.field private static globalCacheEntriesThreshold:I

.field private static globalKeys:[[C

.field private static globalValues:[Ljava/lang/String;


# instance fields
.field private cacheEntriesCount:I

.field private cacheEntriesThreshold:I

.field private cacheStatCalls:I

.field private cacheStatRehash:I

.field private cacheStatResets:I

.field private cacheStatWalks:I

.field private global:Z

.field private keys:[[C

.field private values:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/xmlpull/mxp1/MXParser;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->allStringsInterned:Z

    return-void
.end method

.method private static final keysAreEqual([CII[CII)Z
    .locals 3

    const/4 v0, 0x0

    if-eq p2, p5, :cond_0

    return v0

    :cond_0
    move p5, v0

    :goto_0
    if-lt p5, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int v1, p1, p5

    .line 208
    aget-char v1, p0, v1

    add-int v2, p4, p5

    aget-char v2, p3, v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0
.end method

.method private rehash()V
    .locals 15

    .line 170
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v0, 0x4d

    .line 171
    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesThreshold:I

    if-ge v1, v0, :cond_4

    .line 175
    new-array v1, v0, [[C

    .line 176
    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    .line 177
    :goto_0
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    array-length v6, v5

    if-lt v4, v6, :cond_0

    .line 198
    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    .line 199
    iput-object v2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    return-void

    .line 178
    :cond_0
    aget-object v6, v5, v4

    const/4 v7, 0x0

    .line 179
    aput-object v7, v5, v4

    .line 180
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    aget-object v13, v5, v4

    .line 181
    aput-object v7, v5, v4

    if-eqz v6, :cond_3

    .line 183
    array-length v5, v6

    invoke-static {v6, v3, v5}, Lorg/xmlpull/mxp1/MXParser;->fastHash([CII)I

    move-result v5

    rem-int/2addr v5, v0

    .line 185
    :goto_1
    aget-object v14, v1, v5

    if-nez v14, :cond_1

    .line 194
    aput-object v6, v1, v5

    .line 195
    aput-object v13, v2, v5

    goto :goto_2

    .line 186
    :cond_1
    array-length v9, v14

    const/4 v11, 0x0

    array-length v12, v6

    const/4 v8, 0x0

    move-object v7, v14

    move-object v10, v6

    invoke-static/range {v7 .. v12}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keysAreEqual([CII[CII)Z

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 191
    rem-int/2addr v5, v0

    goto :goto_1

    .line 188
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "internal cache error: duplicated keys: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v14}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "internal error: threshold must be less than capacity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public finalize()V
    .locals 0

    return-void
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1

    .line 76
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-boolean p1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->allStringsInterned:Z

    return p1

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->getFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected initStringCache()V
    .locals 2

    .line 145
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 153
    iput v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesThreshold:I

    const/16 v0, 0xd

    .line 156
    new-array v1, v0, [[C

    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    .line 157
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesCount:I

    :cond_0
    return-void
.end method

.method protected newString([CII)Ljava/lang/String;
    .locals 1

    .line 104
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->allStringsInterned:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->newStringIntern([CII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected newStringIntern([CII)Ljava/lang/String;
    .locals 8

    .line 118
    iget v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesCount:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesThreshold:I

    if-lt v0, v1, :cond_0

    .line 119
    invoke-direct {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->rehash()V

    .line 121
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/xmlpull/mxp1/MXParser;->fastHash([CII)I

    move-result v0

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 124
    :goto_0
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    array-length v4, v1

    move-object v2, v1

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keysAreEqual([CII[CII)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 127
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    array-length v1, v1

    rem-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 131
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    .line 133
    :cond_3
    new-array v1, p3, [C

    const/4 v2, 0x0

    .line 134
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 136
    iget-object p2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    aput-object v1, p2, v0

    .line 137
    iget-object p2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    aput-object p1, p2, v0

    .line 138
    iget p2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesCount:I

    return-object p1
.end method

.method protected resetStringCache()V
    .locals 0

    .line 165
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->initStringCache()V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 62
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget p1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->eventType:I

    if-nez p1, :cond_0

    .line 65
    iput-boolean p2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->allStringsInterned:Z

    if-nez p2, :cond_2

    .line 67
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->resetStringCache()V

    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "interning names feature can only be changed before parsing"

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 70
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/xmlpull/mxp1/MXParser;->setFeature(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

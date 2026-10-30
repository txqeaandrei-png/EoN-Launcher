.class public Lorg/xmlpull/mxp1/MXParserFactory;
.super Lorg/xmlpull/v1/XmlPullParserFactory;


# static fields
.field protected static stringCachedParserAvailable:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 34
    sget-boolean v0, Lorg/xmlpull/mxp1/MXParserFactory;->stringCachedParserAvailable:Z

    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    new-instance v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;

    invoke-direct {v0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lorg/xmlpull/mxp1/MXParserFactory;->stringCachedParserAvailable:Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lorg/xmlpull/mxp1/MXParser;

    invoke-direct {v0}, Lorg/xmlpull/mxp1/MXParser;-><init>()V

    .line 44
    :cond_1
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    .line 45
    :cond_3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 46
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 47
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 48
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/xmlpull/mxp1_serializer/MXSerializer;

    invoke-direct {v0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;-><init>()V

    return-object v0
.end method

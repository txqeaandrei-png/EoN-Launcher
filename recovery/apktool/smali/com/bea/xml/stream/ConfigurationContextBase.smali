.class public Lcom/bea/xml/stream/ConfigurationContextBase;
.super Ljava/lang/Object;


# static fields
.field private static ENTITIES:Ljava/lang/String; = "javax.xml.stream.entities"

.field private static EVENT_FILTER:Ljava/lang/String; = "RI_EVENT_FILTER"

.field private static NOTATIONS:Ljava/lang/String; = "javax.xml.stream.notations"

.field static final REPORT_CDATA:Ljava/lang/String; = "http://java.sun.com/xml/stream/properties/report-cdata-event"

.field private static STREAM_FILTER:Ljava/lang/String; = "RI_STREAM_FILTER"

.field private static supportedFeatures:Ljava/util/HashSet;


# instance fields
.field private features:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bea/xml/stream/ConfigurationContextBase;->supportedFeatures:Ljava/util/HashSet;

    .line 42
    const-string v1, "javax.xml.stream.isValidating"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/bea/xml/stream/ConfigurationContextBase;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "javax.xml.stream.isCoalescing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/bea/xml/stream/ConfigurationContextBase;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "javax.xml.stream.isReplacingEntityReferences"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/bea/xml/stream/ConfigurationContextBase;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "javax.xml.stream.isSupportingExternalEntities"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/bea/xml/stream/ConfigurationContextBase;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "javax.xml.stream.isRepairingNamespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/bea/xml/stream/ConfigurationContextBase;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "javax.xml.stream.isNamespaceAware"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/bea/xml/stream/ConfigurationContextBase;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "javax.xml.stream.supportDTD"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/bea/xml/stream/ConfigurationContextBase;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "javax.xml.stream.reporter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/bea/xml/stream/ConfigurationContextBase;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "javax.xml.stream.resolver"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/bea/xml/stream/ConfigurationContextBase;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "javax.xml.stream.allocator"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/bea/xml/stream/ConfigurationContextBase;->supportedFeatures:Ljava/util/HashSet;

    sget-object v1, Lcom/bea/xml/stream/ConfigurationContextBase;->NOTATIONS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/bea/xml/stream/ConfigurationContextBase;->supportedFeatures:Ljava/util/HashSet;

    sget-object v1, Lcom/bea/xml/stream/ConfigurationContextBase;->ENTITIES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/bea/xml/stream/ConfigurationContextBase;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "http://java.sun.com/xml/stream/properties/report-cdata-event"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    .line 59
    const-string v1, "javax.xml.stream.isValidating"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    const-string v1, "javax.xml.stream.isCoalescing"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    const-string v1, "javax.xml.stream.isReplacingEntityReferences"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    const-string v1, "javax.xml.stream.isSupportingExternalEntities"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    const-string v1, "javax.xml.stream.isNamespaceAware"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    const-string v1, "javax.xml.stream.supportDTD"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    const-string v1, "javax.xml.stream.isRepairingNamespaces"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 3

    .line 97
    sget-object v0, Lcom/bea/xml/stream/ConfigurationContextBase;->supportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unable to access unsupported property "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBool(Ljava/lang/String;)Z
    .locals 1

    .line 123
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->check(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 125
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getEventAllocator()Ljavax/xml/stream/util/XMLEventAllocator;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    const-string v1, "javax.xml.stream.allocator"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/util/XMLEventAllocator;

    return-object v0
.end method

.method public getProperties()Ljava/util/Enumeration;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 103
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->check(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 200
    const-string v0, "1.0"

    return-object v0
.end method

.method public getXMLReporter()Ljavax/xml/stream/XMLReporter;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    const-string v1, "javax.xml.stream.reporter"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/XMLReporter;

    return-object v0
.end method

.method public getXMLResolver()Ljavax/xml/stream/XMLResolver;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    const-string v1, "javax.xml.stream.resolver"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/XMLResolver;

    return-object v0
.end method

.method public isCoalescing()Z
    .locals 1

    .line 136
    const-string v0, "javax.xml.stream.isCoalescing"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/ConfigurationContextBase;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNamespaceAware()Z
    .locals 1

    .line 195
    const-string v0, "javax.xml.stream.isNamespaceAware"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/ConfigurationContextBase;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPrefixDefaulting()Z
    .locals 1

    .line 180
    const-string v0, "javax.xml.stream.isRepairingNamespaces"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/ConfigurationContextBase;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPropertySupported(Ljava/lang/String;)Z
    .locals 1

    .line 208
    sget-object v0, Lcom/bea/xml/stream/ConfigurationContextBase;->supportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isReplacingEntities()Z
    .locals 1

    .line 158
    const-string v0, "javax.xml.stream.isReplacingEntityReferences"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/ConfigurationContextBase;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportingExternalEntities()Z
    .locals 1

    .line 172
    const-string v0, "javax.xml.stream.isSupportingExternalEntities"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/ConfigurationContextBase;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidating()Z
    .locals 1

    .line 150
    const-string v0, "javax.xml.stream.isValidating"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/ConfigurationContextBase;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBool(Ljava/lang/String;Z)V
    .locals 1

    .line 129
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->check(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCoalescing(Z)V
    .locals 1

    .line 133
    const-string v0, "javax.xml.stream.isCoalescing"

    invoke-virtual {p0, v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->setBool(Ljava/lang/String;Z)V

    return-void
.end method

.method public setEventAllocator(Ljavax/xml/stream/util/XMLEventAllocator;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    const-string v1, "javax.xml.stream.allocator"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 188
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This implementation does not allow disabling namespace processing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrefixDefaulting(Z)V
    .locals 1

    .line 176
    const-string v0, "javax.xml.stream.isRepairingNamespaces"

    invoke-virtual {p0, v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->setBool(Ljava/lang/String;Z)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 84
    const-string v0, "javax.xml.stream.isValidating"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->setValidating(Z)V

    goto :goto_0

    .line 86
    :cond_0
    const-string v0, "javax.xml.stream.isSupportingExternalEntities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->setSupportExternalEntities(Z)V

    goto :goto_0

    .line 88
    :cond_1
    const-string v0, "javax.xml.stream.isNamespaceAware"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->setNamespaceAware(Z)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->check(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setReplacingEntities(Z)V
    .locals 1

    .line 154
    const-string v0, "javax.xml.stream.isReplacingEntityReferences"

    invoke-virtual {p0, v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->setBool(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSupportExternalEntities(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 164
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This implementation does not resolve external entities "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValidating(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This implementation does not support validation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setXMLReporter(Ljavax/xml/stream/XMLReporter;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    const-string v1, "javax.xml.stream.reporter"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setXMLResolver(Ljavax/xml/stream/XMLResolver;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/bea/xml/stream/ConfigurationContextBase;->features:Ljava/util/Hashtable;

    const-string v1, "javax.xml.stream.resolver"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

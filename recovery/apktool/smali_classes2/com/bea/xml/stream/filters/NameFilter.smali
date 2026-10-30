.class public Lcom/bea/xml/stream/filters/NameFilter;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/xml/stream/EventFilter;
.implements Ljavax/xml/stream/StreamFilter;


# instance fields
.field private name:Ljavax/xml/namespace/QName;


# direct methods
.method public constructor <init>(Ljavax/xml/namespace/QName;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bea/xml/stream/filters/NameFilter;->name:Ljavax/xml/namespace/QName;

    return-void
.end method


# virtual methods
.method public accept(Ljavax/xml/stream/XMLStreamReader;)Z
    .locals 3

    .line 47
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->isEndElement()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 48
    :cond_0
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/bea/xml/stream/filters/NameFilter;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public accept(Ljavax/xml/stream/events/XMLEvent;)Z
    .locals 2

    .line 35
    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    check-cast p1, Ljavax/xml/stream/events/StartElement;

    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    goto :goto_0

    .line 40
    :cond_1
    check-cast p1, Ljavax/xml/stream/events/EndElement;

    invoke-interface {p1}, Ljavax/xml/stream/events/EndElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/bea/xml/stream/filters/NameFilter;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

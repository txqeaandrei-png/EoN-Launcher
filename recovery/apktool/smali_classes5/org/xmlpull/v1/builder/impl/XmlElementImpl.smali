.class public Lorg/xmlpull/v1/builder/impl/XmlElementImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xmlpull/v1/builder/XmlElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xmlpull/v1/builder/impl/XmlElementImpl$EmptyIterator;
    }
.end annotation


# static fields
.field private static final EMPTY_ITERATOR:Ljava/util/Iterator;


# instance fields
.field private attrs:Ljava/util/List;

.field private children:Ljava/util/List;

.field private name:Ljava/lang/String;

.field private namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

.field private nsList:Ljava/util/List;

.field private parent:Lorg/xmlpull/v1/builder/XmlContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 526
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl$EmptyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl$EmptyIterator;-><init>(Lorg/xmlpull/v1/builder/impl/XmlElementImpl$1;)V

    sput-object v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 32
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 34
    :cond_0
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->name:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 27
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->name:Ljava/lang/String;

    return-void
.end method

.method private checkChildParent(Ljava/lang/Object;)V
    .locals 1

    .line 344
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlContainer;

    if-eqz v0, :cond_3

    .line 345
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlElement;

    if-eqz v0, :cond_1

    .line 346
    check-cast p1, Lorg/xmlpull/v1/builder/XmlElement;

    .line 347
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->getParent()Lorg/xmlpull/v1/builder/XmlContainer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 349
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->parent:Lorg/xmlpull/v1/builder/XmlContainer;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v0, "child must have no parent to be added to this node"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :cond_1
    instance-of p1, p1, Lorg/xmlpull/v1/builder/XmlDocument;

    if-nez p1, :cond_2

    goto :goto_0

    .line 355
    :cond_2
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v0, "docuemet can not be stored as element child"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method private setChildParent(Ljava/lang/Object;)V
    .locals 1

    .line 361
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlElement;

    if-eqz v0, :cond_0

    .line 362
    check-cast p1, Lorg/xmlpull/v1/builder/XmlElement;

    .line 363
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/builder/XmlElement;->setParent(Lorg/xmlpull/v1/builder/XmlContainer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 130
    const-string v1, "CDATA"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object p1

    return-object p1
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 6

    .line 151
    invoke-virtual {p0, p2, p3}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 152
    invoke-virtual/range {v0 .. v5}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object p1

    return-object p1
.end method

.method public addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 134
    invoke-virtual/range {v0 .. v5}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object p1

    return-object p1
.end method

.method public addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 8

    .line 140
    new-instance v7, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;-><init>(Lorg/xmlpull/v1/builder/XmlElement;Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    invoke-virtual {p0, v7}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object p1

    return-object p1
.end method

.method public addAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->ensureAttributeCapacity(I)V

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public addAttribute(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 6

    .line 126
    const-string v1, "CDATA"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object p1

    return-object p1
.end method

.method public addChild(ILjava/lang/Object;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->ensureChildrenCapacity(I)V

    .line 338
    :cond_0
    invoke-direct {p0, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->checkChildParent(Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 340
    invoke-direct {p0, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->setChildParent(Ljava/lang/Object;)V

    return-void
.end method

.method public addChild(Ljava/lang/Object;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->ensureChildrenCapacity(I)V

    .line 331
    :cond_0
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->checkChildParent(Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->setChildParent(Ljava/lang/Object;)V

    return-void
.end method

.method public addElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1

    const/4 v0, 0x0

    .line 380
    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object p1

    return-object p1
.end method

.method public addElement(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 369
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addChild(Ljava/lang/Object;)V

    return-object p1
.end method

.method public addElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 374
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->newElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object p1

    .line 375
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addChild(Ljava/lang/Object;)V

    return-object p1
.end method

.method public attributes()Ljava/util/Iterator;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0

    .line 115
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public children()Ljava/util/Iterator;
    .locals 1

    .line 384
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    if-nez v0, :cond_0

    .line 385
    sget-object v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0

    .line 387
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public declareNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 0

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object p1

    .line 244
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->declareNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object p1

    return-object p1

    .line 241
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string p2, "namespace added to element must have not null prefix"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declareNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1

    .line 248
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlNamespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->ensureNamespaceDeclarationsCapacity(I)V

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 249
    :cond_1
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v0, "namespace added to element must have not null prefix"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ensureAttributeCapacity(I)V
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    goto :goto_0

    .line 159
    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_0
    return-void
.end method

.method public ensureChildrenCapacity(I)V
    .locals 1

    .line 392
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    goto :goto_0

    .line 395
    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_0
    return-void
.end method

.method public ensureNamespaceDeclarationsCapacity(I)V
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    goto :goto_0

    .line 316
    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_0
    return-void
.end method

.method public findAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 7

    if-eqz p2, :cond_7

    .line 176
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 180
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    .line 184
    :cond_1
    iget-object v3, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xmlpull/v1/builder/XmlAttribute;

    .line 185
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    if-eq v4, p2, :cond_2

    .line 186
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 189
    :cond_2
    const-string v4, ""

    if-eqz p1, :cond_4

    .line 190
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlAttribute;->getNamespaceName()Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v3

    :cond_3
    if-ne p1, v4, :cond_6

    if-nez v5, :cond_6

    return-object v3

    .line 206
    :cond_4
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlAttribute;->getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v5

    if-nez v5, :cond_5

    return-object v3

    .line 210
    :cond_5
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlAttribute;->getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v5

    invoke-interface {v5}, Lorg/xmlpull/v1/builder/XmlNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v5

    if-ne v5, v4, :cond_6

    return-object v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attribute name ca not ber null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findElementByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 5

    .line 400
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 401
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    .line 404
    :cond_1
    iget-object v3, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 405
    instance-of v4, v3, Lorg/xmlpull/v1/builder/XmlElement;

    if-eqz v4, :cond_2

    .line 406
    check-cast v3, Lorg/xmlpull/v1/builder/XmlElement;

    .line 407
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public findElementByName(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 430
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public findElementByName(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 418
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public findElementByName(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 425
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getBaseUri()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    return-object v0
.end method

.method public getNamespaceName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getParent()Lorg/xmlpull/v1/builder/XmlContainer;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->parent:Lorg/xmlpull/v1/builder/XmlContainer;

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChild(Ljava/lang/Object;)Z
    .locals 3

    .line 435
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 438
    :goto_0
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    return v1

    .line 440
    :cond_1
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasChildren()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNamespaceDeclarations()Z
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public insertChild(ILjava/lang/Object;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public lookupNamespaceByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 4

    if-eqz p1, :cond_3

    .line 282
    invoke-virtual {p0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->hasNamespaceDeclarations()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 287
    invoke-interface {v2}, Lorg/xmlpull/v1/builder/XmlNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 280
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "namespace name can not ber null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookupNamespaceByPrefix(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 4

    if-eqz p1, :cond_3

    .line 265
    invoke-virtual {p0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->hasNamespaceDeclarations()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 269
    :cond_0
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 270
    invoke-interface {v2}, Lorg/xmlpull/v1/builder/XmlNamespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 263
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "namespace prefix can not ber null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public namespaces()Ljava/util/Iterator;
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0

    .line 299
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public newElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 2

    const/4 v0, 0x0

    .line 458
    move-object v1, v0

    check-cast v1, Lorg/xmlpull/v1/builder/XmlNamespace;

    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->newElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object p1

    return-object p1
.end method

.method public newElement(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1

    .line 462
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    invoke-direct {v0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1

    .line 466
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    invoke-direct {v0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)V

    return-object v0
.end method

.method public newNamespace(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object p1

    return-object p1
.end method

.method public newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1

    .line 308
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;

    invoke-direct {v0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeAllAttributes()V
    .locals 1

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    return-void
.end method

.method public removeAllChildren()V
    .locals 1

    const/4 v0, 0x0

    .line 487
    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    return-void
.end method

.method public removeAllNamespaceDeclarations()V
    .locals 1

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    return-void
.end method

.method public removeAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)V
    .locals 2

    const/4 v0, 0x0

    .line 226
    :goto_0
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    iget-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeChild(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 494
    invoke-virtual {p0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 499
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    .line 495
    :cond_1
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v0, "no children to remove"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 492
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "child to remove can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceChild(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 476
    invoke-virtual {p0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 483
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 481
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string p2, "could not find child to replace"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 477
    :cond_1
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string p2, "no children available for replacement"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 474
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "old child to replace can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 471
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "new child to replace can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBaseUri(Ljava/lang/String;)V
    .locals 1

    .line 104
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->name:Ljava/lang/String;

    return-void
.end method

.method public setNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    return-void
.end method

.method public setParent(Lorg/xmlpull/v1/builder/XmlContainer;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 45
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlElement;

    if-eqz v0, :cond_2

    .line 46
    move-object v0, p1

    check-cast v0, Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->children()Ljava/util/Iterator;

    move-result-object v0

    .line 48
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    goto :goto_0

    .line 57
    :cond_1
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v0, "this element must be child of parent to set its parent"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_2
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlDocument;

    if-eqz v0, :cond_4

    .line 61
    move-object v0, p1

    check-cast v0, Lorg/xmlpull/v1/builder/XmlDocument;

    .line 62
    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlDocument;->getDocumentElement()Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    if-ne v0, p0, :cond_3

    goto :goto_0

    .line 63
    :cond_3
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v0, "this element must be root docuemnt element to have document set as parent but already different element is set as root document element"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_4
    :goto_0
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->parent:Lorg/xmlpull/v1/builder/XmlContainer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "name["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] namespace["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    invoke-interface {v1}, Lorg/xmlpull/v1/builder/XmlNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

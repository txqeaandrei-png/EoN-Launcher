.class public Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xmlpull/v1/builder/XmlNamespace;


# instance fields
.field private namespaceName:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;->prefix:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 22
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;->namespaceName:Ljava/lang/String;

    return-void

    .line 19
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string p2, "namespace name can not be null"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getNamespaceName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;->namespaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;->prefix:Ljava/lang/String;

    return-object v0
.end method

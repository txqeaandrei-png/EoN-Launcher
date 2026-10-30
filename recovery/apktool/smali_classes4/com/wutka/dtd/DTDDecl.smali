.class public Lcom/wutka/dtd/DTDDecl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# static fields
.field public static final FIXED:Lcom/wutka/dtd/DTDDecl;

.field public static final IMPLIED:Lcom/wutka/dtd/DTDDecl;

.field public static final REQUIRED:Lcom/wutka/dtd/DTDDecl;

.field public static final VALUE:Lcom/wutka/dtd/DTDDecl;


# instance fields
.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/wutka/dtd/DTDDecl;

    const/4 v1, 0x0

    const-string v2, "FIXED"

    invoke-direct {v0, v1, v2}, Lcom/wutka/dtd/DTDDecl;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/DTDDecl;->FIXED:Lcom/wutka/dtd/DTDDecl;

    .line 13
    new-instance v0, Lcom/wutka/dtd/DTDDecl;

    const/4 v1, 0x1

    const-string v2, "REQUIRED"

    invoke-direct {v0, v1, v2}, Lcom/wutka/dtd/DTDDecl;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/DTDDecl;->REQUIRED:Lcom/wutka/dtd/DTDDecl;

    .line 14
    new-instance v0, Lcom/wutka/dtd/DTDDecl;

    const/4 v1, 0x2

    const-string v2, "IMPLIED"

    invoke-direct {v0, v1, v2}, Lcom/wutka/dtd/DTDDecl;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/DTDDecl;->IMPLIED:Lcom/wutka/dtd/DTDDecl;

    .line 15
    new-instance v0, Lcom/wutka/dtd/DTDDecl;

    const/4 v1, 0x3

    const-string v2, "VALUE"

    invoke-direct {v0, v1, v2}, Lcom/wutka/dtd/DTDDecl;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/DTDDecl;->VALUE:Lcom/wutka/dtd/DTDDecl;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/wutka/dtd/DTDDecl;->type:I

    .line 23
    iput-object p2, p0, Lcom/wutka/dtd/DTDDecl;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 29
    :cond_0
    instance-of v1, p1, Lcom/wutka/dtd/DTDDecl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 31
    :cond_1
    check-cast p1, Lcom/wutka/dtd/DTDDecl;

    .line 32
    iget p1, p1, Lcom/wutka/dtd/DTDDecl;->type:I

    iget v1, p0, Lcom/wutka/dtd/DTDDecl;->type:I

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/wutka/dtd/DTDDecl;->FIXED:Lcom/wutka/dtd/DTDDecl;

    if-ne p0, v0, :cond_0

    .line 41
    const-string v0, " #FIXED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/wutka/dtd/DTDDecl;->REQUIRED:Lcom/wutka/dtd/DTDDecl;

    if-ne p0, v0, :cond_1

    .line 45
    const-string v0, " #REQUIRED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_1
    sget-object v0, Lcom/wutka/dtd/DTDDecl;->IMPLIED:Lcom/wutka/dtd/DTDDecl;

    if-ne p0, v0, :cond_2

    .line 49
    const-string v0, " #IMPLIED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

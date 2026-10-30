.class Lcom/wutka/dtd/TokenType;
.super Ljava/lang/Object;


# instance fields
.field public name:Ljava/lang/String;

.field public value:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/wutka/dtd/TokenType;->value:I

    .line 16
    iput-object p2, p0, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 22
    :cond_0
    instance-of v1, p1, Lcom/wutka/dtd/TokenType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 24
    :cond_1
    check-cast p1, Lcom/wutka/dtd/TokenType;

    .line 25
    iget p1, p1, Lcom/wutka/dtd/TokenType;->value:I

    iget v1, p0, Lcom/wutka/dtd/TokenType;->value:I

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

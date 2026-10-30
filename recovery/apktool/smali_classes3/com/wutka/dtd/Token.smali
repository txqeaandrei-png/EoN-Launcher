.class Lcom/wutka/dtd/Token;
.super Ljava/lang/Object;


# instance fields
.field public type:Lcom/wutka/dtd/TokenType;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wutka/dtd/TokenType;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/wutka/dtd/TokenType;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    .line 22
    iput-object p2, p0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    return-void
.end method

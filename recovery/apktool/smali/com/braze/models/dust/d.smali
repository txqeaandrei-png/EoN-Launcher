.class public final enum Lcom/braze/models/dust/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/braze/models/dust/d;

.field public static final enum b:Lcom/braze/models/dust/d;

.field public static final synthetic c:[Lcom/braze/models/dust/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/braze/models/dust/d;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/models/dust/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/models/dust/d;->a:Lcom/braze/models/dust/d;

    .line 2
    new-instance v1, Lcom/braze/models/dust/d;

    const/4 v2, 0x1

    const-string v3, "ccr"

    const-string v4, "CONTENT_CARD_REFRESH"

    invoke-direct {v1, v4, v2, v3}, Lcom/braze/models/dust/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/braze/models/dust/d;->b:Lcom/braze/models/dust/d;

    .line 3
    filled-new-array {v0, v1}, [Lcom/braze/models/dust/d;

    move-result-object v0

    .line 4
    sput-object v0, Lcom/braze/models/dust/d;->c:[Lcom/braze/models/dust/d;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braze/models/dust/d;
    .locals 1

    const-class v0, Lcom/braze/models/dust/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/braze/models/dust/d;

    return-object p0
.end method

.method public static values()[Lcom/braze/models/dust/d;
    .locals 1

    sget-object v0, Lcom/braze/models/dust/d;->c:[Lcom/braze/models/dust/d;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/braze/models/dust/d;

    return-object v0
.end method

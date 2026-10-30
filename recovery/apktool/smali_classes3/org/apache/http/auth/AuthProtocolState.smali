.class public final enum Lorg/apache/http/auth/AuthProtocolState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/http/auth/AuthProtocolState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/auth/AuthProtocolState;

.field public static final enum CHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

.field public static final enum FAILURE:Lorg/apache/http/auth/AuthProtocolState;

.field public static final enum HANDSHAKE:Lorg/apache/http/auth/AuthProtocolState;

.field public static final enum SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

.field public static final enum UNCHALLENGED:Lorg/apache/http/auth/AuthProtocolState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 31
    new-instance v0, Lorg/apache/http/auth/AuthProtocolState;

    const-string v1, "UNCHALLENGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/auth/AuthProtocolState;->UNCHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    new-instance v1, Lorg/apache/http/auth/AuthProtocolState;

    const-string v2, "CHALLENGED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/http/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/http/auth/AuthProtocolState;->CHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    new-instance v2, Lorg/apache/http/auth/AuthProtocolState;

    const-string v3, "HANDSHAKE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/http/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/http/auth/AuthProtocolState;->HANDSHAKE:Lorg/apache/http/auth/AuthProtocolState;

    new-instance v3, Lorg/apache/http/auth/AuthProtocolState;

    const-string v4, "FAILURE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/http/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/http/auth/AuthProtocolState;->FAILURE:Lorg/apache/http/auth/AuthProtocolState;

    new-instance v4, Lorg/apache/http/auth/AuthProtocolState;

    const-string v5, "SUCCESS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/http/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    .line 29
    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v0

    sput-object v0, Lorg/apache/http/auth/AuthProtocolState;->$VALUES:[Lorg/apache/http/auth/AuthProtocolState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/auth/AuthProtocolState;
    .locals 1

    .line 29
    const-class v0, Lorg/apache/http/auth/AuthProtocolState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/http/auth/AuthProtocolState;

    return-object p0
.end method

.method public static values()[Lorg/apache/http/auth/AuthProtocolState;
    .locals 1

    .line 29
    sget-object v0, Lorg/apache/http/auth/AuthProtocolState;->$VALUES:[Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {v0}, [Lorg/apache/http/auth/AuthProtocolState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/auth/AuthProtocolState;

    return-object v0
.end method

.class public final enum Lcom/microsoft/xal/browser/ShowUrlType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xal/browser/ShowUrlType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xal/browser/ShowUrlType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/microsoft/xal/browser/ShowUrlType;",
        "",
        "(Ljava/lang/String;I)V",
        "toString",
        "",
        "Normal",
        "CookieRemoval",
        "CookieRemovalSkipIfSharedCredentials",
        "NonAuthFlow",
        "Companion",
        "xal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/microsoft/xal/browser/ShowUrlType;

.field public static final Companion:Lcom/microsoft/xal/browser/ShowUrlType$Companion;

.field public static final enum CookieRemoval:Lcom/microsoft/xal/browser/ShowUrlType;

.field public static final enum CookieRemovalSkipIfSharedCredentials:Lcom/microsoft/xal/browser/ShowUrlType;

.field public static final enum NonAuthFlow:Lcom/microsoft/xal/browser/ShowUrlType;

.field public static final enum Normal:Lcom/microsoft/xal/browser/ShowUrlType;


# direct methods
.method private static final synthetic $values()[Lcom/microsoft/xal/browser/ShowUrlType;
    .locals 4

    sget-object v0, Lcom/microsoft/xal/browser/ShowUrlType;->Normal:Lcom/microsoft/xal/browser/ShowUrlType;

    sget-object v1, Lcom/microsoft/xal/browser/ShowUrlType;->CookieRemoval:Lcom/microsoft/xal/browser/ShowUrlType;

    sget-object v2, Lcom/microsoft/xal/browser/ShowUrlType;->CookieRemovalSkipIfSharedCredentials:Lcom/microsoft/xal/browser/ShowUrlType;

    sget-object v3, Lcom/microsoft/xal/browser/ShowUrlType;->NonAuthFlow:Lcom/microsoft/xal/browser/ShowUrlType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/microsoft/xal/browser/ShowUrlType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/microsoft/xal/browser/ShowUrlType;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xal/browser/ShowUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xal/browser/ShowUrlType;->Normal:Lcom/microsoft/xal/browser/ShowUrlType;

    .line 28
    new-instance v0, Lcom/microsoft/xal/browser/ShowUrlType;

    const-string v1, "CookieRemoval"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xal/browser/ShowUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xal/browser/ShowUrlType;->CookieRemoval:Lcom/microsoft/xal/browser/ShowUrlType;

    .line 29
    new-instance v0, Lcom/microsoft/xal/browser/ShowUrlType;

    const-string v1, "CookieRemovalSkipIfSharedCredentials"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xal/browser/ShowUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xal/browser/ShowUrlType;->CookieRemovalSkipIfSharedCredentials:Lcom/microsoft/xal/browser/ShowUrlType;

    .line 30
    new-instance v0, Lcom/microsoft/xal/browser/ShowUrlType;

    const-string v1, "NonAuthFlow"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xal/browser/ShowUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xal/browser/ShowUrlType;->NonAuthFlow:Lcom/microsoft/xal/browser/ShowUrlType;

    invoke-static {}, Lcom/microsoft/xal/browser/ShowUrlType;->$values()[Lcom/microsoft/xal/browser/ShowUrlType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xal/browser/ShowUrlType;->$VALUES:[Lcom/microsoft/xal/browser/ShowUrlType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xal/browser/ShowUrlType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/microsoft/xal/browser/ShowUrlType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/xal/browser/ShowUrlType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/microsoft/xal/browser/ShowUrlType;->Companion:Lcom/microsoft/xal/browser/ShowUrlType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final fromInt(I)Lcom/microsoft/xal/browser/ShowUrlType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/microsoft/xal/browser/ShowUrlType;->Companion:Lcom/microsoft/xal/browser/ShowUrlType$Companion;

    invoke-virtual {v0, p0}, Lcom/microsoft/xal/browser/ShowUrlType$Companion;->fromInt(I)Lcom/microsoft/xal/browser/ShowUrlType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/microsoft/xal/browser/ShowUrlType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/microsoft/xal/browser/ShowUrlType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xal/browser/ShowUrlType;
    .locals 1

    const-class v0, Lcom/microsoft/xal/browser/ShowUrlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xal/browser/ShowUrlType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xal/browser/ShowUrlType;
    .locals 1

    sget-object v0, Lcom/microsoft/xal/browser/ShowUrlType;->$VALUES:[Lcom/microsoft/xal/browser/ShowUrlType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xal/browser/ShowUrlType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    invoke-static {}, Lcom/microsoft/xal/browser/ShowUrlType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/ShowUrlType;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Lkotlin/enums/EnumEntries;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xal/browser/ShowUrlType;

    invoke-virtual {v0}, Lcom/microsoft/xal/browser/ShowUrlType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 57
    const-string v0, "Unknown"

    goto :goto_0

    .line 59
    :cond_0
    const-string v0, "NonAuthFlow"

    goto :goto_0

    .line 62
    :cond_1
    const-string v0, "CookieRemovalSkipIfSharedCredentials"

    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "CookieRemoval"

    goto :goto_0

    .line 66
    :cond_3
    const-string v0, "Normal"

    :goto_0
    return-object v0
.end method

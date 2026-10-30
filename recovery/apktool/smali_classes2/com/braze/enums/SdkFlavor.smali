.class public final enum Lcom/braze/enums/SdkFlavor;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/braze/models/IPutIntoJson;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/braze/enums/SdkFlavor;",
        ">;",
        "Lcom/braze/models/IPutIntoJson<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0010\n\u0002\u0008\r\u0008\u0087\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0003B\u0011\u0008\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/braze/enums/SdkFlavor;",
        "Lcom/braze/models/IPutIntoJson;",
        "",
        "",
        "jsonKey",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "UNITY",
        "REACT",
        "CORDOVA",
        "XAMARIN",
        "FLUTTER",
        "SEGMENT",
        "TEALIUM",
        "MPARTICLE",
        "forJsonPut",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/braze/enums/SdkFlavor;

.field public static final enum CORDOVA:Lcom/braze/enums/SdkFlavor;

.field public static final enum FLUTTER:Lcom/braze/enums/SdkFlavor;

.field public static final enum MPARTICLE:Lcom/braze/enums/SdkFlavor;

.field public static final enum REACT:Lcom/braze/enums/SdkFlavor;

.field public static final enum SEGMENT:Lcom/braze/enums/SdkFlavor;

.field public static final enum TEALIUM:Lcom/braze/enums/SdkFlavor;

.field public static final enum UNITY:Lcom/braze/enums/SdkFlavor;

.field public static final enum XAMARIN:Lcom/braze/enums/SdkFlavor;


# instance fields
.field private final jsonKey:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/braze/enums/SdkFlavor;
    .locals 8

    sget-object v0, Lcom/braze/enums/SdkFlavor;->UNITY:Lcom/braze/enums/SdkFlavor;

    sget-object v1, Lcom/braze/enums/SdkFlavor;->REACT:Lcom/braze/enums/SdkFlavor;

    sget-object v2, Lcom/braze/enums/SdkFlavor;->CORDOVA:Lcom/braze/enums/SdkFlavor;

    sget-object v3, Lcom/braze/enums/SdkFlavor;->XAMARIN:Lcom/braze/enums/SdkFlavor;

    sget-object v4, Lcom/braze/enums/SdkFlavor;->FLUTTER:Lcom/braze/enums/SdkFlavor;

    sget-object v5, Lcom/braze/enums/SdkFlavor;->SEGMENT:Lcom/braze/enums/SdkFlavor;

    sget-object v6, Lcom/braze/enums/SdkFlavor;->TEALIUM:Lcom/braze/enums/SdkFlavor;

    sget-object v7, Lcom/braze/enums/SdkFlavor;->MPARTICLE:Lcom/braze/enums/SdkFlavor;

    filled-new-array/range {v0 .. v7}, [Lcom/braze/enums/SdkFlavor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/braze/enums/SdkFlavor;

    const/4 v1, 0x0

    const-string v2, "unity"

    const-string v3, "UNITY"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/SdkFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/SdkFlavor;->UNITY:Lcom/braze/enums/SdkFlavor;

    .line 2
    new-instance v0, Lcom/braze/enums/SdkFlavor;

    const/4 v1, 0x1

    const-string v2, "react"

    const-string v3, "REACT"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/SdkFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/SdkFlavor;->REACT:Lcom/braze/enums/SdkFlavor;

    .line 3
    new-instance v0, Lcom/braze/enums/SdkFlavor;

    const/4 v1, 0x2

    const-string v2, "cordova"

    const-string v3, "CORDOVA"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/SdkFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/SdkFlavor;->CORDOVA:Lcom/braze/enums/SdkFlavor;

    .line 4
    new-instance v0, Lcom/braze/enums/SdkFlavor;

    const/4 v1, 0x3

    const-string v2, "xamarin"

    const-string v3, "XAMARIN"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/SdkFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/SdkFlavor;->XAMARIN:Lcom/braze/enums/SdkFlavor;

    .line 5
    new-instance v0, Lcom/braze/enums/SdkFlavor;

    const/4 v1, 0x4

    const-string v2, "flutter"

    const-string v3, "FLUTTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/SdkFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/SdkFlavor;->FLUTTER:Lcom/braze/enums/SdkFlavor;

    .line 6
    new-instance v0, Lcom/braze/enums/SdkFlavor;

    const/4 v1, 0x5

    const-string v2, "segment"

    const-string v3, "SEGMENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/SdkFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/SdkFlavor;->SEGMENT:Lcom/braze/enums/SdkFlavor;

    .line 7
    new-instance v0, Lcom/braze/enums/SdkFlavor;

    const/4 v1, 0x6

    const-string v2, "tealium"

    const-string v3, "TEALIUM"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/SdkFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/SdkFlavor;->TEALIUM:Lcom/braze/enums/SdkFlavor;

    .line 8
    new-instance v0, Lcom/braze/enums/SdkFlavor;

    const/4 v1, 0x7

    const-string v2, "mparticle"

    const-string v3, "MPARTICLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/SdkFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/SdkFlavor;->MPARTICLE:Lcom/braze/enums/SdkFlavor;

    invoke-static {}, Lcom/braze/enums/SdkFlavor;->$values()[Lcom/braze/enums/SdkFlavor;

    move-result-object v0

    sput-object v0, Lcom/braze/enums/SdkFlavor;->$VALUES:[Lcom/braze/enums/SdkFlavor;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/braze/enums/SdkFlavor;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/braze/enums/SdkFlavor;->jsonKey:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/braze/enums/SdkFlavor;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/braze/enums/SdkFlavor;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braze/enums/SdkFlavor;
    .locals 1

    const-class v0, Lcom/braze/enums/SdkFlavor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/braze/enums/SdkFlavor;

    return-object p0
.end method

.method public static values()[Lcom/braze/enums/SdkFlavor;
    .locals 1

    sget-object v0, Lcom/braze/enums/SdkFlavor;->$VALUES:[Lcom/braze/enums/SdkFlavor;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/braze/enums/SdkFlavor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/enums/SdkFlavor;->forJsonPut()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public forJsonPut()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/braze/enums/SdkFlavor;->jsonKey:Ljava/lang/String;

    return-object v0
.end method

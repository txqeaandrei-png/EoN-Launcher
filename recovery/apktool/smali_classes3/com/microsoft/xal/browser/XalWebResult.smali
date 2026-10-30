.class public final Lcom/microsoft/xal/browser/XalWebResult;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/microsoft/xal/browser/XalWebResult;",
        "",
        "()V",
        "mWebResult",
        "",
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
.field public static final INSTANCE:Lcom/microsoft/xal/browser/XalWebResult;

.field public static final mWebResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/microsoft/xal/browser/XalWebResult;

    invoke-direct {v0}, Lcom/microsoft/xal/browser/XalWebResult;-><init>()V

    sput-object v0, Lcom/microsoft/xal/browser/XalWebResult;->INSTANCE:Lcom/microsoft/xal/browser/XalWebResult;

    .line 26
    invoke-static {}, Lcom/microsoft/xal/browser/WebResult;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/enums/EnumEntries;->size()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/xal/browser/XalWebResult;->mWebResult:[I

    .line 29
    sget-object v1, Lcom/microsoft/xal/browser/WebResult;->SUCCESS:Lcom/microsoft/xal/browser/WebResult;

    invoke-virtual {v1}, Lcom/microsoft/xal/browser/WebResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 30
    sget-object v1, Lcom/microsoft/xal/browser/WebResult;->CANCEL:Lcom/microsoft/xal/browser/WebResult;

    invoke-virtual {v1}, Lcom/microsoft/xal/browser/WebResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 32
    :try_start_0
    sget-object v1, Lcom/microsoft/xal/browser/WebResult;->FAIL:Lcom/microsoft/xal/browser/WebResult;

    invoke-virtual {v1}, Lcom/microsoft/xal/browser/WebResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/braze/models/inappmessage/MessageButton;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/models/IPutIntoJson;
.implements Lcom/braze/models/inappmessage/IInAppMessageThemeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/braze/models/IPutIntoJson<",
        "Lorg/json/JSONObject;",
        ">;",
        "Lcom/braze/models/inappmessage/IInAppMessageThemeable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\"\u0008\u0017\u0018\u0000 ?2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u0003:\u0001@B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001d\u0008\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0008Bc\u0008\u0012\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0008\u0008\u0001\u0010\u0011\u001a\u00020\n\u0012\u0008\u0008\u0001\u0010\u0012\u001a\u00020\n\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0008\u0008\u0001\u0010\u0015\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0005J#\u0010\u001a\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u000c2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0019H\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0011\u0010\u001c\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u001eR\u0018\u0010 \u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\n8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010#\u001a\u0004\u0008$\u0010%R$\u0010\r\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020\u000c8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\r\u0010&\u001a\u0004\u0008\'\u0010(R(\u0010\u000f\u001a\u0004\u0018\u00010\u00192\u0008\u0010\"\u001a\u0004\u0018\u00010\u00198\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010)\u001a\u0004\u0008*\u0010+R$\u0010\u0010\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\"\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\"\u0010\u0011\u001a\u00020\n8G@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010#\u001a\u0004\u00086\u0010%\"\u0004\u00087\u00108R\"\u0010\u0012\u001a\u00020\n8G@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010#\u001a\u0004\u00089\u0010%\"\u0004\u0008:\u00108R\"\u0010\u0015\u001a\u00020\n8G@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010#\u001a\u0004\u0008;\u0010%\"\u0004\u0008<\u00108R\u0011\u0010>\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010.\u00a8\u0006A"
    }
    d2 = {
        "Lcom/braze/models/inappmessage/MessageButton;",
        "Lcom/braze/models/IPutIntoJson;",
        "Lorg/json/JSONObject;",
        "Lcom/braze/models/inappmessage/IInAppMessageThemeable;",
        "<init>",
        "()V",
        "jsonObject",
        "darkThemeObject",
        "(Lorg/json/JSONObject;Lorg/json/JSONObject;)V",
        "darkThemeJsonObject",
        "",
        "id",
        "Lcom/braze/enums/inappmessage/ClickAction;",
        "clickAction",
        "",
        "uri",
        "text",
        "backgroundColor",
        "textColor",
        "",
        "openUriInWebview",
        "borderColor",
        "(Lorg/json/JSONObject;Lorg/json/JSONObject;ILcom/braze/enums/inappmessage/ClickAction;Ljava/lang/String;Ljava/lang/String;IIZI)V",
        "",
        "enableDarkTheme",
        "Landroid/net/Uri;",
        "setClickBehavior",
        "(Lcom/braze/enums/inappmessage/ClickAction;Landroid/net/Uri;)V",
        "forJsonPut",
        "()Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        "Lcom/braze/models/theme/b;",
        "darkTheme",
        "Lcom/braze/models/theme/b;",
        "value",
        "I",
        "getId",
        "()I",
        "Lcom/braze/enums/inappmessage/ClickAction;",
        "getClickAction",
        "()Lcom/braze/enums/inappmessage/ClickAction;",
        "Landroid/net/Uri;",
        "getUri",
        "()Landroid/net/Uri;",
        "Ljava/lang/String;",
        "getText",
        "()Ljava/lang/String;",
        "setText",
        "(Ljava/lang/String;)V",
        "Z",
        "getOpenUriInWebview",
        "()Z",
        "setOpenUriInWebview",
        "(Z)V",
        "getBackgroundColor",
        "setBackgroundColor",
        "(I)V",
        "getTextColor",
        "setTextColor",
        "getBorderColor",
        "setBorderColor",
        "getStringId",
        "stringId",
        "Companion",
        "com/braze/models/inappmessage/k",
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
.field private static final BG_COLOR:Ljava/lang/String; = "bg_color"

.field private static final BORDER_COLOR:Ljava/lang/String; = "border_color"

.field private static final CLICK_ACTION:Ljava/lang/String; = "click_action"

.field public static final Companion:Lcom/braze/models/inappmessage/k;

.field private static final ID:Ljava/lang/String; = "id"

.field private static final OPEN_URI_IN_WEBVIEW:Ljava/lang/String; = "use_webview"

.field private static final TAG:Ljava/lang/String;

.field private static final TEXT:Ljava/lang/String; = "text"

.field private static final TEXT_COLOR:Ljava/lang/String; = "text_color"

.field private static final URI:Ljava/lang/String; = "uri"


# instance fields
.field private backgroundColor:I

.field private borderColor:I

.field private clickAction:Lcom/braze/enums/inappmessage/ClickAction;

.field private darkTheme:Lcom/braze/models/theme/b;

.field private id:I

.field private jsonObject:Lorg/json/JSONObject;

.field private openUriInWebview:Z

.field private text:Ljava/lang/String;

.field private textColor:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$_lXz-gN2wnTZ8ZkoYuDcxkOssnI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/models/inappmessage/MessageButton;->setClickBehavior$lambda$4()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$veEgBL7QkerNPrV9xqPTLhOyy2s()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/models/inappmessage/MessageButton;->enableDarkTheme$lambda$2$lambda$1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$z7j5IIVAzxOFuAaGetePzV-HnPk()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/models/inappmessage/MessageButton;->setClickBehavior$lambda$3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/braze/models/inappmessage/k;

    invoke-direct {v0}, Lcom/braze/models/inappmessage/k;-><init>()V

    sput-object v0, Lcom/braze/models/inappmessage/MessageButton;->Companion:Lcom/braze/models/inappmessage/k;

    .line 1
    const-class v0, Lcom/braze/models/inappmessage/MessageButton;

    invoke-static {v0}, Lcom/braze/support/BrazeLogger;->getBrazeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/braze/models/inappmessage/MessageButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/braze/models/inappmessage/MessageButton;->id:I

    .line 5
    sget-object v1, Lcom/braze/enums/inappmessage/ClickAction;->NONE:Lcom/braze/enums/inappmessage/ClickAction;

    iput-object v1, p0, Lcom/braze/models/inappmessage/MessageButton;->clickAction:Lcom/braze/enums/inappmessage/ClickAction;

    .line 20
    const-string v1, "#1B78CF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/braze/models/inappmessage/MessageButton;->backgroundColor:I

    .line 25
    iput v0, p0, Lcom/braze/models/inappmessage/MessageButton;->textColor:I

    .line 30
    iput v1, p0, Lcom/braze/models/inappmessage/MessageButton;->borderColor:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/braze/models/inappmessage/MessageButton;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 13

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 35
    const-string v0, "click_action"

    .line 36
    sget-object v1, Lcom/braze/enums/inappmessage/ClickAction;->NEWS_FEED:Lcom/braze/enums/inappmessage/ClickAction;

    const/4 v2, 0x0

    .line 37
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "US"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "toUpperCase(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/braze/enums/inappmessage/ClickAction;->values()[Lcom/braze/enums/inappmessage/ClickAction;

    move-result-object v3

    .line 39
    array-length v4, v3

    move v6, v2

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 40
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    move-object v6, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 41
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v3, "Array contains no element matching the predicate."

    invoke-direct {v0, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    move-object v6, v1

    .line 42
    :goto_2
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "optString(...)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-string v0, "bg_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 45
    const-string v0, "text_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 46
    const-string v0, "use_webview"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 47
    const-string v0, "border_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 48
    invoke-direct/range {v2 .. v12}, Lcom/braze/models/inappmessage/MessageButton;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;ILcom/braze/enums/inappmessage/ClickAction;Ljava/lang/String;Ljava/lang/String;IIZI)V

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;ILcom/braze/enums/inappmessage/ClickAction;Ljava/lang/String;Ljava/lang/String;IIZI)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/braze/models/inappmessage/MessageButton;->id:I

    .line 52
    sget-object v1, Lcom/braze/enums/inappmessage/ClickAction;->NONE:Lcom/braze/enums/inappmessage/ClickAction;

    iput-object v1, p0, Lcom/braze/models/inappmessage/MessageButton;->clickAction:Lcom/braze/enums/inappmessage/ClickAction;

    .line 67
    const-string v1, "#1B78CF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/braze/models/inappmessage/MessageButton;->backgroundColor:I

    .line 72
    iput v0, p0, Lcom/braze/models/inappmessage/MessageButton;->textColor:I

    .line 77
    iput v1, p0, Lcom/braze/models/inappmessage/MessageButton;->borderColor:I

    .line 111
    iput-object p1, p0, Lcom/braze/models/inappmessage/MessageButton;->jsonObject:Lorg/json/JSONObject;

    .line 112
    iput p3, p0, Lcom/braze/models/inappmessage/MessageButton;->id:I

    .line 113
    iput-object p4, p0, Lcom/braze/models/inappmessage/MessageButton;->clickAction:Lcom/braze/enums/inappmessage/ClickAction;

    .line 114
    sget-object p1, Lcom/braze/enums/inappmessage/ClickAction;->URI:Lcom/braze/enums/inappmessage/ClickAction;

    if-ne p4, p1, :cond_1

    if-eqz p5, :cond_1

    invoke-static {p5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/models/inappmessage/MessageButton;->uri:Landroid/net/Uri;

    .line 117
    :cond_1
    :goto_0
    iput-object p6, p0, Lcom/braze/models/inappmessage/MessageButton;->text:Ljava/lang/String;

    .line 118
    iput p7, p0, Lcom/braze/models/inappmessage/MessageButton;->backgroundColor:I

    .line 119
    iput p8, p0, Lcom/braze/models/inappmessage/MessageButton;->textColor:I

    .line 120
    iput-boolean p9, p0, Lcom/braze/models/inappmessage/MessageButton;->openUriInWebview:Z

    .line 121
    iput p10, p0, Lcom/braze/models/inappmessage/MessageButton;->borderColor:I

    if-eqz p2, :cond_2

    .line 122
    new-instance p1, Lcom/braze/models/theme/b;

    invoke-direct {p1, p2}, Lcom/braze/models/theme/b;-><init>(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/braze/models/inappmessage/MessageButton;->darkTheme:Lcom/braze/models/theme/b;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 31
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/braze/models/inappmessage/MessageButton;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static final enableDarkTheme$lambda$2$lambda$1()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Cannot apply dark theme with a null themes wrapper"

    return-object v0
.end method

.method public static synthetic setClickBehavior$default(Lcom/braze/models/inappmessage/MessageButton;Lcom/braze/enums/inappmessage/ClickAction;Landroid/net/Uri;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/braze/models/inappmessage/MessageButton;->setClickBehavior(Lcom/braze/enums/inappmessage/ClickAction;Landroid/net/Uri;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setClickBehavior"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final setClickBehavior$lambda$3()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "A non-null URI is required in order to set the button ClickAction to URI."

    return-object v0
.end method

.method private static final setClickBehavior$lambda$4()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ClickAction of URI is required in order to set a non-null URI"

    return-object v0
.end method


# virtual methods
.method public enableDarkTheme()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/braze/models/inappmessage/MessageButton;->darkTheme:Lcom/braze/models/theme/b;

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/models/inappmessage/MessageButton;->TAG:Ljava/lang/String;

    new-instance v6, Lcom/braze/models/inappmessage/MessageButton$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/braze/models/inappmessage/MessageButton$$ExternalSyntheticLambda0;-><init>()V

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/braze/models/theme/b;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/braze/models/inappmessage/MessageButton;->backgroundColor:I

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/braze/models/theme/b;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/braze/models/inappmessage/MessageButton;->textColor:I

    .line 7
    :cond_2
    iget-object v0, v0, Lcom/braze/models/theme/b;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/braze/models/inappmessage/MessageButton;->borderColor:I

    :cond_3
    return-void
.end method

.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/models/inappmessage/MessageButton;->forJsonPut()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public forJsonPut()Lorg/json/JSONObject;
    .locals 3

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    const-string v1, "id"

    iget v2, p0, Lcom/braze/models/inappmessage/MessageButton;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    const-string v1, "click_action"

    iget-object v2, p0, Lcom/braze/models/inappmessage/MessageButton;->clickAction:Lcom/braze/enums/inappmessage/ClickAction;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/braze/models/inappmessage/MessageButton;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 6
    const-string v2, "uri"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    :cond_0
    const-string v1, "text"

    iget-object v2, p0, Lcom/braze/models/inappmessage/MessageButton;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string v1, "bg_color"

    iget v2, p0, Lcom/braze/models/inappmessage/MessageButton;->backgroundColor:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    const-string v1, "text_color"

    iget v2, p0, Lcom/braze/models/inappmessage/MessageButton;->textColor:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    const-string v1, "use_webview"

    iget-boolean v2, p0, Lcom/braze/models/inappmessage/MessageButton;->openUriInWebview:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 12
    const-string v1, "border_color"

    iget v2, p0, Lcom/braze/models/inappmessage/MessageButton;->borderColor:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    iget-object v0, p0, Lcom/braze/models/inappmessage/MessageButton;->jsonObject:Lorg/json/JSONObject;

    :goto_0
    return-object v0
.end method

.method public final getBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/models/inappmessage/MessageButton;->backgroundColor:I

    return v0
.end method

.method public final getBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/models/inappmessage/MessageButton;->borderColor:I

    return v0
.end method

.method public final getClickAction()Lcom/braze/enums/inappmessage/ClickAction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/inappmessage/MessageButton;->clickAction:Lcom/braze/enums/inappmessage/ClickAction;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/models/inappmessage/MessageButton;->id:I

    return v0
.end method

.method public final getOpenUriInWebview()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/inappmessage/MessageButton;->openUriInWebview:Z

    return v0
.end method

.method public final getStringId()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/models/inappmessage/MessageButton;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/inappmessage/MessageButton;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/models/inappmessage/MessageButton;->textColor:I

    return v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/inappmessage/MessageButton;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/braze/models/inappmessage/MessageButton;->backgroundColor:I

    return-void
.end method

.method public final setBorderColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/braze/models/inappmessage/MessageButton;->borderColor:I

    return-void
.end method

.method public final setClickBehavior(Lcom/braze/enums/inappmessage/ClickAction;)V
    .locals 2

    .line 1
    const-string v0, "clickAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/braze/models/inappmessage/MessageButton;->setClickBehavior$default(Lcom/braze/models/inappmessage/MessageButton;Lcom/braze/enums/inappmessage/ClickAction;Landroid/net/Uri;ILjava/lang/Object;)V

    return-void
.end method

.method public final setClickBehavior(Lcom/braze/enums/inappmessage/ClickAction;Landroid/net/Uri;)V
    .locals 9

    const-string v0, "clickAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 2
    sget-object v0, Lcom/braze/enums/inappmessage/ClickAction;->URI:Lcom/braze/enums/inappmessage/ClickAction;

    if-ne p1, v0, :cond_0

    .line 3
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/models/inappmessage/MessageButton;->TAG:Ljava/lang/String;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/models/inappmessage/MessageButton$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/braze/models/inappmessage/MessageButton$$ExternalSyntheticLambda1;-><init>()V

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    sget-object v0, Lcom/braze/enums/inappmessage/ClickAction;->URI:Lcom/braze/enums/inappmessage/ClickAction;

    if-eq p1, v0, :cond_1

    .line 5
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/models/inappmessage/MessageButton;->TAG:Ljava/lang/String;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/models/inappmessage/MessageButton$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/braze/models/inappmessage/MessageButton$$ExternalSyntheticLambda2;-><init>()V

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/braze/models/inappmessage/MessageButton;->clickAction:Lcom/braze/enums/inappmessage/ClickAction;

    .line 7
    iput-object p2, p0, Lcom/braze/models/inappmessage/MessageButton;->uri:Landroid/net/Uri;

    :goto_0
    return-void
.end method

.method public final setOpenUriInWebview(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/inappmessage/MessageButton;->openUriInWebview:Z

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/inappmessage/MessageButton;->text:Ljava/lang/String;

    return-void
.end method

.method public final setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/braze/models/inappmessage/MessageButton;->textColor:I

    return-void
.end method

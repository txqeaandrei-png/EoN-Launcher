.class public final Lcom/microsoft/xal/browser/BrowserLaunchParameters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xal/browser/BrowserLaunchParameters$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0018\u0018\u0000 \"2\u00020\u0001:\u0001\"BC\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u000e\"\u0004\u0008\u001d\u0010\u0010R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/microsoft/xal/browser/BrowserLaunchParameters;",
        "",
        "startUrl",
        "",
        "endUrl",
        "requestHeaderKeys",
        "",
        "requestHeaderValues",
        "showType",
        "Lcom/microsoft/xal/browser/ShowUrlType;",
        "useInProcBrowser",
        "",
        "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/microsoft/xal/browser/ShowUrlType;Z)V",
        "getEndUrl",
        "()Ljava/lang/String;",
        "setEndUrl",
        "(Ljava/lang/String;)V",
        "getRequestHeaderKeys",
        "()[Ljava/lang/String;",
        "setRequestHeaderKeys",
        "([Ljava/lang/String;)V",
        "[Ljava/lang/String;",
        "getRequestHeaderValues",
        "setRequestHeaderValues",
        "getShowType",
        "()Lcom/microsoft/xal/browser/ShowUrlType;",
        "setShowType",
        "(Lcom/microsoft/xal/browser/ShowUrlType;)V",
        "getStartUrl",
        "setStartUrl",
        "getUseInProcBrowser",
        "()Z",
        "setUseInProcBrowser",
        "(Z)V",
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
.field public static final Companion:Lcom/microsoft/xal/browser/BrowserLaunchParameters$Companion;

.field private static final TAG:Ljava/lang/String; = "BrowserLaunchActivity"


# instance fields
.field private endUrl:Ljava/lang/String;

.field private requestHeaderKeys:[Ljava/lang/String;

.field private requestHeaderValues:[Ljava/lang/String;

.field private showType:Lcom/microsoft/xal/browser/ShowUrlType;

.field private startUrl:Ljava/lang/String;

.field private useInProcBrowser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/microsoft/xal/browser/BrowserLaunchParameters$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/xal/browser/BrowserLaunchParameters$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->Companion:Lcom/microsoft/xal/browser/BrowserLaunchParameters$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/microsoft/xal/browser/ShowUrlType;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->startUrl:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->endUrl:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->requestHeaderKeys:[Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->requestHeaderValues:[Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->showType:Lcom/microsoft/xal/browser/ShowUrlType;

    .line 18
    iput-boolean p6, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->useInProcBrowser:Z

    .line 21
    sget-object p1, Lcom/microsoft/xal/browser/ShowUrlType;->NonAuthFlow:Lcom/microsoft/xal/browser/ShowUrlType;

    const-string p2, "BrowserLaunchActivity"

    const/4 p3, 0x1

    if-ne p5, p1, :cond_0

    .line 22
    const-string p1, "BrowserLaunchParameters() Forcing inProc browser because flow is marked non-auth."

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->requestHeaderKeys:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, p3

    if-eqz p1, :cond_2

    .line 25
    const-string p1, "BrowserLaunchParameters() Forcing inProc browser because request headers were found."

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_2
    :goto_1
    iput-boolean p3, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->useInProcBrowser:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/microsoft/xal/browser/ShowUrlType;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/microsoft/xal/browser/BrowserLaunchParameters;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/microsoft/xal/browser/ShowUrlType;Z)V

    return-void
.end method


# virtual methods
.method public final getEndUrl()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->endUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestHeaderKeys()[Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->requestHeaderKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestHeaderValues()[Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->requestHeaderValues:[Ljava/lang/String;

    return-object v0
.end method

.method public final getShowType()Lcom/microsoft/xal/browser/ShowUrlType;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->showType:Lcom/microsoft/xal/browser/ShowUrlType;

    return-object v0
.end method

.method public final getStartUrl()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->startUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getUseInProcBrowser()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->useInProcBrowser:Z

    return v0
.end method

.method public final setEndUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->endUrl:Ljava/lang/String;

    return-void
.end method

.method public final setRequestHeaderKeys([Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->requestHeaderKeys:[Ljava/lang/String;

    return-void
.end method

.method public final setRequestHeaderValues([Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->requestHeaderValues:[Ljava/lang/String;

    return-void
.end method

.method public final setShowType(Lcom/microsoft/xal/browser/ShowUrlType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->showType:Lcom/microsoft/xal/browser/ShowUrlType;

    return-void
.end method

.method public final setStartUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->startUrl:Ljava/lang/String;

    return-void
.end method

.method public final setUseInProcBrowser(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchParameters;->useInProcBrowser:Z

    return-void
.end method

.class public final Lcom/microsoft/xal/browser/BrowserSelectionResult;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\n\u001a\u00020\u0005H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/microsoft/xal/browser/BrowserSelectionResult;",
        "",
        "mDefaultBrowserInfo",
        "Lcom/microsoft/xal/browser/BrowserInfo;",
        "mNotes",
        "",
        "mUseCustomTabs",
        "",
        "(Lcom/microsoft/xal/browser/BrowserInfo;Ljava/lang/String;Z)V",
        "packageName",
        "toString",
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


# instance fields
.field private final mDefaultBrowserInfo:Lcom/microsoft/xal/browser/BrowserInfo;

.field private final mNotes:Ljava/lang/String;

.field private final mUseCustomTabs:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/xal/browser/BrowserInfo;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "mDefaultBrowserInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mNotes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->mDefaultBrowserInfo:Lcom/microsoft/xal/browser/BrowserInfo;

    .line 28
    iput-object p2, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->mNotes:Ljava/lang/String;

    .line 29
    iput-boolean p3, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->mUseCustomTabs:Z

    return-void
.end method


# virtual methods
.method public final packageName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->mUseCustomTabs:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->mDefaultBrowserInfo:Lcom/microsoft/xal/browser/BrowserInfo;

    iget-object v0, v0, Lcom/microsoft/xal/browser/BrowserInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 32
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    .line 33
    new-array v2, v1, [Ljava/lang/String;

    .line 34
    iget-boolean v3, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->mUseCustomTabs:Z

    if-eqz v3, :cond_0

    const-string v3, "CT"

    goto :goto_0

    :cond_0
    const-string v3, "WK"

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 35
    iget-object v3, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->mDefaultBrowserInfo:Lcom/microsoft/xal/browser/BrowserInfo;

    iget-object v3, v3, Lcom/microsoft/xal/browser/BrowserInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    .line 36
    iget-object v4, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->mNotes:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 37
    iget-object v3, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->mDefaultBrowserInfo:Lcom/microsoft/xal/browser/BrowserInfo;

    iget-object v3, v3, Lcom/microsoft/xal/browser/BrowserInfo;->versionName:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 38
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s-%s-%s::%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
